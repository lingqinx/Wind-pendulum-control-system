///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.30.1.53127/W32 for ARM    22/Dec/2013  00:47:35 /
// Copyright 1999-2011 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  C:\Users\Administrator\Desktop\�������K60ģ��_ֻ�л��� /
//                    IO����\src\cpu\sysinit.c                                /
//    Command line =  C:\Users\Administrator\Desktop\�������K60ģ��_ֻ�л��� /
//                    IO����\src\cpu\sysinit.c -lCN                           /
//                    C:\Users\Administrator\Desktop\�������K60ģ��_ֻ�л��� /
//                    IO����\build\SX_demo\FLASH\List\ -lB                    /
//                    C:\Users\Administrator\Desktop\�������K60ģ��_ֻ�л��� /
//                    IO����\build\SX_demo\FLASH\List\ -o                     /
//                    C:\Users\Administrator\Desktop\�������K60ģ��_ֻ�л��� /
//                    IO����\build\SX_demo\FLASH\Obj\ --no_cse --no_unroll    /
//                    --no_inline --no_code_motion --no_tbaa --no_clustering  /
//                    --no_scheduling --debug --endian=little                 /
//                    --cpu=Cortex-M4 -e --fpu=None --dlib_config             /
//                    "E:\Program Files (x86)\IAR Systems\Embedded Workbench  /
//                    6.0\arm\INC\c\DLib_Config_Normal.h" -I                  /
//                    C:\Users\Administrator\Desktop\�������K60ģ��_ֻ�л��� /
//                    IO����\build\SX_demo\..\ -I                             /
//                    C:\Users\Administrator\Desktop\�������K60ģ��_ֻ�л��� /
//                    IO����\build\SX_demo\..\..\src\common\ -I               /
//                    C:\Users\Administrator\Desktop\�������K60ģ��_ֻ�л��� /
//                    IO����\build\SX_demo\..\..\src\cpu\ -I                  /
//                    C:\Users\Administrator\Desktop\�������K60ģ��_ֻ�л��� /
//                    IO����\build\SX_demo\..\..\src\drivers\ -I              /
//                    C:\Users\Administrator\Desktop\�������K60ģ��_ֻ�л��� /
//                    IO����\build\SX_demo\..\..\src\drivers\gpio\ -I         /
//                    C:\Users\Administrator\Desktop\�������K60ģ��_ֻ�л��� /
//                    IO����\build\SX_demo\..\..\src\drivers\wdog\ -I         /
//                    C:\Users\Administrator\Desktop\�������K60ģ��_ֻ�л��� /
//                    IO����\build\SX_demo\..\..\src\drivers\mcg\ -I          /
//                    C:\Users\Administrator\Desktop\�������K60ģ��_ֻ�л��� /
//                    IO����\build\SX_demo\..\..\src\drivers\uart\ -I         /
//                    C:\Users\Administrator\Desktop\�������K60ģ��_ֻ�л��� /
//                    IO����\build\SX_demo\..\..\src\drivers\lptmr\ -I        /
//                    C:\Users\Administrator\Desktop\�������K60ģ��_ֻ�л��� /
//                    IO����\build\SX_demo\..\..\src\drivers\LED\ -I          /
//                    C:\Users\Administrator\Desktop\�������K60ģ��_ֻ�л��� /
//                    IO����\build\SX_demo\..\..\src\drivers\fun\ -I          /
//                    C:\Users\Administrator\Desktop\�������K60ģ��_ֻ�л��� /
//                    IO����\build\SX_demo\..\..\src\drivers\FTM\ -I          /
//                    C:\Users\Administrator\Desktop\�������K60ģ��_ֻ�л��� /
//                    IO����\build\SX_demo\..\..\src\drivers\pit\ -I          /
//                    C:\Users\Administrator\Desktop\�������K60ģ��_ֻ�л��� /
//                    IO����\build\SX_demo\..\..\src\drivers\DIPswitch\ -I    /
//                    C:\Users\Administrator\Desktop\�������K60ģ��_ֻ�л��� /
//                    IO����\build\SX_demo\..\..\src\drivers\steer\ -I        /
//                    C:\Users\Administrator\Desktop\�������K60ģ��_ֻ�л��� /
//                    IO����\build\SX_demo\..\..\src\drivers\ccd\ -I          /
//                    C:\Users\Administrator\Desktop\�������K60ģ��_ֻ�л��� /
//                    IO����\build\SX_demo\..\..\src\drivers\dma\ -I          /
//                    C:\Users\Administrator\Desktop\�������K60ģ��_ֻ�л��� /
//                    IO����\build\SX_demo\..\..\src\drivers\motor\ -I        /
//                    C:\Users\Administrator\Desktop\�������K60ģ��_ֻ�л��� /
//                    IO����\build\SX_demo\..\..\src\platforms\ -I            /
//                    C:\Users\Administrator\Desktop\�������K60ģ��_ֻ�л��� /
//                    IO����\build\SX_demo\..\..\src\projects\ -I             /
//                    C:\Users\Administrator\Desktop\�������K60ģ��_ֻ�л��� /
//                    IO����\build\SX_demo\..\..\src\projects\SX_demo\ -Ol    /
//    List file    =  C:\Users\Administrator\Desktop\�������K60ģ��_ֻ�л��� /
//                    IO����\build\SX_demo\FLASH\List\sysinit.s               /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME sysinit

        #define SHT_PROGBITS 0x1

        EXTERN pll_init
        EXTERN uart_init

        PUBLIC bus_clk_khz
        PUBLIC core_clk_khz
        PUBLIC core_clk_mhz
        PUBLIC fb_clk_init
        PUBLIC sysinit
        PUBLIC trace_clk_init

// C:\Users\Administrator\Desktop\�������K60ģ��_ֻ�л���IO����\src\cpu\sysinit.c
//    1 /******************** (C) COPYRIGHT 2011 Ұ��Ƕ��ʽ���������� ********************
//    2  * �ļ���       ��sysinit.c
//    3  * ����         ��k60�ĳ�ʼ������
//    4  * ��ע         ���ڹٷ��������޸�
//    5  *
//    6  * ʵ��ƽ̨     ��Ұ��kinetis������
//    7  * ��汾       ��
//    8  * Ƕ��ϵͳ     ��
//    9  *
//   10  * ����         ��
//   11  * �Ա���       ��http://firestm32.taobao.com
//   12  * ����֧����̳ ��http://www.ourdev.cn/bbs/bbs_list.jsp?bbs_id=1008
//   13 **********************************************************************************/	
//   14 
//   15 
//   16 #include "common.h"
//   17 #include "sysinit.h"
//   18 #include "uart.h"
//   19 
//   20 
//   21 /********************************************************************/
//   22 
//   23 /* Actual system clock frequency */

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   24 u32 core_clk_khz;       //�ں�ʱ��(KHz)
core_clk_khz:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   25 u32 core_clk_mhz;       //�ں�ʱ��(MHz)
core_clk_mhz:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   26 u32 bus_clk_khz;        //��Χ����ʱ��
bus_clk_khz:
        DS8 4
//   27 
//   28 
//   29 
//   30 /*************************************************************************
//   31 *                             Ұ��Ƕ��ʽ����������
//   32 *
//   33 *  �������ƣ�sysinit
//   34 *  ����˵�����������ʼ���������������໷����ʼ��ʱ�� �� printf����
//   35 *  ����˵������
//   36 *  �������أ���
//   37 *  �޸�ʱ�䣺2012-2-10
//   38 *  ��    ע��
//   39 *************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   40 void sysinit (void)
//   41 {
sysinit:
        PUSH     {R7,LR}
//   42     /* ʹ�����ж˿�PORTʱ��   */
//   43     SIM_SCGC5 |= (SIM_SCGC5_PORTA_MASK
//   44                 | SIM_SCGC5_PORTB_MASK
//   45                 | SIM_SCGC5_PORTC_MASK
//   46                 | SIM_SCGC5_PORTD_MASK
//   47                 | SIM_SCGC5_PORTE_MASK );
        LDR.N    R0,??DataTable2  ;; 0x40048038
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x3E00
        LDR.N    R1,??DataTable2  ;; 0x40048038
        STR      R0,[R1, #+0]
//   48 
//   49 #if defined(NO_PLL_INIT)
//   50     core_clk_mhz = 20;                      //������岻��ʼ�����໷������� FEI mode
//   51                                             //FEIģʽ��Ϊ20M P568
//   52 #else
//   53     /* ��ǿϵͳƵ��   �������������ó�Ƶ  */
//   54     core_clk_mhz = pll_init(MCG_CLK_MHZ);
        MOVS     R0,#+96
        BL       pll_init
        LDR.N    R1,??DataTable2_1
        STR      R0,[R1, #+0]
//   55 #endif
//   56 
//   57     //ͨ��pll_init�����ķ���ֵ�������ں�ʱ�Ӻ�����ʱ�ӣ��������������ɲ�ѯʱ��Ƶ��
//   58     core_clk_khz = core_clk_mhz * 1000;
        LDR.N    R0,??DataTable2_1
        LDR      R0,[R0, #+0]
        MOV      R1,#+1000
        MULS     R0,R1,R0
        LDR.N    R1,??DataTable2_2
        STR      R0,[R1, #+0]
//   59     bus_clk_khz = core_clk_khz / (((SIM_CLKDIV1 & SIM_CLKDIV1_OUTDIV2_MASK) >> 24)+ 1);
        LDR.N    R0,??DataTable2_2
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable2_3  ;; 0x40048044
        LDR      R1,[R1, #+0]
        UBFX     R1,R1,#+24,#+4
        ADDS     R1,R1,#+1
        UDIV     R0,R0,R1
        LDR.N    R1,??DataTable2_4
        STR      R0,[R1, #+0]
//   60 
//   61     //trace_clk_init();                       //ʹ�ܸ���ʱ�ӣ����ڵ���
//   62     //fb_clk_init();                          //FlexBusʱ�ӳ�ʼ��
//   63 
//   64     uart_init(UART_PORT, UART_BAUD);    //��ʼ�� printf �������õ��Ĵ���
        MOVS     R1,#+115200
        MOVS     R0,#+0
        BL       uart_init
//   65 }
        POP      {R0,PC}          ;; return
//   66 
//   67 
//   68 
//   69 //-------------------------------------------------------------------------*
//   70 //������: trace_clk_init                                                   *
//   71 //��  ��: ����ʱ�ӳ�ʼ��                                                   *
//   72 //��  ��: ��							  	   *	
//   73 //��  ��: ��                                                               *
//   74 //˵  ��: ���ڵ���                                                         *
//   75 //-------------------------------------------------------------------------*

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   76 void trace_clk_init(void)
//   77 {
//   78     /* Set the trace clock to the core clock frequency */
//   79     SIM_SOPT2 |= SIM_SOPT2_TRACECLKSEL_MASK;
trace_clk_init:
        LDR.N    R0,??DataTable2_5  ;; 0x40048004
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1000
        LDR.N    R1,??DataTable2_5  ;; 0x40048004
        STR      R0,[R1, #+0]
//   80 
//   81     /* Enable the TRACE_CLKOUT pin function on PTA6 (alt7 function) */
//   82     PORTA_PCR6 = ( PORT_PCR_MUX(0x7));
        LDR.N    R0,??DataTable2_6  ;; 0x40049018
        MOV      R1,#+1792
        STR      R1,[R0, #+0]
//   83 }
        BX       LR               ;; return
//   84 /********************************************************************/
//   85 
//   86 //-------------------------------------------------------------------------*
//   87 //������: fb_clk_init                                                      *
//   88 //��  ��: FlexBusʱ�ӳ�ʼ��                                                *
//   89 //��  ��: ��								   *	
//   90 //��  ��: ��                                                               *
//   91 //˵  ��:                                                                  *
//   92 //-------------------------------------------------------------------------*

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   93 void fb_clk_init(void)
//   94 {
//   95     /* Enable the clock to the FlexBus module */
//   96     SIM_SCGC7 |= SIM_SCGC7_FLEXBUS_MASK;
fb_clk_init:
        LDR.N    R0,??DataTable2_7  ;; 0x40048040
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR.N    R1,??DataTable2_7  ;; 0x40048040
        STR      R0,[R1, #+0]
//   97 
//   98     /* Enable the FB_CLKOUT function on PTC3 (alt5 function) */
//   99     PORTC_PCR3 = ( PORT_PCR_MUX(0x5));
        LDR.N    R0,??DataTable2_8  ;; 0x4004b00c
        MOV      R1,#+1280
        STR      R1,[R0, #+0]
//  100 }
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2:
        DC32     0x40048038

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_1:
        DC32     core_clk_mhz

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_2:
        DC32     core_clk_khz

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_3:
        DC32     0x40048044

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_4:
        DC32     bus_clk_khz

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_5:
        DC32     0x40048004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_6:
        DC32     0x40049018

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_7:
        DC32     0x40048040

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_8:
        DC32     0x4004b00c

        SECTION `.iar_vfe_header`:DATA:REORDER:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//  101 /********************************************************************/
// 
//  12 bytes in section .bss
// 152 bytes in section .text
// 
// 152 bytes of CODE memory
//  12 bytes of DATA memory
//
//Errors: none
//Warnings: none
