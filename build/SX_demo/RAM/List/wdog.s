///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.30.1.53127/W32 for ARM    05/Apr/2012  04:25:35 /
// Copyright 1999-2011 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  D:\workspace\myworkspace\SW_K60\src\drivers\wdog\wdog.c /
//    Command line =  D:\workspace\myworkspace\SW_K60\src\drivers\wdog\wdog.c /
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
//                    wdog.s                                                  /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME wdog

        #define SHT_PROGBITS 0x1

        PUBLIC wdog_disable
        PUBLIC wdog_unlock

// D:\workspace\myworkspace\SW_K60\src\drivers\wdog\wdog.c
//    1 /*
//    2  * File:        wdog.c
//    3  * Purpose:     Provide common watchdog module routines
//    4  *
//    5  * Notes:		Need to add more functionality. Right now it
//    6  * 				is just a disable routine since we know almost
//    7  * 				all projects will need that.       
//    8  *              
//    9  */
//   10 
//   11 #include "common.h"
//   12 #include "wdog.h"
//   13        
//   14 
//   15 /*
//   16 ********************************************************************************
//   17 ** 函数名: wdog_disable                                                      
//   18 ** 功  能: 关闭看门狗模块                                                  
//   19 ** 参  数: 无			  					  
//   20 ** 返  回: 无                                                              
//   21 ** 说  明: 无                                                             
//   22 ** 参  考：手册                                                                
//   23 *******************************************************************************
//   24 */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   25 void wdog_disable(void)
//   26 {
wdog_disable:
        PUSH     {R7,LR}
//   27 	/* First unlock the watchdog so that we can write to registers */
//   28 	/*给看门狗模块解锁，以便写寄存器                               */                               
//   29         wdog_unlock();
        BL       wdog_unlock
//   30 	
//   31 	/* Clear the WDOGEN bit to disable the watchdog               */
//   32         /*清除使能位，关闭看门狗                                      */
//   33 	WDOG_STCTRLH &= ~WDOG_STCTRLH_WDOGEN_MASK;
        LDR.N    R0,??DataTable1  ;; 0x40052000
        LDRH     R0,[R0, #+0]
        MOVW     R1,#+65534
        ANDS     R0,R1,R0
        LDR.N    R1,??DataTable1  ;; 0x40052000
        STRH     R0,[R1, #+0]
//   34 }
        POP      {R0,PC}          ;; return
//   35 
//   36 /*
//   37 ****************************************************************************
//   38 ** 函数名: wdog_unlock                                                      *
//   39 ** 功  能: 看门狗解锁                                                       * 
//   40 ** 参  数: 无							           *	
//   41 ** 返  回: 无                                                               *
//   42 ** 说  明: 无  
//   43 **      Watchdog timer unlock routine. Writing 0xC520 followed by 0xD928
//   44 **      will unlock the write once registers in the WDOG so they are writable
//   45 **      within the WCT period.
//   46 *****************************************************************************
//   47  */

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//   48 void wdog_unlock(void)
//   49 {
//   50   /* NOTE: DO NOT SINGLE STEP THROUGH THIS FUNCTION!!! */
//   51   /* There are timing requirements for the execution of the unlock. If
//   52    * you single step through the code you will cause the CPU to reset.
//   53    */
//   54 
//   55 	/* This sequence must execute within 20 clock cycles, so disable
//   56          * interrupts will keep the code atomic and ensure the timing.
//   57          */
//   58         /* 注意: 不要单步调试此程序!!! ，否则会引起CPU复位*/
//   59         /*关总中断                                        */
//   60         DisableInterrupts;
wdog_unlock:
        CPSID i         
//   61 	
//   62 	/* Write 0xC520 to the unlock register 写解锁寄存器 */
//   63 	WDOG_UNLOCK = 0xC520;
        LDR.N    R0,??DataTable1_1  ;; 0x4005200e
        MOVW     R1,#+50464
        STRH     R1,[R0, #+0]
//   64 	
//   65 	/* Followed by 0xD928 to complete the unlock 完成解锁*/
//   66 	WDOG_UNLOCK = 0xD928;
        LDR.N    R0,??DataTable1_1  ;; 0x4005200e
        MOVW     R1,#+55592
        STRH     R1,[R0, #+0]
//   67 	
//   68 	/* Re-enable interrupts now that we are done */	
//   69        	EnableInterrupts;
        CPSIE i         
//   70 }
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1:
        DC32     0x40052000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_1:
        DC32     0x4005200e

        SECTION `.iar_vfe_header`:DATA:REORDER:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//   71 /********************************************************************/
// 
// 52 bytes in section .text
// 
// 52 bytes of CODE memory
//
//Errors: none
//Warnings: none
