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
static const char *ng0 = "C:/Users/David/Desktop/simulador/ARCHIVO_REGISTROS.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_3620187407;

char *ieee_p_2592010699_sub_3293060193_503743352(char *, char *, char *, char *, unsigned char );
char *ieee_p_2592010699_sub_393209765_503743352(char *, char *, char *, char *);
int ieee_p_3620187407_sub_514432868_3965413181(char *, char *, char *);


static void work_a_4183574008_3004370712_p_0(char *t0)
{
    char t30[16];
    char t31[16];
    char t32[16];
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
    int t12;
    int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    unsigned char t22;
    unsigned char t23;
    unsigned char t24;
    unsigned char t25;
    unsigned char t26;
    unsigned char t27;
    unsigned char t28;
    unsigned char t29;
    unsigned int t33;
    char *t34;
    char *t35;
    char *t36;
    char *t37;
    char *t38;
    char *t39;
    unsigned int t40;
    unsigned char t41;
    char *t42;
    char *t43;
    int t44;
    unsigned int t45;
    unsigned int t46;
    unsigned int t47;
    char *t48;
    char *t49;
    char *t50;
    char *t51;
    char *t52;

LAB0:    xsi_set_current_line(33, ng0);
    t1 = (t0 + 2792U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 2592U);
    t4 = xsi_signal_has_event(t1);
    if (t4 == 1)
        goto LAB12;

LAB13:    t3 = (unsigned char)0;

LAB14:    if (t3 != 0)
        goto LAB10;

LAB11:
LAB3:    t1 = (t0 + 5168);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(35, ng0);
    t5 = (16 - 1);
    t1 = (t0 + 8869);
    *((int *)t1) = 0;
    t6 = (t0 + 8873);
    *((int *)t6) = t5;
    t7 = 0;
    t8 = t5;

LAB5:    if (t7 <= t8)
        goto LAB6;

LAB8:    goto LAB3;

LAB6:    xsi_set_current_line(36, ng0);
    t9 = xsi_get_transient_memory(16U);
    memset(t9, 0, 16U);
    t10 = t9;
    memset(t10, (unsigned char)2, 16U);
    t11 = (t0 + 8869);
    t12 = *((int *)t11);
    t13 = (t12 - 0);
    t14 = (t13 * 1);
    t15 = (16U * t14);
    t16 = (0U + t15);
    t17 = (t0 + 5280);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    memcpy(t21, t9, 16U);
    xsi_driver_first_trans_delta(t17, t16, 16U, 0LL);

LAB7:    t1 = (t0 + 8869);
    t7 = *((int *)t1);
    t2 = (t0 + 8873);
    t8 = *((int *)t2);
    if (t7 == t8)
        goto LAB8;

LAB9:    t5 = (t7 + 1);
    t7 = t5;
    t6 = (t0 + 8869);
    *((int *)t6) = t7;
    goto LAB5;

LAB10:    xsi_set_current_line(39, ng0);
    t2 = (t0 + 2152U);
    t9 = *((char **)t2);
    t24 = *((unsigned char *)t9);
    t25 = (t24 == (unsigned char)3);
    if (t25 != 0)
        goto LAB15;

LAB17:
LAB16:    goto LAB3;

LAB12:    t2 = (t0 + 2632U);
    t6 = *((char **)t2);
    t22 = *((unsigned char *)t6);
    t23 = (t22 == (unsigned char)3);
    t3 = t23;
    goto LAB14;

LAB15:    xsi_set_current_line(40, ng0);
    t2 = (t0 + 2312U);
    t10 = *((char **)t2);
    t26 = *((unsigned char *)t10);
    t27 = (t26 == (unsigned char)3);
    if (t27 != 0)
        goto LAB18;

LAB20:    xsi_set_current_line(50, ng0);
    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t1 = (t0 + 1032U);
    t6 = *((char **)t1);
    t1 = (t0 + 8416U);
    t5 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t6, t1);
    t7 = (t5 - 0);
    t14 = (t7 * 1);
    t15 = (16U * t14);
    t16 = (0U + t15);
    t9 = (t0 + 5280);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    t17 = (t11 + 56U);
    t18 = *((char **)t17);
    memcpy(t18, t2, 16U);
    xsi_driver_first_trans_delta(t9, t16, 16U, 0LL);

LAB19:    goto LAB16;

LAB18:    xsi_set_current_line(41, ng0);
    t2 = (t0 + 2472U);
    t11 = *((char **)t2);
    t28 = *((unsigned char *)t11);
    t29 = (t28 == (unsigned char)3);
    if (t29 != 0)
        goto LAB21;

LAB23:    xsi_set_current_line(46, ng0);
    t1 = (t0 + 2952U);
    t2 = *((char **)t1);
    t1 = (t0 + 1192U);
    t6 = *((char **)t1);
    t1 = (t0 + 8432U);
    t5 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t6, t1);
    t7 = (t5 - 0);
    t14 = (t7 * 1);
    xsi_vhdl_check_range_of_index(0, 15, 1, t5);
    t15 = (16U * t14);
    t16 = (0 + t15);
    t9 = (t2 + t16);
    t10 = (t32 + 0U);
    t11 = (t10 + 0U);
    *((int *)t11) = 15;
    t11 = (t10 + 4U);
    *((int *)t11) = 0;
    t11 = (t10 + 8U);
    *((int *)t11) = -1;
    t8 = (0 - 15);
    t33 = (t8 * -1);
    t33 = (t33 + 1);
    t11 = (t10 + 12U);
    *((unsigned int *)t11) = t33;
    t11 = ieee_p_2592010699_sub_3293060193_503743352(IEEE_P_2592010699, t31, t9, t32, (unsigned char)0);
    t17 = (t31 + 12U);
    t33 = *((unsigned int *)t17);
    t33 = (t33 * 1U);
    t18 = (t0 + 1992U);
    t19 = *((char **)t18);
    t18 = (t0 + 8512U);
    t12 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t19, t18);
    t20 = xsi_vhdl_bitvec_srl(t20, t11, t33, t12);
    t21 = ieee_p_2592010699_sub_393209765_503743352(IEEE_P_2592010699, t30, t20, t31);
    t34 = (t30 + 12U);
    t40 = *((unsigned int *)t34);
    t40 = (t40 * 1U);
    t3 = (16U != t40);
    if (t3 == 1)
        goto LAB26;

LAB27:    t35 = (t0 + 1032U);
    t36 = *((char **)t35);
    t35 = (t0 + 8416U);
    t13 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t36, t35);
    t44 = (t13 - 0);
    t45 = (t44 * 1);
    t46 = (16U * t45);
    t47 = (0U + t46);
    t37 = (t0 + 5280);
    t38 = (t37 + 56U);
    t39 = *((char **)t38);
    t42 = (t39 + 56U);
    t43 = *((char **)t42);
    memcpy(t43, t21, 16U);
    xsi_driver_first_trans_delta(t37, t47, 16U, 0LL);

LAB22:    goto LAB19;

LAB21:    xsi_set_current_line(43, ng0);
    t2 = (t0 + 2952U);
    t17 = *((char **)t2);
    t2 = (t0 + 1192U);
    t18 = *((char **)t2);
    t2 = (t0 + 8432U);
    t5 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t18, t2);
    t7 = (t5 - 0);
    t14 = (t7 * 1);
    xsi_vhdl_check_range_of_index(0, 15, 1, t5);
    t15 = (16U * t14);
    t16 = (0 + t15);
    t19 = (t17 + t16);
    t20 = (t32 + 0U);
    t21 = (t20 + 0U);
    *((int *)t21) = 15;
    t21 = (t20 + 4U);
    *((int *)t21) = 0;
    t21 = (t20 + 8U);
    *((int *)t21) = -1;
    t8 = (0 - 15);
    t33 = (t8 * -1);
    t33 = (t33 + 1);
    t21 = (t20 + 12U);
    *((unsigned int *)t21) = t33;
    t21 = ieee_p_2592010699_sub_3293060193_503743352(IEEE_P_2592010699, t31, t19, t32, (unsigned char)0);
    t34 = (t31 + 12U);
    t33 = *((unsigned int *)t34);
    t33 = (t33 * 1U);
    t35 = (t0 + 1992U);
    t36 = *((char **)t35);
    t35 = (t0 + 8512U);
    t12 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t36, t35);
    t37 = xsi_vhdl_bitvec_sll(t37, t21, t33, t12);
    t38 = ieee_p_2592010699_sub_393209765_503743352(IEEE_P_2592010699, t30, t37, t31);
    t39 = (t30 + 12U);
    t40 = *((unsigned int *)t39);
    t40 = (t40 * 1U);
    t41 = (16U != t40);
    if (t41 == 1)
        goto LAB24;

LAB25:    t42 = (t0 + 1032U);
    t43 = *((char **)t42);
    t42 = (t0 + 8416U);
    t13 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t43, t42);
    t44 = (t13 - 0);
    t45 = (t44 * 1);
    t46 = (16U * t45);
    t47 = (0U + t46);
    t48 = (t0 + 5280);
    t49 = (t48 + 56U);
    t50 = *((char **)t49);
    t51 = (t50 + 56U);
    t52 = *((char **)t51);
    memcpy(t52, t38, 16U);
    xsi_driver_first_trans_delta(t48, t47, 16U, 0LL);
    goto LAB22;

LAB24:    xsi_size_not_matching(16U, t40, 0);
    goto LAB25;

LAB26:    xsi_size_not_matching(16U, t40, 0);
    goto LAB27;

}

static void work_a_4183574008_3004370712_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    int t4;
    int t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;

LAB0:    xsi_set_current_line(57, ng0);

LAB3:    t1 = (t0 + 2952U);
    t2 = *((char **)t1);
    t1 = (t0 + 1192U);
    t3 = *((char **)t1);
    t1 = (t0 + 8432U);
    t4 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t3, t1);
    t5 = (t4 - 0);
    t6 = (t5 * 1);
    xsi_vhdl_check_range_of_index(0, 15, 1, t4);
    t7 = (16U * t6);
    t8 = (0 + t7);
    t9 = (t2 + t8);
    t10 = (t0 + 5344);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t9, 16U);
    xsi_driver_first_trans_fast_port(t10);

LAB2:    t15 = (t0 + 5184);
    *((int *)t15) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_4183574008_3004370712_p_2(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    int t4;
    int t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;

LAB0:    xsi_set_current_line(58, ng0);

LAB3:    t1 = (t0 + 2952U);
    t2 = *((char **)t1);
    t1 = (t0 + 1352U);
    t3 = *((char **)t1);
    t1 = (t0 + 8448U);
    t4 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t3, t1);
    t5 = (t4 - 0);
    t6 = (t5 * 1);
    xsi_vhdl_check_range_of_index(0, 15, 1, t4);
    t7 = (16U * t6);
    t8 = (0 + t7);
    t9 = (t2 + t8);
    t10 = (t0 + 5408);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t9, 16U);
    xsi_driver_first_trans_fast_port(t10);

LAB2:    t15 = (t0 + 5200);
    *((int *)t15) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_4183574008_3004370712_init()
{
	static char *pe[] = {(void *)work_a_4183574008_3004370712_p_0,(void *)work_a_4183574008_3004370712_p_1,(void *)work_a_4183574008_3004370712_p_2};
	xsi_register_didat("work_a_4183574008_3004370712", "isim/ESCOMIPS_TB_isim_beh.exe.sim/work/a_4183574008_3004370712.didat");
	xsi_register_executes(pe);
}
