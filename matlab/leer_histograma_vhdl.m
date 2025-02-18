function [histogramas] = leer_histograma_vhdl(nombre_archivo, varargin)
% LEER_HISTOGRAMA_VHDL Lee archivos de histogramas generados desde VHDL
%
%   histogramas = LEER_HISTOGRAMA_VHDL(nombre_archivo)
%   Lee un archivo con 16 celdas de 9 bines cada una (valores sin signo)
%
%   histogramas = LEER_HISTOGRAMA_VHDL(..., 'Celdas', num_celdas)
%   Especifica el número de celdas/histogramas a leer (default: 16)
%
%   histogramas = LEER_HISTOGRAMA_VHDL(..., 'Bines', num_bines)
%   Especifica el número de bines por celda (default: 9)
%
%   histogramas = LEER_HISTOGRAMA_VHDL(..., 'Signed', true/false)
%   Manejo de datos con signo en complemento a 2 (default: false)
%
% Ejemplo básico:
%   h = leer_histograma_vhdl('histograma.txt');
%
% Ejemplo con parámetros:
%   h = leer_histograma_vhdl('datos_signed.txt', 'Signed', true, 'Celdas', 32);

    % Valores por defecto y parámetros opcionales
    p = inputParser;
    addRequired(p, 'nombre_archivo');
    addParameter(p, 'Celdas', 16, @isnumeric);
    addParameter(p, 'Bines', 9, @isnumeric);
    addParameter(p, 'Signed', false, @islogical);

    parse(p, nombre_archivo, varargin{:});

    num_celdas = p.Results.Celdas;
    num_bines = p.Results.Bines;
    con_signo = p.Results.Signed;

    % Inicialización de la matriz de salida
    histogramas = zeros(num_celdas, num_bines);

    % Apertura del archivo
    fileID = fopen(nombre_archivo, 'r');
    if fileID == -1
        error('No se pudo abrir el archivo: %s', nombre_archivo);
    end

    % Procesamiento línea por línea
    for celda = 17:2*num_celdas
        linea_actual = fgetl(fileID);

        if linea_actual == -1
            fclose(fileID);
            error('El archivo solo contiene %d celdas (se esperaban %d)', celda-1, num_celdas);
        end

        bins = strsplit(strtrim(linea_actual), ' ');

        if length(bins) ~= num_bines
            fclose(fileID);
            error('Línea %d: Se esperaban %d bines, se encontraron %d', celda, num_bines, length(bins));
        end

        % Procesamiento de cada bin
        for bin = 1:num_bines
            bin_str = bins{bin};

            % Validación de longitud del bin
            if length(bin_str) ~= 21
                fclose(fileID);
                error('Bin %d en celda %d: longitud incorrecta (%d bits)', bin, celda, length(bin_str));
            end

            % Conversión numérica
            if con_signo
                % Conversión con signo (complemento a 2)
                if bin_str(1) == '1'
                    valor = bin2dec(bin_str) - 2^21;
                else
                    valor = bin2dec(bin_str);
                end
            else
                % Conversión sin signo
                valor = bin2dec(bin_str);
            end

            histogramas(celda, bin) = valor;
        end
    end

    fclose(fileID);
end
