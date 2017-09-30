///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.30.1.53127/W32 for ARM    05/Apr/2012  04:25:37 /
// Copyright 1999-2011 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  D:\workspace\myworkspace\SW_K60\src\drivers\fun\fun.c   /
//    Command line =  D:\workspace\myworkspace\SW_K60\src\drivers\fun\fun.c   /
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
//                    fun.s                                                   /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME fun

        #define SHT_PROGBITS 0x1

        EXTERN core_clk_khz
        EXTERN core_clk_mhz

        PUBLIC delay
        PUBLIC delayms
        PUBLIC delayus
        PUBLIC get_mid
        PUBLIC get_mid8

// D:\workspace\myworkspace\SW_K60\src\drivers\fun\fun.c
//    1 /*
//    2 ************************************************************************
//    3 *                北京邮电大学 K60 学习例程                                        
//    4 * 文件名 :[fun.c] 
//    5 * 描  述 ：基本功能函数
//    6 *设计改进：snowwolf
//    7 *  Email ：snowwolf2012@qq.com
//    8 * 说  明 ：基本功能函数
//    9 ***********************************************************************
//   10 */
//   11 #include  "fun.h"
//   12 
//   13 
//   14 /*************************************************************************
//   15 *  函数名称：delay
//   16 *  功能说明：延时函数
//   17 *  参数说明：无
//   18 *  函数返回：无
//   19 *  修改时间：2012-2-1    已测试
//   20 *  备    注：
//   21 *************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   22 void  delay(void)
//   23 {
delay:
        PUSH     {R7,LR}
//   24     delayms(500);
        MOV      R0,#+500
        BL       delayms
//   25 }
        POP      {R0,PC}          ;; return
//   26 
//   27 /*************************************************************************
//   28 *  函数名称：delayms
//   29 *  功能说明：延时函数毫秒  微秒
//   30 *  参数说明：无
//   31 *  函数返回：无
//   32 *  修改时间：2012-2-1    已测试
//   33 *  备    注：
//   34 *************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   35 void  delayms(uint32  ms)
//   36 {
//   37 
//   38     uint32  i,j;
//   39     for(i=0;i<ms;i++)
delayms:
        MOVS     R1,#+0
        B.N      ??delayms_0
//   40     {
//   41         for(j=core_clk_khz/4;j>0;j--)
??delayms_1:
        SUBS     R2,R2,#+1
??delayms_2:
        CMP      R2,#+0
        BNE.N    ??delayms_1
        ADDS     R1,R1,#+1
??delayms_0:
        CMP      R1,R0
        BCS.N    ??delayms_3
        LDR.N    R2,??DataTable1
        LDR      R2,[R2, #+0]
        LSRS     R2,R2,#+2
        B.N      ??delayms_2
//   42         {
//   43         }
//   44     }
//   45 }
??delayms_3:
        BX       LR               ;; return
//   46 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   47 void  delayus(uint32  us)
//   48 {
//   49     uint32  i,j;
//   50     for(i=0;i<us;i++)
delayus:
        MOVS     R1,#+0
        B.N      ??delayus_0
//   51     {
//   52         for(j=core_clk_mhz/4;j>0;j--)
??delayus_1:
        SUBS     R2,R2,#+1
??delayus_2:
        CMP      R2,#+0
        BNE.N    ??delayus_1
        ADDS     R1,R1,#+1
??delayus_0:
        CMP      R1,R0
        BCS.N    ??delayus_3
        LDR.N    R2,??DataTable1_1
        LDR      R2,[R2, #+0]
        LSRS     R2,R2,#+2
        B.N      ??delayus_2
//   53         {
//   54         }
//   55     }
//   56 }
??delayus_3:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1:
        DC32     core_clk_khz

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_1:
        DC32     core_clk_mhz
//   57 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   58 signed int get_mid(signed int a,signed int b,signed int c)
//   59 {   
//   60     unsigned int x=0;
get_mid:
        MOVS     R3,#+0
//   61     if(a>b){x=b;b=a;a=x;}
        CMP      R1,R0
        BGE.N    ??get_mid_0
        MOVS     R3,R1
        MOVS     R1,R0
        MOVS     R0,R3
//   62     if(b>c){x=c;c=b;b=x;}
??get_mid_0:
        CMP      R2,R1
        BGE.N    ??get_mid_1
        MOVS     R3,R2
        MOVS     R2,R1
        MOVS     R1,R3
//   63     if(a>b){x=b;b=a;a=x;}
??get_mid_1:
        CMP      R1,R0
        BGE.N    ??get_mid_2
        MOVS     R3,R1
        MOVS     R1,R0
        MOVS     R0,R3
//   64     return b ;
??get_mid_2:
        MOVS     R0,R1
        BX       LR               ;; return
//   65 }

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   66 unsigned char get_mid8(unsigned char a,unsigned char b,unsigned char c)
//   67 {   
//   68     unsigned char x=0;
get_mid8:
        MOVS     R3,#+0
//   69     if(a>b){x=b;b=a;a=x;}
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R1,R0
        BCS.N    ??get_mid8_0
        MOVS     R3,R1
        MOVS     R1,R0
        MOVS     R0,R3
//   70     if(b>c){x=c;c=b;b=x;}
??get_mid8_0:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R2,R1
        BCS.N    ??get_mid8_1
        MOVS     R3,R2
        MOVS     R2,R1
        MOVS     R1,R3
//   71     if(a>b){x=b;b=a;a=x;}
??get_mid8_1:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R1,R0
        BCS.N    ??get_mid8_2
        MOVS     R3,R1
        MOVS     R1,R0
        MOVS     R0,R3
//   72     return b ;
??get_mid8_2:
        MOVS     R0,R1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BX       LR               ;; return
//   73 }

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
// 158 bytes in section .text
// 
// 158 bytes of CODE memory
//
//Errors: none
//Warnings: none
