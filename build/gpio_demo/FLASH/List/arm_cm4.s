///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.60.1.5097/W32 for ARM     15/Aug/2015  12:46:19 /
// Copyright 1999-2013 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  C:\Users\Administrator\Desktop\MPU60508.12\src\cpu\arm_ /
//                    cm4.c                                                   /
//    Command line =  C:\Users\Administrator\Desktop\MPU60508.12\src\cpu\arm_ /
//                    cm4.c -lCN C:\Users\Administrator\Desktop\MPU60508.12\b /
//                    uild\gpio_demo\FLASH\List\ -lB                          /
//                    C:\Users\Administrator\Desktop\MPU60508.12\build\gpio_d /
//                    emo\FLASH\List\ -o C:\Users\Administrator\Desktop\MPU60 /
//                    508.12\build\gpio_demo\FLASH\Obj\ --no_cse --no_unroll  /
//                    --no_inline --no_code_motion --no_tbaa --no_clustering  /
//                    --no_scheduling --debug --endian=little                 /
//                    --cpu=Cortex-M4 -e --fpu=None --dlib_config "D:\IAR     /
//                    Systems\Embedded Workbench                              /
//                    6.5\arm\INC\c\DLib_Config_Normal.h" -I                  /
//                    C:\Users\Administrator\Desktop\MPU60508.12\build\gpio_d /
//                    emo\..\ -I C:\Users\Administrator\Desktop\MPU60508.12\b /
//                    uild\gpio_demo\..\..\src\common\ -I                     /
//                    C:\Users\Administrator\Desktop\MPU60508.12\build\gpio_d /
//                    emo\..\..\src\cpu\ -I C:\Users\Administrator\Desktop\MP /
//                    U60508.12\build\gpio_demo\..\..\src\drivers\ -I         /
//                    C:\Users\Administrator\Desktop\MPU60508.12\build\gpio_d /
//                    emo\..\..\src\drivers\gpio\ -I                          /
//                    C:\Users\Administrator\Desktop\MPU60508.12\build\gpio_d /
//                    emo\..\..\src\drivers\flash\ -I                         /
//                    C:\Users\Administrator\Desktop\MPU60508.12\build\gpio_d /
//                    emo\..\..\src\drivers\olcd\ -I                          /
//                    C:\Users\Administrator\Desktop\MPU60508.12\build\gpio_d /
//                    emo\..\..\src\drivers\diskio\ -I                        /
//                    C:\Users\Administrator\Desktop\MPU60508.12\build\gpio_d /
//                    emo\..\..\src\drivers\iospi\ -I                         /
//                    C:\Users\Administrator\Desktop\MPU60508.12\build\gpio_d /
//                    emo\..\..\src\drivers\wdog\ -I                          /
//                    C:\Users\Administrator\Desktop\MPU60508.12\build\gpio_d /
//                    emo\..\..\src\drivers\mcg\ -I                           /
//                    C:\Users\Administrator\Desktop\MPU60508.12\build\gpio_d /
//                    emo\..\..\src\drivers\flash\ -I                         /
//                    C:\Users\Administrator\Desktop\MPU60508.12\build\gpio_d /
//                    emo\..\..\src\drivers\uart\ -I                          /
//                    C:\Users\Administrator\Desktop\MPU60508.12\build\gpio_d /
//                    emo\..\..\src\drivers\lptmr\ -I                         /
//                    C:\Users\Administrator\Desktop\MPU60508.12\build\gpio_d /
//                    emo\..\..\src\drivers\LED\ -I                           /
//                    C:\Users\Administrator\Desktop\MPU60508.12\build\gpio_d /
//                    emo\..\..\src\drivers\fun\ -I                           /
//                    C:\Users\Administrator\Desktop\MPU60508.12\build\gpio_d /
//                    emo\..\..\src\drivers\FTM\ -I                           /
//                    C:\Users\Administrator\Desktop\MPU60508.12\build\gpio_d /
//                    emo\..\..\src\drivers\pit\ -I                           /
//                    C:\Users\Administrator\Desktop\MPU60508.12\build\gpio_d /
//                    emo\..\..\src\drivers\DIPswitch\ -I                     /
//                    C:\Users\Administrator\Desktop\MPU60508.12\build\gpio_d /
//                    emo\..\..\src\drivers\steer\ -I                         /
//                    C:\Users\Administrator\Desktop\MPU60508.12\build\gpio_d /
//                    emo\..\..\src\drivers\motor\ -I                         /
//                    C:\Users\Administrator\Desktop\MPU60508.12\build\gpio_d /
//                    emo\..\..\src\drivers\laser\ -I                         /
//                    C:\Users\Administrator\Desktop\MPU60508.12\build\gpio_d /
//                    emo\..\..\src\drivers\i2c\ -I                           /
//                    C:\Users\Administrator\Desktop\MPU60508.12\build\gpio_d /
//                    emo\..\..\src\drivers\ADdevice\ -I                      /
//                    C:\Users\Administrator\Desktop\MPU60508.12\build\gpio_d /
//                    emo\..\..\src\drivers\adc\ -I                           /
//                    C:\Users\Administrator\Desktop\MPU60508.12\build\gpio_d /
//                    emo\..\..\src\drivers\serial_digtal_scope\ -I           /
//                    C:\Users\Administrator\Desktop\MPU60508.12\build\gpio_d /
//                    emo\..\..\src\drivers\MMA845x\ -I                       /
//                    C:\Users\Administrator\Desktop\MPU60508.12\build\gpio_d /
//                    emo\..\..\src\drivers\exti\ -I                          /
//                    C:\Users\Administrator\Desktop\MPU60508.12\build\gpio_d /
//                    emo\..\..\src\drivers\dma\ -I                           /
//                    C:\Users\Administrator\Desktop\MPU60508.12\build\gpio_d /
//                    emo\..\..\src\platforms\ -I                             /
//                    C:\Users\Administrator\Desktop\MPU60508.12\build\gpio_d /
//                    emo\..\..\src\projects\ -I                              /
//                    C:\Users\Administrator\Desktop\MPU60508.12\build\gpio_d /
//                    emo\..\..\src\projects\gpio_demo\ -I                    /
//                    C:\Users\Administrator\Desktop\MPU60508.12\build\gpio_d /
//                    emo\..\..\src\drivers\MPU6050\ -I                       /
//                    C:\Users\Administrator\Desktop\MPU60508.12\build\gpio_d /
//                    emo\..\..\src\drivers\steer\ -Ol                        /
//    List file    =  C:\Users\Administrator\Desktop\MPU60508.12\build\gpio_d /
//                    emo\FLASH\List\arm_cm4.s                                /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN uart0Printf

        PUBLIC disable_irq
        PUBLIC enable_irq
        PUBLIC set_irq_priority
        PUBLIC stop
        PUBLIC wait
        PUBLIC write_vtor

// C:\Users\Administrator\Desktop\MPU60508.12\src\cpu\arm_cm4.c
//    1 /******************** (C) COPYRIGHT 2011 野火嵌入式开发工作室 ********************
//    2  * 文件名       ：arm_cm4.c
//    3  * 描述         ：通用ARM Cortex M4内核函数
//    4  *
//    5  * 实验平台     ：野火kinetis开发板
//    6  * 库版本       ：
//    7  * 嵌入系统     ：
//    8  *
//    9  * 作者         ：arm公司（cmsis库自带）
//   10  * 淘宝店       ：http://firestm32.taobao.com
//   11  * 技术支持论坛 ：http://www.ourdev.cn/bbs/bbs_list.jsp?bbs_id=1008
//   12 **********************************************************************************/	
//   13 
//   14 #include "common.h"
//   15 #include "uart.h"
//   16 
//   17 /***********************************************************************/
//   18 /*
//   19  * Configures the ARM system control register for STOP (deep sleep) mode
//   20  * and then executes the WFI instruction to enter the mode.
//   21  *
//   22  * Parameters:
//   23  * none
//   24  *
//   25  * Note: Might want to change this later to allow for passing in a parameter
//   26  *       to optionally set the sleep on exit bit.
//   27  */
//   28 

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//   29 void stop (void)
//   30 {
//   31 	/* Set the SLEEPDEEP bit to enable deep sleep mode (STOP) */
//   32 	SCB_SCR |= SCB_SCR_SLEEPDEEP_MASK;	
stop:
        LDR.N    R0,??DataTable5  ;; 0xe000ed10
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x4
        LDR.N    R1,??DataTable5  ;; 0xe000ed10
        STR      R0,[R1, #+0]
//   33 
//   34 	/* WFI instruction will start entry into STOP mode */
//   35 	asm("WFI");
        WFI
//   36 }
        BX       LR               ;; return
//   37 /***********************************************************************/
//   38 /*
//   39  * Configures the ARM system control register for WAIT (sleep) mode
//   40  * and then executes the WFI instruction to enter the mode.
//   41  *
//   42  * Parameters:
//   43  * none
//   44  *
//   45  * Note: Might want to change this later to allow for passing in a parameter
//   46  *       to optionally set the sleep on exit bit.
//   47  */
//   48 

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//   49 void wait (void)
//   50 {
//   51 	/* Clear the SLEEPDEEP bit to make sure we go into WAIT (sleep) mode instead
//   52 	 * of deep sleep.
//   53 	 */
//   54 	SCB_SCR &= ~SCB_SCR_SLEEPDEEP_MASK;	
wait:
        LDR.N    R0,??DataTable5  ;; 0xe000ed10
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x4
        LDR.N    R1,??DataTable5  ;; 0xe000ed10
        STR      R0,[R1, #+0]
//   55 
//   56 	/* WFI instruction will start entry into WAIT mode */
//   57 	asm("WFI");
        WFI
//   58 }
        BX       LR               ;; return
//   59 /***********************************************************************/
//   60 /*
//   61  * Change the value of the vector table offset register to the specified value.
//   62  *
//   63  * Parameters:
//   64  * vtor     new value to write to the VTOR
//   65  */
//   66 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   67 void write_vtor (int vtor)
//   68 {
//   69         /* Write the VTOR with the new value */
//   70         SCB_VTOR = vtor;	
write_vtor:
        LDR.N    R1,??DataTable5_1  ;; 0xe000ed08
        STR      R0,[R1, #+0]
//   71 }
        BX       LR               ;; return
//   72 /***********************************************************************/
//   73 /*
//   74  * Initialize the NVIC to enable the specified IRQ.
//   75  *
//   76  * NOTE: The function only initializes the NVIC to enable a single IRQ.
//   77  * Interrupts will also need to be enabled in the ARM core. This can be
//   78  * done using the EnableInterrupts macro.
//   79  *
//   80  * Parameters:
//   81  * irq    irq number to be enabled (the irq number NOT the vector number)
//   82  */
//   83 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   84 void enable_irq (int irq)
//   85 {
enable_irq:
        PUSH     {R4,LR}
        MOVS     R4,R0
//   86     int div;
//   87 
//   88     /* Make sure that the IRQ is an allowable number. Right now up to 91 is
//   89      * used.
//   90      */
//   91     if (irq > 91)
        CMP      R4,#+92
        BLT.N    ??enable_irq_0
//   92         uart0Printf("\nERR! Invalid IRQ value passed to enable irq function!\n");
        LDR.N    R0,??DataTable5_2
        BL       uart0Printf
//   93 
//   94     /* Determine which of the NVICISERs corresponds to the irq */
//   95     div = irq/32;
??enable_irq_0:
        MOVS     R0,#+32
        SDIV     R0,R4,R0
//   96 
//   97     switch (div)
        CMP      R0,#+0
        BEQ.N    ??enable_irq_1
        CMP      R0,#+2
        BEQ.N    ??enable_irq_2
        BCC.N    ??enable_irq_3
        B.N      ??enable_irq_4
//   98     {
//   99     	case 0x0:
//  100               NVICICPR0 = 1 << (irq%32);
??enable_irq_1:
        MOVS     R0,#+1
        MOVS     R1,#+32
        SDIV     R2,R4,R1
        MLS      R2,R2,R1,R4
        LSLS     R0,R0,R2
        LDR.N    R1,??DataTable5_3  ;; 0xe000e280
        STR      R0,[R1, #+0]
//  101               NVICISER0 = 1 << (irq%32);
        MOVS     R0,#+1
        MOVS     R1,#+32
        SDIV     R2,R4,R1
        MLS      R2,R2,R1,R4
        LSLS     R0,R0,R2
        LDR.N    R1,??DataTable5_4  ;; 0xe000e100
        STR      R0,[R1, #+0]
//  102               break;
        B.N      ??enable_irq_4
//  103     	case 0x1:
//  104               NVICICPR1 = 1 << (irq%32);
??enable_irq_3:
        MOVS     R0,#+1
        MOVS     R1,#+32
        SDIV     R2,R4,R1
        MLS      R2,R2,R1,R4
        LSLS     R0,R0,R2
        LDR.N    R1,??DataTable5_5  ;; 0xe000e284
        STR      R0,[R1, #+0]
//  105               NVICISER1 = 1 << (irq%32);
        MOVS     R0,#+1
        MOVS     R1,#+32
        SDIV     R2,R4,R1
        MLS      R2,R2,R1,R4
        LSLS     R0,R0,R2
        LDR.N    R1,??DataTable5_6  ;; 0xe000e104
        STR      R0,[R1, #+0]
//  106               break;
        B.N      ??enable_irq_4
//  107     	case 0x2:
//  108               NVICICPR2 = 1 << (irq%32);
??enable_irq_2:
        MOVS     R0,#+1
        MOVS     R1,#+32
        SDIV     R2,R4,R1
        MLS      R2,R2,R1,R4
        LSLS     R0,R0,R2
        LDR.N    R1,??DataTable5_7  ;; 0xe000e288
        STR      R0,[R1, #+0]
//  109               NVICISER2 = 1 << (irq%32);
        MOVS     R0,#+1
        MOVS     R1,#+32
        SDIV     R2,R4,R1
        MLS      R2,R2,R1,R4
        LSLS     R0,R0,R2
        LDR.N    R1,??DataTable5_8  ;; 0xe000e108
        STR      R0,[R1, #+0]
//  110               break;
//  111     }
//  112 }
??enable_irq_4:
        POP      {R4,PC}          ;; return
//  113 /***********************************************************************/
//  114 /*
//  115  * Initialize the NVIC to disable the specified IRQ.
//  116  *
//  117  * NOTE: The function only initializes the NVIC to disable a single IRQ.
//  118  * If you want to disable all interrupts, then use the DisableInterrupts
//  119  * macro instead.
//  120  *
//  121  * Parameters:
//  122  * irq    irq number to be disabled (the irq number NOT the vector number)
//  123  */
//  124 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  125 void disable_irq (int irq)
//  126 {
disable_irq:
        PUSH     {R4,LR}
        MOVS     R4,R0
//  127     int div;
//  128 
//  129     /* Make sure that the IRQ is an allowable number. Right now up to 91 is
//  130      * used.
//  131      */
//  132     if (irq > 91)
        CMP      R4,#+92
        BLT.N    ??disable_irq_0
//  133         uart0Printf("\nERR! Invalid IRQ value passed to disable irq function!\n");
        LDR.N    R0,??DataTable5_9
        BL       uart0Printf
//  134 
//  135     /* Determine which of the NVICICERs corresponds to the irq */
//  136     div = irq/32;
??disable_irq_0:
        MOVS     R0,#+32
        SDIV     R0,R4,R0
//  137 
//  138     switch (div)
        CMP      R0,#+0
        BEQ.N    ??disable_irq_1
        CMP      R0,#+2
        BEQ.N    ??disable_irq_2
        BCC.N    ??disable_irq_3
        B.N      ??disable_irq_4
//  139     {
//  140     	case 0x0:
//  141                NVICICER0 = 1 << (irq%32);
??disable_irq_1:
        MOVS     R0,#+1
        MOVS     R1,#+32
        SDIV     R2,R4,R1
        MLS      R2,R2,R1,R4
        LSLS     R0,R0,R2
        LDR.N    R1,??DataTable5_10  ;; 0xe000e180
        STR      R0,[R1, #+0]
//  142               break;
        B.N      ??disable_irq_4
//  143     	case 0x1:
//  144               NVICICER1 = 1 << (irq%32);
??disable_irq_3:
        MOVS     R0,#+1
        MOVS     R1,#+32
        SDIV     R2,R4,R1
        MLS      R2,R2,R1,R4
        LSLS     R0,R0,R2
        LDR.N    R1,??DataTable5_11  ;; 0xe000e184
        STR      R0,[R1, #+0]
//  145               break;
        B.N      ??disable_irq_4
//  146     	case 0x2:
//  147               NVICICER2 = 1 << (irq%32);
??disable_irq_2:
        MOVS     R0,#+1
        MOVS     R1,#+32
        SDIV     R2,R4,R1
        MLS      R2,R2,R1,R4
        LSLS     R0,R0,R2
        LDR.N    R1,??DataTable5_12  ;; 0xe000e188
        STR      R0,[R1, #+0]
//  148               break;
//  149     }
//  150 }
??disable_irq_4:
        POP      {R4,PC}          ;; return
//  151 /***********************************************************************/
//  152 /*
//  153  * Initialize the NVIC to set specified IRQ priority.
//  154  *
//  155  * NOTE: The function only initializes the NVIC to set a single IRQ priority.
//  156  * Interrupts will also need to be enabled in the ARM core. This can be
//  157  * done using the EnableInterrupts macro.
//  158  *
//  159  * Parameters:
//  160  * irq    irq number to be enabled (the irq number NOT the vector number)
//  161  * prio   irq priority. 0-15 levels. 0 max priority
//  162  */
//  163 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  164 void set_irq_priority (int irq, int prio)
//  165 {
set_irq_priority:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
//  166     /*irq priority pointer*/
//  167     uint8 *prio_reg;
//  168 
//  169     /* Make sure that the IRQ is an allowable number. Right now up to 91 is
//  170      * used.
//  171      */
//  172     if (irq > 91)
        CMP      R4,#+92
        BLT.N    ??set_irq_priority_0
//  173         uart0Printf("\nERR! Invalid IRQ value passed to priority irq function!\n");
        LDR.N    R0,??DataTable5_13
        BL       uart0Printf
//  174 
//  175     if (prio > 15)
??set_irq_priority_0:
        CMP      R5,#+16
        BLT.N    ??set_irq_priority_1
//  176         uart0Printf("\nERR! Invalid priority value passed to priority irq function!\n");
        LDR.N    R0,??DataTable5_14
        BL       uart0Printf
//  177 
//  178     /* Determine which of the NVICIPx corresponds to the irq */
//  179     prio_reg = (uint8 *)(((uint32)&NVICIP0) + irq);
??set_irq_priority_1:
        ADD      R0,R4,#-536870912
        ADDS     R0,R0,#+58368
//  180     /* Assign priority to IRQ */
//  181     *prio_reg = ( (prio&0xF) << (8 - ARM_INTERRUPT_LEVEL_BITS) );
        LSLS     R1,R5,#+4
        STRB     R1,[R0, #+0]
//  182 }
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5:
        DC32     0xe000ed10

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_1:
        DC32     0xe000ed08

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_2:
        DC32     `?<Constant "\\nERR! Invalid IRQ val...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_3:
        DC32     0xe000e280

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_4:
        DC32     0xe000e100

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_5:
        DC32     0xe000e284

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_6:
        DC32     0xe000e104

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_7:
        DC32     0xe000e288

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_8:
        DC32     0xe000e108

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_9:
        DC32     `?<Constant "\\nERR! Invalid IRQ val...">_1`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_10:
        DC32     0xe000e180

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_11:
        DC32     0xe000e184

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_12:
        DC32     0xe000e188

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_13:
        DC32     `?<Constant "\\nERR! Invalid IRQ val...">_2`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_14:
        DC32     `?<Constant "\\nERR! Invalid priorit...">`

        SECTION `.iar_vfe_header`:DATA:REORDER:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "\\nERR! Invalid IRQ val...">`:
        DATA
        DC8 0AH, 45H, 52H, 52H, 21H, 20H, 49H, 6EH
        DC8 76H, 61H, 6CH, 69H, 64H, 20H, 49H, 52H
        DC8 51H, 20H, 76H, 61H, 6CH, 75H, 65H, 20H
        DC8 70H, 61H, 73H, 73H, 65H, 64H, 20H, 74H
        DC8 6FH, 20H, 65H, 6EH, 61H, 62H, 6CH, 65H
        DC8 20H, 69H, 72H, 71H, 20H, 66H, 75H, 6EH
        DC8 63H, 74H, 69H, 6FH, 6EH, 21H, 0AH, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "\\nERR! Invalid IRQ val...">_1`:
        DATA
        DC8 0AH, 45H, 52H, 52H, 21H, 20H, 49H, 6EH
        DC8 76H, 61H, 6CH, 69H, 64H, 20H, 49H, 52H
        DC8 51H, 20H, 76H, 61H, 6CH, 75H, 65H, 20H
        DC8 70H, 61H, 73H, 73H, 65H, 64H, 20H, 74H
        DC8 6FH, 20H, 64H, 69H, 73H, 61H, 62H, 6CH
        DC8 65H, 20H, 69H, 72H, 71H, 20H, 66H, 75H
        DC8 6EH, 63H, 74H, 69H, 6FH, 6EH, 21H, 0AH
        DC8 0
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "\\nERR! Invalid IRQ val...">_2`:
        DATA
        DC8 0AH, 45H, 52H, 52H, 21H, 20H, 49H, 6EH
        DC8 76H, 61H, 6CH, 69H, 64H, 20H, 49H, 52H
        DC8 51H, 20H, 76H, 61H, 6CH, 75H, 65H, 20H
        DC8 70H, 61H, 73H, 73H, 65H, 64H, 20H, 74H
        DC8 6FH, 20H, 70H, 72H, 69H, 6FH, 72H, 69H
        DC8 74H, 79H, 20H, 69H, 72H, 71H, 20H, 66H
        DC8 75H, 6EH, 63H, 74H, 69H, 6FH, 6EH, 21H
        DC8 0AH, 0
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "\\nERR! Invalid priorit...">`:
        DATA
        DC8 0AH, 45H, 52H, 52H, 21H, 20H, 49H, 6EH
        DC8 76H, 61H, 6CH, 69H, 64H, 20H, 70H, 72H
        DC8 69H, 6FH, 72H, 69H, 74H, 79H, 20H, 76H
        DC8 61H, 6CH, 75H, 65H, 20H, 70H, 61H, 73H
        DC8 73H, 65H, 64H, 20H, 74H, 6FH, 20H, 70H
        DC8 72H, 69H, 6FH, 72H, 69H, 74H, 79H, 20H
        DC8 69H, 72H, 71H, 20H, 66H, 75H, 6EH, 63H
        DC8 74H, 69H, 6FH, 6EH, 21H, 0AH, 0
        DC8 0

        END
//  183 /***********************************************************************/
//  184 
// 
// 240 bytes in section .rodata
// 376 bytes in section .text
// 
// 376 bytes of CODE  memory
// 240 bytes of CONST memory
//
//Errors: none
//Warnings: none
