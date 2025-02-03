/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2013 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/


#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2013 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/


#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
typedef void (*funcp)(char *, char *);
extern void execute_2271(char*, char *);
extern void execute_2272(char*, char *);
extern void execute_2273(char*, char *);
extern void execute_2274(char*, char *);
extern void execute_26(char*, char *);
extern void execute_28(char*, char *);
extern void execute_29(char*, char *);
extern void execute_31(char*, char *);
extern void execute_33(char*, char *);
extern void execute_42(char*, char *);
extern void execute_48(char*, char *);
extern void execute_51(char*, char *);
extern void execute_57(char*, char *);
extern void execute_58(char*, char *);
extern void execute_59(char*, char *);
extern void execute_77(char*, char *);
extern void execute_78(char*, char *);
extern void execute_79(char*, char *);
extern void execute_80(char*, char *);
extern void execute_81(char*, char *);
extern void execute_82(char*, char *);
extern void execute_83(char*, char *);
extern void execute_103(char*, char *);
extern void execute_105(char*, char *);
extern void execute_111(char*, char *);
extern void execute_115(char*, char *);
extern void execute_123(char*, char *);
extern void execute_124(char*, char *);
extern void execute_125(char*, char *);
extern void execute_137(char*, char *);
extern void execute_255(char*, char *);
extern void execute_260(char*, char *);
extern void execute_270(char*, char *);
extern void execute_516(char*, char *);
extern void execute_526(char*, char *);
extern void execute_532(char*, char *);
extern void execute_533(char*, char *);
extern void transaction_0(char*, char*, unsigned, unsigned, unsigned);
extern void vhdl_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
extern void transaction_38(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_622(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_623(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_624(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_625(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_626(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_627(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_629(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_630(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_631(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_632(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_633(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_634(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_635(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_636(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_644(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_645(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_648(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_649(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_655(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_662(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_669(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_676(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_683(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_696(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_703(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_716(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_723(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_730(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_737(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_743(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_753(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_754(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_755(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_756(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_757(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_758(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_759(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_760(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_761(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_762(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_763(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_764(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_765(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_766(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_767(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_768(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_769(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_770(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_771(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_772(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_773(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_774(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_775(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_776(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_777(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_778(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_779(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_780(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_781(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_782(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_783(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_788(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_789(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_791(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_793(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_795(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_797(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_799(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_801(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_802(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_804(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_806(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_810(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_817(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_824(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_831(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_844(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_851(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_858(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_865(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_878(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_885(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_892(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_899(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_906(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_919(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_926(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_933(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_940(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_953(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_960(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_967(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_974(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_987(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_994(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1001(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1008(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1021(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1028(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1041(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1048(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1055(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1062(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1075(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1082(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1089(char*, char*, unsigned, unsigned, unsigned);
funcp funcTab[146] = {(funcp)execute_2271, (funcp)execute_2272, (funcp)execute_2273, (funcp)execute_2274, (funcp)execute_26, (funcp)execute_28, (funcp)execute_29, (funcp)execute_31, (funcp)execute_33, (funcp)execute_42, (funcp)execute_48, (funcp)execute_51, (funcp)execute_57, (funcp)execute_58, (funcp)execute_59, (funcp)execute_77, (funcp)execute_78, (funcp)execute_79, (funcp)execute_80, (funcp)execute_81, (funcp)execute_82, (funcp)execute_83, (funcp)execute_103, (funcp)execute_105, (funcp)execute_111, (funcp)execute_115, (funcp)execute_123, (funcp)execute_124, (funcp)execute_125, (funcp)execute_137, (funcp)execute_255, (funcp)execute_260, (funcp)execute_270, (funcp)execute_516, (funcp)execute_526, (funcp)execute_532, (funcp)execute_533, (funcp)transaction_0, (funcp)vhdl_transfunc_eventcallback, (funcp)transaction_38, (funcp)transaction_622, (funcp)transaction_623, (funcp)transaction_624, (funcp)transaction_625, (funcp)transaction_626, (funcp)transaction_627, (funcp)transaction_629, (funcp)transaction_630, (funcp)transaction_631, (funcp)transaction_632, (funcp)transaction_633, (funcp)transaction_634, (funcp)transaction_635, (funcp)transaction_636, (funcp)transaction_644, (funcp)transaction_645, (funcp)transaction_648, (funcp)transaction_649, (funcp)transaction_655, (funcp)transaction_662, (funcp)transaction_669, (funcp)transaction_676, (funcp)transaction_683, (funcp)transaction_696, (funcp)transaction_703, (funcp)transaction_716, (funcp)transaction_723, (funcp)transaction_730, (funcp)transaction_737, (funcp)transaction_743, (funcp)transaction_753, (funcp)transaction_754, (funcp)transaction_755, (funcp)transaction_756, (funcp)transaction_757, (funcp)transaction_758, (funcp)transaction_759, (funcp)transaction_760, (funcp)transaction_761, (funcp)transaction_762, (funcp)transaction_763, (funcp)transaction_764, (funcp)transaction_765, (funcp)transaction_766, (funcp)transaction_767, (funcp)transaction_768, (funcp)transaction_769, (funcp)transaction_770, (funcp)transaction_771, (funcp)transaction_772, (funcp)transaction_773, (funcp)transaction_774, (funcp)transaction_775, (funcp)transaction_776, (funcp)transaction_777, (funcp)transaction_778, (funcp)transaction_779, (funcp)transaction_780, (funcp)transaction_781, (funcp)transaction_782, (funcp)transaction_783, (funcp)transaction_788, (funcp)transaction_789, (funcp)transaction_791, (funcp)transaction_793, (funcp)transaction_795, (funcp)transaction_797, (funcp)transaction_799, (funcp)transaction_801, (funcp)transaction_802, (funcp)transaction_804, (funcp)transaction_806, (funcp)transaction_810, (funcp)transaction_817, (funcp)transaction_824, (funcp)transaction_831, (funcp)transaction_844, (funcp)transaction_851, (funcp)transaction_858, (funcp)transaction_865, (funcp)transaction_878, (funcp)transaction_885, (funcp)transaction_892, (funcp)transaction_899, (funcp)transaction_906, (funcp)transaction_919, (funcp)transaction_926, (funcp)transaction_933, (funcp)transaction_940, (funcp)transaction_953, (funcp)transaction_960, (funcp)transaction_967, (funcp)transaction_974, (funcp)transaction_987, (funcp)transaction_994, (funcp)transaction_1001, (funcp)transaction_1008, (funcp)transaction_1021, (funcp)transaction_1028, (funcp)transaction_1041, (funcp)transaction_1048, (funcp)transaction_1055, (funcp)transaction_1062, (funcp)transaction_1075, (funcp)transaction_1082, (funcp)transaction_1089};
const int NumRelocateId= 146;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/testbench_top_hog_func_synth/xsim.reloc",  (void **)funcTab, 146);
	iki_vhdl_file_variable_register(dp + 236968);
	iki_vhdl_file_variable_register(dp + 237024);
	iki_vhdl_file_variable_register(dp + 248160);
	iki_vhdl_file_variable_register(dp + 248216);
	iki_vhdl_file_variable_register(dp + 248272);


	/*Populate the transaction function pointer field in the whole net structure */
}

void sensitize(char *dp)
{
	iki_sensitize(dp, "xsim.dir/testbench_top_hog_func_synth/xsim.reloc");
}

	// Initialize Verilog nets in mixed simulation, for the cases when the value at time 0 should be propagated from the mixed language Vhdl net

void simulate(char *dp)
{
		iki_schedule_processes_at_time_zero(dp, "xsim.dir/testbench_top_hog_func_synth/xsim.reloc");

	iki_execute_processes();

	// Schedule resolution functions for the multiply driven Verilog nets that have strength
	// Schedule transaction functions for the singly driven Verilog nets that have strength

}
#include "iki_bridge.h"
void relocate(char *);

void sensitize(char *);

void simulate(char *);

extern SYSTEMCLIB_IMP_DLLSPEC void local_register_implicit_channel(int, char*);
extern void implicit_HDL_SCinstatiate();

extern SYSTEMCLIB_IMP_DLLSPEC int xsim_argc_copy ;
extern SYSTEMCLIB_IMP_DLLSPEC char** xsim_argv_copy ;

int main(int argc, char **argv)
{
    iki_heap_initialize("ms", "isimmm", 0, 2147483648) ;
    iki_set_sv_type_file_path_name("xsim.dir/testbench_top_hog_func_synth/xsim.svtype");
    iki_set_crvs_dump_file_path_name("xsim.dir/testbench_top_hog_func_synth/xsim.crvsdump");
    void* design_handle = iki_create_design("xsim.dir/testbench_top_hog_func_synth/xsim.mem", (void *)relocate, (void *)sensitize, (void *)simulate, 0, isimBridge_getWdbWriter(), 0, argc, argv);
     iki_set_rc_trial_count(100);
    (void) design_handle;
    return iki_simulate_design();
}
