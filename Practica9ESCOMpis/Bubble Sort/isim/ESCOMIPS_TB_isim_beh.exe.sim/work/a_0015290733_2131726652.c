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
static const char *ng0 = "C:/Users/David/Desktop/simulador/PILA.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_3620187407;

char *ieee_p_3620187407_sub_436279890_3965413181(char *, char *, char *, char *, int );


static void work_a_0015290733_2131726652_p_0(char *t0)
{
    char t23[16];
    char t25[16];
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    int t5;
    char *t6;
    int t7;
    int t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    int t13;
    int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    char *t18;
    unsigned char t19;
    unsigned char t20;
    unsigned char t21;
    unsigned char t22;
    unsigned char t24;
    char *t26;
    char *t27;
    char *t28;
    char *t29;
    int t30;
    char *t31;
    char *t32;
    int t33;
    unsigned int t34;
    char *t35;
    char *t36;
    char *t37;
    int t38;
    int t39;
    unsigned int t40;
    unsigned int t41;
    char *t42;
    unsigned int t43;
    unsigned int t44;

LAB0:    xsi_set_current_line(38, ng0);
    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 1952U);
    t4 = xsi_signal_has_event(t1);
    if (t4 == 1)
        goto LAB12;

LAB13:    t3 = (unsigned char)0;

LAB14:    if (t3 != 0)
        goto LAB10;

LAB11:
LAB3:    xsi_set_current_line(60, ng0);
    t1 = (t0 + 2528U);
    t2 = *((char **)t1);
    t1 = (t0 + 2648U);
    t6 = *((char **)t1);
    t5 = *((int *)t6);
    t7 = (t5 - 0);
    t15 = (t7 * 1);
    xsi_vhdl_check_range_of_index(0, 7, 1, t5);
    t16 = (16U * t15);
    t17 = (0 + t16);
    t1 = (t2 + t17);
    t9 = (t0 + 4152);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t18 = *((char **)t12);
    memcpy(t18, t1, 16U);
    xsi_driver_first_trans_fast_port(t9);
    t1 = (t0 + 4072);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(39, ng0);
    t5 = (8 - 1);
    t1 = (t0 + 6911);
    *((int *)t1) = 0;
    t6 = (t0 + 6915);
    *((int *)t6) = t5;
    t7 = 0;
    t8 = t5;

LAB5:    if (t7 <= t8)
        goto LAB6;

LAB8:    xsi_set_current_line(42, ng0);
    t1 = (t0 + 2648U);
    t2 = *((char **)t1);
    t1 = (t2 + 0);
    *((int *)t1) = 0;
    goto LAB3;

LAB6:    xsi_set_current_line(40, ng0);
    t9 = xsi_get_transient_memory(16U);
    memset(t9, 0, 16U);
    t10 = t9;
    memset(t10, (unsigned char)2, 16U);
    t11 = (t0 + 2528U);
    t12 = *((char **)t11);
    t11 = (t0 + 6911);
    t13 = *((int *)t11);
    t14 = (t13 - 0);
    t15 = (t14 * 1);
    xsi_vhdl_check_range_of_index(0, 7, 1, *((int *)t11));
    t16 = (16U * t15);
    t17 = (0 + t16);
    t18 = (t12 + t17);
    memcpy(t18, t9, 16U);

LAB7:    t1 = (t0 + 6911);
    t7 = *((int *)t1);
    t2 = (t0 + 6915);
    t8 = *((int *)t2);
    if (t7 == t8)
        goto LAB8;

LAB9:    t5 = (t7 + 1);
    t7 = t5;
    t6 = (t0 + 6911);
    *((int *)t6) = t7;
    goto LAB5;

LAB10:    xsi_set_current_line(44, ng0);
    t2 = (t0 + 1352U);
    t9 = *((char **)t2);
    t21 = *((unsigned char *)t9);
    t2 = (t0 + 1512U);
    t10 = *((char **)t2);
    t22 = *((unsigned char *)t10);
    t11 = ((IEEE_P_2592010699) + 4024);
    t2 = xsi_base_array_concat(t2, t23, t11, (char)99, t21, (char)99, t22, (char)101);
    t12 = (t0 + 1672U);
    t18 = *((char **)t12);
    t24 = *((unsigned char *)t18);
    t26 = ((IEEE_P_2592010699) + 4024);
    t12 = xsi_base_array_concat(t12, t25, t26, (char)97, t2, t23, (char)99, t24, (char)101);
    t27 = (t0 + 2768U);
    t28 = *((char **)t27);
    t27 = (t28 + 0);
    t15 = (1U + 1U);
    t16 = (t15 + 1U);
    memcpy(t27, t12, t16);
    xsi_set_current_line(45, ng0);
    t1 = (t0 + 2768U);
    t2 = *((char **)t1);
    t1 = (t0 + 6919);
    t5 = xsi_mem_cmp(t1, t2, 3U);
    if (t5 == 1)
        goto LAB16;

LAB21:    t9 = (t0 + 6922);
    t7 = xsi_mem_cmp(t9, t2, 3U);
    if (t7 == 1)
        goto LAB17;

LAB22:    t11 = (t0 + 6925);
    t8 = xsi_mem_cmp(t11, t2, 3U);
    if (t8 == 1)
        goto LAB18;

LAB23:    t18 = (t0 + 6928);
    t13 = xsi_mem_cmp(t18, t2, 3U);
    if (t13 == 1)
        goto LAB19;

LAB24:
LAB20:
LAB15:    goto LAB3;

LAB12:    t2 = (t0 + 1992U);
    t6 = *((char **)t2);
    t19 = *((unsigned char *)t6);
    t20 = (t19 == (unsigned char)3);
    t3 = t20;
    goto LAB14;

LAB16:    xsi_set_current_line(47, ng0);
    t27 = (t0 + 2528U);
    t28 = *((char **)t27);
    t27 = (t0 + 2648U);
    t29 = *((char **)t27);
    t14 = *((int *)t29);
    t30 = (t14 - 0);
    t15 = (t30 * 1);
    xsi_vhdl_check_range_of_index(0, 7, 1, t14);
    t16 = (16U * t15);
    t17 = (0 + t16);
    t27 = (t28 + t17);
    t31 = (t25 + 0U);
    t32 = (t31 + 0U);
    *((int *)t32) = 15;
    t32 = (t31 + 4U);
    *((int *)t32) = 0;
    t32 = (t31 + 8U);
    *((int *)t32) = -1;
    t33 = (0 - 15);
    t34 = (t33 * -1);
    t34 = (t34 + 1);
    t32 = (t31 + 12U);
    *((unsigned int *)t32) = t34;
    t32 = ieee_p_3620187407_sub_436279890_3965413181(IEEE_P_3620187407, t23, t27, t25, 1);
    t35 = (t0 + 2528U);
    t36 = *((char **)t35);
    t35 = (t0 + 2648U);
    t37 = *((char **)t35);
    t38 = *((int *)t37);
    t39 = (t38 - 0);
    t34 = (t39 * 1);
    xsi_vhdl_check_range_of_index(0, 7, 1, t38);
    t40 = (16U * t34);
    t41 = (0 + t40);
    t35 = (t36 + t41);
    t42 = (t23 + 12U);
    t43 = *((unsigned int *)t42);
    t44 = (1U * t43);
    memcpy(t35, t32, t44);
    goto LAB15;

LAB17:    xsi_set_current_line(49, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 2528U);
    t6 = *((char **)t1);
    t1 = (t0 + 2648U);
    t9 = *((char **)t1);
    t5 = *((int *)t9);
    t7 = (t5 - 0);
    t15 = (t7 * 1);
    xsi_vhdl_check_range_of_index(0, 7, 1, t5);
    t16 = (16U * t15);
    t17 = (0 + t16);
    t1 = (t6 + t17);
    memcpy(t1, t2, 16U);
    goto LAB15;

LAB18:    xsi_set_current_line(51, ng0);
    t1 = (t0 + 2528U);
    t2 = *((char **)t1);
    t1 = (t0 + 2648U);
    t6 = *((char **)t1);
    t5 = *((int *)t6);
    t7 = (t5 - 0);
    t15 = (t7 * 1);
    xsi_vhdl_check_range_of_index(0, 7, 1, t5);
    t16 = (16U * t15);
    t17 = (0 + t16);
    t1 = (t2 + t17);
    t9 = (t25 + 0U);
    t10 = (t9 + 0U);
    *((int *)t10) = 15;
    t10 = (t9 + 4U);
    *((int *)t10) = 0;
    t10 = (t9 + 8U);
    *((int *)t10) = -1;
    t8 = (0 - 15);
    t34 = (t8 * -1);
    t34 = (t34 + 1);
    t10 = (t9 + 12U);
    *((unsigned int *)t10) = t34;
    t10 = ieee_p_3620187407_sub_436279890_3965413181(IEEE_P_3620187407, t23, t1, t25, 1);
    t11 = (t0 + 2528U);
    t12 = *((char **)t11);
    t11 = (t0 + 2648U);
    t18 = *((char **)t11);
    t13 = *((int *)t18);
    t14 = (t13 - 0);
    t34 = (t14 * 1);
    xsi_vhdl_check_range_of_index(0, 7, 1, t13);
    t40 = (16U * t34);
    t41 = (0 + t40);
    t11 = (t12 + t41);
    t26 = (t23 + 12U);
    t43 = *((unsigned int *)t26);
    t44 = (1U * t43);
    memcpy(t11, t10, t44);
    xsi_set_current_line(52, ng0);
    t1 = (t0 + 2648U);
    t2 = *((char **)t1);
    t5 = *((int *)t2);
    t7 = (t5 + 1);
    t1 = (t0 + 2648U);
    t6 = *((char **)t1);
    t1 = (t6 + 0);
    *((int *)t1) = t7;
    xsi_set_current_line(53, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 2528U);
    t6 = *((char **)t1);
    t1 = (t0 + 2648U);
    t9 = *((char **)t1);
    t5 = *((int *)t9);
    t7 = (t5 - 0);
    t15 = (t7 * 1);
    xsi_vhdl_check_range_of_index(0, 7, 1, t5);
    t16 = (16U * t15);
    t17 = (0 + t16);
    t1 = (t6 + t17);
    memcpy(t1, t2, 16U);
    goto LAB15;

LAB19:    xsi_set_current_line(55, ng0);
    t1 = (t0 + 2648U);
    t2 = *((char **)t1);
    t5 = *((int *)t2);
    t7 = (t5 - 1);
    t1 = (t0 + 2648U);
    t6 = *((char **)t1);
    t1 = (t6 + 0);
    *((int *)t1) = t7;
    goto LAB15;

LAB25:;
}


extern void work_a_0015290733_2131726652_init()
{
	static char *pe[] = {(void *)work_a_0015290733_2131726652_p_0};
	xsi_register_didat("work_a_0015290733_2131726652", "isim/ESCOMIPS_TB_isim_beh.exe.sim/work/a_0015290733_2131726652.didat");
	xsi_register_executes(pe);
}
