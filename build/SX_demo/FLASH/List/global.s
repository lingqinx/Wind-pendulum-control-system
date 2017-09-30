///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.30.1.53127/W32 for ARM    22/Dec/2013  00:47:31 /
// Copyright 1999-2011 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  C:\Users\Administrator\Desktop\杨向军的K60模板_只有基本 /
//                    IO操作\src\projects\SX_demo\global.c                    /
//    Command line =  C:\Users\Administrator\Desktop\杨向军的K60模板_只有基本 /
//                    IO操作\src\projects\SX_demo\global.c -lCN               /
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
//                    IO操作\build\SX_demo\FLASH\List\global.s                /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME global

        #define SHT_PROGBITS 0x1

        PUBLIC Line_Center
        PUBLIC Line_Center_L
        PUBLIC Line_Center_R
        PUBLIC PhotoBlackMax
        PUBLIC Pic_Buffer
        PUBLIC photeCompleteFlag
        PUBLIC selectLine
        PUBLIC showChoice
        PUBLIC trueSpeed

// C:\Users\Administrator\Desktop\杨向军的K60模板_只有基本IO操作\src\projects\SX_demo\global.c
//    1 /*
//    2 ************************************************************************
//    3 *                北京邮电大学 K60 学习例程                                        
//    4 * 文件名 :[global.c] 
//    5 * 描  述 ：全局变量
//    6 *设计改进：snowwolf
//    7 *  Email ：snowwolf2012@qq.com
//    8 * 说  明 ：这里定义我们用到的全局变量
//    9 ***********************************************************************
//   10 */
//   11 #include "global.h"
//   12 
//   13 //实际速度

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   14 u32 trueSpeed = {0};
trueSpeed:
        DS8 4
//   15 //输出选项

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   16 u8 showChoice = 0;
showChoice:
        DS8 1
//   17 //图像数据

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   18 unsigned char Pic_Buffer[ROW][COLUMN] = {0};
Pic_Buffer:
        DS8 19200
//   19 //采集完成标志位

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   20 volatile unsigned int photeCompleteFlag = 0;
photeCompleteFlag:
        DS8 4
//   21 //选取的行号

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   22 u8 selectLine[ROW];
selectLine:
        DS8 120
//   23 //二值化域值

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   24 unsigned int PhotoBlackMax = 125;
PhotoBlackMax:
        DATA
        DC32 125
//   25 //中心线
//   26 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   27 signed int  Line_Center[ROW]={0};  
Line_Center:
        DS8 480

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   28 signed int  Line_Center_L[ROW]={0};  
Line_Center_L:
        DS8 480

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   29 signed int  Line_Center_R[ROW]={0};  
Line_Center_R:
        DS8 480

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
// 20 769 bytes in section .bss
//      4 bytes in section .data
// 
// 20 773 bytes of DATA memory
//
//Errors: none
//Warnings: none
