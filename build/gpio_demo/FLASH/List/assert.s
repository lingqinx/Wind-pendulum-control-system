///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.60.1.5097/W32 for ARM     15/Aug/2015  12:46:19 /
// Copyright 1999-2013 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  C:\Users\Administrator\Desktop\MPU60508.12\src\common\a /
//                    ssert.c                                                 /
//    Command line =  C:\Users\Administrator\Desktop\MPU60508.12\src\common\a /
//                    ssert.c -lCN C:\Users\Administrator\Desktop\MPU60508.12 /
//                    \build\gpio_demo\FLASH\List\ -lB                        /
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
//                    emo\FLASH\List\assert.s                                 /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN GPIOx
        EXTERN LED_init
        EXTERN uart0Printf

        PUBLIC assert_failed
        PUBLIC assert_failed_rst

// C:\Users\Administrator\Desktop\MPU60508.12\src\common\assert.c
//    1 /******************** (C) COPYRIGHT 2011 野火嵌入式开发工作室 ********************
//    2  * 文件名       ：assert.c
//    3  * 描述         ：断言条件不成立的执行函数
//    4  *
//    5  * 实验平台     ：野火kinetis开发板
//    6  * 库版本       ：
//    7  * 嵌入系统     ：
//    8  * 备    注     ：
//    9  *
//   10  * 作者         ：
//   11  * 淘宝店       ：http://firestm32.taobao.com
//   12  * 技术支持论坛 ：http://www.ourdev.cn/bbs/bbs_list.jsp?bbs_id=1008
//   13 **********************************************************************************/	
//   14 
//   15 /*
//   16  * File:        assert.c
//   17  * Purpose:     Provide macro for software assertions
//   18  *
//   19  * Notes:       ASSERT macro defined in assert.h calls assert_failed()
//   20  */
//   21 
//   22 #include "common.h"
//   23 #include "uart.h"
//   24 #include "led.h"
//   25 
//   26 //const char ASSERT_FAILED_STR[] = "Assertion failed in %s at line %d\n";
//   27 
//   28 /********************************************************************/
//   29 //如果断言条件不成立，进入了错误状态，就会打印错误信息和用LED来显示状态

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   30 void assert_failed(char *file, int line)
//   31 {
assert_failed:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
//   32     int i,j;
//   33     LED_init();
        BL       LED_init
//   34     while (1)
//   35     {
//   36 #ifdef DEBUG_PRINT
//   37         uart0Printf("Assert occurred in file %s,line %d\n Please check..\n\n", file, line);  //打印错误信息
??assert_failed_0:
        MOVS     R2,R5
        MOVS     R1,R4
        LDR.N    R0,??DataTable1
        BL       uart0Printf
//   38 #endif
//   39         for(j = 0xf;j;j--)
        MOVS     R0,#+15
        B.N      ??assert_failed_1
//   40         {
//   41           for (i = 0xffffff; i; i--) ;
//   42           LED_TURN(LED0);LED_TURN(LED1);LED_TURN(LED2);LED_TURN(LED3);//全灯闪烁指示进入错误状态
//   43           for (i = 0xffffff; i; i--) ;
??assert_failed_2:
        SUBS     R1,R1,#+1
??assert_failed_3:
        CMP      R1,#+0
        BNE.N    ??assert_failed_2
        SUBS     R0,R0,#+1
??assert_failed_1:
        CMP      R0,#+0
        BEQ.N    ??assert_failed_0
        MVNS     R1,#-16777216
        B.N      ??assert_failed_4
??assert_failed_5:
        SUBS     R1,R1,#+1
??assert_failed_4:
        CMP      R1,#+0
        BNE.N    ??assert_failed_5
        LDR.N    R1,??DataTable1_1
        LDR      R1,[R1, #+0]
        LDR      R1,[R1, #+0]
        EORS     R1,R1,#0x4000
        LDR.N    R2,??DataTable1_1
        LDR      R2,[R2, #+0]
        STR      R1,[R2, #+0]
        LDR.N    R1,??DataTable1_1
        LDR      R1,[R1, #+0]
        LDR      R1,[R1, #+0]
        EORS     R1,R1,#0x8000
        LDR.N    R2,??DataTable1_1
        LDR      R2,[R2, #+0]
        STR      R1,[R2, #+0]
        LDR.N    R1,??DataTable1_1
        LDR      R1,[R1, #+0]
        LDR      R1,[R1, #+0]
        EORS     R1,R1,#0x10000
        LDR.N    R2,??DataTable1_1
        LDR      R2,[R2, #+0]
        STR      R1,[R2, #+0]
        LDR.N    R1,??DataTable1_1
        LDR      R1,[R1, #+0]
        LDR      R1,[R1, #+0]
        EORS     R1,R1,#0x20000
        LDR.N    R2,??DataTable1_1
        LDR      R2,[R2, #+0]
        STR      R1,[R2, #+0]
        MVNS     R1,#-16777216
        B.N      ??assert_failed_3
//   44         }
//   45     }
//   46 }
//   47 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   48 void assert_failed_rst(char *file, int line,char *rst)
//   49 {
assert_failed_rst:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
//   50     int i,j;
//   51     LED_init();
        BL       LED_init
//   52     while (1)
//   53     {
//   54 #ifdef DEBUG_PRINT
//   55         uart0Printf("Assert occured in file %s line %d\\n Plesea check.\n", file, line);  //打印错误信息
??assert_failed_rst_0:
        MOVS     R2,R5
        MOVS     R1,R4
        LDR.N    R0,??DataTable1_2
        BL       uart0Printf
//   56         uart0Printf("Error type %s\n\n",rst);
        MOVS     R1,R6
        LDR.N    R0,??DataTable1_3
        BL       uart0Printf
//   57 #endif
//   58         for(j = 0x5f;j;j--)
        MOVS     R0,#+95
        B.N      ??assert_failed_rst_1
//   59         {
//   60           for (i = 0x7ffff; i; i--) ;
//   61           LED_TURN(LED0);LED_TURN(LED1);LED_TURN(LED2);LED_TURN(LED3);//全灯闪烁指示进入错误状态
//   62           for (i = 0x7ffff; i; i--) ;
??assert_failed_rst_2:
        SUBS     R1,R1,#+1
??assert_failed_rst_3:
        CMP      R1,#+0
        BNE.N    ??assert_failed_rst_2
        SUBS     R0,R0,#+1
??assert_failed_rst_1:
        CMP      R0,#+0
        BEQ.N    ??assert_failed_rst_0
        LDR.N    R1,??DataTable1_4  ;; 0x7ffff
        B.N      ??assert_failed_rst_4
??assert_failed_rst_5:
        SUBS     R1,R1,#+1
??assert_failed_rst_4:
        CMP      R1,#+0
        BNE.N    ??assert_failed_rst_5
        LDR.N    R1,??DataTable1_1
        LDR      R1,[R1, #+0]
        LDR      R1,[R1, #+0]
        EORS     R1,R1,#0x4000
        LDR.N    R2,??DataTable1_1
        LDR      R2,[R2, #+0]
        STR      R1,[R2, #+0]
        LDR.N    R1,??DataTable1_1
        LDR      R1,[R1, #+0]
        LDR      R1,[R1, #+0]
        EORS     R1,R1,#0x8000
        LDR.N    R2,??DataTable1_1
        LDR      R2,[R2, #+0]
        STR      R1,[R2, #+0]
        LDR.N    R1,??DataTable1_1
        LDR      R1,[R1, #+0]
        LDR      R1,[R1, #+0]
        EORS     R1,R1,#0x10000
        LDR.N    R2,??DataTable1_1
        LDR      R2,[R2, #+0]
        STR      R1,[R2, #+0]
        LDR.N    R1,??DataTable1_1
        LDR      R1,[R1, #+0]
        LDR      R1,[R1, #+0]
        EORS     R1,R1,#0x20000
        LDR.N    R2,??DataTable1_1
        LDR      R2,[R2, #+0]
        STR      R1,[R2, #+0]
        LDR.N    R1,??DataTable1_4  ;; 0x7ffff
        B.N      ??assert_failed_rst_3
//   63         }
//   64     }
//   65 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1:
        DC32     `?<Constant "Assert occurred in fi...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_1:
        DC32     GPIOx

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_2:
        DC32     `?<Constant "Assert occured in fil...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_3:
        DC32     `?<Constant "Error type %s\\n\\n">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_4:
        DC32     0x7ffff

        SECTION `.iar_vfe_header`:DATA:REORDER:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Assert occurred in fi...">`:
        DATA
        DC8 41H, 73H, 73H, 65H, 72H, 74H, 20H, 6FH
        DC8 63H, 63H, 75H, 72H, 72H, 65H, 64H, 20H
        DC8 69H, 6EH, 20H, 66H, 69H, 6CH, 65H, 20H
        DC8 25H, 73H, 2CH, 6CH, 69H, 6EH, 65H, 20H
        DC8 25H, 64H, 0AH, 20H, 50H, 6CH, 65H, 61H
        DC8 73H, 65H, 20H, 63H, 68H, 65H, 63H, 6BH
        DC8 2EH, 2EH, 0AH, 0AH, 0
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Assert occured in fil...">`:
        DATA
        DC8 41H, 73H, 73H, 65H, 72H, 74H, 20H, 6FH
        DC8 63H, 63H, 75H, 72H, 65H, 64H, 20H, 69H
        DC8 6EH, 20H, 66H, 69H, 6CH, 65H, 20H, 25H
        DC8 73H, 20H, 6CH, 69H, 6EH, 65H, 20H, 25H
        DC8 64H, 5CH, 6EH, 20H, 50H, 6CH, 65H, 73H
        DC8 65H, 61H, 20H, 63H, 68H, 65H, 63H, 6BH
        DC8 2EH, 0AH, 0
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Error type %s\\n\\n">`:
        DATA
        DC8 "Error type %s\012\012"

        END
//   66 /********************************************************************/
// 
// 124 bytes in section .rodata
// 262 bytes in section .text
// 
// 262 bytes of CODE  memory
// 124 bytes of CONST memory
//
//Errors: none
//Warnings: none
