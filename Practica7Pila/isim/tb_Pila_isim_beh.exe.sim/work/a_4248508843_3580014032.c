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
static const char *ng0 = "E:/Conejito/Windows/Escuela/ArquitecturaDeComputadoras/Practicas Chidas Chidas/Practica7Pila/tb_Pila.vhd";
extern char *STD_TEXTIO;
extern char *IEEE_P_3564397177;

void ieee_p_3564397177_sub_1281154728_91900896(char *, char *, char *, char *, char *, unsigned char , int );
void ieee_p_3564397177_sub_1496949865_91900896(char *, char *, char *, unsigned char , unsigned char , int );
void ieee_p_3564397177_sub_2743816878_91900896(char *, char *, char *, char *);
void ieee_p_3564397177_sub_3205433008_91900896(char *, char *, char *, char *, char *, unsigned char , int );
void ieee_p_3564397177_sub_3988856810_91900896(char *, char *, char *, char *, char *);


static void work_a_4248508843_3580014032_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    int64 t7;
    int64 t8;

LAB0:    t1 = (t0 + 5368U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(66, ng0);
    t2 = (t0 + 6000);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(67, ng0);
    t2 = (t0 + 2448U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 / 2);
    t2 = (t0 + 5176);
    xsi_process_wait(t2, t8);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(68, ng0);
    t2 = (t0 + 6000);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(69, ng0);
    t2 = (t0 + 2448U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 / 2);
    t2 = (t0 + 5176);
    xsi_process_wait(t2, t8);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    goto LAB2;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

}

static void work_a_4248508843_3580014032_p_1(char *t0)
{
    char t5[16];
    char t10[8];
    char t11[8];
    char t12[8];
    char t13[8];
    char t14[8];
    char t15[8];
    char t16[8];
    char t22[8];
    char t23[16];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t6;
    char *t7;
    int t8;
    unsigned int t9;
    int t17;
    char *t18;
    unsigned char t19;
    int64 t20;
    int t21;

LAB0:    t1 = (t0 + 5616U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(99, ng0);
    t2 = (t0 + 4320U);
    t3 = (t0 + 11755);
    t6 = (t5 + 0U);
    t7 = (t6 + 0U);
    *((int *)t7) = 1;
    t7 = (t6 + 4U);
    *((int *)t7) = 20;
    t7 = (t6 + 8U);
    *((int *)t7) = 1;
    t8 = (20 - 1);
    t9 = (t8 * 1);
    t9 = (t9 + 1);
    t7 = (t6 + 12U);
    *((unsigned int *)t7) = t9;
    std_textio_file_open1(t2, t3, t5, (unsigned char)0);
    xsi_set_current_line(100, ng0);
    t2 = (t0 + 4216U);
    t3 = (t0 + 11775);
    t6 = (t5 + 0U);
    t7 = (t6 + 0U);
    *((int *)t7) = 1;
    t7 = (t6 + 4U);
    *((int *)t7) = 19;
    t7 = (t6 + 8U);
    *((int *)t7) = 1;
    t8 = (19 - 1);
    t9 = (t8 * 1);
    t9 = (t9 + 1);
    t7 = (t6 + 12U);
    *((unsigned int *)t7) = t9;
    std_textio_file_open1(t2, t3, t5, (unsigned char)1);
    xsi_set_current_line(102, ng0);
    t2 = (t0 + 11794);
    t4 = (t0 + 4784U);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t6 = (t7 + 0);
    memcpy(t6, t2, 7U);
    xsi_set_current_line(103, ng0);
    t2 = (t0 + 5424);
    t3 = (t0 + 4496U);
    t4 = (t0 + 4784U);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    memcpy(t10, t7, 7U);
    t6 = (t0 + 11472U);
    t8 = (7U + 2);
    std_textio_write7(STD_TEXTIO, t2, t3, t10, t6, (unsigned char)0, t8);
    xsi_set_current_line(104, ng0);
    t2 = (t0 + 11801);
    t4 = (t0 + 4784U);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t6 = (t7 + 0);
    memcpy(t6, t2, 7U);
    xsi_set_current_line(105, ng0);
    t2 = (t0 + 5424);
    t3 = (t0 + 4496U);
    t4 = (t0 + 4784U);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    memcpy(t11, t7, 7U);
    t6 = (t0 + 11472U);
    t8 = (7U + 2);
    std_textio_write7(STD_TEXTIO, t2, t3, t11, t6, (unsigned char)0, t8);
    xsi_set_current_line(106, ng0);
    t2 = (t0 + 11808);
    t4 = (t0 + 4784U);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t6 = (t7 + 0);
    memcpy(t6, t2, 7U);
    xsi_set_current_line(107, ng0);
    t2 = (t0 + 5424);
    t3 = (t0 + 4496U);
    t4 = (t0 + 4784U);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    memcpy(t12, t7, 7U);
    t6 = (t0 + 11472U);
    t8 = (7U + 2);
    std_textio_write7(STD_TEXTIO, t2, t3, t12, t6, (unsigned char)0, t8);
    xsi_set_current_line(108, ng0);
    t2 = (t0 + 11815);
    t4 = (t0 + 4784U);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t6 = (t7 + 0);
    memcpy(t6, t2, 7U);
    xsi_set_current_line(109, ng0);
    t2 = (t0 + 5424);
    t3 = (t0 + 4496U);
    t4 = (t0 + 4784U);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    memcpy(t13, t7, 7U);
    t6 = (t0 + 11472U);
    t8 = (7U + 2);
    std_textio_write7(STD_TEXTIO, t2, t3, t13, t6, (unsigned char)0, t8);
    xsi_set_current_line(110, ng0);
    t2 = (t0 + 11822);
    t4 = (t0 + 4784U);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t6 = (t7 + 0);
    memcpy(t6, t2, 7U);
    xsi_set_current_line(111, ng0);
    t2 = (t0 + 5424);
    t3 = (t0 + 4496U);
    t4 = (t0 + 4784U);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    memcpy(t14, t7, 7U);
    t6 = (t0 + 11472U);
    t8 = (7U + 2);
    std_textio_write7(STD_TEXTIO, t2, t3, t14, t6, (unsigned char)0, t8);
    xsi_set_current_line(112, ng0);
    t2 = (t0 + 11829);
    t4 = (t0 + 4784U);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t6 = (t7 + 0);
    memcpy(t6, t2, 7U);
    xsi_set_current_line(113, ng0);
    t2 = (t0 + 5424);
    t3 = (t0 + 4496U);
    t4 = (t0 + 4784U);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    memcpy(t15, t7, 7U);
    t6 = (t0 + 11472U);
    t8 = (7U + 2);
    std_textio_write7(STD_TEXTIO, t2, t3, t15, t6, (unsigned char)0, t8);
    xsi_set_current_line(114, ng0);
    t2 = (t0 + 11836);
    t4 = (t0 + 4784U);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t6 = (t7 + 0);
    memcpy(t6, t2, 7U);
    xsi_set_current_line(115, ng0);
    t2 = (t0 + 5424);
    t3 = (t0 + 4496U);
    t4 = (t0 + 4784U);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    memcpy(t16, t7, 7U);
    t6 = (t0 + 11472U);
    t8 = (7U + 2);
    std_textio_write7(STD_TEXTIO, t2, t3, t16, t6, (unsigned char)0, t8);
    xsi_set_current_line(117, ng0);
    t2 = (t0 + 5424);
    t3 = (t0 + 4216U);
    t4 = (t0 + 4496U);
    std_textio_writeline(STD_TEXTIO, t2, t3, t4);
    xsi_set_current_line(120, ng0);
    t2 = (t0 + 11843);
    *((int *)t2) = 0;
    t3 = (t0 + 11847);
    *((int *)t3) = 28;
    t8 = 0;
    t17 = 28;

LAB4:    if (t8 <= t17)
        goto LAB5;

LAB7:    xsi_set_current_line(160, ng0);
    t2 = (t0 + 4320U);
    std_textio_file_close(t2);
    xsi_set_current_line(161, ng0);
    t2 = (t0 + 4216U);
    std_textio_file_close(t2);
    xsi_set_current_line(162, ng0);

LAB15:    *((char **)t1) = &&LAB16;

LAB1:    return;
LAB5:    xsi_set_current_line(122, ng0);
    t4 = (t0 + 5424);
    t6 = (t0 + 4320U);
    t7 = (t0 + 4568U);
    std_textio_readline(STD_TEXTIO, t4, t6, t7);
    xsi_set_current_line(123, ng0);
    t2 = (t0 + 5424);
    t3 = (t0 + 4568U);
    t4 = (t0 + 3408U);
    t6 = *((char **)t4);
    t4 = (t0 + 11456U);
    ieee_p_3564397177_sub_3988856810_91900896(IEEE_P_3564397177, t2, t3, t6, t4);
    xsi_set_current_line(124, ng0);
    t2 = (t0 + 3408U);
    t3 = *((char **)t2);
    t2 = (t0 + 6064);
    t4 = (t2 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t18 = *((char **)t7);
    memcpy(t18, t3, 16U);
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(126, ng0);
    t2 = (t0 + 5424);
    t3 = (t0 + 4568U);
    t4 = (t0 + 3528U);
    t6 = *((char **)t4);
    t4 = (t6 + 0);
    ieee_p_3564397177_sub_2743816878_91900896(IEEE_P_3564397177, t2, t3, t4);
    xsi_set_current_line(127, ng0);
    t2 = (t0 + 3528U);
    t3 = *((char **)t2);
    t19 = *((unsigned char *)t3);
    t2 = (t0 + 6128);
    t4 = (t2 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t18 = *((char **)t7);
    *((unsigned char *)t18) = t19;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(129, ng0);
    t2 = (t0 + 5424);
    t3 = (t0 + 4568U);
    t4 = (t0 + 3648U);
    t6 = *((char **)t4);
    t4 = (t6 + 0);
    ieee_p_3564397177_sub_2743816878_91900896(IEEE_P_3564397177, t2, t3, t4);
    xsi_set_current_line(130, ng0);
    t2 = (t0 + 3648U);
    t3 = *((char **)t2);
    t19 = *((unsigned char *)t3);
    t2 = (t0 + 6192);
    t4 = (t2 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t18 = *((char **)t7);
    *((unsigned char *)t18) = t19;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(132, ng0);
    t2 = (t0 + 5424);
    t3 = (t0 + 4568U);
    t4 = (t0 + 3768U);
    t6 = *((char **)t4);
    t4 = (t6 + 0);
    ieee_p_3564397177_sub_2743816878_91900896(IEEE_P_3564397177, t2, t3, t4);
    xsi_set_current_line(133, ng0);
    t2 = (t0 + 3768U);
    t3 = *((char **)t2);
    t19 = *((unsigned char *)t3);
    t2 = (t0 + 6256);
    t4 = (t2 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t18 = *((char **)t7);
    *((unsigned char *)t18) = t19;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(135, ng0);
    t2 = (t0 + 5424);
    t3 = (t0 + 4568U);
    t4 = (t0 + 3888U);
    t6 = *((char **)t4);
    t4 = (t6 + 0);
    ieee_p_3564397177_sub_2743816878_91900896(IEEE_P_3564397177, t2, t3, t4);
    xsi_set_current_line(136, ng0);
    t2 = (t0 + 3888U);
    t3 = *((char **)t2);
    t19 = *((unsigned char *)t3);
    t2 = (t0 + 6320);
    t4 = (t2 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t18 = *((char **)t7);
    *((unsigned char *)t18) = t19;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(138, ng0);
    t20 = (10 * 1000LL);
    t2 = (t0 + 5424);
    xsi_process_wait(t2, t20);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB6:    t2 = (t0 + 11843);
    t8 = *((int *)t2);
    t3 = (t0 + 11847);
    t17 = *((int *)t3);
    if (t8 == t17)
        goto LAB7;

LAB12:    t21 = (t8 + 1);
    t8 = t21;
    t4 = (t0 + 11843);
    *((int *)t4) = t8;
    goto LAB4;

LAB8:    xsi_set_current_line(140, ng0);
    t2 = (t0 + 1832U);
    t3 = *((char **)t2);
    t2 = (t0 + 2568U);
    t4 = *((char **)t2);
    t2 = (t4 + 0);
    memcpy(t2, t3, 16U);
    xsi_set_current_line(141, ng0);
    t2 = (t0 + 1512U);
    t3 = *((char **)t2);
    t19 = *((unsigned char *)t3);
    t2 = (t0 + 2688U);
    t4 = *((char **)t2);
    t2 = (t4 + 0);
    *((unsigned char *)t2) = t19;
    xsi_set_current_line(142, ng0);
    t2 = (t0 + 1672U);
    t3 = *((char **)t2);
    t19 = *((unsigned char *)t3);
    t2 = (t0 + 2808U);
    t4 = *((char **)t2);
    t2 = (t4 + 0);
    *((unsigned char *)t2) = t19;
    xsi_set_current_line(143, ng0);
    t2 = (t0 + 1352U);
    t3 = *((char **)t2);
    t19 = *((unsigned char *)t3);
    t2 = (t0 + 2928U);
    t4 = *((char **)t2);
    t2 = (t4 + 0);
    *((unsigned char *)t2) = t19;
    xsi_set_current_line(144, ng0);
    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t19 = *((unsigned char *)t3);
    t2 = (t0 + 3048U);
    t4 = *((char **)t2);
    t2 = (t4 + 0);
    *((unsigned char *)t2) = t19;
    xsi_set_current_line(145, ng0);
    t2 = (t0 + 2152U);
    t3 = *((char **)t2);
    t2 = (t0 + 3168U);
    t4 = *((char **)t2);
    t2 = (t4 + 0);
    memcpy(t2, t3, 3U);
    xsi_set_current_line(146, ng0);
    t2 = (t0 + 1992U);
    t3 = *((char **)t2);
    t2 = (t0 + 3288U);
    t4 = *((char **)t2);
    t2 = (t4 + 0);
    memcpy(t2, t3, 16U);
    xsi_set_current_line(148, ng0);
    t2 = (t0 + 5424);
    t3 = (t0 + 4496U);
    t4 = (t0 + 2568U);
    t6 = *((char **)t4);
    memcpy(t5, t6, 16U);
    t4 = (t0 + 11408U);
    t21 = (7U - 1);
    ieee_p_3564397177_sub_3205433008_91900896(IEEE_P_3564397177, t2, t3, t5, t4, (unsigned char)0, t21);
    xsi_set_current_line(149, ng0);
    t2 = (t0 + 5424);
    t3 = (t0 + 4496U);
    t4 = (t0 + 2688U);
    t6 = *((char **)t4);
    t19 = *((unsigned char *)t6);
    t21 = (7U + 3);
    ieee_p_3564397177_sub_1496949865_91900896(IEEE_P_3564397177, t2, t3, t19, (unsigned char)0, t21);
    xsi_set_current_line(150, ng0);
    t2 = (t0 + 5424);
    t3 = (t0 + 4496U);
    t4 = (t0 + 2808U);
    t6 = *((char **)t4);
    t19 = *((unsigned char *)t6);
    t21 = (7U + 2);
    ieee_p_3564397177_sub_1496949865_91900896(IEEE_P_3564397177, t2, t3, t19, (unsigned char)0, t21);
    xsi_set_current_line(151, ng0);
    t2 = (t0 + 5424);
    t3 = (t0 + 4496U);
    t4 = (t0 + 2928U);
    t6 = *((char **)t4);
    t19 = *((unsigned char *)t6);
    t21 = (7U + 2);
    ieee_p_3564397177_sub_1496949865_91900896(IEEE_P_3564397177, t2, t3, t19, (unsigned char)0, t21);
    xsi_set_current_line(152, ng0);
    t2 = (t0 + 5424);
    t3 = (t0 + 4496U);
    t4 = (t0 + 3048U);
    t6 = *((char **)t4);
    t19 = *((unsigned char *)t6);
    t21 = (7U + 1);
    ieee_p_3564397177_sub_1496949865_91900896(IEEE_P_3564397177, t2, t3, t19, (unsigned char)0, t21);
    xsi_set_current_line(153, ng0);
    t2 = (t0 + 5424);
    t3 = (t0 + 4496U);
    t4 = (t0 + 3168U);
    t6 = *((char **)t4);
    memcpy(t22, t6, 3U);
    t4 = (t0 + 11424U);
    t21 = (7U + 2);
    ieee_p_3564397177_sub_1281154728_91900896(IEEE_P_3564397177, t2, t3, t22, t4, (unsigned char)0, t21);
    xsi_set_current_line(154, ng0);
    t2 = (t0 + 5424);
    t3 = (t0 + 4496U);
    t4 = (t0 + 3288U);
    t6 = *((char **)t4);
    memcpy(t23, t6, 16U);
    t4 = (t0 + 11440U);
    t21 = (7U + 2);
    ieee_p_3564397177_sub_3205433008_91900896(IEEE_P_3564397177, t2, t3, t23, t4, (unsigned char)0, t21);
    xsi_set_current_line(156, ng0);
    t2 = (t0 + 5424);
    t3 = (t0 + 4216U);
    t4 = (t0 + 4496U);
    std_textio_writeline(STD_TEXTIO, t2, t3, t4);
    goto LAB6;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

LAB13:    goto LAB2;

LAB14:    goto LAB13;

LAB16:    goto LAB14;

}


extern void work_a_4248508843_3580014032_init()
{
	static char *pe[] = {(void *)work_a_4248508843_3580014032_p_0,(void *)work_a_4248508843_3580014032_p_1};
	xsi_register_didat("work_a_4248508843_3580014032", "isim/tb_Pila_isim_beh.exe.sim/work/a_4248508843_3580014032.didat");
	xsi_register_executes(pe);
}
