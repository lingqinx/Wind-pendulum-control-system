///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.30.1.53127/W32 for ARM    22/Dec/2013  00:55:21 /
// Copyright 1999-2011 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  C:\Users\Administrator\Desktop\杨向军的K60模板_只有基本 /
//                    IO操作\src\drivers\LED\LED.C                            /
//    Command line =  C:\Users\Administrator\Desktop\杨向军的K60模板_只有基本 /
//                    IO操作\src\drivers\LED\LED.C -lCN                       /
//                    C:\Users\Administrator\Desktop\杨向军的K60模板_只有基本 /
//                    IO操作\build\gpio_demo\RAM\List\ -lB                    /
//                    C:\Users\Administrator\Desktop\杨向军的K60模板_只有基本 /
//                    IO操作\build\gpio_demo\RAM\List\ -o                     /
//                    C:\Users\Administrator\Desktop\杨向军的K60模板_只有基本 /
//                    IO操作\build\gpio_demo\RAM\Obj\ --no_cse --no_unroll    /
//                    --no_inline --no_code_motion --no_tbaa --no_clustering  /
//                    --no_scheduling --debug --endian=little                 /
//                    --cpu=Cortex-M4 -e --fpu=None --dlib_config             /
//                    "E:\Program Files (x86)\IAR Systems\Embedded Workbench  /
//                    6.0\arm\INC\c\DLib_Config_Normal.h" -I                  /
//                    C:\Users\Administrator\Desktop\杨向军的K60模板_只有基本 /
//                    IO操作\build\gpio_demo\..\ -I                           /
//                    C:\Users\Administrator\Desktop\杨向军的K60模板_只有基本 /
//                    IO操作\build\gpio_demo\..\..\src\common\ -I             /
//                    C:\Users\Administrator\Desktop\杨向军的K60模板_只有基本 /
//                    IO操作\build\gpio_demo\..\..\src\cpu\ -I                /
//                    C:\Users\Administrator\Desktop\杨向军的K60模板_只有基本 /
//                    IO操作\build\gpio_demo\..\..\src\drivers\ -I            /
//                    C:\Users\Administrator\Desktop\杨向军的K60模板_只有基本 /
//                    IO操作\build\gpio_demo\..\..\src\drivers\gpio\ -I       /
//                    C:\Users\Administrator\Desktop\杨向军的K60模板_只有基本 /
//                    IO操作\build\gpio_demo\..\..\src\drivers\wdog\ -I       /
//                    C:\Users\Administrator\Desktop\杨向军的K60模板_只有基本 /
//                    IO操作\build\gpio_demo\..\..\src\drivers\mcg\ -I        /
//                    C:\Users\Administrator\Desktop\杨向军的K60模板_只有基本 /
//                    IO操作\build\gpio_demo\..\..\src\drivers\uart\ -I       /
//                    C:\Users\Administrator\Desktop\杨向军的K60模板_只有基本 /
//                    IO操作\build\gpio_demo\..\..\src\drivers\lptmr\ -I      /
//                    C:\Users\Administrator\Desktop\杨向军的K60模板_只有基本 /
//                    IO操作\build\gpio_demo\..\..\src\drivers\fun\ -I        /
//                    C:\Users\Administrator\Desktop\杨向军的K60模板_只有基本 /
//                    IO操作\build\gpio_demo\..\..\src\drivers\led\ -I        /
//                    C:\Users\Administrator\Desktop\杨向军的K60模板_只有基本 /
//                    IO操作\build\gpio_demo\..\..\src\drivers\i2c\ -I        /
//                    C:\Users\Administrator\Desktop\杨向军的K60模板_只有基本 /
//                    IO操作\build\gpio_demo\..\..\src\drivers\MMA845x\ -I    /
//                    C:\Users\Administrator\Desktop\杨向军的K60模板_只有基本 /
//                    IO操作\build\gpio_demo\..\..\src\drivers\motor\ -I      /
//                    C:\Users\Administrator\Desktop\杨向军的K60模板_只有基本 /
//                    IO操作\build\gpio_demo\..\..\src\drivers\pit\ -I        /
//                    C:\Users\Administrator\Desktop\杨向军的K60模板_只有基本 /
//                    IO操作\build\gpio_demo\..\..\src\drivers\steer\ -I      /
//                    C:\Users\Administrator\Desktop\杨向军的K60模板_只有基本 /
//                    IO操作\build\gpio_demo\..\..\src\drivers\ftm\ -I        /
//                    C:\Users\Administrator\Desktop\杨向军的K60模板_只有基本 /
//                    IO操作\build\gpio_demo\..\..\src\drivers\DIPswitch\ -I  /
//                    C:\Users\Administrator\Desktop\杨向军的K60模板_只有基本 /
//                    IO操作\build\gpio_demo\..\..\src\drivers\dma\ -I        /
//                    C:\Users\Administrator\Desktop\杨向军的K60模板_只有基本 /
//                    IO操作\build\gpio_demo\..\..\src\platforms\ -I          /
//                    C:\Users\Administrator\Desktop\杨向军的K60模板_只有基本 /
//                    IO操作\build\gpio_demo\..\..\src\projects\ -I           /
//                    C:\Users\Administrator\Desktop\杨向军的K60模板_只有基本 /
//                    IO操作\build\gpio_demo\..\..\src\projects\gpio_demo\    /
//                    -Ol                                                     /
//    List file    =  C:\Users\Administrator\Desktop\杨向军的K60模板_只有基本 /
//                    IO操作\build\gpio_demo\RAM\List\LED.s                   /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME LED

        #define SHT_PROGBITS 0x1

        EXTERN GPIOx
        EXTERN delayms
        EXTERN gpio_init

        PUBLIC LED_init
        PUBLIC LED_turn
        PUBLIC led
        PUBLIC water_lights

// C:\Users\Administrator\Desktop\杨向军的K60模板_只有基本IO操作\src\drivers\LED\LED.C
//    1 
//    2 /*
//    3 ************************************************************************
//    4 *                北京邮电大学 K60 学习例程                                        
//    5 * 文件名 :[LED.c] 
//    6 * 描  述 ：LED函数定义
//    7 *设计改进：snowwolf
//    8 *  Email ：snowwolf2012@qq.com
//    9 * 说  明 ：LED函数定义
//   10 ***********************************************************************
//   11 */
//   12 
//   13 #include  "LED.H"
//   14 
//   15 
//   16 /*************************************************************************
//   17 *  函数名称：LED_init
//   18 *  功能说明：初始化LED端口，设置IO口为输出方向
//   19 *  参数说明：无
//   20 *  函数返回：无
//   21 *  修改时间：2012-2-2   已测试
//   22 *  备    注：
//   23 *************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   24 void    LED_init(void)
//   25 {
LED_init:
        PUSH     {R7,LR}
//   26     gpio_init(LED_PORT,LED0,GPO,LED_OFF);
        MOVS     R3,#+1
        MOVS     R2,#+1
        MOVS     R1,#+14
        MOVS     R0,#+0
        BL       gpio_init
//   27     gpio_init(LED_PORT,LED1,GPO,LED_OFF);
        MOVS     R3,#+1
        MOVS     R2,#+1
        MOVS     R1,#+15
        MOVS     R0,#+0
        BL       gpio_init
//   28     gpio_init(LED_PORT,LED2,GPO,LED_OFF);
        MOVS     R3,#+1
        MOVS     R2,#+1
        MOVS     R1,#+16
        MOVS     R0,#+0
        BL       gpio_init
//   29     gpio_init(LED_PORT,LED3,GPO,LED_OFF);
        MOVS     R3,#+1
        MOVS     R2,#+1
        MOVS     R1,#+17
        MOVS     R0,#+0
        BL       gpio_init
//   30 }
        POP      {R0,PC}          ;; return
//   31 
//   32 /*************************************************************************
//   33 *  函数名称：led
//   34 *  功能说明：设置LED灯亮灭
//   35 *  参数说明：LEDn        LED端口（LED0、LED1、LED2、LED3）
//   36 *            status      LED状态（LED_ON、LED_OFF）
//   37 *  函数返回：无
//   38 *  修改时间：2012-2-2   已测试
//   39 *  备    注：
//   40 *************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   41 void    led(LEDn ledn,LED_status status)
//   42 {
//   43     GPIO_SET_1bit(LED_PORT,ledn,status);
led:
        LDR.N    R2,??DataTable1
        LDR      R2,[R2, #+0]
        LDR      R2,[R2, #+0]
        MOVS     R3,#+1
        LSLS     R3,R3,R0
        BICS     R2,R2,R3
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ANDS     R1,R1,#0x1
        LSLS     R0,R1,R0
        ORRS     R0,R0,R2
        LDR.N    R1,??DataTable1
        LDR      R1,[R1, #+0]
        STR      R0,[R1, #+0]
//   44 }
        BX       LR               ;; return
//   45 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   46 void LED_turn(LEDn ledn)
//   47 {
//   48     LED_TURN(ledn);
LED_turn:
        LDR.N    R1,??DataTable1
        LDR      R1,[R1, #+0]
        LDR      R1,[R1, #+0]
        MOVS     R2,#+1
        LSLS     R0,R2,R0
        EORS     R0,R0,R1
        LDR.N    R1,??DataTable1
        LDR      R1,[R1, #+0]
        STR      R0,[R1, #+0]
//   49 }
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1:
        DC32     GPIOx
//   50 
//   51 /*************************************************************************
//   52 *  函数名称：water_lights
//   53 *  功能说明：四个LED轮流闪烁，流水灯
//   54 *  参数说明：无
//   55 *  函数返回：无
//   56 *  修改时间：2012-2-10   已测试
//   57 *  备    注：
//   58 *************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   59 void water_lights(void)
//   60 {
water_lights:
        PUSH     {R4,LR}
//   61 
//   62     LEDn    n;
//   63     LED_INIT();
        MOVS     R3,#+1
        MOVS     R2,#+1
        MOVS     R1,#+14
        MOVS     R0,#+0
        BL       gpio_init
        MOVS     R3,#+1
        MOVS     R2,#+1
        MOVS     R1,#+15
        MOVS     R0,#+0
        BL       gpio_init
        MOVS     R3,#+1
        MOVS     R2,#+1
        MOVS     R1,#+16
        MOVS     R0,#+0
        BL       gpio_init
        MOVS     R3,#+1
        MOVS     R2,#+1
        MOVS     R1,#+17
        MOVS     R0,#+0
        BL       gpio_init
//   64     for(n=LED0;n<=LED3;n++)
        MOVS     R4,#+14
        B.N      ??water_lights_0
//   65     {
//   66         led(n,LED_ON);
??water_lights_1:
        MOVS     R1,#+0
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       led
//   67         LED_DELAY_MS(100);
        MOVS     R0,#+100
        BL       delayms
//   68         led(n,LED_OFF);
        MOVS     R1,#+1
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       led
//   69     }
        ADDS     R4,R4,#+1
??water_lights_0:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+18
        BCC.N    ??water_lights_1
//   70 }
        POP      {R4,PC}          ;; return

        SECTION `.iar_vfe_header`:DATA:REORDER:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//   71 
//   72 
//   73 
//   74 
//   75 
//   76 
//   77 
//   78 
// 
// 200 bytes in section .text
// 
// 200 bytes of CODE memory
//
//Errors: none
//Warnings: none
