///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.30.1.53127/W32 for ARM    05/Apr/2012  04:25:39 /
// Copyright 1999-2011 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  D:\workspace\myworkspace\SW_K60\src\drivers\uart\uart.c /
//    Command line =  D:\workspace\myworkspace\SW_K60\src\drivers\uart\uart.c /
//                     -lCN D:\workspace\myworkspace\SW_K60\build\SX_demo\RAM /
//                    \List\ -lB D:\workspace\myworkspace\SW_K60\build\SX_dem /
//                    o\RAM\List\ -o D:\workspace\myworkspace\SW_K60\build\SX /
//                    _demo\RAM\Obj\ --no_cse --no_unroll --no_inline         /
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
//                    uart.s                                                  /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME uart

        #define SHT_PROGBITS 0x1

        EXTERN bus_clk_khz
        EXTERN core_clk_khz
        EXTERN disable_irq
        EXTERN enable_irq
        EXTERN vsprintf

        PUBLIC UARTx
        PUBLIC uart0Printf
        PUBLIC uart1Printf
        PUBLIC uart2Printf
        PUBLIC uart3Printf
        PUBLIC uart4Printf
        PUBLIC uartPendChar
        PUBLIC uartPrintf
        PUBLIC uartRecvChar
        PUBLIC uartRecvString
        PUBLIC uartSendCh
        PUBLIC uartSendChar
        PUBLIC uartSendString
        PUBLIC uart_init
        PUBLIC uart_irq_DIS
        PUBLIC uart_irq_EN

// D:\workspace\myworkspace\SW_K60\src\drivers\uart\uart.c
//    1 /*
//    2 ********************************************************************************
//    3  * �ļ���       ��uart.c
//    4  * ����         �����ں���
//    5  * ��ƸĽ�     ��snowwolf
//    6  * Email        ��snowwolf2012@qq.com
//    7  * ��ע         ��
//    8  * �ο�         ���ο����ݴ�ѧ������
//    9  *                ��˼�����ٷ�������
//   10  *                Ұ��Ƕ��ʽ����������
//   11 ********************************************************************************
//   12 */	
//   13 #include <stdarg.h>
//   14 #include <string.h>
//   15 #include <stdio.h>
//   16 #include <stdlib.h>
//   17 #include "common.h"
//   18 #include "uart.h"
//   19 #include "assert.h"
//   20 
//   21 

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   22 volatile struct UART_MemMap *UARTx[6]={UART0_BASE_PTR,UART1_BASE_PTR,UART2_BASE_PTR,UART3_BASE_PTR,UART4_BASE_PTR,UART5_BASE_PTR}; //�������ָ�����鱣�� UARTx �ĵ�ַ
UARTx:
        DATA
        DC32 4006A000H, 4006B000H, 4006C000H, 4006D000H, 400EA000H, 400EB000H
//   23 
//   24 /*************************************************************************
//   25 *  �������ƣ�uart_init
//   26 *  ����˵������ʼ�����ڣ����ò�����
//   27 *  ����˵����UARTn       ģ��ţ�UART0~UART5��
//   28 *            baud        �����ʣ���9600��19200��56000��115200��
//   29 *  �������أ���
//   30 *  �޸�ʱ�䣺2012-1-20
//   31 *  ��    ע���ڹٷ��������޸�
//   32 *************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   33 void uart_init (UARTn uartn, u32 baud)
//   34 {
uart_init:
        PUSH     {R4,R5}
//   35     register uint16 sbr, brfa;
//   36     uint8 temp;
//   37     u32 sysclk;     //ʱ��
//   38 
//   39     /* ���� UART���ܵ� GPIO �ӿ� ����ʱ�� */
//   40     switch(uartn)
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.N    ??uart_init_0
        CMP      R0,#+2
        BEQ.N    ??uart_init_1
        BCC.N    ??uart_init_2
        CMP      R0,#+4
        BEQ.N    ??uart_init_3
        BCC.N    ??uart_init_4
        B.N      ??uart_init_5
//   41     {
//   42     case UART0:
//   43         /*������ʹ��
//   44         if(UART0_RX==PTA1)   
//   45             PORTA_PCR1 = PORT_PCR_MUX(0x2);      //��PTA1��ʹ��UART0_RXD
//   46         else 
//   47         */
//   48         if(UART0_RX==PTA15)
//   49             PORTA_PCR15 = PORT_PCR_MUX(0x3);     //��PTA15��ʹ��UART0_RXD
//   50         else if(UART0_RX==PTB16)
//   51             PORTB_PCR16 = PORT_PCR_MUX(0x3);     //��PTB16��ʹ��UART0_RXD
??uart_init_0:
        LDR.W    R2,??DataTable5  ;; 0x4004a040
        MOV      R3,#+768
        STR      R3,[R2, #+0]
//   52         else if(UART0_RX==PTD6)
//   53             PORTD_PCR6 = PORT_PCR_MUX(0x3);      //��PTD7��ʹ��UART0_RXD
//   54         else
//   55             assert_failed(__FILE__, __LINE__);   //���ùܽ�����
//   56         /*������ʹ��
//   57         if(UART0_TX==PTA2)
//   58             PORTA_PCR2 = PORT_PCR_MUX(0x2);     //��PTA2��ʹ��UART0_RXD
//   59         else 
//   60         */      
//   61         if(UART0_TX==PTA14)
//   62             PORTA_PCR14 = PORT_PCR_MUX(0x3);     //��PTA14��ʹ��UART0_RXD
//   63         else if(UART0_TX==PTB17)
//   64             PORTB_PCR17 = PORT_PCR_MUX(0x3);     //��PTB17��ʹ��UART0_RXD
        LDR.W    R2,??DataTable5_1  ;; 0x4004a044
        MOV      R3,#+768
        STR      R3,[R2, #+0]
//   65         else if(UART0_TX==PTD7)
//   66             PORTD_PCR7 = PORT_PCR_MUX(0x3);     //��PTD6��ʹ��UART0_RXD
//   67         else
//   68             assert_failed(__FILE__, __LINE__);  //���ùܽ�����
//   69 
//   70 
//   71         SIM_SCGC4 |= SIM_SCGC4_UART0_MASK;      //ʹ�� UARTn ʱ��
        LDR.W    R2,??DataTable5_2  ;; 0x40048034
        LDR      R2,[R2, #+0]
        ORRS     R2,R2,#0x400
        LDR.N    R3,??DataTable5_2  ;; 0x40048034
        STR      R2,[R3, #+0]
//   72         break;
        B.N      ??uart_init_6
//   73 
//   74     case UART1:
//   75         if(UART1_RX==PTC3)
//   76             PORTC_PCR3 = PORT_PCR_MUX(0x3);     //��PTC3��ʹ��UART1_RXD
??uart_init_2:
        LDR.N    R2,??DataTable5_3  ;; 0x4004b00c
        MOV      R3,#+768
        STR      R3,[R2, #+0]
//   77         else if(UART1_RX==PTE1)
//   78             PORTE_PCR1 = PORT_PCR_MUX(0x3);     //��PTE1��ʹ��UART1_RXD
//   79         else
//   80             assert_failed(__FILE__, __LINE__);  //���ùܽ�����
//   81 
//   82         if(UART1_TX==PTC4)
//   83             PORTC_PCR4 = PORT_PCR_MUX(0x3);     //��PTC4��ʹ��UART1_RXD
        LDR.N    R2,??DataTable5_4  ;; 0x4004b010
        MOV      R3,#+768
        STR      R3,[R2, #+0]
//   84         else if(UART1_TX==PTE0)
//   85             PORTE_PCR0 = PORT_PCR_MUX(0x3);     //��PTE0��ʹ��UART1_RXD
//   86         else
//   87             assert_failed(__FILE__, __LINE__);  //���ùܽ�����
//   88 
//   89         SIM_SCGC4 |= SIM_SCGC4_UART1_MASK;
        LDR.N    R2,??DataTable5_2  ;; 0x40048034
        LDR      R2,[R2, #+0]
        ORRS     R2,R2,#0x800
        LDR.N    R3,??DataTable5_2  ;; 0x40048034
        STR      R2,[R3, #+0]
//   90         break;
        B.N      ??uart_init_6
//   91 
//   92     case UART2:
//   93         PORTD_PCR3 = PORT_PCR_MUX(0x3);         //��PTD3��ʹ��UART2_TXD����
??uart_init_1:
        LDR.N    R2,??DataTable5_5  ;; 0x4004c00c
        MOV      R3,#+768
        STR      R3,[R2, #+0]
//   94         PORTD_PCR2 = PORT_PCR_MUX(0x3);         //��PTD2��ʹ��UART2_RXD
        LDR.N    R2,??DataTable5_6  ;; 0x4004c008
        MOV      R3,#+768
        STR      R3,[R2, #+0]
//   95         SIM_SCGC4 |= SIM_SCGC4_UART2_MASK;
        LDR.N    R2,??DataTable5_2  ;; 0x40048034
        LDR      R2,[R2, #+0]
        ORRS     R2,R2,#0x1000
        LDR.N    R3,??DataTable5_2  ;; 0x40048034
        STR      R2,[R3, #+0]
//   96         break;
        B.N      ??uart_init_6
//   97 
//   98     case UART3:
//   99         if(UART3_RX==PTB10)
//  100             PORTB_PCR10 = PORT_PCR_MUX(0x3);     //��PTB10��ʹ��UART3_RXD
//  101         else if(UART3_RX==PTC16)
//  102             PORTC_PCR16 = PORT_PCR_MUX(0x3);     //��PTC16��ʹ��UART3_RXD
??uart_init_4:
        LDR.N    R2,??DataTable5_7  ;; 0x4004b040
        MOV      R3,#+768
        STR      R3,[R2, #+0]
//  103         else if(UART3_RX==PTE5)
//  104             PORTE_PCR5 = PORT_PCR_MUX(0x3);      //��PTE5��ʹ��UART3_RXD
//  105         else
//  106             assert_failed(__FILE__, __LINE__);                   //���ùܽ�����
//  107 
//  108         if(UART3_TX==PTB11)
//  109             PORTB_PCR11 = PORT_PCR_MUX(0x3);     //��PTB11��ʹ��UART3_RXD
//  110         else if(UART3_TX==PTC17)
//  111             PORTC_PCR17 = PORT_PCR_MUX(0x3);     //��PTC17��ʹ��UART3_RXD
        LDR.N    R2,??DataTable5_8  ;; 0x4004b044
        MOV      R3,#+768
        STR      R3,[R2, #+0]
//  112         else if(UART3_TX==PTE4)
//  113             PORTE_PCR4 = PORT_PCR_MUX(0x3);     //��PTE4��ʹ��UART3_RXD
//  114         else
//  115             assert_failed(__FILE__, __LINE__);                   //���ùܽ�����
//  116 
//  117         SIM_SCGC4 |= SIM_SCGC4_UART3_MASK;
        LDR.N    R2,??DataTable5_2  ;; 0x40048034
        LDR      R2,[R2, #+0]
        ORRS     R2,R2,#0x2000
        LDR.N    R3,??DataTable5_2  ;; 0x40048034
        STR      R2,[R3, #+0]
//  118         break;
        B.N      ??uart_init_6
//  119 
//  120     case UART4:
//  121         if(UART4_RX==PTC14)
//  122             PORTC_PCR14 = PORT_PCR_MUX(0x3);     //��PTC14��ʹ��UART4_RXD
//  123         else if(UART4_RX==PTE25)
//  124             PORTE_PCR25 = PORT_PCR_MUX(0x3);     //��PTE25��ʹ��UART4_RXD
??uart_init_3:
        LDR.N    R2,??DataTable5_9  ;; 0x4004d064
        MOV      R3,#+768
        STR      R3,[R2, #+0]
//  125         else
//  126             assert_failed(__FILE__, __LINE__);                   //���ùܽ�����
//  127 
//  128         if(UART4_TX==PTC15)
//  129             PORTC_PCR15 = PORT_PCR_MUX(0x3);     //��PTC15��ʹ��UART4_RXD
//  130         else if(UART4_TX==PTE24)
//  131             PORTE_PCR24 = PORT_PCR_MUX(0x3);     //��PTE24��ʹ��UART4_RXD
        LDR.N    R2,??DataTable5_10  ;; 0x4004d060
        MOV      R3,#+768
        STR      R3,[R2, #+0]
//  132         else
//  133             assert_failed(__FILE__, __LINE__);                   //���ùܽ�����
//  134 
//  135         SIM_SCGC1 |= SIM_SCGC1_UART4_MASK;
        LDR.N    R2,??DataTable5_11  ;; 0x40048028
        LDR      R2,[R2, #+0]
        ORRS     R2,R2,#0x400
        LDR.N    R3,??DataTable5_11  ;; 0x40048028
        STR      R2,[R3, #+0]
//  136         break;
        B.N      ??uart_init_6
//  137 #if K60PIN == 144u
//  138     case UART5:
//  139         if(UART5_RX==PTD8)
//  140             PORTD_PCR8 = PORT_PCR_MUX(0x3);     //��PTD8��ʹ��UART5_RXD
//  141         else if(UART5_RX==PTE9)
//  142             PORTE_PCR9 = PORT_PCR_MUX(0x3);     //��PTE9��ʹ��UART5_RXD
//  143         else
//  144             assert_failed(__FILE__, __LINE__);                   //���ùܽ�����
//  145 
//  146         if(UART5_TX==PTD9)
//  147             PORTD_PCR9 = PORT_PCR_MUX(0x3);     //��PTD9��ʹ��UART5_RXD
//  148         else if(UART5_TX==PTE8)
//  149             PORTE_PCR8 = PORT_PCR_MUX(0x3);     //��PTE8��ʹ��UART5_RXD
//  150         else
//  151             assert_failed(__FILE__, __LINE__);                   //���ùܽ�����
//  152 
//  153         SIM_SCGC1 |= SIM_SCGC1_UART5_MASK;
//  154         break;
//  155 #endif
//  156     default:
//  157         break;
//  158     }
//  159 
//  160 
//  161     //���õ�ʱ��Ӧ�ý�ֹ���ͽ���
//  162     UART_C2_REG(UARTx[uartn]) &= ~(UART_C2_TE_MASK  | UART_C2_RE_MASK );
??uart_init_5:
??uart_init_6:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R2,??DataTable5_12
        LDR      R2,[R2, R0, LSL #+2]
        LDRB     R2,[R2, #+3]
        ANDS     R2,R2,#0xF3
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R3,??DataTable5_12
        LDR      R3,[R3, R0, LSL #+2]
        STRB     R2,[R3, #+3]
//  163 
//  164     //���ó�8λ��У��ģʽ
//  165     //���� UART ���ݸ�ʽ��У�鷽ʽ��ֹͣλλ����ͨ������ UART ģ����ƼĴ��� C1 ʵ�֣�
//  166     UART_C1_REG(UARTx[uartn]) = 0;	// ȫ��ֱ��ʹ��Ĭ�����þ��У�����ֱ����0
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R2,??DataTable5_12
        LDR      R2,[R2, R0, LSL #+2]
        MOVS     R3,#+0
        STRB     R3,[R2, #+2]
//  167 
//  168     //���㲨���ʣ�����0��1ʹ���ں�ʱ�ӣ���������ʹ������ʱ��
//  169     if ((uartn == UART0) | (uartn == UART1))
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.N    ??uart_init_7
        MOVS     R2,#+0
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+1
        BEQ.N    ??uart_init_7
        ORRS     R2,R2,#0x0
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+0
        BEQ.N    ??uart_init_8
//  170         sysclk=core_clk_khz*1000;                //�ں�ʱ��
??uart_init_7:
        LDR.N    R2,??DataTable5_13
        LDR      R2,[R2, #+0]
        MOV      R3,#+1000
        MULS     R2,R3,R2
        B.N      ??uart_init_9
//  171     else
//  172 	sysclk=bus_clk_khz*1000;      //����ʱ��
??uart_init_8:
        LDR.N    R2,??DataTable5_14
        LDR      R2,[R2, #+0]
        MOV      R3,#+1000
        MULS     R2,R3,R2
//  173 
//  174     //���� UART ����ͨѶ�����ʡ�ͨ������ UART ģ��Ĳ����ʼĴ���
//  175     sbr = (u16)(sysclk/(baud << 4));
??uart_init_9:
        LSLS     R3,R1,#+4
        UDIV     R3,R2,R3
//  176 
//  177     /* Save off the current value of the UARTx_BDH except for the SBR field */
//  178     temp = UART_BDH_REG(UARTx[uartn]) & ~(UART_BDH_SBR(0x1F));
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R4,??DataTable5_12
        LDR      R4,[R4, R0, LSL #+2]
        LDRB     R4,[R4, #+0]
        ANDS     R4,R4,#0xE0
//  179 
//  180     UART_BDH_REG(UARTx[uartn]) = temp |  UART_BDH_SBR(((sbr & 0x1F00) >> 8));
        UXTH     R3,R3            ;; ZeroExt  R3,R3,#+16,#+16
        LSRS     R5,R3,#+8
        ANDS     R5,R5,#0x1F
        ORRS     R4,R5,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R5,??DataTable5_12
        LDR      R5,[R5, R0, LSL #+2]
        STRB     R4,[R5, #+0]
//  181     UART_BDL_REG(UARTx[uartn]) = (u8)(sbr & UART_BDL_SBR_MASK);
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R4,??DataTable5_12
        LDR      R4,[R4, R0, LSL #+2]
        STRB     R3,[R4, #+1]
//  182 
//  183     //brfa = (((sysclk*32)/(baud * 16)) - (sbr * 32));
//  184     brfa = (((sysclk<<5)/(baud <<4)) - (sbr <<5));
        LSLS     R2,R2,#+5
        LSLS     R1,R1,#+4
        UDIV     R1,R2,R1
        UXTH     R3,R3            ;; ZeroExt  R3,R3,#+16,#+16
        SUBS     R1,R1,R3, LSL #+5
//  185 
//  186     /* Save off the current value of the UARTx_C4 register except for the BRFA field */
//  187     temp = UART_C4_REG(UARTx[uartn]) & ~(UART_C4_BRFA(0x1F));
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R2,??DataTable5_12
        LDR      R2,[R2, R0, LSL #+2]
        LDRB     R2,[R2, #+10]
        ANDS     R4,R2,#0xE0
//  188 
//  189     UART_C4_REG(UARTx[uartn]) = temp |  UART_C4_BRFA(brfa);
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R2,??DataTable5_12
        LDR      R2,[R2, R0, LSL #+2]
        ANDS     R1,R1,#0x1F
        ORRS     R1,R1,R4
        STRB     R1,[R2, #+10]
//  190 
//  191     /* �����ͺͽ��� */
//  192     UART_C2_REG(UARTx[uartn]) |= (UART_C2_TE_MASK | UART_C2_RE_MASK );
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R1,??DataTable5_12
        LDR      R1,[R1, R0, LSL #+2]
        LDRB     R1,[R1, #+3]
        ORRS     R1,R1,#0xC
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R2,??DataTable5_12
        LDR      R0,[R2, R0, LSL #+2]
        STRB     R1,[R0, #+3]
//  193 
//  194     //�����Ƿ�������պͷ����жϡ�ͨ������ UART ģ��� C2 �Ĵ�����
//  195     //RIE �� TIE λʵ�֡����ʹ���жϣ���������ʵ���жϷ������
//  196 }
        POP      {R4,R5}
        BX       LR               ;; return
//  197 
//  198 /*
//  199 ************************************************************************
//  200 *  �������ƣ�uartRecvChar
//  201 *  ����˵��������ʱ��ȴ����ڽ���һ���ֽ�
//  202 *  ����˵����UARTn       ģ��ţ�UART0~UART5��
//  203 *  �������أ����յ����ֽ�
//  204 *  �޸�ʱ�䣺2012-3-24
//  205 *  ��    ע���ٷ�����
//  206 ************************************************************************
//  207 */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  208 char uartRecvChar (UARTn uartn)
//  209 {
//  210     /* Wait until character has been received �жϽ��ջ������Ƿ���*/
//  211     while (!(UART_S1_REG(UARTx[uartn]) & UART_S1_RDRF_MASK));
uartRecvChar:
??uartRecvChar_0:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R1,??DataTable5_12
        LDR      R1,[R1, R0, LSL #+2]
        LDRB     R1,[R1, #+4]
        LSLS     R1,R1,#+26
        BPL.N    ??uartRecvChar_0
//  212 
//  213     /* Return the 8-bit data from the receiver */
//  214     return UART_D_REG(UARTx[uartn]);
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R1,??DataTable5_12
        LDR      R0,[R1, R0, LSL #+2]
        LDRB     R0,[R0, #+7]
        BX       LR               ;; return
//  215 }
//  216 
//  217 
//  218 
//  219 /*
//  220 ************************************************************************
//  221 *  �������ƣ�uartPendchar
//  222 *  ����˵��������ʱ��ȴ����ڽ���һ���ֽ�
//  223 *  ����˵����UARTn       ģ��ţ�UART0~UART5��
//  224 *  �������أ����յ����ֽ�
//  225 *  �޸�ʱ�䣺2012-3-23
//  226 *  ��    ע��
//  227 ************************************************************************
//  228 */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  229 char uartPendChar (UARTn uartn,char * ch)
//  230 {
//  231     u32 i=0;
uartPendChar:
        MOVS     R2,#+0
//  232 
//  233     while(++i<0xffff)                                           //ʱ������
??uartPendChar_0:
        ADDS     R2,R2,#+1
        MOVW     R3,#+65535
        CMP      R2,R3
        BCS.N    ??uartPendChar_1
//  234     {
//  235         if(UART_S1_REG(UARTx[uartn]) & UART_S1_RDRF_MASK)         //��ѯ�Ƿ���ܵ�����
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R3,??DataTable5_12
        LDR      R3,[R3, R0, LSL #+2]
        LDRB     R3,[R3, #+4]
        LSLS     R3,R3,#+26
        BPL.N    ??uartPendChar_0
//  236         {
//  237             *ch  =   UART_D_REG(UARTx[uartn]);                    //���ܵ�8λ������
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R2,??DataTable5_12
        LDR      R0,[R2, R0, LSL #+2]
        LDRB     R0,[R0, #+7]
        STRB     R0,[R1, #+0]
//  238             return  1;                                            //���� 1 ��ʾ���ճɹ�
        MOVS     R0,#+1
        B.N      ??uartPendChar_2
//  239         }
//  240     }
//  241 
//  242     *ch=0;                                                       //���ղ�����Ӧ������˽�����
??uartPendChar_1:
        MOVS     R0,#+0
        STRB     R0,[R1, #+0]
//  243     return 0;                                                    //����0��ʾ����ʧ��
        MOVS     R0,#+0
??uartPendChar_2:
        BX       LR               ;; return
//  244 }
//  245 
//  246 
//  247 /*
//  248 ************************************************************************
//  249 *  �������ƣ�uartRecvString
//  250 *  ����˵���������ַ���
//  251 *  ����˵����UARTn       ģ��ţ�UART0~UART5��
//  252 *  �������أ����յ����ֽ�
//  253 *  �޸�ʱ�䣺2012-1-20
//  254 *  ��    ע��
//  255 ************************************************************************
//  256 */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  257 void uartRecvString (UARTn uartn,char * buff)
//  258 {
uartRecvString:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
//  259     char *buff2=buff;//��¼��ʼ��ַ
        MOVS     R6,R5
        B.N      ??uartRecvString_0
//  260     char bC; 
//  261     
//  262     while ((bC=uartRecvChar(uartn))!='\r')
//  263     { 	          
//  264   	if(bC=='\b')//�����˸��
//  265         {
//  266               if((int)buff2<(int)buff)
//  267               {
//  268                  uartSendChar(uartn,'\b'); 
//  269                  uartSendChar(uartn,' '); 
//  270                  uartSendChar(uartn,'\b'); 
//  271                  buff--;
//  272               }
//  273         }
//  274         else
//  275         {
//  276                 *buff++=bC;
??uartRecvString_1:
        STRB     R0,[R5, #+0]
        ADDS     R5,R5,#+1
//  277                 uartSendChar(uartn,bC);
        MOVS     R1,R0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       uartSendChar
//  278         }
??uartRecvString_0:
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       uartRecvChar
        MOVS     R1,R0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+13
        BEQ.N    ??uartRecvString_2
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+8
        BNE.N    ??uartRecvString_1
        CMP      R6,R5
        BGE.N    ??uartRecvString_0
        MOVS     R1,#+8
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       uartSendChar
        MOVS     R1,#+32
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       uartSendChar
        MOVS     R1,#+8
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       uartSendChar
        SUBS     R5,R5,#+1
        B.N      ??uartRecvString_0
//  279     } 
//  280     
//  281     *buff='\0';
??uartRecvString_2:
        MOVS     R0,#+0
        STRB     R0,[R5, #+0]
//  282     uartSendCh(uartn,'\n');
        MOVS     R1,#+10
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       uartSendCh
//  283 }
        POP      {R4-R6,PC}       ;; return
//  284 
//  285 
//  286 /*
//  287 ************************************************************************
//  288 *  �������ƣ�uartSendChar
//  289 *  ����˵�������ڷ���һ���ֽ�
//  290 *  ����˵����UARTn       ģ��ţ�UART0~UART5��
//  291 *  �������أ���
//  292 *  �޸�ʱ�䣺2012-3-20
//  293 *  ��    ע���ٷ�����
//  294 ************************************************************************
//  295 */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  296 void uartSendChar (UARTn uartn, char ch)
//  297 {
//  298     //�ȴ����ͻ�������
//  299     while(!(UART_S1_REG(UARTx[uartn]) & UART_S1_TDRE_MASK));
uartSendChar:
??uartSendChar_0:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R2,??DataTable5_12
        LDR      R2,[R2, R0, LSL #+2]
        LDRB     R2,[R2, #+4]
        LSLS     R2,R2,#+24
        BPL.N    ??uartSendChar_0
//  300     //��������
//  301     UART_D_REG(UARTx[uartn]) = (u8)ch;
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R2,??DataTable5_12
        LDR      R0,[R2, R0, LSL #+2]
        STRB     R1,[R0, #+7]
//  302 }
        BX       LR               ;; return
//  303 /*
//  304 ************************************************************************
//  305 *  �������ƣ�uartSendChar
//  306 *  ����˵�������ڷ���һ���ֽ�
//  307 *  ����˵����UARTn       ģ��ţ�UART0~UART5��
//  308 *  �������أ���
//  309 *  �޸�ʱ�䣺2012-3-20
//  310 *  ��    ע�������ͻس�ʱ���Զ�����һ������   
//  311 ************************************************************************
//  312 */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  313 void uartSendCh (UARTn uartn, char ch)
//  314 {
uartSendCh:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
//  315     if(ch == '\n')
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+10
        BNE.N    ??uartSendCh_0
//  316        uartSendChar(uartn,'\r');
        MOVS     R1,#+13
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       uartSendChar
//  317     uartSendChar(uartn,ch);
??uartSendCh_0:
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       uartSendChar
//  318 }
        POP      {R0,R4,R5,PC}    ;; return
//  319 
//  320 
//  321 /*
//  322 ************************************************************************
//  323 *  �������ƣ�uart_sendN
//  324 *  ����˵�������� ����һ���ַ���
//  325 *  ����˵����UARTn       ģ��ţ�UART0~UART5��
//  326 *            buff        ���ͻ�����
//  327 *  �������أ���
//  328 *  �޸�ʱ�䣺2012-3-20
//  329 *  ��    ע��
//  330 *************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  331 void uartSendString (UARTn uartn,char* buff)
//  332 {
uartSendString:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        B.N      ??uartSendString_0
//  333     while(*buff)uartSendCh(uartn,*buff++);
??uartSendString_1:
        LDRB     R1,[R5, #+0]
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       uartSendCh
        ADDS     R5,R5,#+1
??uartSendString_0:
        LDRB     R0,[R5, #+0]
        CMP      R0,#+0
        BNE.N    ??uartSendString_1
//  334 }
        POP      {R0,R4,R5,PC}    ;; return
//  335 
//  336 
//  337 /*
//  338 ****************************************************************************
//  339 * ������: uart0Printf                                                       
//  340 * ��  ��: ��ʽ����ӡһ���ַ���                                             
//  341 * ��  ��:                                                                  
//  342 * ��  ��:                                                                 
//  343 * ˵  ��: Ĭ��ΪUART0                                                      
//  344 ****************************************************************************
//  345 */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  346 void uartPrintf(char *pcFmt,...)
//  347 {
uartPrintf:
        PUSH     {R1-R3}
        PUSH     {LR}
        SUB      SP,SP,#+256
//  348         va_list ap;
//  349         char pbString[256];
//  350 
//  351         va_start(ap,pcFmt);
        ADD      R2,SP,#+260
//  352         vsprintf(pbString,pcFmt,ap);
        MOVS     R1,R0
        ADD      R0,SP,#+0
        BL       vsprintf
//  353         uartSendString(UART_PORT,pbString);
        ADD      R1,SP,#+0
        MOVS     R0,#+0
        BL       uartSendString
//  354         va_end(ap);
//  355 }
        ADD      SP,SP,#+256
        LDR      PC,[SP], #+16    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  356 void uart0Printf(char *pcFmt,...)
//  357 {
uart0Printf:
        PUSH     {R1-R3}
        PUSH     {LR}
        SUB      SP,SP,#+256
//  358         va_list ap;
//  359         char pbString[256];
//  360 
//  361         va_start(ap,pcFmt);
        ADD      R2,SP,#+260
//  362         vsprintf(pbString,pcFmt,ap);
        MOVS     R1,R0
        ADD      R0,SP,#+0
        BL       vsprintf
//  363         uartSendString(UART0,pbString);
        ADD      R1,SP,#+0
        MOVS     R0,#+0
        BL       uartSendString
//  364         va_end(ap);
//  365 }
        ADD      SP,SP,#+256
        LDR      PC,[SP], #+16    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  366 void uart1Printf(char *pcFmt,...)
//  367 {
uart1Printf:
        PUSH     {R1-R3}
        PUSH     {LR}
        SUB      SP,SP,#+256
//  368         va_list ap;
//  369         char pbString[256];
//  370 
//  371         va_start(ap,pcFmt);
        ADD      R2,SP,#+260
//  372         vsprintf(pbString,pcFmt,ap);
        MOVS     R1,R0
        ADD      R0,SP,#+0
        BL       vsprintf
//  373         uartSendString(UART1,pbString);
        ADD      R1,SP,#+0
        MOVS     R0,#+1
        BL       uartSendString
//  374         va_end(ap);
//  375 }
        ADD      SP,SP,#+256
        LDR      PC,[SP], #+16    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  376 void uart2Printf(char *pcFmt,...)
//  377 {
uart2Printf:
        PUSH     {R1-R3}
        PUSH     {LR}
        SUB      SP,SP,#+256
//  378         va_list ap;
//  379         char pbString[256];
//  380 
//  381         va_start(ap,pcFmt);
        ADD      R2,SP,#+260
//  382         vsprintf(pbString,pcFmt,ap);
        MOVS     R1,R0
        ADD      R0,SP,#+0
        BL       vsprintf
//  383         uartSendString(UART2,pbString);
        ADD      R1,SP,#+0
        MOVS     R0,#+2
        BL       uartSendString
//  384         va_end(ap);
//  385 }
        ADD      SP,SP,#+256
        LDR      PC,[SP], #+16    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  386 void uart3Printf(char *pcFmt,...)
//  387 {
uart3Printf:
        PUSH     {R1-R3}
        PUSH     {LR}
        SUB      SP,SP,#+256
//  388         va_list ap;
//  389         char pbString[256];
//  390 
//  391         va_start(ap,pcFmt);
        ADD      R2,SP,#+260
//  392         vsprintf(pbString,pcFmt,ap);
        MOVS     R1,R0
        ADD      R0,SP,#+0
        BL       vsprintf
//  393         uartSendString(UART3,pbString);
        ADD      R1,SP,#+0
        MOVS     R0,#+3
        BL       uartSendString
//  394         va_end(ap);
//  395 }
        ADD      SP,SP,#+256
        LDR      PC,[SP], #+16    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  396 void uart4Printf(char *pcFmt,...)
//  397 {
uart4Printf:
        PUSH     {R1-R3}
        PUSH     {LR}
        SUB      SP,SP,#+256
//  398         va_list ap;
//  399         char pbString[256];
//  400 
//  401         va_start(ap,pcFmt);
        ADD      R2,SP,#+260
//  402         vsprintf(pbString,pcFmt,ap);
        MOVS     R1,R0
        ADD      R0,SP,#+0
        BL       vsprintf
//  403         uartSendString(UART4,pbString);
        ADD      R1,SP,#+0
        MOVS     R0,#+4
        BL       uartSendString
//  404         va_end(ap);
//  405 }
        ADD      SP,SP,#+256
        LDR      PC,[SP], #+16    ;; return
//  406 #if K60PIN == 144
//  407 void uart5Printf(char *pcFmt,...)
//  408 {
//  409         va_list ap;
//  410         char pbString[256];
//  411 
//  412         va_start(ap,pcFmt);
//  413         vsprintf(pbString,pcFmt,ap);
//  414         uartSendString(UART5,pbString);
//  415         va_end(ap);
//  416 }
//  417 #endif
//  418 /*
//  419 ************************************************************************
//  420 *  �������ƣ�uart_irq_EN
//  421 *  ����˵���������ڽ����ж�
//  422 *  ����˵����UARTn       ģ��ţ�UART0~UART5��
//  423 *  �������أ���
//  424 *  �޸�ʱ�䣺2012-3-20
//  425 *  ��    ע��
//  426 ************************************************************************
//  427 */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  428 void uart_irq_EN(UARTn uartn)
//  429 {
uart_irq_EN:
        PUSH     {R7,LR}
//  430     UART_C2_REG(UARTx[uartn])|=UART_C2_RIE_MASK;      //����UART�����ж�
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R1,??DataTable5_12
        LDR      R1,[R1, R0, LSL #+2]
        LDRB     R1,[R1, #+3]
        ORRS     R1,R1,#0x20
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R2,??DataTable5_12
        LDR      R2,[R2, R0, LSL #+2]
        STRB     R1,[R2, #+3]
//  431     enable_irq((uartn<<1)+45);			      //���������ŵ�IRQ�ж�
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LSLS     R0,R0,#+1
        ADDS     R0,R0,#+45
        BL       enable_irq
//  432 }
        POP      {R0,PC}          ;; return
//  433 
//  434 
//  435 /*************************************************************************
//  436 *  �������ƣ�uart_irq_DIS
//  437 *  ����˵�����ش��ڽ����ж�
//  438 *  ����˵����UARTn       ģ��ţ�UART0~UART5��
//  439 *  �������أ���
//  440 *  �޸�ʱ�䣺2012-1-20
//  441 *  ��    ע��
//  442 *************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  443 void uart_irq_DIS(UARTn uartn)
//  444 {
uart_irq_DIS:
        PUSH     {R7,LR}
//  445     UART_C2_REG(UARTx[uartn])&=~UART_C2_RIE_MASK;     //��ֹUART�����ж�
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R1,??DataTable5_12
        LDR      R1,[R1, R0, LSL #+2]
        LDRB     R1,[R1, #+3]
        ANDS     R1,R1,#0xDF
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R2,??DataTable5_12
        LDR      R2,[R2, R0, LSL #+2]
        STRB     R1,[R2, #+3]
//  446     disable_irq((uartn<<1)+45);			      //�ؽ������ŵ�IRQ�ж�
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LSLS     R0,R0,#+1
        ADDS     R0,R0,#+45
        BL       disable_irq
//  447 }
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5:
        DC32     0x4004a040

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_1:
        DC32     0x4004a044

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_2:
        DC32     0x40048034

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_3:
        DC32     0x4004b00c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_4:
        DC32     0x4004b010

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_5:
        DC32     0x4004c00c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_6:
        DC32     0x4004c008

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_7:
        DC32     0x4004b040

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_8:
        DC32     0x4004b044

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_9:
        DC32     0x4004d064

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_10:
        DC32     0x4004d060

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_11:
        DC32     0x40048028

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_12:
        DC32     UARTx

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_13:
        DC32     core_clk_khz

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_14:
        DC32     bus_clk_khz

        SECTION `.iar_vfe_header`:DATA:REORDER:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//  448 
// 
//  24 bytes in section .data
// 966 bytes in section .text
// 
// 966 bytes of CODE memory
//  24 bytes of DATA memory
//
//Errors: none
//Warnings: none
