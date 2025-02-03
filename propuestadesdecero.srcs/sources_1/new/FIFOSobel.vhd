----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03.12.2024 08:48:27
-- Design Name: 
-- Module Name: FIFOSobel - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity fifo_sobel is
    Port (
        clk           : in  STD_LOGIC;                    -- Reloj
        reset         : in  STD_LOGIC;                    -- Reset
        ready_histo   : in  STD_LOGIC;                    -- AXI Stream valid
        s_axis_tvalid : in  STD_LOGIC;                    -- AXI Stream valid
        s_axis_tdata  : in  STD_LOGIC_VECTOR(7 downto 0); -- Entrada de píxel (8 bits)
        s_axis_tready : out STD_LOGIC;                    -- AXI Stream ready
        grad_x_out    : out STD_LOGIC_VECTOR(8 downto 0); -- Gradiente X
        grad_y_out    : out STD_LOGIC_VECTOR(8 downto 0); -- Gradiente Y
        grad_valid_out : out STD_LOGIC                    -- Gradiente válido
    );
end fifo_sobel;

architecture Behavioral of fifo_sobel is
    -- Constantes
    constant IMG_WIDTH : integer := 34; -- Ancho de la imagen con bordes
    constant FIFO_SIZE : integer := 71; -- Tamaño de la FIFO (2 líneas + 3 píxeles)
    
    signal x_counter        : integer range 0 to IMG_WIDTH-1 := 0; -- Contador de píxeles en x
    signal y_counter        : integer range 0 to IMG_WIDTH-1 := 0; -- Contador de píxeles en y

    -- FIFO
    type fifo_type is array(0 to FIFO_SIZE-1) of STD_LOGIC_VECTOR(7 downto 0);
    signal fifo : fifo_type := (others => (others => '0'));

    -- Punteros y contador de la FIFO
    signal write_ptr : integer range 0 to FIFO_SIZE-1 := 0;
    signal read_ptr  : integer range 0 to FIFO_SIZE-1 := 0;
    signal fifo_count : integer range 0 to FIFO_SIZE := 0;
    signal auxcentro : integer range 0 to FIFO_SIZE := 0;
    signal auxizquierda : integer range 0 to FIFO_SIZE := 0;
    signal auxderecha : integer range 0 to FIFO_SIZE := 0;
    signal auxarriba : integer range 0 to FIFO_SIZE := 0;
    signal auxabajo : integer range 0 to FIFO_SIZE := 0;

    -- Estados de la FIFO
    signal fifo_full : STD_LOGIC := '0';
    signal fifo_empty : STD_LOGIC := '1';

    -- Ventana de Sobel
    type window is array(0 to 4) of STD_LOGIC_VECTOR(7 downto 0);
    signal window_data : window := (others => (others => '0'));

    -- Gradientes
    signal grad_x, grad_y : integer range -255 to 255 := 0;
    signal sh_pixel_out :signed(8 downto 0);
    signal sv_pixel_out :signed(8 downto 0);
    signal aux_x, aux_y : integer range -255 to 255 := 0;

    -- Señal de validez de gradiente
    signal grad_valid : STD_LOGIC := '0';
    signal borde : STD_LOGIC := '0';
    signal lock : STD_LOGIC := '0';
    signal ack : STD_LOGIC := '0';
    signal avance : STD_LOGIC := '0';
    
    signal contadorPixel : integer := 0;

    -- Señal auxiliar para manejar s_axis_tready
    signal data_taken : STD_LOGIC := '0';

begin
    -- Control de la FIFO (Lectura y Escritura)
    ack<=ready_histo;
  process(clk, s_axis_tvalid, fifo_full,lock,avance)
    variable idx_center : integer;
    variable idx_left   : integer;
    variable idx_right  : integer;
    variable idx_top    : integer;
    variable idx_bottom : integer;
    variable fila       : integer := 0;
begin
    if rising_edge(clk) then
        if reset = '1' then
            write_ptr <= 0;
            read_ptr <= 0;
            fifo_count <= 0;
            fifo_full <= '0';
            fifo_empty <= '1';
            window_data <= (others => (others => '0'));
            grad_valid <= '0';
            data_taken <= '0';
            lock <= '1';
            s_axis_tready <= '0';
            contadorPixel <= 0;
--            borde <= '0';
        else
            data_taken <= '0';
            
            if s_axis_tvalid = '1' then
            contadorPixel <= contadorPixel + 1;
            end if;
            -- Escritura en FIFO
            if s_axis_tvalid = '1' and fifo_full = '0' then
                fifo(write_ptr) <= s_axis_tdata;
                write_ptr <= (write_ptr + 1) mod FIFO_SIZE;
                fifo_count <= fifo_count + 1;
                data_taken <= '1';
            end if;

            -- Actualizaci�n de bordes y control de lectura
            if fifo_count >= 2 * IMG_WIDTH + 2 then
                lock <= '0';

--                if ((contadorPixel ) mod IMG_WIDTH = 0 and write_ptr /= 0 and contadorPixel > 75) or
--                   ((contadorPixel - 1) mod IMG_WIDTH = 0 and contadorPixel > 75) then
--                    borde <= '1';
--                    fila := fila + 30;
--                else
--                    borde <= '0';
--                end if;

                -- Calcular �ndices para ventana
                idx_center := (read_ptr - (FIFO_SIZE - 35) + FIFO_SIZE) mod FIFO_SIZE;
                idx_left   := (idx_center - 1 + FIFO_SIZE) mod FIFO_SIZE;
                idx_right  := (idx_center + 1) mod FIFO_SIZE;
                idx_top    := (idx_center - IMG_WIDTH + FIFO_SIZE) mod FIFO_SIZE;
                idx_bottom := (idx_center + IMG_WIDTH) mod FIFO_SIZE;

                auxcentro <= idx_center;
                auxizquierda <= idx_left;
                auxderecha <= idx_right;
                auxarriba <= idx_top;
                auxabajo <= idx_bottom;

                -- Calcular gradientes solo si no es un p�xel de borde
                if borde = '0' then
                    sh_pixel_out <= signed(STD_LOGIC_VECTOR(UNSIGNED('0' & fifo(idx_left)) - UNSIGNED('0' & fifo(idx_right))));
                    sv_pixel_out <= signed(STD_LOGIC_VECTOR(UNSIGNED('0' & fifo(idx_top)) - UNSIGNED('0' & fifo(idx_bottom))));
                    grad_valid <= '1';
                else
                    grad_valid <= '0';
                    
                end if;

                -- Actualizar ventana
                window_data(0) <= fifo(idx_center);
                window_data(1) <= fifo(idx_left);
                window_data(2) <= fifo(idx_right);
                window_data(3) <= fifo(idx_top);
                window_data(4) <= fifo(idx_bottom);

                -- Avanzar puntero de lectura y decrementar contador
                read_ptr <= (read_ptr + 1) mod FIFO_SIZE;
                fifo_count <= fifo_count - 1;
            end if;

            -- Actualizaci�n de estados FIFO
            if fifo_count = FIFO_SIZE-1 then
                fifo_full <= '1';
            else
                fifo_full <= '0';
            end if;

            if fifo_count = 0 then
                fifo_empty <= '1';
            else
                fifo_empty <= '0';
            end if;

            -- Control de s_axis_tready
            
        end if;
        if lock = '1' then
                s_axis_tready <= '1';
            else
                if borde='1' then
                   s_axis_tready <= '1';   
                else
                    s_axis_tready <= ready_histo;
                end if;
        end if;
        
    end if;
end process;

    
--    process (clk,lock)
        
--    begin
--             if rising_edge(clk) then
--                 if reset = '1' then
--                    s_axis_tready <= '0';
--                 else
--                    if lock='1' then
--                        s_axis_tready <= '1';                   
--                     else                
--                        s_axis_tready <=ready_histo;                   
--                     end if;
--                end if;
--             end if;
--     end process;
    -- Cálculo del Gradiente Sobel
--    process(window_data)
--    begin
       
--        sh_pixel_out <=signed(STD_LOGIC_VECTOR(UNSIGNED('0'&window_data(1))- UNSIGNED('0'&window_data(2))));
--        sv_pixel_out <=signed(STD_LOGIC_VECTOR(UNSIGNED('0'&window_data(3))- UNSIGNED('0'&window_data(4))));

cont_celdas: process(clk, reset,s_axis_tvalid,contadorPixel)
begin
    if reset = '1' then
        x_counter <= 0;
        y_counter <= 0;
        borde <= '0';
        avance<='0';     
    elsif rising_edge(clk) then
        avance<='0';
         borde <= '0';
        if s_axis_tvalid = '1' then               
            if x_counter = IMG_WIDTH - 1 then
                x_counter <= 0;                                  
                if y_counter = IMG_WIDTH - 1 then
                    y_counter <= 0;
                else
                    y_counter <= y_counter + 1;
                end if;
            else
                x_counter <= x_counter + 1;
            end if;           
        end if;
        
--        if x_counter=2 then
--           if contadorPixel >77 then 
--                        borde <= '1';
--            else
--                        borde <= '0'; 
--            end if;
--        end if;
        
    end if;
    if x_counter=2 or x_counter=3 then
            if contadorPixel >77 then 
                        borde <= '1';
                        avance<='1';
            else
                        borde <= '0'; 
                        avance<='0';
            end if;
            else
                borde <= '0';
        end if;
        
end process;
        
        grad_x_out <= STD_LOGIC_VECTOR(sh_pixel_out);
        grad_y_out <= STD_LOGIC_VECTOR(sv_pixel_out);
--    end process;

    -- Salida de la validez del gradiente
    grad_valid_out <= grad_valid;

end Behavioral;
