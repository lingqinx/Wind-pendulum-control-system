///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.30.1.53127/W32 for ARM    04/Apr/2012  13:12:20 /
// Copyright 1999-2011 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  D:\workspace\myworkspace\SW_K60\src\drivers\laser\laser /
//                    .c                                                      /
//    Command line =  D:\workspace\myworkspace\SW_K60\src\drivers\laser\laser /
//                    .c -lCN D:\workspace\myworkspace\SW_K60\build\GD_demo\R /
//                    AM\List\ -lB D:\workspace\myworkspace\SW_K60\build\GD_d /
//                    emo\RAM\List\ -o D:\workspace\myworkspace\SW_K60\build\ /
//                    GD_demo\RAM\Obj\ --no_cse --no_unroll --no_inline       /
//                    --no_code_motion --no_tbaa --no_clustering              /
//                    --no_scheduling --debug --endian=little                 /
//                    --cpu=Cortex-M4 -e --fpu=None --dlib_config             /
//                    "C:\Program Files\IAR Systems\Embedded Workbench        /
//                    6.0_3\arm\INC\c\DLib_Config_Normal.h" -I                /
//                    D:\workspace\myworkspace\SW_K60\build\GD_demo\..\ -I    /
//                    D:\workspace\myworkspace\SW_K60\build\GD_demo\..\..\src /
//                    \common\ -I D:\workspace\myworkspace\SW_K60\build\GD_de /
//                    mo\..\..\src\cpu\ -I D:\workspace\myworkspace\SW_K60\bu /
//                    ild\GD_demo\..\..\src\drivers\ -I                       /
//                    D:\workspace\myworkspace\SW_K60\build\GD_demo\..\..\src /
//                    \drivers\gpio\ -I D:\workspace\myworkspace\SW_K60\build /
//                    \GD_demo\..\..\src\drivers\wdog\ -I                     /
//                    D:\workspace\myworkspace\SW_K60\build\GD_demo\..\..\src /
//                    \drivers\mcg\ -I D:\workspace\myworkspace\SW_K60\build\ /
//                    GD_demo\..\..\src\drivers\uart\ -I                      /
//                    D:\workspace\myworkspace\SW_K60\build\GD_demo\..\..\src /
//                    \drivers\lptmr\ -I D:\workspace\myworkspace\SW_K60\buil /
//                    d\GD_demo\..\..\src\drivers\LED\ -I                     /
//                    D:\workspace\myworkspace\SW_K60\build\GD_demo\..\..\src /
//                    \drivers\fun\ -I D:\workspace\myworkspace\SW_K60\build\ /
//                    GD_demo\..\..\src\drivers\FTM\ -I                       /
//                    D:\workspace\myworkspace\SW_K60\build\GD_demo\..\..\src /
//                    \drivers\pit\ -I D:\workspace\myworkspace\SW_K60\build\ /
//                    GD_demo\..\..\src\drivers\DIPswitch\ -I                 /
//                    D:\workspace\myworkspace\SW_K60\build\GD_demo\..\..\src /
//                    \drivers\steer\ -I D:\workspace\myworkspace\SW_K60\buil /
//                    d\GD_demo\..\..\src\drivers\motor\ -I                   /
//                    D:\workspace\myworkspace\SW_K60\build\GD_demo\..\..\src /
//                    \drivers\laser\ -I D:\workspace\myworkspace\SW_K60\buil /
//                    d\GD_demo\..\..\src\platforms\ -I                       /
//                    D:\workspace\myworkspace\SW_K60\build\GD_demo\..\..\src /
//                    \projects\ -I D:\workspace\myworkspace\SW_K60\build\GD_ /
//                    demo\..\..\src\projects\GD_demo\ -Ol                    /
//    List file    =  D:\workspace\myworkspace\SW_K60\build\GD_demo\RAM\List\ /
//                    laser.s                                                 /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME laser

        #define SHT_PROGBITS 0x1

        EXTERN gpio_init

        PUBLIC LASER_RECV_init
        PUBLIC LASER_init

// D:\workspace\myworkspace\SW_K60\src\drivers\laser\laser.c
//    1 /*
//    2 ************************************************************************
//    3 *                �����ʵ��ѧ K60 ѧϰ����                                        
//    4 * �ļ��� :[laser.c] 
//    5 * ��  �� ��������������
//    6 *��ƸĽ���snowwolf
//    7 *  Email ��snowwolf2012@qq.com
//    8 * ˵  �� ������ ��������
//    9 ***********************************************************************
//   10 */
//   11 #include "laser.h"
//   12 
//   13 
//   14 /*************************************************************************
//   15 *  �������ƣ�LASER_init
//   16 *  ����˵������ʼ������˿ڣ�����IO��Ϊ�������
//   17 *  ����˵������
//   18 *  �������أ���
//   19 *  �޸�ʱ�䣺2012-2-2   �Ѳ���
//   20 *  ��    ע��
//   21 *************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   22 void    LASER_init(void)
//   23 {
LASER_init:
        PUSH     {R7,LR}
//   24     gpio_init(LASER_PORT,LASERbit0,GPO,0);
        MOVS     R3,#+0
        MOVS     R2,#+1
        MOVS     R1,#+1
        MOVS     R0,#+3
        BL       gpio_init
//   25     gpio_init(LASER_PORT,LASERbit1,GPO,0);
        MOVS     R3,#+0
        MOVS     R2,#+1
        MOVS     R1,#+2
        MOVS     R0,#+3
        BL       gpio_init
//   26     gpio_init(LASER_PORT,LASERbit2,GPO,0);
        MOVS     R3,#+0
        MOVS     R2,#+1
        MOVS     R1,#+3
        MOVS     R0,#+3
        BL       gpio_init
//   27     //��ʼ�����չܶ˿�
//   28     LASER_RECV_init();
        BL       LASER_RECV_init
//   29 }
        POP      {R0,PC}          ;; return
//   30 
//   31 
//   32 /*************************************************************************
//   33 *  �������ƣ�LASER_recv_init
//   34 *  ����˵������ʼ�����չܶ˿ڣ�����IO��Ϊ���뷽��
//   35 *  ����˵������
//   36 *  �������أ���
//   37 *  �޸�ʱ�䣺2012-2-2   �Ѳ���
//   38 *  ��    ע��
//   39 *************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   40 void    LASER_RECV_init(void)
//   41 {
LASER_RECV_init:
        PUSH     {R7,LR}
//   42     gpio_init(LASER_RECV_PORT,LASER_RECV_bit0,GPI,0);
        MOVS     R3,#+0
        MOVS     R2,#+0
        MOVS     R1,#+4
        MOVS     R0,#+3
        BL       gpio_init
//   43     gpio_init(LASER_RECV_PORT,LASER_RECV_bit1,GPI,0);
        MOVS     R3,#+0
        MOVS     R2,#+0
        MOVS     R1,#+5
        MOVS     R0,#+3
        BL       gpio_init
//   44     gpio_init(LASER_RECV_PORT,LASER_RECV_bit2,GPI,0);
        MOVS     R3,#+0
        MOVS     R2,#+0
        MOVS     R1,#+6
        MOVS     R0,#+3
        BL       gpio_init
//   45     gpio_init(LASER_RECV_PORT,LASER_RECV_bit3,GPI,0);
        MOVS     R3,#+0
        MOVS     R2,#+0
        MOVS     R1,#+7
        MOVS     R0,#+3
        BL       gpio_init
//   46 }
        POP      {R0,PC}          ;; return

        SECTION `.iar_vfe_header`:DATA:REORDER:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
// 
// 96 bytes in section .text
// 
// 96 bytes of CODE memory
//
//Errors: none
//Warnings: none
