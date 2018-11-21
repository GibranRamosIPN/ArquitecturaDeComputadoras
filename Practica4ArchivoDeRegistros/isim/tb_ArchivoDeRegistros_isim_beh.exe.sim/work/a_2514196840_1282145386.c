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
static const char *ng0 = "E:/Conejito/Windows/Escuela/ArquitecturaDeComputadoras/Practicas/Practica4ArchivoDeRegistros/tb_ArchivoDeRegistros.vhd";
extern char *STD_TEXTIO;
extern char *IEEE_P_3564397177;
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );
void ieee_p_3564397177_sub_1496949865_91900896(char *, char *, char *, unsigned char , unsigned char , int );
void ieee_p_3564397177_sub_2743816878_91900896(char *, char *, char *, char *);
void ieee_p_3564397177_sub_2889341154_91900896(char *, char *, char *, char *, char *);
void ieee_p_3564397177_sub_3205433008_91900896(char *, char *, char *, char *, char *, unsigned char , int );


static void work_a_2514196840_1282145386_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    int64 t7;
    int64 t8;

LAB0:    t1 = (t0 + 6320U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(71, ng0);
    t2 = (t0 + 6968);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(72, ng0);
    t2 = (t0 + 3088U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 / 2);
    t2 = (t0 + 6128);
    xsi_process_wait(t2, t8);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(73, ng0);
    t2 = (t0 + 6968);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(74, ng0);
    t2 = (t0 + 3088U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 / 2);
    t2 = (t0 + 6128);
    xsi_process_wait(t2, t8);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    goto LAB2;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

}

static void work_a_2514196840_1282145386_p_1(char *t0)
{
    char t5[16];
    char t10[8];
    char t11[8];
    char t12[8];
    char t13[8];
    char t14[8];
    char t15[8];
    char t16[8];
    char t17[8];
    char t18[8];
    char t19[8];
    char t24[8];
    char t25[8];
    char t26[8];
    char t27[8];
    char t28[16];
    char t29[16];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t6;
    char *t7;
    int t8;
    unsigned int t9;
    int64 t20;
    int t21;
    char *t22;
    unsigned char t23;
    int t30;
    int64 t31;

LAB0:    t1 = (t0 + 6568U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(105, ng0);
    t2 = (t0 + 4736U);
    t3 = (t0 + 14593);
    t6 = (t5 + 0U);
    t7 = (t6 + 0U);
    *((int *)t7) = 1;
    t7 = (t6 + 4U);
    *((int *)t7) = 28;
    t7 = (t6 + 8U);
    *((int *)t7) = 1;
    t8 = (28 - 1);
    t9 = (t8 * 1);
    t9 = (t9 + 1);
    t7 = (t6 + 12U);
    *((unsigned int *)t7) = t9;
    std_textio_file_open1(t2, t3, t5, (unsigned char)1);
    xsi_set_current_line(106, ng0);
    t2 = (t0 + 4840U);
    t3 = (t0 + 14621);
    t6 = (t5 + 0U);
    t7 = (t6 + 0U);
    *((int *)t7) = 1;
    t7 = (t6 + 4U);
    *((int *)t7) = 29;
    t7 = (t6 + 8U);
    *((int *)t7) = 1;
    t8 = (29 - 1);
    t9 = (t8 * 1);
    t9 = (t9 + 1);
    t7 = (t6 + 12U);
    *((unsigned int *)t7) = t9;
    std_textio_file_open1(t2, t3, t5, (unsigned char)0);
    xsi_set_current_line(108, ng0);
    t2 = (t0 + 14650);
    t4 = (t0 + 5736U);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t6 = (t7 + 0);
    memcpy(t6, t2, 5U);
    xsi_set_current_line(109, ng0);
    t2 = (t0 + 6376);
    t3 = (t0 + 5016U);
    t4 = (t0 + 5736U);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    memcpy(t10, t7, 5U);
    t6 = (t0 + 14252U);
    t8 = (5U + 1);
    std_textio_write7(STD_TEXTIO, t2, t3, t10, t6, (unsigned char)0, t8);
    xsi_set_current_line(110, ng0);
    t2 = (t0 + 14655);
    t4 = (t0 + 5304U);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t6 = (t7 + 0);
    memcpy(t6, t2, 4U);
    xsi_set_current_line(111, ng0);
    t2 = (t0 + 6376);
    t3 = (t0 + 5016U);
    t4 = (t0 + 5304U);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    memcpy(t11, t7, 4U);
    t6 = (t0 + 14204U);
    t8 = (4U + 1);
    std_textio_write7(STD_TEXTIO, t2, t3, t11, t6, (unsigned char)0, t8);
    xsi_set_current_line(112, ng0);
    t2 = (t0 + 14659);
    t4 = (t0 + 5448U);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t6 = (t7 + 0);
    memcpy(t6, t2, 6U);
    xsi_set_current_line(113, ng0);
    t2 = (t0 + 6376);
    t3 = (t0 + 5016U);
    t4 = (t0 + 5448U);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    memcpy(t12, t7, 6U);
    t6 = (t0 + 14220U);
    t8 = (6U + 1);
    std_textio_write7(STD_TEXTIO, t2, t3, t12, t6, (unsigned char)0, t8);
    xsi_set_current_line(114, ng0);
    t2 = (t0 + 14665);
    t4 = (t0 + 5304U);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t6 = (t7 + 0);
    memcpy(t6, t2, 4U);
    xsi_set_current_line(115, ng0);
    t2 = (t0 + 6376);
    t3 = (t0 + 5016U);
    t4 = (t0 + 5304U);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    memcpy(t13, t7, 4U);
    t6 = (t0 + 14204U);
    t8 = (4U + 1);
    std_textio_write7(STD_TEXTIO, t2, t3, t13, t6, (unsigned char)0, t8);
    xsi_set_current_line(116, ng0);
    t2 = (t0 + 14669);
    t4 = (t0 + 5304U);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t6 = (t7 + 0);
    memcpy(t6, t2, 4U);
    xsi_set_current_line(117, ng0);
    t2 = (t0 + 6376);
    t3 = (t0 + 5016U);
    t4 = (t0 + 5304U);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    memcpy(t14, t7, 4U);
    t6 = (t0 + 14204U);
    t8 = (4U + 1);
    std_textio_write7(STD_TEXTIO, t2, t3, t14, t6, (unsigned char)0, t8);
    xsi_set_current_line(118, ng0);
    t2 = (t0 + 14673);
    t4 = (t0 + 5304U);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t6 = (t7 + 0);
    memcpy(t6, t2, 4U);
    xsi_set_current_line(119, ng0);
    t2 = (t0 + 6376);
    t3 = (t0 + 5016U);
    t4 = (t0 + 5304U);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    memcpy(t15, t7, 4U);
    t6 = (t0 + 14204U);
    t8 = (4U + 1);
    std_textio_write7(STD_TEXTIO, t2, t3, t15, t6, (unsigned char)0, t8);
    xsi_set_current_line(120, ng0);
    t2 = (t0 + 14677);
    t4 = (t0 + 5304U);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t6 = (t7 + 0);
    memcpy(t6, t2, 4U);
    xsi_set_current_line(121, ng0);
    t2 = (t0 + 6376);
    t3 = (t0 + 5016U);
    t4 = (t0 + 5304U);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    memcpy(t16, t7, 4U);
    t6 = (t0 + 14204U);
    t8 = (4U + 1);
    std_textio_write7(STD_TEXTIO, t2, t3, t16, t6, (unsigned char)0, t8);
    xsi_set_current_line(122, ng0);
    t2 = (t0 + 14681);
    t4 = (t0 + 5304U);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t6 = (t7 + 0);
    memcpy(t6, t2, 4U);
    xsi_set_current_line(123, ng0);
    t2 = (t0 + 6376);
    t3 = (t0 + 5016U);
    t4 = (t0 + 5304U);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    memcpy(t17, t7, 4U);
    t6 = (t0 + 14204U);
    t8 = (4U + 1);
    std_textio_write7(STD_TEXTIO, t2, t3, t17, t6, (unsigned char)0, t8);
    xsi_set_current_line(124, ng0);
    t2 = (t0 + 14685);
    t4 = (t0 + 5304U);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t6 = (t7 + 0);
    memcpy(t6, t2, 4U);
    xsi_set_current_line(125, ng0);
    t2 = (t0 + 6376);
    t3 = (t0 + 5016U);
    t4 = (t0 + 5304U);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    memcpy(t18, t7, 4U);
    t6 = (t0 + 14204U);
    t8 = (4U + 1);
    std_textio_write7(STD_TEXTIO, t2, t3, t18, t6, (unsigned char)0, t8);
    xsi_set_current_line(126, ng0);
    t2 = (t0 + 14689);
    t4 = (t0 + 5304U);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t6 = (t7 + 0);
    memcpy(t6, t2, 4U);
    xsi_set_current_line(127, ng0);
    t2 = (t0 + 6376);
    t3 = (t0 + 5016U);
    t4 = (t0 + 5304U);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    memcpy(t19, t7, 4U);
    t6 = (t0 + 14204U);
    t8 = (4U + 1);
    std_textio_write7(STD_TEXTIO, t2, t3, t19, t6, (unsigned char)0, t8);
    xsi_set_current_line(128, ng0);
    t2 = (t0 + 6376);
    t3 = (t0 + 4736U);
    t4 = (t0 + 5016U);
    std_textio_writeline(STD_TEXTIO, t2, t3, t4);
    xsi_set_current_line(129, ng0);
    t20 = (100 * 1000LL);
    t2 = (t0 + 6376);
    xsi_process_wait(t2, t20);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(131, ng0);
    t2 = (t0 + 14693);
    *((int *)t2) = 0;
    t3 = (t0 + 14697);
    *((int *)t3) = 9;
    t8 = 0;
    t21 = 9;

LAB8:    if (t8 <= t21)
        goto LAB9;

LAB11:    xsi_set_current_line(179, ng0);
    t2 = (t0 + 4840U);
    std_textio_file_close(t2);
    xsi_set_current_line(180, ng0);
    t2 = (t0 + 4736U);
    std_textio_file_close(t2);
    xsi_set_current_line(182, ng0);
    t2 = (t0 + 3088U);
    t3 = *((char **)t2);
    t20 = *((int64 *)t3);
    t31 = (t20 * 10);
    t2 = (t0 + 6376);
    xsi_process_wait(t2, t31);

LAB19:    *((char **)t1) = &&LAB20;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB9:    xsi_set_current_line(132, ng0);
    t4 = (t0 + 6376);
    t6 = (t0 + 4840U);
    t7 = (t0 + 5088U);
    std_textio_readline(STD_TEXTIO, t4, t6, t7);
    xsi_set_current_line(134, ng0);
    t2 = (t0 + 6376);
    t3 = (t0 + 5088U);
    t4 = (t0 + 3448U);
    t6 = *((char **)t4);
    t4 = (t0 + 14124U);
    ieee_p_3564397177_sub_2889341154_91900896(IEEE_P_3564397177, t2, t3, t6, t4);
    xsi_set_current_line(135, ng0);
    t2 = (t0 + 3448U);
    t3 = *((char **)t2);
    t2 = (t0 + 7032);
    t4 = (t2 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t22 = *((char **)t7);
    memcpy(t22, t3, 4U);
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(137, ng0);
    t2 = (t0 + 6376);
    t3 = (t0 + 5088U);
    t4 = (t0 + 3568U);
    t6 = *((char **)t4);
    t4 = (t0 + 14140U);
    ieee_p_3564397177_sub_2889341154_91900896(IEEE_P_3564397177, t2, t3, t6, t4);
    xsi_set_current_line(138, ng0);
    t2 = (t0 + 3568U);
    t3 = *((char **)t2);
    t2 = (t0 + 7096);
    t4 = (t2 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t22 = *((char **)t7);
    memcpy(t22, t3, 4U);
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(140, ng0);
    t2 = (t0 + 6376);
    t3 = (t0 + 5088U);
    t4 = (t0 + 3688U);
    t6 = *((char **)t4);
    t4 = (t0 + 14156U);
    ieee_p_3564397177_sub_2889341154_91900896(IEEE_P_3564397177, t2, t3, t6, t4);
    xsi_set_current_line(141, ng0);
    t2 = (t0 + 3688U);
    t3 = *((char **)t2);
    t2 = (t0 + 7160);
    t4 = (t2 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t22 = *((char **)t7);
    memcpy(t22, t3, 4U);
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(143, ng0);
    t2 = (t0 + 6376);
    t3 = (t0 + 5088U);
    t4 = (t0 + 3808U);
    t6 = *((char **)t4);
    t4 = (t0 + 14172U);
    ieee_p_3564397177_sub_2889341154_91900896(IEEE_P_3564397177, t2, t3, t6, t4);
    xsi_set_current_line(144, ng0);
    t2 = (t0 + 3808U);
    t3 = *((char **)t2);
    t2 = (t0 + 7224);
    t4 = (t2 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t22 = *((char **)t7);
    memcpy(t22, t3, 4U);
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(146, ng0);
    t2 = (t0 + 6376);
    t3 = (t0 + 5088U);
    t4 = (t0 + 3928U);
    t6 = *((char **)t4);
    t4 = (t0 + 14188U);
    ieee_p_3564397177_sub_2889341154_91900896(IEEE_P_3564397177, t2, t3, t6, t4);
    xsi_set_current_line(147, ng0);
    t2 = (t0 + 3928U);
    t3 = *((char **)t2);
    t2 = (t0 + 7288);
    t4 = (t2 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t22 = *((char **)t7);
    memcpy(t22, t3, 16U);
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(149, ng0);
    t2 = (t0 + 6376);
    t3 = (t0 + 5088U);
    t4 = (t0 + 4048U);
    t6 = *((char **)t4);
    t4 = (t6 + 0);
    ieee_p_3564397177_sub_2743816878_91900896(IEEE_P_3564397177, t2, t3, t4);
    xsi_set_current_line(150, ng0);
    t2 = (t0 + 4048U);
    t3 = *((char **)t2);
    t23 = *((unsigned char *)t3);
    t2 = (t0 + 7352);
    t4 = (t2 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t22 = *((char **)t7);
    *((unsigned char *)t22) = t23;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(152, ng0);
    t2 = (t0 + 6376);
    t3 = (t0 + 5088U);
    t4 = (t0 + 4168U);
    t6 = *((char **)t4);
    t4 = (t6 + 0);
    ieee_p_3564397177_sub_2743816878_91900896(IEEE_P_3564397177, t2, t3, t4);
    xsi_set_current_line(153, ng0);
    t2 = (t0 + 4168U);
    t3 = *((char **)t2);
    t23 = *((unsigned char *)t3);
    t2 = (t0 + 7416);
    t4 = (t2 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t22 = *((char **)t7);
    *((unsigned char *)t22) = t23;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(155, ng0);
    t2 = (t0 + 6376);
    t3 = (t0 + 5088U);
    t4 = (t0 + 4288U);
    t6 = *((char **)t4);
    t4 = (t6 + 0);
    ieee_p_3564397177_sub_2743816878_91900896(IEEE_P_3564397177, t2, t3, t4);
    xsi_set_current_line(156, ng0);
    t2 = (t0 + 4288U);
    t3 = *((char **)t2);
    t23 = *((unsigned char *)t3);
    t2 = (t0 + 7480);
    t4 = (t2 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t22 = *((char **)t7);
    *((unsigned char *)t22) = t23;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(158, ng0);
    t2 = (t0 + 6376);
    t3 = (t0 + 5088U);
    t4 = (t0 + 4408U);
    t6 = *((char **)t4);
    t4 = (t6 + 0);
    ieee_p_3564397177_sub_2743816878_91900896(IEEE_P_3564397177, t2, t3, t4);
    xsi_set_current_line(159, ng0);
    t2 = (t0 + 4408U);
    t3 = *((char **)t2);
    t23 = *((unsigned char *)t3);
    t2 = (t0 + 7544);
    t4 = (t2 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t22 = *((char **)t7);
    *((unsigned char *)t22) = t23;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(161, ng0);

LAB14:    t2 = (t0 + 6888);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB15;
    goto LAB1;

LAB10:    t2 = (t0 + 14693);
    t8 = *((int *)t2);
    t3 = (t0 + 14697);
    t21 = *((int *)t3);
    if (t8 == t21)
        goto LAB11;

LAB16:    t30 = (t8 + 1);
    t8 = t30;
    t4 = (t0 + 14693);
    *((int *)t4) = t8;
    goto LAB8;

LAB12:    t4 = (t0 + 6888);
    *((int *)t4) = 0;
    xsi_set_current_line(162, ng0);
    t2 = (t0 + 2632U);
    t3 = *((char **)t2);
    t2 = (t0 + 3208U);
    t4 = *((char **)t2);
    t2 = (t4 + 0);
    memcpy(t2, t3, 16U);
    xsi_set_current_line(163, ng0);
    t2 = (t0 + 2792U);
    t3 = *((char **)t2);
    t2 = (t0 + 3328U);
    t4 = *((char **)t2);
    t2 = (t4 + 0);
    memcpy(t2, t3, 16U);
    xsi_set_current_line(165, ng0);
    t2 = (t0 + 6376);
    t3 = (t0 + 5016U);
    t4 = (t0 + 3448U);
    t6 = *((char **)t4);
    memcpy(t24, t6, 4U);
    t4 = (t0 + 14124U);
    ieee_p_3564397177_sub_3205433008_91900896(IEEE_P_3564397177, t2, t3, t24, t4, (unsigned char)0, 5);
    xsi_set_current_line(166, ng0);
    t2 = (t0 + 6376);
    t3 = (t0 + 5016U);
    t4 = (t0 + 3568U);
    t6 = *((char **)t4);
    memcpy(t25, t6, 4U);
    t4 = (t0 + 14140U);
    ieee_p_3564397177_sub_3205433008_91900896(IEEE_P_3564397177, t2, t3, t25, t4, (unsigned char)0, 5);
    xsi_set_current_line(167, ng0);
    t2 = (t0 + 6376);
    t3 = (t0 + 5016U);
    t4 = (t0 + 3688U);
    t6 = *((char **)t4);
    memcpy(t26, t6, 4U);
    t4 = (t0 + 14156U);
    ieee_p_3564397177_sub_3205433008_91900896(IEEE_P_3564397177, t2, t3, t26, t4, (unsigned char)0, 5);
    xsi_set_current_line(168, ng0);
    t2 = (t0 + 6376);
    t3 = (t0 + 5016U);
    t4 = (t0 + 3808U);
    t6 = *((char **)t4);
    memcpy(t27, t6, 4U);
    t4 = (t0 + 14172U);
    ieee_p_3564397177_sub_3205433008_91900896(IEEE_P_3564397177, t2, t3, t27, t4, (unsigned char)0, 5);
    xsi_set_current_line(169, ng0);
    t2 = (t0 + 6376);
    t3 = (t0 + 5016U);
    t4 = (t0 + 3928U);
    t6 = *((char **)t4);
    memcpy(t5, t6, 16U);
    t4 = (t0 + 14188U);
    ieee_p_3564397177_sub_3205433008_91900896(IEEE_P_3564397177, t2, t3, t5, t4, (unsigned char)0, 5);
    xsi_set_current_line(170, ng0);
    t2 = (t0 + 6376);
    t3 = (t0 + 5016U);
    t4 = (t0 + 4048U);
    t6 = *((char **)t4);
    t23 = *((unsigned char *)t6);
    ieee_p_3564397177_sub_1496949865_91900896(IEEE_P_3564397177, t2, t3, t23, (unsigned char)0, 5);
    xsi_set_current_line(171, ng0);
    t2 = (t0 + 6376);
    t3 = (t0 + 5016U);
    t4 = (t0 + 4168U);
    t6 = *((char **)t4);
    t23 = *((unsigned char *)t6);
    ieee_p_3564397177_sub_1496949865_91900896(IEEE_P_3564397177, t2, t3, t23, (unsigned char)0, 5);
    xsi_set_current_line(172, ng0);
    t2 = (t0 + 6376);
    t3 = (t0 + 5016U);
    t4 = (t0 + 4288U);
    t6 = *((char **)t4);
    t23 = *((unsigned char *)t6);
    ieee_p_3564397177_sub_1496949865_91900896(IEEE_P_3564397177, t2, t3, t23, (unsigned char)0, 5);
    xsi_set_current_line(173, ng0);
    t2 = (t0 + 6376);
    t3 = (t0 + 5016U);
    t4 = (t0 + 3208U);
    t6 = *((char **)t4);
    memcpy(t28, t6, 16U);
    t4 = (t0 + 14092U);
    ieee_p_3564397177_sub_3205433008_91900896(IEEE_P_3564397177, t2, t3, t28, t4, (unsigned char)0, 5);
    xsi_set_current_line(174, ng0);
    t2 = (t0 + 6376);
    t3 = (t0 + 5016U);
    t4 = (t0 + 3328U);
    t6 = *((char **)t4);
    memcpy(t29, t6, 16U);
    t4 = (t0 + 14108U);
    ieee_p_3564397177_sub_3205433008_91900896(IEEE_P_3564397177, t2, t3, t29, t4, (unsigned char)0, 5);
    xsi_set_current_line(175, ng0);
    t2 = (t0 + 6376);
    t3 = (t0 + 4736U);
    t4 = (t0 + 5016U);
    std_textio_writeline(STD_TEXTIO, t2, t3, t4);
    goto LAB10;

LAB13:    t3 = (t0 + 1792U);
    t23 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t3, 0U, 0U);
    if (t23 == 1)
        goto LAB12;
    else
        goto LAB14;

LAB15:    goto LAB13;

LAB17:    xsi_set_current_line(184, ng0);

LAB23:    *((char **)t1) = &&LAB24;
    goto LAB1;

LAB18:    goto LAB17;

LAB20:    goto LAB18;

LAB21:    goto LAB2;

LAB22:    goto LAB21;

LAB24:    goto LAB22;

}


extern void work_a_2514196840_1282145386_init()
{
	static char *pe[] = {(void *)work_a_2514196840_1282145386_p_0,(void *)work_a_2514196840_1282145386_p_1};
	xsi_register_didat("work_a_2514196840_1282145386", "isim/tb_ArchivoDeRegistros_isim_beh.exe.sim/work/a_2514196840_1282145386.didat");
	xsi_register_executes(pe);
}
