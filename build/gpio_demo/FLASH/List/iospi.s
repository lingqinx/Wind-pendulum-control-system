///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.60.1.5097/W32 for ARM     15/Aug/2015  12:46:27 /
// Copyright 1999-2013 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  C:\Users\Administrator\Desktop\MPU60508.12\src\drivers\ /
//                    iospi\iospi.c                                           /
//    Command line =  C:\Users\Administrator\Desktop\MPU60508.12\src\drivers\ /
//                    iospi\iospi.c -lCN C:\Users\Administrator\Desktop\MPU60 /
//                    508.12\build\gpio_demo\FLASH\List\ -lB                  /
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
//                    emo\FLASH\List\iospi.s                                  /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        PUBLIC IOSPI_LCD_WrCmd
        PUBLIC IOSPI_LCD_WrDat

// C:\Users\Administrator\Desktop\MPU60508.12\src\drivers\iospi\iospi.c
//    1 /*
//    2 ************************************************************************
//    3 *                北京邮电大学 K60 学习例程                                        
//    4 * 文件名 :[iospi.c] 
//    5 * 描  述 ：IO口实现SPI
//    6 *设计改进：snowwolf
//    7 *  Email ：snowwolf2012@qq.com
//    8 * 说  明 ：基本功能函数
//    9 ***********************************************************************
//   10 */
//   11 #include "iospi.h"
//   12 
//   13 #define SPI_NOP asm("nop")

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//   14 void IOSPI_LCD_WrDat(byte data)
//   15 {
//   16     byte i=8;
IOSPI_LCD_WrDat:
        MOVS     R1,#+8
//   17     //LCD_CS=0;;
//   18     SPI_DC = 1;
        LDR.N    R2,??DataTable1  ;; 0x400ff080
        LDR      R2,[R2, #+0]
        ORRS     R2,R2,#0x40000
        LDR.N    R3,??DataTable1  ;; 0x400ff080
        STR      R2,[R3, #+0]
//   19     SPI_NOP;
        nop
//   20     SPI_SCLK = 0;
        LDR.N    R2,??DataTable1  ;; 0x400ff080
        LDR      R2,[R2, #+0]
        BICS     R2,R2,#0x1000
        LDR.N    R3,??DataTable1  ;; 0x400ff080
        STR      R2,[R3, #+0]
//   21     SPI_NOP;  
        nop
        B.N      ??IOSPI_LCD_WrDat_0
//   22     
//   23     while(i--)
//   24     {
//   25         if(data&0x80)
//   26           SPI_MOSI = 1;
//   27         else
//   28           SPI_MOSI = 0;
??IOSPI_LCD_WrDat_1:
        LDR.N    R2,??DataTable1  ;; 0x400ff080
        LDR      R2,[R2, #+0]
        BICS     R2,R2,#0x4000
        LDR.N    R3,??DataTable1  ;; 0x400ff080
        STR      R2,[R3, #+0]
//   29         
//   30         SPI_SCLK = 1; 
??IOSPI_LCD_WrDat_2:
        LDR.N    R2,??DataTable1  ;; 0x400ff080
        LDR      R2,[R2, #+0]
        ORRS     R2,R2,#0x1000
        LDR.N    R3,??DataTable1  ;; 0x400ff080
        STR      R2,[R3, #+0]
//   31         SPI_NOP;       
        nop
//   32         SPI_SCLK = 0;  
        LDR.N    R2,??DataTable1  ;; 0x400ff080
        LDR      R2,[R2, #+0]
        BICS     R2,R2,#0x1000
        LDR.N    R3,??DataTable1  ;; 0x400ff080
        STR      R2,[R3, #+0]
//   33         
//   34         data<<=1;    
        LSLS     R0,R0,#+1
??IOSPI_LCD_WrDat_0:
        MOVS     R2,R1
        SUBS     R1,R2,#+1
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+0
        BEQ.N    ??IOSPI_LCD_WrDat_3
        LSLS     R2,R0,#+24
        BPL.N    ??IOSPI_LCD_WrDat_1
        LDR.N    R2,??DataTable1  ;; 0x400ff080
        LDR      R2,[R2, #+0]
        ORRS     R2,R2,#0x4000
        LDR.N    R3,??DataTable1  ;; 0x400ff080
        STR      R2,[R3, #+0]
        B.N      ??IOSPI_LCD_WrDat_2
//   35     }
//   36     //LCD_CS=1;
//   37 }
??IOSPI_LCD_WrDat_3:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//   38 void IOSPI_LCD_WrCmd(byte cmd)
//   39 {
//   40     byte i=8;
IOSPI_LCD_WrCmd:
        MOVS     R1,#+8
//   41     
//   42     //LCD_CS=0;;
//   43     SPI_DC = 0;
        LDR.N    R2,??DataTable1  ;; 0x400ff080
        LDR      R2,[R2, #+0]
        BICS     R2,R2,#0x40000
        LDR.N    R3,??DataTable1  ;; 0x400ff080
        STR      R2,[R3, #+0]
//   44     SPI_SCLK = 0;
        LDR.N    R2,??DataTable1  ;; 0x400ff080
        LDR      R2,[R2, #+0]
        BICS     R2,R2,#0x1000
        LDR.N    R3,??DataTable1  ;; 0x400ff080
        STR      R2,[R3, #+0]
//   45     SPI_NOP;
        nop
        B.N      ??IOSPI_LCD_WrCmd_0
//   46     
//   47     while(i--)
//   48     {
//   49         if(cmd&0x80)
//   50           SPI_MOSI = 1;
//   51         else
//   52           SPI_MOSI = 0;
??IOSPI_LCD_WrCmd_1:
        LDR.N    R2,??DataTable1  ;; 0x400ff080
        LDR      R2,[R2, #+0]
        BICS     R2,R2,#0x4000
        LDR.N    R3,??DataTable1  ;; 0x400ff080
        STR      R2,[R3, #+0]
//   53         
//   54         SPI_SCLK = 1;
??IOSPI_LCD_WrCmd_2:
        LDR.N    R2,??DataTable1  ;; 0x400ff080
        LDR      R2,[R2, #+0]
        ORRS     R2,R2,#0x1000
        LDR.N    R3,??DataTable1  ;; 0x400ff080
        STR      R2,[R3, #+0]
//   55         SPI_NOP;     
        nop
//   56         SPI_SCLK = 0; 
        LDR.N    R2,??DataTable1  ;; 0x400ff080
        LDR      R2,[R2, #+0]
        BICS     R2,R2,#0x1000
        LDR.N    R3,??DataTable1  ;; 0x400ff080
        STR      R2,[R3, #+0]
//   57         cmd<<=1;
        LSLS     R0,R0,#+1
??IOSPI_LCD_WrCmd_0:
        MOVS     R2,R1
        SUBS     R1,R2,#+1
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+0
        BEQ.N    ??IOSPI_LCD_WrCmd_3
        LSLS     R2,R0,#+24
        BPL.N    ??IOSPI_LCD_WrCmd_1
        LDR.N    R2,??DataTable1  ;; 0x400ff080
        LDR      R2,[R2, #+0]
        ORRS     R2,R2,#0x4000
        LDR.N    R3,??DataTable1  ;; 0x400ff080
        STR      R2,[R3, #+0]
        B.N      ??IOSPI_LCD_WrCmd_2
//   58     } 	
//   59     //LCD_CS=1;
//   60 }
??IOSPI_LCD_WrCmd_3:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1:
        DC32     0x400ff080

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
// 206 bytes in section .text
// 
// 206 bytes of CODE memory
//
//Errors: none
//Warnings: none
