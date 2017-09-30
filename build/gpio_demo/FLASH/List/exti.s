///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.60.1.5097/W32 for ARM     15/Aug/2015  12:46:22 /
// Copyright 1999-2013 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  C:\Users\Administrator\Desktop\MPU60508.12\src\drivers\ /
//                    exti\exti.c                                             /
//    Command line =  C:\Users\Administrator\Desktop\MPU60508.12\src\drivers\ /
//                    exti\exti.c -lCN C:\Users\Administrator\Desktop\MPU6050 /
//                    8.12\build\gpio_demo\FLASH\List\ -lB                    /
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
//                    emo\FLASH\List\exti.s                                   /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN GPIOx
        EXTERN PORTX
        EXTERN enable_irq

        PUBLIC exti_init
        PUBLIC exti_irq_DIS
        PUBLIC exti_irq_EN

// C:\Users\Administrator\Desktop\MPU60508.12\src\drivers\exti\exti.c
//    1 /*
//    2 ************************************************************************
//    3 *                北京邮电大学 K60 学习例程                                        
//    4 * 文件名 :[exti.c] 
//    5 * 描  述 ：EXTI外部GPIO中断例程
//    6 *设计改进：snowwolf
//    7 *  Email ：snowwolf2012@qq.com
//    8 * 说  明 ：GPIO外部中断模块
//    9 ***********************************************************************
//   10 */
//   11 #include "common.h"
//   12 #include "gpio.h"
//   13 #include "exti.h"   
//   14 
//   15 
//   16 
//   17 /*************************************************************************
//   18 *  函数名称：exti_init
//   19 *  功能说明：EXTI外部GPIO中断初始化
//   20 *  参数说明：PORTx       端口号（PORTA,PORTB,PORTC,PORTD,PORTE）
//   21 *            n           端口引脚
//   22 *            exti_cfg    触发选项和上拉下拉选项
//   23 *  函数返回：无
//   24 *  修改时间：2012-1-20
//   25 *  备    注：
//   26 *************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   27 void  exti_init(PORTx portx, u8 n,exti_cfg cfg)
//   28 {
exti_init:
        PUSH     {R4,LR}
//   29     SIM_SCGC5 |= (SIM_SCGC5_PORTA_MASK<<portx);      //开启PORTx端口
        LDR.N    R3,??DataTable2  ;; 0x40048038
        LDR      R3,[R3, #+0]
        MOV      R4,#+512
        LSLS     R4,R4,R0
        ORRS     R3,R4,R3
        LDR.N    R4,??DataTable2  ;; 0x40048038
        STR      R3,[R4, #+0]
//   30     
//   31     PORT_PCR_REG(PORTX[portx],n)=0 | PORT_PCR_MUX(1)| PORT_PCR_IRQC(cfg & 0x7f ) | PORT_PCR_PE_MASK | ((cfg & 0x80 )>>7) |PORT_PCR_PFE_MASK;   // 复用GPIO , 确定触发模式 ,开启上拉或下拉电阻
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R3,??DataTable2_1
        LDR      R3,[R3, R0, LSL #+2]
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        LSLS     R4,R2,#+16
        ANDS     R4,R4,#0xF0000
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        LSRS     R2,R2,#+7
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        ORRS     R2,R2,R4
        ORRS     R2,R2,#0x112
        STR      R2,[R3, R1, LSL #+2]
//   32     GPIO_PDDR_REG(GPIOx[portx])&=~(1<<n);           //输入模式
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R2,??DataTable2_2
        LDR      R2,[R2, R0, LSL #+2]
        LDR      R2,[R2, #+20]
        MOVS     R3,#+1
        LSLS     R3,R3,R1
        BICS     R2,R2,R3
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R3,??DataTable2_2
        LDR      R3,[R3, R0, LSL #+2]
        STR      R2,[R3, #+20]
//   33      
//   34     PORT_ISFR_REG(PORTX[portx])|= (1<<n);
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R2,??DataTable2_1
        LDR      R2,[R2, R0, LSL #+2]
        LDR      R2,[R2, #+160]
        MOVS     R3,#+1
        LSLS     R1,R3,R1
        ORRS     R1,R1,R2
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R2,??DataTable2_1
        LDR      R2,[R2, R0, LSL #+2]
        STR      R1,[R2, #+160]
//   35     enable_irq(portx+87);                           //使能PORT中断，PORTA的ISR中断号为87
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADDS     R0,R0,#+87
        BL       enable_irq
//   36 }
        POP      {R4,PC}          ;; return
//   37 /*************************************************************************
//   38 *  函数名称：exti_irq_DIS
//   39 *  功能说明：外部中断关闭
//   40 *  参数说明：PORTx       端口号（PORTA,PORTB,PORTC,PORTD,PORTE）
//   41 *            n           端口引脚
//   42 *  函数返回：无
//   43 *  修改时间：2012-11-26
//   44 *  备    注：用于关闭某个管脚的中断功能
//   45 *************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   46 void  exti_irq_DIS(PORTx portx, u8 n)
//   47 {    
exti_irq_DIS:
        PUSH     {R4}
//   48     PORT_PCR_REG(PORTX[portx],n) &= ~PORT_PCR_IRQC_MASK;
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R2,??DataTable2_1
        LDR      R2,[R2, R0, LSL #+2]
        MOVS     R3,R1
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R4,??DataTable2_1
        LDR      R0,[R4, R0, LSL #+2]
        LDR      R0,[R0, R3, LSL #+2]
        BICS     R0,R0,#0xF0000
        STR      R0,[R2, R1, LSL #+2]
//   49 }
        POP      {R4}
        BX       LR               ;; return
//   50 /*************************************************************************
//   51 *  函数名称：exti_irq_EN
//   52 *  功能说明：使能某一个管脚的中断功能
//   53 *  参数说明：PORTx       端口号（PORTA,PORTB,PORTC,PORTD,PORTE）
//   54 *            n           端口引脚
//   55 *            exti_cfg    触发选项和上拉下拉选项
//   56 *  函数返回：无
//   57 *  修改时间：2012-3-24
//   58 *  备    注：
//   59 *************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   60 void  exti_irq_EN(PORTx portx, u8 n,exti_cfg cfg)
//   61 {    
exti_irq_EN:
        PUSH     {R4}
//   62     PORT_PCR_REG(PORTX[portx],n)=0 | PORT_PCR_MUX(1)| PORT_PCR_IRQC(cfg & 0x7f ) | PORT_PCR_PE_MASK | ((cfg & 0x80 )>>7) |PORT_PCR_PFE_MASK;   // 复用GPIO , 确定触发模式 ,开启上拉或下拉电阻
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R3,??DataTable2_1
        LDR      R3,[R3, R0, LSL #+2]
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        LSLS     R4,R2,#+16
        ANDS     R4,R4,#0xF0000
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        LSRS     R2,R2,#+7
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        ORRS     R2,R2,R4
        ORRS     R2,R2,#0x112
        STR      R2,[R3, R1, LSL #+2]
//   63     GPIO_PDDR_REG(GPIOx[portx])&=~(1<<n);           //输入模式
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R2,??DataTable2_2
        LDR      R2,[R2, R0, LSL #+2]
        LDR      R2,[R2, #+20]
        MOVS     R3,#+1
        LSLS     R3,R3,R1
        BICS     R2,R2,R3
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R3,??DataTable2_2
        LDR      R3,[R3, R0, LSL #+2]
        STR      R2,[R3, #+20]
//   64      
//   65     PORT_ISFR_REG(PORTX[portx])|= (1<<n);
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R2,??DataTable2_1
        LDR      R2,[R2, R0, LSL #+2]
        LDR      R2,[R2, #+160]
        MOVS     R3,#+1
        LSLS     R1,R3,R1
        ORRS     R1,R1,R2
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R2,??DataTable2_1
        LDR      R0,[R2, R0, LSL #+2]
        STR      R1,[R0, #+160]
//   66 }
        POP      {R4}
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
        DC32     PORTX

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_2:
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
// 270 bytes in section .text
// 
// 270 bytes of CODE memory
//
//Errors: none
//Warnings: none
