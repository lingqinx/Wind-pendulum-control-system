///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.30.1.53127/W32 for ARM    03/Apr/2012  04:21:56 /
// Copyright 1999-2011 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  D:\workspace\myworkspace\SW_K60\src\drivers\exti\exti.c /
//    Command line =  D:\workspace\myworkspace\SW_K60\src\drivers\exti\exti.c /
//                     -lCN D:\workspace\myworkspace\SW_K60\build\ftm_demo\FL /
//                    ASH\List\ -lB D:\workspace\myworkspace\SW_K60\build\ftm /
//                    _demo\FLASH\List\ -o D:\workspace\myworkspace\SW_K60\bu /
//                    ild\ftm_demo\FLASH\Obj\ --no_cse --no_unroll            /
//                    --no_inline --no_code_motion --no_tbaa --no_clustering  /
//                    --no_scheduling --debug --endian=little                 /
//                    --cpu=Cortex-M4 -e --fpu=None --dlib_config             /
//                    "C:\Program Files\IAR Systems\Embedded Workbench        /
//                    6.0_3\arm\INC\c\DLib_Config_Normal.h" -I                /
//                    D:\workspace\myworkspace\SW_K60\build\ftm_demo\..\ -I   /
//                    D:\workspace\myworkspace\SW_K60\build\ftm_demo\..\..\sr /
//                    c\common\ -I D:\workspace\myworkspace\SW_K60\build\ftm_ /
//                    demo\..\..\src\cpu\ -I D:\workspace\myworkspace\SW_K60\ /
//                    build\ftm_demo\..\..\src\drivers\ -I                    /
//                    D:\workspace\myworkspace\SW_K60\build\ftm_demo\..\..\sr /
//                    c\drivers\gpio\ -I D:\workspace\myworkspace\SW_K60\buil /
//                    d\ftm_demo\..\..\src\drivers\wdog\ -I                   /
//                    D:\workspace\myworkspace\SW_K60\build\ftm_demo\..\..\sr /
//                    c\drivers\mcg\ -I D:\workspace\myworkspace\SW_K60\build /
//                    \ftm_demo\..\..\src\drivers\uart\ -I                    /
//                    D:\workspace\myworkspace\SW_K60\build\ftm_demo\..\..\sr /
//                    c\drivers\lptmr\ -I D:\workspace\myworkspace\SW_K60\bui /
//                    ld\ftm_demo\..\..\src\drivers\adc\ -I                   /
//                    D:\workspace\myworkspace\SW_K60\build\ftm_demo\..\..\sr /
//                    c\drivers\exti\ -I D:\workspace\myworkspace\SW_K60\buil /
//                    d\ftm_demo\..\..\src\drivers\LED\ -I                    /
//                    D:\workspace\myworkspace\SW_K60\build\ftm_demo\..\..\sr /
//                    c\drivers\fun\ -I D:\workspace\myworkspace\SW_K60\build /
//                    \ftm_demo\..\..\src\drivers\FTM\ -I                     /
//                    D:\workspace\myworkspace\SW_K60\build\ftm_demo\..\..\sr /
//                    c\drivers\pit\ -I D:\workspace\myworkspace\SW_K60\build /
//                    \ftm_demo\..\..\src\platforms\ -I                       /
//                    D:\workspace\myworkspace\SW_K60\build\ftm_demo\..\..\sr /
//                    c\projects\ -I D:\workspace\myworkspace\SW_K60\build\ft /
//                    m_demo\..\..\src\projects\ftm_demo\ -Ol                 /
//    List file    =  D:\workspace\myworkspace\SW_K60\build\ftm_demo\FLASH\Li /
//                    st\exti.s                                               /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME exti

        #define SHT_PROGBITS 0x1

        EXTERN GPIOx
        EXTERN PORTX
        EXTERN enable_irq

        PUBLIC exti_init

// D:\workspace\myworkspace\SW_K60\src\drivers\exti\exti.c
//    1 /******************** (C) COPYRIGHT 2011 Ұ��Ƕ��ʽ���������� ********************
//    2  * �ļ���       ��exti.c
//    3  * ����         ��EXTI�ⲿGPIO�ж�����
//    4  *          
//    5  * ʵ��ƽ̨     ��Ұ��kinetis������
//    6  * ��汾       ��
//    7  * Ƕ��ϵͳ     ��
//    8  * 
//    9  * ����         ��Ұ��Ƕ��ʽ���������� 
//   10  * �Ա���       ��http://firestm32.taobao.com
//   11  * ����֧����̳ ��http://www.ourdev.cn/bbs/bbs_list.jsp?bbs_id=1008   
//   12 **********************************************************************************/	
//   13 
//   14 #include "common.h"
//   15 #include "gpio.h"
//   16 #include "exti.h"   
//   17 
//   18 
//   19 
//   20 /*************************************************************************
//   21 *                             Ұ��Ƕ��ʽ����������
//   22 *  
//   23 *  �������ƣ�exti_init
//   24 *  ����˵����EXTI�ⲿGPIO�жϳ�ʼ��
//   25 *  ����˵����PORTx       �˿ںţ�PORTA,PORTB,PORTC,PORTD,PORTE��
//   26 *            n           �˿�����
//   27 *            exti_cfg    ����ѡ�����������ѡ��
//   28 *  �������أ���
//   29 *  �޸�ʱ�䣺2012-1-20
//   30 *  ��    ע��
//   31 *************************************************************************/

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//   32 void  exti_init(PORTx portx, u8 n,exti_cfg cfg)
//   33 {
exti_init:
        PUSH     {R4,LR}
//   34     
//   35     SIM_SCGC5 |= (SIM_SCGC5_PORTA_MASK<<portx);      //����PORTx�˿�
        LDR.N    R3,??exti_init_0  ;; 0x40048038
        LDR      R3,[R3, #+0]
        MOV      R4,#+512
        LSLS     R4,R4,R0
        ORRS     R3,R4,R3
        LDR.N    R4,??exti_init_0  ;; 0x40048038
        STR      R3,[R4, #+0]
//   36     
//   37     PORT_PCR_REG(PORTX[portx],n)= PORT_PCR_MUX(1)| PORT_PCR_IRQC(cfg & 0x7f ) | PORT_PCR_PE_MASK | ((cfg & 0x80 )>>7);   // ����GPIO , ȷ������ģʽ ,������������������
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R3,??exti_init_0+0x4
        LDR      R3,[R3, R0, LSL #+2]
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        LSLS     R4,R2,#+16
        ANDS     R4,R4,#0xF0000
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        LSRS     R2,R2,#+7
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        ORRS     R2,R2,R4
        ORRS     R2,R2,#0x102
        STR      R2,[R3, R1, LSL #+2]
//   38     GPIO_PDDR_REG(GPIOx[portx])&=~(1<<n);           //����ģʽ
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R2,??exti_init_0+0x8
        LDR      R2,[R2, R0, LSL #+2]
        LDR      R2,[R2, #+20]
        MOVS     R3,#+1
        LSLS     R1,R3,R1
        BICS     R1,R2,R1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R2,??exti_init_0+0x8
        LDR      R2,[R2, R0, LSL #+2]
        STR      R1,[R2, #+20]
//   39        
//   40     enable_irq(portx+87);                           //ʹ��PORT�жϣ�PORTA��ISR�жϺ�Ϊ87
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADDS     R0,R0,#+87
        BL       enable_irq
//   41 }
        POP      {R4,PC}          ;; return
        DATA
??exti_init_0:
        DC32     0x40048038
        DC32     PORTX
        DC32     GPIOx

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
// 104 bytes in section .text
// 
// 104 bytes of CODE memory
//
//Errors: none
//Warnings: none
