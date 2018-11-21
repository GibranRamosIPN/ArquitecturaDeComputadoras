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

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "E:/Conejito/Windows/Escuela/ArquitecturaDeComputadoras/Practicas/Practica8ContadorDeUnos/RegistroA.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );
char *ieee_p_2592010699_sub_3293060193_503743352(char *, char *, char *, char *, unsigned char );
char *ieee_p_2592010699_sub_393209765_503743352(char *, char *, char *, char *);


static void work_a_2268058537_1172156481_p_0(char *t0)
{
    char t12[16];
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    unsigned char t11;
    unsigned int t13;
    char *t14;

LAB0:    xsi_set_current_line(22, ng0);
    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 1472U);
    t3 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t3 != 0)
        goto LAB5;

LAB6:
LAB3:    t1 = (t0 + 3432);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(23, ng0);
    t1 = (t0 + 5950);
    t6 = (t0 + 3512);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 9U);
    xsi_driver_first_trans_fast_port(t6);
    xsi_set_current_line(24, ng0);
    t1 = (t0 + 5959);
    t5 = (t0 + 2128U);
    t6 = *((char **)t5);
    t5 = (t6 + 0);
    memcpy(t5, t1, 9U);
    goto LAB3;

LAB5:    xsi_set_current_line(26, ng0);
    t2 = (t0 + 1192U);
    t5 = *((char **)t2);
    t4 = *((unsigned char *)t5);
    t11 = (t4 == (unsigned char)3);
    if (t11 != 0)
        goto LAB7;

LAB9:    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB10;

LAB11:    xsi_set_current_line(33, ng0);
    t1 = (t0 + 2128U);
    t2 = *((char **)t1);
    t1 = (t0 + 5904U);
    t5 = ieee_p_2592010699_sub_393209765_503743352(IEEE_P_2592010699, t12, t2, t1);
    t6 = (t12 + 12U);
    t13 = *((unsigned int *)t6);
    t13 = (t13 * 1U);
    t3 = (9U != t13);
    if (t3 == 1)
        goto LAB14;

LAB15:    t7 = (t0 + 3512);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t14 = *((char **)t10);
    memcpy(t14, t5, 9U);
    xsi_driver_first_trans_fast_port(t7);

LAB8:    goto LAB3;

LAB7:    xsi_set_current_line(27, ng0);
    t2 = (t0 + 1032U);
    t6 = *((char **)t2);
    t2 = (t0 + 3512);
    t7 = (t2 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t6, 9U);
    xsi_driver_first_trans_fast_port(t2);
    xsi_set_current_line(28, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 5872U);
    t5 = ieee_p_2592010699_sub_3293060193_503743352(IEEE_P_2592010699, t12, t2, t1, (unsigned char)0);
    t6 = (t0 + 2128U);
    t7 = *((char **)t6);
    t6 = (t7 + 0);
    t8 = (t12 + 12U);
    t13 = *((unsigned int *)t8);
    t13 = (t13 * 1U);
    memcpy(t6, t5, t13);
    goto LAB8;

LAB10:    xsi_set_current_line(30, ng0);
    t1 = (t0 + 2128U);
    t5 = *((char **)t1);
    t1 = xsi_vhdl_bitvec_srl(t1, t5, 9U, 1);
    t6 = (t0 + 2128U);
    t7 = *((char **)t6);
    t6 = (t7 + 0);
    memcpy(t6, t1, 9U);
    xsi_set_current_line(31, ng0);
    t1 = (t0 + 2128U);
    t2 = *((char **)t1);
    t1 = (t0 + 5904U);
    t5 = ieee_p_2592010699_sub_393209765_503743352(IEEE_P_2592010699, t12, t2, t1);
    t6 = (t12 + 12U);
    t13 = *((unsigned int *)t6);
    t13 = (t13 * 1U);
    t3 = (9U != t13);
    if (t3 == 1)
        goto LAB12;

LAB13:    t7 = (t0 + 3512);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t14 = *((char **)t10);
    memcpy(t14, t5, 9U);
    xsi_driver_first_trans_fast_port(t7);
    goto LAB8;

LAB12:    xsi_size_not_matching(9U, t13, 0);
    goto LAB13;

LAB14:    xsi_size_not_matching(9U, t13, 0);
    goto LAB15;

}


extern void work_a_2268058537_1172156481_init()
{
	static char *pe[] = {(void *)work_a_2268058537_1172156481_p_0};
	xsi_register_didat("work_a_2268058537_1172156481", "isim/tb_ContadorDeUnos_isim_beh.exe.sim/work/a_2268058537_1172156481.didat");
	xsi_register_executes(pe);
}
