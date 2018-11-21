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
static const char *ng0 = "E:/Conejito/Windows/Escuela/ArquitecturaDeComputadoras/Practicas/Practica4ArchivoDeRegistros/BarrelShifter.vhd";



static void work_a_2230983182_1282145386_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    unsigned char t4;
    unsigned char t5;
    int t6;
    int t7;
    char *t8;
    char *t9;
    int t10;
    int t11;
    char *t12;
    char *t13;
    int t14;
    int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    char *t19;
    unsigned char t20;
    unsigned char t21;
    char *t22;
    char *t23;
    int t24;
    int t25;
    int t26;
    int t27;
    unsigned char t28;
    char *t29;
    char *t30;
    char *t31;
    int t32;
    int t33;
    int t34;
    int t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    char *t39;
    unsigned char t40;
    char *t41;
    char *t42;
    int t43;
    int t44;
    unsigned int t45;
    unsigned int t46;
    unsigned int t47;
    char *t48;

LAB0:    xsi_set_current_line(23, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 1928U);
    t3 = *((char **)t1);
    t1 = (t3 + 0);
    memcpy(t1, t2, 16U);
    xsi_set_current_line(24, ng0);
    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t4 = *((unsigned char *)t2);
    t5 = (t4 == (unsigned char)3);
    if (t5 != 0)
        goto LAB2;

LAB4:    xsi_set_current_line(37, ng0);
    t1 = (t0 + 5789);
    *((int *)t1) = 0;
    t2 = (t0 + 5793);
    *((int *)t2) = 3;
    t6 = 0;
    t7 = 3;

LAB21:    if (t6 <= t7)
        goto LAB22;

LAB24:
LAB3:    xsi_set_current_line(49, ng0);
    t1 = (t0 + 1928U);
    t2 = *((char **)t1);
    t1 = (t0 + 3312);
    t3 = (t1 + 56U);
    t8 = *((char **)t3);
    t9 = (t8 + 56U);
    t12 = *((char **)t9);
    memcpy(t12, t2, 16U);
    xsi_driver_first_trans_fast_port(t1);
    t1 = (t0 + 3232);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(25, ng0);
    t1 = (t0 + 5773);
    *((int *)t1) = 0;
    t3 = (t0 + 5777);
    *((int *)t3) = 3;
    t6 = 0;
    t7 = 3;

LAB5:    if (t6 <= t7)
        goto LAB6;

LAB8:    goto LAB3;

LAB6:    xsi_set_current_line(26, ng0);
    t8 = (t0 + 5781);
    *((int *)t8) = 15;
    t9 = (t0 + 5785);
    *((int *)t9) = 0;
    t10 = 15;
    t11 = 0;

LAB9:    if (t10 >= t11)
        goto LAB10;

LAB12:
LAB7:    t1 = (t0 + 5773);
    t6 = *((int *)t1);
    t2 = (t0 + 5777);
    t7 = *((int *)t2);
    if (t6 == t7)
        goto LAB8;

LAB20:    t10 = (t6 + 1);
    t6 = t10;
    t3 = (t0 + 5773);
    *((int *)t3) = t6;
    goto LAB5;

LAB10:    xsi_set_current_line(27, ng0);
    t12 = (t0 + 1192U);
    t13 = *((char **)t12);
    t12 = (t0 + 5773);
    t14 = *((int *)t12);
    t15 = (t14 - 3);
    t16 = (t15 * -1);
    xsi_vhdl_check_range_of_index(3, 0, -1, *((int *)t12));
    t17 = (1U * t16);
    t18 = (0 + t17);
    t19 = (t13 + t18);
    t20 = *((unsigned char *)t19);
    t21 = (t20 == (unsigned char)3);
    if (t21 != 0)
        goto LAB13;

LAB15:
LAB14:
LAB11:    t1 = (t0 + 5781);
    t10 = *((int *)t1);
    t2 = (t0 + 5785);
    t11 = *((int *)t2);
    if (t10 == t11)
        goto LAB12;

LAB19:    t14 = (t10 + -1);
    t10 = t14;
    t3 = (t0 + 5781);
    *((int *)t3) = t10;
    goto LAB9;

LAB13:    xsi_set_current_line(28, ng0);
    t22 = (t0 + 5781);
    t23 = (t0 + 5773);
    t24 = xsi_vhdl_pow(2, *((int *)t23));
    t25 = *((int *)t22);
    t26 = (t25 - t24);
    t27 = (-(1));
    t28 = (t26 > t27);
    if (t28 != 0)
        goto LAB16;

LAB18:    xsi_set_current_line(31, ng0);
    t1 = (t0 + 1928U);
    t2 = *((char **)t1);
    t1 = (t0 + 5781);
    t14 = *((int *)t1);
    t15 = (t14 - 15);
    t16 = (t15 * -1);
    xsi_vhdl_check_range_of_index(15, 0, -1, *((int *)t1));
    t17 = (1U * t16);
    t18 = (0 + t17);
    t3 = (t2 + t18);
    *((unsigned char *)t3) = (unsigned char)2;

LAB17:    goto LAB14;

LAB16:    xsi_set_current_line(29, ng0);
    t29 = (t0 + 1928U);
    t30 = *((char **)t29);
    t29 = (t0 + 5781);
    t31 = (t0 + 5773);
    t32 = xsi_vhdl_pow(2, *((int *)t31));
    t33 = *((int *)t29);
    t34 = (t33 - t32);
    t35 = (t34 - 15);
    t36 = (t35 * -1);
    xsi_vhdl_check_range_of_index(15, 0, -1, t34);
    t37 = (1U * t36);
    t38 = (0 + t37);
    t39 = (t30 + t38);
    t40 = *((unsigned char *)t39);
    t41 = (t0 + 1928U);
    t42 = *((char **)t41);
    t41 = (t0 + 5781);
    t43 = *((int *)t41);
    t44 = (t43 - 15);
    t45 = (t44 * -1);
    xsi_vhdl_check_range_of_index(15, 0, -1, *((int *)t41));
    t46 = (1U * t45);
    t47 = (0 + t46);
    t48 = (t42 + t47);
    *((unsigned char *)t48) = t40;
    goto LAB17;

LAB22:    xsi_set_current_line(38, ng0);
    t3 = (t0 + 5797);
    *((int *)t3) = 0;
    t8 = (t0 + 5801);
    *((int *)t8) = 15;
    t10 = 0;
    t11 = 15;

LAB25:    if (t10 <= t11)
        goto LAB26;

LAB28:
LAB23:    t1 = (t0 + 5789);
    t6 = *((int *)t1);
    t2 = (t0 + 5793);
    t7 = *((int *)t2);
    if (t6 == t7)
        goto LAB24;

LAB36:    t10 = (t6 + 1);
    t6 = t10;
    t3 = (t0 + 5789);
    *((int *)t3) = t6;
    goto LAB21;

LAB26:    xsi_set_current_line(39, ng0);
    t9 = (t0 + 1192U);
    t12 = *((char **)t9);
    t9 = (t0 + 5789);
    t14 = *((int *)t9);
    t15 = (t14 - 3);
    t16 = (t15 * -1);
    xsi_vhdl_check_range_of_index(3, 0, -1, *((int *)t9));
    t17 = (1U * t16);
    t18 = (0 + t17);
    t13 = (t12 + t18);
    t4 = *((unsigned char *)t13);
    t5 = (t4 == (unsigned char)3);
    if (t5 != 0)
        goto LAB29;

LAB31:
LAB30:
LAB27:    t1 = (t0 + 5797);
    t10 = *((int *)t1);
    t2 = (t0 + 5801);
    t11 = *((int *)t2);
    if (t10 == t11)
        goto LAB28;

LAB35:    t14 = (t10 + 1);
    t10 = t14;
    t3 = (t0 + 5797);
    *((int *)t3) = t10;
    goto LAB25;

LAB29:    xsi_set_current_line(40, ng0);
    t19 = (t0 + 5797);
    t22 = (t0 + 5789);
    t24 = xsi_vhdl_pow(2, *((int *)t22));
    t25 = *((int *)t19);
    t26 = (t25 + t24);
    t20 = (t26 < 16);
    if (t20 != 0)
        goto LAB32;

LAB34:    xsi_set_current_line(43, ng0);
    t1 = (t0 + 1928U);
    t2 = *((char **)t1);
    t1 = (t0 + 5797);
    t14 = *((int *)t1);
    t15 = (t14 - 15);
    t16 = (t15 * -1);
    xsi_vhdl_check_range_of_index(15, 0, -1, *((int *)t1));
    t17 = (1U * t16);
    t18 = (0 + t17);
    t3 = (t2 + t18);
    *((unsigned char *)t3) = (unsigned char)2;

LAB33:    goto LAB30;

LAB32:    xsi_set_current_line(41, ng0);
    t23 = (t0 + 1928U);
    t29 = *((char **)t23);
    t23 = (t0 + 5797);
    t30 = (t0 + 5789);
    t27 = xsi_vhdl_pow(2, *((int *)t30));
    t32 = *((int *)t23);
    t33 = (t32 + t27);
    t34 = (t33 - 15);
    t36 = (t34 * -1);
    xsi_vhdl_check_range_of_index(15, 0, -1, t33);
    t37 = (1U * t36);
    t38 = (0 + t37);
    t31 = (t29 + t38);
    t21 = *((unsigned char *)t31);
    t39 = (t0 + 1928U);
    t41 = *((char **)t39);
    t39 = (t0 + 5797);
    t35 = *((int *)t39);
    t43 = (t35 - 15);
    t45 = (t43 * -1);
    xsi_vhdl_check_range_of_index(15, 0, -1, *((int *)t39));
    t46 = (1U * t45);
    t47 = (0 + t46);
    t42 = (t41 + t47);
    *((unsigned char *)t42) = t21;
    goto LAB33;

}


extern void work_a_2230983182_1282145386_init()
{
	static char *pe[] = {(void *)work_a_2230983182_1282145386_p_0};
	xsi_register_didat("work_a_2230983182_1282145386", "isim/tb_ArchivoDeRegistros_isim_beh.exe.sim/work/a_2230983182_1282145386.didat");
	xsi_register_executes(pe);
}
