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
static const char *ng0 = "E:/Conejito/Windows/Escuela/ArquitecturaDeComputadoras/Practicas/Practica8ContadorDeUnos/RegistroB.vhd";
extern char *IEEE_P_3620187407;

char *ieee_p_3620187407_sub_436279890_3965413181(char *, char *, char *, char *, int );


static void work_a_3198349164_1172156481_p_0(char *t0)
{
    char t17[16];
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
    unsigned char t12;
    unsigned char t13;
    unsigned char t14;
    char *t15;
    char *t16;
    unsigned int t18;
    unsigned int t19;

LAB0:    xsi_set_current_line(21, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t4 = *((unsigned char *)t2);
    t11 = (t4 == (unsigned char)3);
    if (t11 == 1)
        goto LAB7;

LAB8:    t3 = (unsigned char)0;

LAB9:    if (t3 != 0)
        goto LAB5;

LAB6:
LAB3:    t1 = (t0 + 3152);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(22, ng0);
    t1 = (t0 + 5412);
    t6 = (t0 + 3232);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 4U);
    xsi_driver_first_trans_fast_port(t6);
    goto LAB3;

LAB5:    xsi_set_current_line(24, ng0);
    t5 = (t0 + 1352U);
    t6 = *((char **)t5);
    t13 = *((unsigned char *)t6);
    t14 = (t13 == (unsigned char)3);
    if (t14 != 0)
        goto LAB10;

LAB12:
LAB11:    xsi_set_current_line(27, ng0);
    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB13;

LAB15:
LAB14:    goto LAB3;

LAB7:    t1 = (t0 + 992U);
    t12 = xsi_signal_has_event(t1);
    t3 = t12;
    goto LAB9;

LAB10:    xsi_set_current_line(25, ng0);
    t5 = (t0 + 5416);
    t8 = (t0 + 3232);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t15 = (t10 + 56U);
    t16 = *((char **)t15);
    memcpy(t16, t5, 4U);
    xsi_driver_first_trans_fast_port(t8);
    goto LAB11;

LAB13:    xsi_set_current_line(28, ng0);
    t1 = (t0 + 1672U);
    t5 = *((char **)t1);
    t1 = (t0 + 5384U);
    t6 = ieee_p_3620187407_sub_436279890_3965413181(IEEE_P_3620187407, t17, t5, t1, 1);
    t7 = (t17 + 12U);
    t18 = *((unsigned int *)t7);
    t19 = (1U * t18);
    t11 = (4U != t19);
    if (t11 == 1)
        goto LAB16;

LAB17:    t8 = (t0 + 3232);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t15 = (t10 + 56U);
    t16 = *((char **)t15);
    memcpy(t16, t6, 4U);
    xsi_driver_first_trans_fast_port(t8);
    goto LAB14;

LAB16:    xsi_size_not_matching(4U, t19, 0);
    goto LAB17;

}


extern void work_a_3198349164_1172156481_init()
{
	static char *pe[] = {(void *)work_a_3198349164_1172156481_p_0};
	xsi_register_didat("work_a_3198349164_1172156481", "isim/tb_ContadorDeUnos_isim_beh.exe.sim/work/a_3198349164_1172156481.didat");
	xsi_register_executes(pe);
}
