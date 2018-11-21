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
static const char *ng0 = "E:/Conejito/Windows/Escuela/ArquitecturaDeComputadoras/Practicas Chidas Chidas/Practica7Pila/Pila.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_3620187407;

unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );
char *ieee_p_3620187407_sub_436279890_3965413181(char *, char *, char *, char *, int );
char *ieee_p_3620187407_sub_436351764_3965413181(char *, char *, char *, char *, int );
int ieee_p_3620187407_sub_514432868_3965413181(char *, char *, char *);


static void work_a_0957945488_3580014032_p_0(char *t0)
{
    char t27[16];
    char t28[16];
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    int t8;
    int t9;
    int t10;
    int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    unsigned char t20;
    unsigned char t21;
    unsigned char t22;
    unsigned char t23;
    unsigned char t24;
    unsigned char t25;
    unsigned char t26;
    unsigned int t29;
    char *t30;
    unsigned int t31;
    unsigned char t32;
    char *t33;
    char *t34;
    int t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    char *t39;
    char *t40;
    char *t41;
    char *t42;
    char *t43;

LAB0:    xsi_set_current_line(27, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 1152U);
    t3 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t3 != 0)
        goto LAB12;

LAB13:
LAB3:    xsi_set_current_line(45, ng0);
    t1 = (t0 + 2312U);
    t2 = *((char **)t1);
    t1 = (t0 + 2728U);
    t5 = *((char **)t1);
    t1 = (t0 + 7484U);
    t8 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t5, t1);
    t9 = (t8 - 0);
    t12 = (t9 * 1);
    xsi_vhdl_check_range_of_index(0, 7, 1, t8);
    t13 = (16U * t12);
    t14 = (0 + t13);
    t6 = (t2 + t14);
    t7 = (t0 + 4176);
    t15 = (t7 + 56U);
    t16 = *((char **)t15);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    memcpy(t18, t6, 16U);
    xsi_driver_first_trans_fast_port(t7);
    xsi_set_current_line(46, ng0);
    t1 = (t0 + 2728U);
    t2 = *((char **)t1);
    t1 = (t0 + 4240);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t15 = *((char **)t7);
    memcpy(t15, t2, 3U);
    xsi_driver_first_trans_fast_port(t1);
    t1 = (t0 + 4032);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(28, ng0);
    t1 = (t0 + 7664);
    t6 = (t0 + 2728U);
    t7 = *((char **)t6);
    t6 = (t7 + 0);
    memcpy(t6, t1, 3U);
    xsi_set_current_line(29, ng0);
    t1 = (t0 + 7667);
    *((int *)t1) = 0;
    t2 = (t0 + 7671);
    *((int *)t2) = 7;
    t8 = 0;
    t9 = 7;

LAB5:    if (t8 <= t9)
        goto LAB6;

LAB8:    goto LAB3;

LAB6:    xsi_set_current_line(30, ng0);
    t5 = (t0 + 7675);
    t3 = (16U != 16U);
    if (t3 == 1)
        goto LAB9;

LAB10:    t7 = (t0 + 7667);
    t10 = *((int *)t7);
    t11 = (t10 - 0);
    t12 = (t11 * 1);
    t13 = (16U * t12);
    t14 = (0U + t13);
    t15 = (t0 + 4112);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    memcpy(t19, t5, 16U);
    xsi_driver_first_trans_delta(t15, t14, 16U, 0LL);

LAB7:    t1 = (t0 + 7667);
    t8 = *((int *)t1);
    t2 = (t0 + 7671);
    t9 = *((int *)t2);
    if (t8 == t9)
        goto LAB8;

LAB11:    t10 = (t8 + 1);
    t8 = t10;
    t5 = (t0 + 7667);
    *((int *)t5) = t8;
    goto LAB5;

LAB9:    xsi_size_not_matching(16U, 16U, 0);
    goto LAB10;

LAB12:    xsi_set_current_line(33, ng0);
    t2 = (t0 + 1352U);
    t5 = *((char **)t2);
    t21 = *((unsigned char *)t5);
    t22 = (t21 == (unsigned char)2);
    if (t22 == 1)
        goto LAB20;

LAB21:    t20 = (unsigned char)0;

LAB22:    if (t20 == 1)
        goto LAB17;

LAB18:    t4 = (unsigned char)0;

LAB19:    if (t4 != 0)
        goto LAB14;

LAB16:    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t20 = *((unsigned char *)t2);
    t21 = (t20 == (unsigned char)3);
    if (t21 == 1)
        goto LAB30;

LAB31:    t4 = (unsigned char)0;

LAB32:    if (t4 == 1)
        goto LAB27;

LAB28:    t3 = (unsigned char)0;

LAB29:    if (t3 != 0)
        goto LAB25;

LAB26:    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t20 = *((unsigned char *)t2);
    t21 = (t20 == (unsigned char)2);
    if (t21 == 1)
        goto LAB38;

LAB39:    t4 = (unsigned char)0;

LAB40:    if (t4 == 1)
        goto LAB35;

LAB36:    t3 = (unsigned char)0;

LAB37:    if (t3 != 0)
        goto LAB33;

LAB34:    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t20 = *((unsigned char *)t2);
    t21 = (t20 == (unsigned char)2);
    if (t21 == 1)
        goto LAB46;

LAB47:    t4 = (unsigned char)0;

LAB48:    if (t4 == 1)
        goto LAB43;

LAB44:    t3 = (unsigned char)0;

LAB45:    if (t3 != 0)
        goto LAB41;

LAB42:
LAB15:    goto LAB3;

LAB14:    xsi_set_current_line(34, ng0);
    t2 = (t0 + 2312U);
    t15 = *((char **)t2);
    t2 = (t0 + 2728U);
    t16 = *((char **)t2);
    t2 = (t0 + 7484U);
    t8 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t16, t2);
    t9 = (t8 - 0);
    t12 = (t9 * 1);
    xsi_vhdl_check_range_of_index(0, 7, 1, t8);
    t13 = (16U * t12);
    t14 = (0 + t13);
    t17 = (t15 + t14);
    t18 = (t28 + 0U);
    t19 = (t18 + 0U);
    *((int *)t19) = 15;
    t19 = (t18 + 4U);
    *((int *)t19) = 0;
    t19 = (t18 + 8U);
    *((int *)t19) = -1;
    t10 = (0 - 15);
    t29 = (t10 * -1);
    t29 = (t29 + 1);
    t19 = (t18 + 12U);
    *((unsigned int *)t19) = t29;
    t19 = ieee_p_3620187407_sub_436279890_3965413181(IEEE_P_3620187407, t27, t17, t28, 1);
    t30 = (t27 + 12U);
    t29 = *((unsigned int *)t30);
    t31 = (1U * t29);
    t32 = (16U != t31);
    if (t32 == 1)
        goto LAB23;

LAB24:    t33 = (t0 + 2728U);
    t34 = *((char **)t33);
    t33 = (t0 + 7484U);
    t11 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t34, t33);
    t35 = (t11 - 0);
    t36 = (t35 * 1);
    t37 = (16U * t36);
    t38 = (0U + t37);
    t39 = (t0 + 4112);
    t40 = (t39 + 56U);
    t41 = *((char **)t40);
    t42 = (t41 + 56U);
    t43 = *((char **)t42);
    memcpy(t43, t19, 16U);
    xsi_driver_first_trans_delta(t39, t38, 16U, 0LL);
    goto LAB15;

LAB17:    t2 = (t0 + 1672U);
    t7 = *((char **)t2);
    t25 = *((unsigned char *)t7);
    t26 = (t25 == (unsigned char)2);
    t4 = t26;
    goto LAB19;

LAB20:    t2 = (t0 + 1512U);
    t6 = *((char **)t2);
    t23 = *((unsigned char *)t6);
    t24 = (t23 == (unsigned char)2);
    t20 = t24;
    goto LAB22;

LAB23:    xsi_size_not_matching(16U, t31, 0);
    goto LAB24;

LAB25:    xsi_set_current_line(36, ng0);
    t1 = (t0 + 2728U);
    t7 = *((char **)t1);
    t1 = (t0 + 7484U);
    t15 = ieee_p_3620187407_sub_436279890_3965413181(IEEE_P_3620187407, t27, t7, t1, 1);
    t16 = (t0 + 2728U);
    t17 = *((char **)t16);
    t16 = (t17 + 0);
    t18 = (t27 + 12U);
    t12 = *((unsigned int *)t18);
    t13 = (1U * t12);
    memcpy(t16, t15, t13);
    xsi_set_current_line(37, ng0);
    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t1 = (t0 + 2728U);
    t5 = *((char **)t1);
    t1 = (t0 + 7484U);
    t8 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t5, t1);
    t9 = (t8 - 0);
    t12 = (t9 * 1);
    t13 = (16U * t12);
    t14 = (0U + t13);
    t6 = (t0 + 4112);
    t7 = (t6 + 56U);
    t15 = *((char **)t7);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    memcpy(t17, t2, 16U);
    xsi_driver_first_trans_delta(t6, t14, 16U, 0LL);
    goto LAB15;

LAB27:    t1 = (t0 + 1672U);
    t6 = *((char **)t1);
    t24 = *((unsigned char *)t6);
    t25 = (t24 == (unsigned char)2);
    t3 = t25;
    goto LAB29;

LAB30:    t1 = (t0 + 1352U);
    t5 = *((char **)t1);
    t22 = *((unsigned char *)t5);
    t23 = (t22 == (unsigned char)3);
    t4 = t23;
    goto LAB32;

LAB33:    xsi_set_current_line(39, ng0);
    t1 = (t0 + 1832U);
    t7 = *((char **)t1);
    t1 = (t0 + 2728U);
    t15 = *((char **)t1);
    t1 = (t0 + 7484U);
    t8 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t15, t1);
    t9 = (t8 - 0);
    t12 = (t9 * 1);
    t13 = (16U * t12);
    t14 = (0U + t13);
    t16 = (t0 + 4112);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    t19 = (t18 + 56U);
    t30 = *((char **)t19);
    memcpy(t30, t7, 16U);
    xsi_driver_first_trans_delta(t16, t14, 16U, 0LL);
    goto LAB15;

LAB35:    t1 = (t0 + 1672U);
    t6 = *((char **)t1);
    t24 = *((unsigned char *)t6);
    t25 = (t24 == (unsigned char)2);
    t3 = t25;
    goto LAB37;

LAB38:    t1 = (t0 + 1352U);
    t5 = *((char **)t1);
    t22 = *((unsigned char *)t5);
    t23 = (t22 == (unsigned char)3);
    t4 = t23;
    goto LAB40;

LAB41:    xsi_set_current_line(41, ng0);
    t1 = (t0 + 2728U);
    t7 = *((char **)t1);
    t1 = (t0 + 7484U);
    t15 = ieee_p_3620187407_sub_436351764_3965413181(IEEE_P_3620187407, t27, t7, t1, 1);
    t16 = (t0 + 2728U);
    t17 = *((char **)t16);
    t16 = (t17 + 0);
    t18 = (t27 + 12U);
    t12 = *((unsigned int *)t18);
    t13 = (1U * t12);
    memcpy(t16, t15, t13);
    xsi_set_current_line(42, ng0);
    t1 = (t0 + 2312U);
    t2 = *((char **)t1);
    t1 = (t0 + 2728U);
    t5 = *((char **)t1);
    t1 = (t0 + 7484U);
    t8 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t5, t1);
    t9 = (t8 - 0);
    t12 = (t9 * 1);
    xsi_vhdl_check_range_of_index(0, 7, 1, t8);
    t13 = (16U * t12);
    t14 = (0 + t13);
    t6 = (t2 + t14);
    t7 = (t28 + 0U);
    t15 = (t7 + 0U);
    *((int *)t15) = 15;
    t15 = (t7 + 4U);
    *((int *)t15) = 0;
    t15 = (t7 + 8U);
    *((int *)t15) = -1;
    t10 = (0 - 15);
    t29 = (t10 * -1);
    t29 = (t29 + 1);
    t15 = (t7 + 12U);
    *((unsigned int *)t15) = t29;
    t15 = ieee_p_3620187407_sub_436279890_3965413181(IEEE_P_3620187407, t27, t6, t28, 1);
    t16 = (t27 + 12U);
    t29 = *((unsigned int *)t16);
    t31 = (1U * t29);
    t3 = (16U != t31);
    if (t3 == 1)
        goto LAB49;

LAB50:    t17 = (t0 + 2728U);
    t18 = *((char **)t17);
    t17 = (t0 + 7484U);
    t11 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t18, t17);
    t35 = (t11 - 0);
    t36 = (t35 * 1);
    t37 = (16U * t36);
    t38 = (0U + t37);
    t19 = (t0 + 4112);
    t30 = (t19 + 56U);
    t33 = *((char **)t30);
    t34 = (t33 + 56U);
    t39 = *((char **)t34);
    memcpy(t39, t15, 16U);
    xsi_driver_first_trans_delta(t19, t38, 16U, 0LL);
    goto LAB15;

LAB43:    t1 = (t0 + 1672U);
    t6 = *((char **)t1);
    t24 = *((unsigned char *)t6);
    t25 = (t24 == (unsigned char)3);
    t3 = t25;
    goto LAB45;

LAB46:    t1 = (t0 + 1352U);
    t5 = *((char **)t1);
    t22 = *((unsigned char *)t5);
    t23 = (t22 == (unsigned char)2);
    t4 = t23;
    goto LAB48;

LAB49:    xsi_size_not_matching(16U, t31, 0);
    goto LAB50;

}


extern void work_a_0957945488_3580014032_init()
{
	static char *pe[] = {(void *)work_a_0957945488_3580014032_p_0};
	xsi_register_didat("work_a_0957945488_3580014032", "isim/tb_Pila_isim_beh.exe.sim/work/a_0957945488_3580014032.didat");
	xsi_register_executes(pe);
}
