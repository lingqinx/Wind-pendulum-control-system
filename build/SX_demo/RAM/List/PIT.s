///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.30.1.53127/W32 for ARM    05/Apr/2012  04:25:36 /
// Copyright 1999-2011 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  D:\workspace\myworkspace\SW_K60\src\drivers\PIT\PIT.c   /
//    Command line =  D:\workspace\myworkspace\SW_K60\src\drivers\PIT\PIT.c   /
//                    -lCN D:\workspace\myworkspace\SW_K60\build\SX_demo\RAM\ /
//                    List\ -lB D:\workspace\myworkspace\SW_K60\build\SX_demo /
//                    \RAM\List\ -o D:\workspace\myworkspace\SW_K60\build\SX_ /
//                    demo\RAM\Obj\ --no_cse --no_unroll --no_inline          /
//                    --no_code_motion --no_tbaa --no_clustering              /
//                    --no_scheduling --debug --endian=little                 /
//                    --cpu=Cortex-M4 -e --fpu=None --dlib_config             /
//                    "C:\Program Files\IAR Systems\Embedded Workbench        /
//                    6.0_3\arm\INC\c\DLib_Config_Normal.h" -I                /
//                    D:\workspace\myworkspace\SW_K60\build\SX_demo\..\ -I    /
//                    D:\workspace\myworkspace\SW_K60\build\SX_demo\..\..\src /
//                    \common\ -I D:\workspace\myworkspace\SW_K60\build\SX_de /
//                    mo\..\..\src\cpu\ -I D:\workspace\myworkspace\SW_K60\bu /
//                    ild\SX_demo\..\..\src\drivers\ -I                       /
//                    D:\workspace\myworkspace\SW_K60\build\SX_demo\..\..\src /
//                    \drivers\gpio\ -I D:\workspace\myworkspace\SW_K60\build /
//                    \SX_demo\..\..\src\drivers\wdog\ -I                     /
//                    D:\workspace\myworkspace\SW_K60\build\SX_demo\..\..\src /
//                    \drivers\mcg\ -I D:\workspace\myworkspace\SW_K60\build\ /
//                    SX_demo\..\..\src\drivers\uart\ -I                      /
//                    D:\workspace\myworkspace\SW_K60\build\SX_demo\..\..\src /
//                    \drivers\lptmr\ -I D:\workspace\myworkspace\SW_K60\buil /
//                    d\SX_demo\..\..\src\drivers\LED\ -I                     /
//                    D:\workspace\myworkspace\SW_K60\build\SX_demo\..\..\src /
//                    \drivers\fun\ -I D:\workspace\myworkspace\SW_K60\build\ /
//                    SX_demo\..\..\src\drivers\FTM\ -I                       /
//                    D:\workspace\myworkspace\SW_K60\build\SX_demo\..\..\src /
//                    \drivers\pit\ -I D:\workspace\myworkspace\SW_K60\build\ /
//                    SX_demo\..\..\src\drivers\DIPswitch\ -I                 /
//                    D:\workspace\myworkspace\SW_K60\build\SX_demo\..\..\src /
//                    \drivers\steer\ -I D:\workspace\myworkspace\SW_K60\buil /
//                    d\SX_demo\..\..\src\drivers\ccd\ -I                     /
//                    D:\workspace\myworkspace\SW_K60\build\SX_demo\..\..\src /
//                    \drivers\dma\ -I D:\workspace\myworkspace\SW_K60\build\ /
//                    SX_demo\..\..\src\drivers\motor\ -I                     /
//                    D:\workspace\myworkspace\SW_K60\build\SX_demo\..\..\src /
//                    \platforms\ -I D:\workspace\myworkspace\SW_K60\build\SX /
//                    _demo\..\..\src\projects\ -I                            /
//                    D:\workspace\myworkspace\SW_K60\build\SX_demo\..\..\src /
//                    \projects\SX_demo\ -Ol                                  /
//    List file    =  D:\workspace\myworkspace\SW_K60\build\SX_demo\RAM\List\ /
//                    PIT.s                                                   /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME PIT

        #define SHT_PROGBITS 0x1

        EXTERN bus_clk_khz
        EXTERN disable_irq
        EXTERN enable_irq

        PUBLIC PIT_Reload_Freq
        PUBLIC get_PITCNTms
        PUBLIC get_PITCNTtick
        PUBLIC get_PITCNTus
        PUBLIC pit_init
        PUBLIC pit_irq_DIS
        PUBLIC pit_irq_EN

// D:\workspace\myworkspace\SW_K60\src\drivers\PIT\PIT.c
//    1 /*
//    2 ************************************************************************
//    3 *                �����ʵ��ѧ K60 ѧϰ����                                        
//    4 * �ļ��� :[PIT.c] 
//    5 * ��  �� ��PIT�����жϼ�ʱ������ʱ�ж�
//    6 * ԭ��   ��Ұ��Ƕ��ʽ����������
//    7 *��ƸĽ���snowwolf
//    8 *  Email ��snowwolf2012@qq.com
//    9 *�����£�2012-04-03
//   10 * ˵  �� ��
//   11 ***********************************************************************
//   12 */
//   13 
//   14 
//   15 #include "common.h"
//   16 #include  "PIT.h"     //�����жϼ�ʱ��
//   17 
//   18 /*************************************************************************
//   19 *  �������ƣ�pit_init
//   20 *  ����˵����PITn��ʱ����ʼ��
//   21 *  ����˵����PITn        ģ��ţ�PIT0~PIT3��
//   22              freq        Ƶ�ʣ�Hz��
//   23 *  �������أ���
//   24 *  �޸�ʱ�䣺2012-1-24
//   25 *  ��    ע��
//   26 *************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   27 void pit_init(PITn pitn,u32 freq)
//   28 {
//   29     //PIT �õ��� Bus Clock ����Ƶ��
//   30     //������� = ����Ƶ�� * ʱ��
//   31 
//   32     /* ����ʱ��*/
//   33     SIM_SCGC6       |=SIM_SCGC6_PIT_MASK;                             //ʹ��PITʱ��
pit_init:
        LDR.N    R2,??DataTable6  ;; 0x4004803c
        LDR      R2,[R2, #+0]
        ORRS     R2,R2,#0x800000
        LDR.N    R3,??DataTable6  ;; 0x4004803c
        STR      R2,[R3, #+0]
//   34 
//   35     /* PITģ����� PIT Module Control Register (PIT_MCR) */
//   36     PIT_MCR         &=~(PIT_MCR_MDIS_MASK | PIT_MCR_FRZ_MASK );       //ʹ��PIT��ʱ��ʱ�� ������ģʽ�¼�������
        LDR.N    R2,??DataTable6_1  ;; 0x40037000
        LDR      R2,[R2, #+0]
        LSRS     R2,R2,#+2
        LSLS     R2,R2,#+2
        LDR.N    R3,??DataTable6_1  ;; 0x40037000
        STR      R2,[R3, #+0]
//   37 
//   38     /* ��ʱ������ֵ���� Timer Load Value Register (PIT_LDVALn) */
//   39     PIT_LDVAL(pitn)  = (bus_clk_khz*1000)/freq - 1 ;                                           //��������ж�ʱ��
        LDR.N    R2,??DataTable6_2
        LDR      R2,[R2, #+0]
        MOV      R3,#+1000
        MULS     R2,R3,R2
        UDIV     R1,R2,R1
        SUBS     R1,R1,#+1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LSLS     R2,R0,#+4
        LDR.N    R3,??DataTable6_3  ;; 0x40037100
        STR      R1,[R2, R3]
//   40 
//   41     //��ʱʱ�䵽�˺�TIF �� 1 ��д1��ʱ��ͻ���0
//   42     PIT_Flag_Clear(pitn);                                             //���жϱ�־λ
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R1,??DataTable6_3  ;; 0x40037100
        ADDS     R1,R1,R0, LSL #+4
        LDR      R1,[R1, #+12]
        ORRS     R1,R1,#0x1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R2,??DataTable6_3  ;; 0x40037100
        ADDS     R2,R2,R0, LSL #+4
        STR      R1,[R2, #+12]
//   43 
//   44     /* ��ʱ�����ƼĴ��� Timer Control Register (PIT_TCTRL0) */
//   45     PIT_TCTRL(pitn) |= PIT_TCTRL_TEN_MASK;
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R1,??DataTable6_3  ;; 0x40037100
        ADDS     R1,R1,R0, LSL #+4
        LDR      R1,[R1, #+8]
        ORRS     R1,R1,#0x1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R2,??DataTable6_3  ;; 0x40037100
        ADDS     R0,R2,R0, LSL #+4
        STR      R1,[R0, #+8]
//   46     		                                  
//   47 }
        BX       LR               ;; return
//   48 
//   49 /*************************************************************************
//   50 * ��������: PIT_Reload_Freq                                                    
//   51 * ��������: ���������¼���                                         
//   52 * ����˵��: pitn:��ʾpitͨ���š�        
//   53 * ���ܸ�Ҫ: ������ؼĴ�����ֵ 
//   54 *  �޸�ʱ�䣺2012-3-24
//   55 *  ��    ע��Ҫ���ļ�����ֵ��Ҫ�ȹر�ʹ���ٸģ��ٴ�
//   56 *************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   57 void PIT_Reload_Freq(PITn pitn,u32 freq)
//   58 {
//   59     PIT_TCTRL(pitn) &= ~PIT_TCTRL_TEN_MASK;
PIT_Reload_Freq:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R2,??DataTable6_3  ;; 0x40037100
        ADDS     R2,R2,R0, LSL #+4
        LDR      R2,[R2, #+8]
        LSRS     R2,R2,#+1
        LSLS     R2,R2,#+1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R3,??DataTable6_3  ;; 0x40037100
        ADDS     R3,R3,R0, LSL #+4
        STR      R2,[R3, #+8]
//   60     PIT_LDVAL(pitn)  = (bus_clk_khz*1000)/freq - 1 ;  
        LDR.N    R2,??DataTable6_2
        LDR      R2,[R2, #+0]
        MOV      R3,#+1000
        MULS     R2,R3,R2
        UDIV     R1,R2,R1
        SUBS     R1,R1,#+1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LSLS     R2,R0,#+4
        LDR.N    R3,??DataTable6_3  ;; 0x40037100
        STR      R1,[R2, R3]
//   61     PIT_TCTRL(pitn) |= PIT_TCTRL_TEN_MASK;
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R1,??DataTable6_3  ;; 0x40037100
        ADDS     R1,R1,R0, LSL #+4
        LDR      R1,[R1, #+8]
        ORRS     R1,R1,#0x1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R2,??DataTable6_3  ;; 0x40037100
        ADDS     R0,R2,R0, LSL #+4
        STR      R1,[R0, #+8]
//   62 }
        BX       LR               ;; return
//   63 
//   64 /*************************************************************************
//   65 * ��������: get_get_PITCNT                                                       
//   66 * ��������: ��ǰ��ʱ��ʣ��ʱ��                                          
//   67 * ����˵��: pitn:��ʾpitͨ���š�        
//   68 * ���ܸ�Ҫ: ������ؼĴ�����ֵ 
//   69 *  �޸�ʱ�䣺2012-3-24
//   70 *  ��    ע��ms����ms,us����us
//   71 *************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   72 uint32 get_PITCNTms(PITn pitn)
//   73 {
//   74     return PIT_CVAL(pitn)/bus_clk_khz;
get_PITCNTms:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R1,??DataTable6_3  ;; 0x40037100
        ADDS     R0,R1,R0, LSL #+4
        LDR      R0,[R0, #+4]
        LDR.N    R1,??DataTable6_2
        LDR      R1,[R1, #+0]
        UDIV     R0,R0,R1
        BX       LR               ;; return
//   75 }
//   76 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   77 uint32 get_PITCNTus(PITn pitn)
//   78 {
//   79     return PIT_CVAL(pitn)/(bus_clk_khz/1000);
get_PITCNTus:
        LDR.N    R1,??DataTable6_2
        LDR      R1,[R1, #+0]
        MOV      R2,#+1000
        UDIV     R1,R1,R2
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R2,??DataTable6_3  ;; 0x40037100
        ADDS     R0,R2,R0, LSL #+4
        LDR      R0,[R0, #+4]
        UDIV     R0,R0,R1
        BX       LR               ;; return
//   80 }

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   81 uint32 get_PITCNTtick(PITn pitn)
//   82 {
//   83     return PIT_CVAL(pitn);
get_PITCNTtick:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R1,??DataTable6_3  ;; 0x40037100
        ADDS     R0,R1,R0, LSL #+4
        LDR      R0,[R0, #+4]
        BX       LR               ;; return
//   84 }
//   85 
//   86 /*************************************************************************
//   87 *  �������ƣ�pit_irq_EN
//   88 *  ����˵����PITn��ʱ�ж�ʹ��
//   89 *  ����˵����PITn        ģ��ţ�PIT0~PIT3��
//   90 *  �������أ���
//   91 *  �޸�ʱ�䣺2012-3-24
//   92 *  ��    ע��
//   93 *************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   94 void pit_irq_EN(PITn pitn)
//   95 {
pit_irq_EN:
        PUSH     {R7,LR}
//   96      PIT_TCTRL(pitn) |= PIT_TCTRL_TIE_MASK;    //ʹ�� PITn��ʱ��,����PITn�ж�  
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R1,??DataTable6_3  ;; 0x40037100
        ADDS     R1,R1,R0, LSL #+4
        LDR      R1,[R1, #+8]
        ORRS     R1,R1,#0x2
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R2,??DataTable6_3  ;; 0x40037100
        ADDS     R2,R2,R0, LSL #+4
        STR      R1,[R2, #+8]
//   97      enable_irq(pitn+68);                      //���������ŵ�IRQ�ж�
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADDS     R0,R0,#+68
        BL       enable_irq
//   98 }
        POP      {R0,PC}          ;; return
//   99 
//  100 /*************************************************************************
//  101 *  �������ƣ�pit_irq_DIS
//  102 *  ����˵����PITn��ʱ�жϹر�
//  103 *  ����˵����PITn        ģ��ţ�PIT0~PIT3��
//  104 *  �������أ���
//  105 *  �޸�ʱ�䣺2012-3-24
//  106 *  ��    ע��
//  107 *************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  108 void pit_irq_DIS(PITn pitn)
//  109 {
pit_irq_DIS:
        PUSH     {R7,LR}
//  110      PIT_TCTRL(pitn) &= ~PIT_TCTRL_TIE_MASK;    //�� PITn��ʱ��, 
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R1,??DataTable6_3  ;; 0x40037100
        ADDS     R1,R1,R0, LSL #+4
        LDR      R1,[R1, #+8]
        BICS     R1,R1,#0x2
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R2,??DataTable6_3  ;; 0x40037100
        ADDS     R2,R2,R0, LSL #+4
        STR      R1,[R2, #+8]
//  111      disable_irq(pitn+68);                      //��IRQ�ж�
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADDS     R0,R0,#+68
        BL       disable_irq
//  112 }
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6:
        DC32     0x4004803c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_1:
        DC32     0x40037000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_2:
        DC32     bus_clk_khz

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_3:
        DC32     0x40037100

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
// 320 bytes in section .text
// 
// 320 bytes of CODE memory
//
//Errors: none
//Warnings: none
