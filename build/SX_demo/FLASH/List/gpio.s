///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.30.1.53127/W32 for ARM    22/Dec/2013  00:47:25 /
// Copyright 1999-2011 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  C:\Users\Administrator\Desktop\杨向军的K60模板_只有基本 /
//                    IO操作\src\drivers\gpio\gpio.c                          /
//    Command line =  C:\Users\Administrator\Desktop\杨向军的K60模板_只有基本 /
//                    IO操作\src\drivers\gpio\gpio.c -lCN                     /
//                    C:\Users\Administrator\Desktop\杨向军的K60模板_只有基本 /
//                    IO操作\build\SX_demo\FLASH\List\ -lB                    /
//                    C:\Users\Administrator\Desktop\杨向军的K60模板_只有基本 /
//                    IO操作\build\SX_demo\FLASH\List\ -o                     /
//                    C:\Users\Administrator\Desktop\杨向军的K60模板_只有基本 /
//                    IO操作\build\SX_demo\FLASH\Obj\ --no_cse --no_unroll    /
//                    --no_inline --no_code_motion --no_tbaa --no_clustering  /
//                    --no_scheduling --debug --endian=little                 /
//                    --cpu=Cortex-M4 -e --fpu=None --dlib_config             /
//                    "E:\Program Files (x86)\IAR Systems\Embedded Workbench  /
//                    6.0\arm\INC\c\DLib_Config_Normal.h" -I                  /
//                    C:\Users\Administrator\Desktop\杨向军的K60模板_只有基本 /
//                    IO操作\build\SX_demo\..\ -I                             /
//                    C:\Users\Administrator\Desktop\杨向军的K60模板_只有基本 /
//                    IO操作\build\SX_demo\..\..\src\common\ -I               /
//                    C:\Users\Administrator\Desktop\杨向军的K60模板_只有基本 /
//                    IO操作\build\SX_demo\..\..\src\cpu\ -I                  /
//                    C:\Users\Administrator\Desktop\杨向军的K60模板_只有基本 /
//                    IO操作\build\SX_demo\..\..\src\drivers\ -I              /
//                    C:\Users\Administrator\Desktop\杨向军的K60模板_只有基本 /
//                    IO操作\build\SX_demo\..\..\src\drivers\gpio\ -I         /
//                    C:\Users\Administrator\Desktop\杨向军的K60模板_只有基本 /
//                    IO操作\build\SX_demo\..\..\src\drivers\wdog\ -I         /
//                    C:\Users\Administrator\Desktop\杨向军的K60模板_只有基本 /
//                    IO操作\build\SX_demo\..\..\src\drivers\mcg\ -I          /
//                    C:\Users\Administrator\Desktop\杨向军的K60模板_只有基本 /
//                    IO操作\build\SX_demo\..\..\src\drivers\uart\ -I         /
//                    C:\Users\Administrator\Desktop\杨向军的K60模板_只有基本 /
//                    IO操作\build\SX_demo\..\..\src\drivers\lptmr\ -I        /
//                    C:\Users\Administrator\Desktop\杨向军的K60模板_只有基本 /
//                    IO操作\build\SX_demo\..\..\src\drivers\LED\ -I          /
//                    C:\Users\Administrator\Desktop\杨向军的K60模板_只有基本 /
//                    IO操作\build\SX_demo\..\..\src\drivers\fun\ -I          /
//                    C:\Users\Administrator\Desktop\杨向军的K60模板_只有基本 /
//                    IO操作\build\SX_demo\..\..\src\drivers\FTM\ -I          /
//                    C:\Users\Administrator\Desktop\杨向军的K60模板_只有基本 /
//                    IO操作\build\SX_demo\..\..\src\drivers\pit\ -I          /
//                    C:\Users\Administrator\Desktop\杨向军的K60模板_只有基本 /
//                    IO操作\build\SX_demo\..\..\src\drivers\DIPswitch\ -I    /
//                    C:\Users\Administrator\Desktop\杨向军的K60模板_只有基本 /
//                    IO操作\build\SX_demo\..\..\src\drivers\steer\ -I        /
//                    C:\Users\Administrator\Desktop\杨向军的K60模板_只有基本 /
//                    IO操作\build\SX_demo\..\..\src\drivers\ccd\ -I          /
//                    C:\Users\Administrator\Desktop\杨向军的K60模板_只有基本 /
//                    IO操作\build\SX_demo\..\..\src\drivers\dma\ -I          /
//                    C:\Users\Administrator\Desktop\杨向军的K60模板_只有基本 /
//                    IO操作\build\SX_demo\..\..\src\drivers\motor\ -I        /
//                    C:\Users\Administrator\Desktop\杨向军的K60模板_只有基本 /
//                    IO操作\build\SX_demo\..\..\src\platforms\ -I            /
//                    C:\Users\Administrator\Desktop\杨向军的K60模板_只有基本 /
//                    IO操作\build\SX_demo\..\..\src\projects\ -I             /
//                    C:\Users\Administrator\Desktop\杨向军的K60模板_只有基本 /
//                    IO操作\build\SX_demo\..\..\src\projects\SX_demo\ -Ol    /
//    List file    =  C:\Users\Administrator\Desktop\杨向军的K60模板_只有基本 /
//                    IO操作\build\SX_demo\FLASH\List\gpio.s                  /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME gpio

        #define SHT_PROGBITS 0x1

        EXTERN assert_failed

        PUBLIC GPIOx
        PUBLIC PORTX
        PUBLIC gpio_get
        PUBLIC gpio_init
        PUBLIC gpio_set
        PUBLIC gpio_turn

// C:\Users\Administrator\Desktop\杨向军的K60模板_只有基本IO操作\src\drivers\gpio\gpio.c
//    1 /*
//    2 ************************************************************************
//    3 *                北京邮电大学 K60 学习例程                                        
//    4 * 文件名 :[gpio.c] 
//    5 * 描  述 ：gpio驱动函数
//    6 * 原创   ：野火嵌入式开发工作室
//    7 *设计改进：snowwolf
//    8 *  Email ：snowwolf2012@qq.com
//    9 *最后更新：2012-04-03
//   10 * 说  明 ：gpio驱动函数 包括初始化，置位 翻转
//   11 ***********************************************************************
//   12 */
//   13 #include "common.h"
//   14 #include "gpio.h"
//   15 
//   16 //定义五个指针数组保存 GPIOx 的地址

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   17 volatile struct GPIO_MemMap *GPIOx[5]={PTA_BASE_PTR,PTB_BASE_PTR,PTC_BASE_PTR,PTD_BASE_PTR,PTE_BASE_PTR}; 
GPIOx:
        DATA
        DC32 400FF000H, 400FF040H, 400FF080H, 400FF0C0H, 400FF100H
//   18 //定义五个指针数组保存 PORTx 的地址

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   19 volatile struct PORT_MemMap *PORTX[5]={PORTA_BASE_PTR,PORTB_BASE_PTR,PORTC_BASE_PTR,PORTD_BASE_PTR,PORTE_BASE_PTR};
PORTX:
        DATA
        DC32 40049000H, 4004A000H, 4004B000H, 4004C000H, 4004D000H
//   20 
//   21 /*
//   22 ************************************************************************
//   23 *  函数名称：gpio_init
//   24 *  功能说明：初始化gpio
//   25 *  参数说明：PORTx       端口号（PORTA,PORTB,PORTC,PORTD,PORTE）
//   26 *            n           端口引脚
//   27 *            IO          引脚方向,0=输入,1=输出
//   28 *            data        输出初始状态,0=低电平,1=高电平 （对输入无效）
//   29 *  函数返回：无
//   30 *  修改时间：2012-3-15 
//   31 *  备    注：
//   32 ************************************************************************
//   33 */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   34 void gpio_init (PORTx portx, u8 n,GPIO_CFG cfg,u8 data)
//   35 {
gpio_init:
        PUSH     {R3-R7,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R7,R3
//   36     ASSERT( (n < 32u)  && (data < 2u) );           //使用断言检查输入、电平 是否为1bit
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+32
        BCS.N    ??gpio_init_0
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R7,#+2
        BCC.N    ??gpio_init_1
??gpio_init_0:
        MOVS     R1,#+36
        LDR.N    R0,??DataTable3
        BL       assert_failed
//   37 
//   38     //选择功能脚 PORTx_PCRx ，每个端口都有个寄存器 PORTx_PCRx
//   39     PORT_PCR_REG(PORTX[portx],n)=(0|PORT_PCR_MUX(1)| cfg );
??gpio_init_1:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.N    R0,??DataTable3_1
        LDR      R0,[R0, R4, LSL #+2]
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        MOV      R1,#+256
        ORRS     R1,R1,R6
        STR      R1,[R0, R5, LSL #+2]
//   40 
//   41     //最低位为0，肯定是输入；GPI_UP 和 GPI_UP_PF的最低位为1，其他为输出
//   42     if( ( (cfg&0x01) == GPI) || (cfg == GPI_UP) || (cfg == GPI_DOWN) )
        LSLS     R0,R6,#+31
        BPL.N    ??gpio_init_2
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+3
        BEQ.N    ??gpio_init_2
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+2
        BNE.N    ??gpio_init_3
//   43         //   最低位为0则输入   ||   输入上拉模式  ||   输入下拉
//   44     {
//   45         GPIO_PDDR_REG(GPIOx[portx]) &= ~(1<<n);    //设置端口方向为输入       
??gpio_init_2:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.N    R0,??DataTable3_2
        LDR      R0,[R0, R4, LSL #+2]
        LDR      R0,[R0, #+20]
        MOVS     R1,#+1
        LSLS     R1,R1,R5
        BICS     R0,R0,R1
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.N    R1,??DataTable3_2
        LDR      R1,[R1, R4, LSL #+2]
        STR      R0,[R1, #+20]
        B.N      ??gpio_init_4
//   46     }
//   47     else
//   48     {
//   49         GPIO_PDDR_REG(GPIOx[portx]) |= (1<<n);      //设置端口方向为输出
??gpio_init_3:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.N    R0,??DataTable3_2
        LDR      R0,[R0, R4, LSL #+2]
        LDR      R0,[R0, #+20]
        MOVS     R1,#+1
        LSLS     R1,R1,R5
        ORRS     R0,R1,R0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.N    R1,??DataTable3_2
        LDR      R1,[R1, R4, LSL #+2]
        STR      R0,[R1, #+20]
//   50         if(data == 1)//output
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R7,#+1
        BNE.N    ??gpio_init_5
//   51         {
//   52             GPIO_SET(portx,n,1);                    //对端口输出控制，输出为1
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.N    R0,??DataTable3_2
        LDR      R0,[R0, R4, LSL #+2]
        LDR      R0,[R0, #+0]
        MOVS     R1,#+1
        LSLS     R1,R1,R5
        ORRS     R0,R1,R0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.N    R1,??DataTable3_2
        LDR      R1,[R1, R4, LSL #+2]
        STR      R0,[R1, #+0]
        B.N      ??gpio_init_4
//   53         }
//   54 	else
//   55         {
//   56             GPIO_SET(portx,n,0);                    //对端口输出控制，输出为0
??gpio_init_5:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.N    R0,??DataTable3_2
        LDR      R0,[R0, R4, LSL #+2]
        LDR      R0,[R0, #+0]
        MOVS     R1,#+1
        LSLS     R1,R1,R5
        BICS     R0,R0,R1
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.N    R1,??DataTable3_2
        LDR      R1,[R1, R4, LSL #+2]
        STR      R0,[R1, #+0]
//   57         }
//   58     }
//   59 }
??gpio_init_4:
        POP      {R0,R4-R7,PC}    ;; return
//   60 
//   61 /*************************************************************************
//   62 *  函数名称：gpio_set
//   63 *  功能说明：设置引脚状态
//   64 *  参数说明：PORTx       端口号（PORTA,PORTB,PORTC,PORTD,PORTE）
//   65 *            n           端口引脚
//   66 *            data        输出初始状态,0=低电平,1=高电平
//   67 *  函数返回：无
//   68 *  修改时间：2012-1-16   已测试
//   69 *  备    注：
//   70 *************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   71 void gpio_set (PORTx portx, u8 n, u8 data)
//   72 {
gpio_set:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
//   73     ASSERT( (n < 32u)  && (data < 2u) );           //使用断言检查输入、电平 是否为1bit
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+32
        BCS.N    ??gpio_set_0
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+2
        BCC.N    ??gpio_set_1
??gpio_set_0:
        MOVS     R1,#+73
        LDR.N    R0,??DataTable3
        BL       assert_failed
//   74 
//   75     if(data == 1)               //输出
??gpio_set_1:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+1
        BNE.N    ??gpio_set_2
//   76         GPIO_SET(portx,n,1);    //GPIO_PDOR_REG(PORTx) |= (1<<n);
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.N    R0,??DataTable3_2
        LDR      R0,[R0, R4, LSL #+2]
        LDR      R0,[R0, #+0]
        MOVS     R1,#+1
        LSLS     R1,R1,R5
        ORRS     R0,R1,R0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.N    R1,??DataTable3_2
        LDR      R1,[R1, R4, LSL #+2]
        STR      R0,[R1, #+0]
        B.N      ??gpio_set_3
//   77     else
//   78         GPIO_SET(portx,n,0);    //GPIO_PDOR_REG(PORTx) &= ~(1<<n);
??gpio_set_2:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.N    R0,??DataTable3_2
        LDR      R0,[R0, R4, LSL #+2]
        LDR      R0,[R0, #+0]
        MOVS     R1,#+1
        LSLS     R1,R1,R5
        BICS     R0,R0,R1
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.N    R1,??DataTable3_2
        LDR      R1,[R1, R4, LSL #+2]
        STR      R0,[R1, #+0]
//   79 }
??gpio_set_3:
        POP      {R4-R6,PC}       ;; return
//   80 
//   81 /*************************************************************************
//   82 *  函数名称：gpio_turn
//   83 *  功能说明：反转引脚状态
//   84 *  参数说明：PORTx       端口号（PORTA,PORTB,PORTC,PORTD,PORTE）
//   85 *            n           端口引脚
//   86 *  函数返回：无
//   87 *  修改时间：2012-1-15   已测试
//   88 *  备    注：
//   89 *************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   90 void gpio_turn (PORTx portx, u8 n)
//   91 {
gpio_turn:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
//   92     ASSERT( n < 32u );           //使用断言检查引脚号
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+32
        BCC.N    ??gpio_turn_0
        MOVS     R1,#+92
        LDR.N    R0,??DataTable3
        BL       assert_failed
//   93     GPIO_TURN(portx,n);
??gpio_turn_0:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.N    R0,??DataTable3_2
        LDR      R0,[R0, R4, LSL #+2]
        LDR      R0,[R0, #+0]
        MOVS     R1,#+1
        LSLS     R1,R1,R5
        EORS     R0,R1,R0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.N    R1,??DataTable3_2
        LDR      R1,[R1, R4, LSL #+2]
        STR      R0,[R1, #+0]
//   94 }
        POP      {R0,R4,R5,PC}    ;; return
//   95 
//   96 /*************************************************************************
//   97 *  函数名称：gpio_get
//   98 *  功能说明：读取引脚输入状态
//   99 *  参数说明：PORTx       端口号（PORTA,PORTB,PORTC,PORTD,PORTE）
//  100 *            n           端口引脚
//  101 *  函数返回：无
//  102 *  修改时间：2012-1-15   已测试
//  103 *  备    注：
//  104 *************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  105 u8 gpio_get(PORTx portx,u8 n)           //读取引脚状态
//  106 {
gpio_get:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
//  107     ASSERT( n < 32u );                  //使用断言检查引脚号
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+32
        BCC.N    ??gpio_get_0
        MOVS     R1,#+107
        LDR.N    R0,??DataTable3
        BL       assert_failed
//  108     return GPIO_Get(portx,n);
??gpio_get_0:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.N    R0,??DataTable3_2
        LDR      R0,[R0, R4, LSL #+2]
        LDR      R0,[R0, #+16]
        LSRS     R0,R0,R5
        ANDS     R0,R0,#0x1
        POP      {R1,R4,R5,PC}    ;; return
//  109 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3:
        DC32     `?<Constant "C:\\\\Users\\\\Administrato...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_1:
        DC32     PORTX

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_2:
        DC32     GPIOx

        SECTION `.iar_vfe_header`:DATA:REORDER:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "C:\\\\Users\\\\Administrato...">`:
        DATA
        DC8 43H, 3AH, 5CH, 55H, 73H, 65H, 72H, 73H
        DC8 5CH, 41H, 64H, 6DH, 69H, 6EH, 69H, 73H
        DC8 74H, 72H, 61H, 74H, 6FH, 72H, 5CH, 44H
        DC8 65H, 73H, 6BH, 74H, 6FH, 70H, 5CH, 0D1H
        DC8 0EEH, 0CFH, 0F2H, 0BEH, 0FCH, 0B5H, 0C4H, 4BH
        DC8 36H, 30H, 0C4H, 0A3H, 0B0H, 0E5H, 5FH, 0D6H
        DC8 0BBH, 0D3H, 0D0H, 0BBH, 0F9H, 0B1H, 0BEH, 49H
        DC8 4FH, 0B2H, 0D9H, 0D7H, 0F7H, 5CH, 73H, 72H
        DC8 63H, 5CH, 64H, 72H, 69H, 76H, 65H, 72H
        DC8 73H, 5CH, 67H, 70H, 69H, 6FH, 5CH, 67H
        DC8 70H, 69H, 6FH, 2EH, 63H, 0
        DC8 0, 0

        END
// 
//  40 bytes in section .data
//  88 bytes in section .rodata
// 372 bytes in section .text
// 
// 372 bytes of CODE  memory
//  88 bytes of CONST memory
//  40 bytes of DATA  memory
//
//Errors: none
//Warnings: none
