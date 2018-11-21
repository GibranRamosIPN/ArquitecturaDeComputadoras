/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

#include "xsi.h"

struct XSI_INFO xsi_info;

char *IEEE_P_1242562249;
char *IEEE_P_3620187407;
char *IEEE_P_3499444699;
char *STD_STANDARD;
char *IEEE_P_2592010699;
char *WORK_P_0149253827;


int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    ieee_p_2592010699_init();
    ieee_p_3499444699_init();
    ieee_p_3620187407_init();
    work_p_0149253827_init();
    ieee_p_1242562249_init();
    work_a_2757035957_1172156481_init();
    work_a_0485291814_1172156481_init();
    work_a_2268058537_1172156481_init();
    work_a_3198349164_1172156481_init();
    work_a_0539050556_1172156481_init();
    work_a_0450678623_1172156481_init();
    work_a_0268212191_1172156481_init();


    xsi_register_tops("work_a_0268212191_1172156481");

    IEEE_P_1242562249 = xsi_get_engine_memory("ieee_p_1242562249");
    IEEE_P_3620187407 = xsi_get_engine_memory("ieee_p_3620187407");
    IEEE_P_3499444699 = xsi_get_engine_memory("ieee_p_3499444699");
    STD_STANDARD = xsi_get_engine_memory("std_standard");
    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);
    WORK_P_0149253827 = xsi_get_engine_memory("work_p_0149253827");

    return xsi_run_simulation(argc, argv);

}
