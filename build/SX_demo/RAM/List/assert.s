///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.30.1.53127/W32 for ARM    05/Apr/2012  04:25:36 /
// Copyright 1999-2011 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  D:\workspace\myworkspace\SW_K60\src\common\assert.c     /
//    Command line =  D:\workspace\myworkspace\SW_K60\src\common\assert.c     /
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
//                    assert.s                                                /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME assert

        #define SHT_PROGBITS 0x1

        EXTERN GPIOx
        EXTERN LED_init
        EXTERN uart0Printf

        PUBLIC assert_failed
        PUBLIC assert_failed_rst

// D:\workspace\myworkspace\SW_K60\src\common\assert.c
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
//   37         uart0Printf("断言发生在%s文件的第%d行！\n断言条件不成立，请检测错误原因.\n\n", file, line);  //打印错误信息
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
//   55         uart0Printf("断言发生在%s文件的第%d行！\n断言条件不成立.\n", file, line);  //打印错误信息
??assert_failed_rst_0:
        MOVS     R2,R5
        MOVS     R1,R4
        LDR.N    R0,??DataTable1_2
        BL       uart0Printf
//   56         uart0Printf("错误原因:%s\n\n",rst);
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
        DC32     `?<Constant "\\266\\317\\321\\324\\267\\242\\311\\372\\3`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_1:
        DC32     GPIOx

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_2:
        DC32     `?<Constant "\\266\\317\\321\\324\\267\\242\\311\\372\\3_1`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_3:
        DC32     `?<Constant "\\264\\355\\316\\363\\324\\255\\322\\362:%`

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
`?<Constant "\\266\\317\\321\\324\\267\\242\\311\\372\\3`:
        DATA
        DC8 0B6H, 0CFH, 0D1H, 0D4H, 0B7H, 0A2H, 0C9H, 0FAH
        DC8 0D4H, 0DAH, 25H, 73H, 0CEH, 0C4H, 0BCH, 0FEH
        DC8 0B5H, 0C4H, 0B5H, 0DAH, 25H, 64H, 0D0H, 0D0H
        DC8 0A3H, 0A1H, 0AH, 0B6H, 0CFH, 0D1H, 0D4H, 0CCH
        DC8 0F5H, 0BCH, 0FEH, 0B2H, 0BBH, 0B3H, 0C9H, 0C1H
        DC8 0A2H, 0A3H, 0ACH, 0C7H, 0EBH, 0BCH, 0ECH, 0B2H
        DC8 0E2H, 0B4H, 0EDH, 0CEH, 0F3H, 0D4H, 0ADH, 0D2H
        DC8 0F2H, 2EH, 0AH, 0AH, 0
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "\\266\\317\\321\\324\\267\\242\\311\\372\\3_1`:
        DATA
        DC8 "\266\317\321\324\267\242\311\372\324\332%s\316\304\274\376\265\304\265\332%d\320\320\243\241\012\266\317\321\324\314\365\274\376\262\273\263\311\301\242.\012"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "\\264\\355\\316\\363\\324\\255\\322\\362:%`:
        DATA
        DC8 "\264\355\316\363\324\255\322\362:%s\012\012"
        DC8 0, 0

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
