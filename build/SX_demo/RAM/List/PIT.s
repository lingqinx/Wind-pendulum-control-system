///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.30.1.53127/W32 for ARM    05/Apr/2012  04:25:36 /
// Copyright 1999-2011 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  D:\workspace\myworkspace\SW_K60\src\drivers\PIT\PIT.c   /
//    Command line =  D:\workspace\myworkspace\SW_K60\src\drivers\PIT\PIT.c   /
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
//                    PIT.s                                                   /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME PIT

        #define SHT_PROGBITS 0x1

        EXTERN bus_clk_khz
        EXTERN disable_irq
        EXTERN enable_irq

        PUBLIC PIT_Reload_Freq
        PUBLIC get_PITCNTms
        PUBLIC get_PITCNTtick
        PUBLIC get_PITCNTus
        PUBLIC pit_init
        PUBLIC pit_irq_DIS
        PUBLIC pit_irq_EN

// D:\workspace\myworkspace\SW_K60\src\drivers\PIT\PIT.c
//    1 /*
//    2 ************************************************************************
//    3 *                北京邮电大学 K60 学习例程                                        
//    4 * 文件名 :[PIT.c] 
//    5 * 描  述 ：PIT周期中断计时器，定时中断
//    6 * 原创   ：野火嵌入式开发工作室
//    7 *设计改进：snowwolf
//    8 *  Email ：snowwolf2012@qq.com
//    9 *最后更新：2012-04-03
//   10 * 说  明 ：
//   11 ***********************************************************************
//   12 */
//   13 
//   14 
//   15 #include "common.h"
//   16 #include  "PIT.h"     //周期中断计时器
//   17 
//   18 /*************************************************************************
//   19 *  函数名称：pit_init
//   20 *  功能说明：PITn定时器初始化
//   21 *  参数说明：PITn        模块号（PIT0~PIT3）
//   22              freq        频率（Hz）
//   23 *  函数返回：无
//   24 *  修改时间：2012-1-24
//   25 *  备    注：
//   26 *************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   27 void pit_init(PITn pitn,u32 freq)
//   28 {
//   29     //PIT 用的是 Bus Clock 总线频率
//   30     //溢出计数 = 总线频率 * 时间
//   31 
//   32     /* 开启时钟*/
//   33     SIM_SCGC6       |=SIM_SCGC6_PIT_MASK;                             //使能PIT时钟
pit_init:
        LDR.N    R2,??DataTable6  ;; 0x4004803c
        LDR      R2,[R2, #+0]
        ORRS     R2,R2,#0x800000
        LDR.N    R3,??DataTable6  ;; 0x4004803c
        STR      R2,[R3, #+0]
//   34 
//   35     /* PIT模块控制 PIT Module Control Register (PIT_MCR) */
//   36     PIT_MCR         &=~(PIT_MCR_MDIS_MASK | PIT_MCR_FRZ_MASK );       //使能PIT定时器时钟 ，调试模式下继续运行
        LDR.N    R2,??DataTable6_1  ;; 0x40037000
        LDR      R2,[R2, #+0]
        LSRS     R2,R2,#+2
        LSLS     R2,R2,#+2
        LDR.N    R3,??DataTable6_1  ;; 0x40037000
        STR      R2,[R3, #+0]
//   37 
//   38     /* 定时器加载值设置 Timer Load Value Register (PIT_LDVALn) */
//   39     PIT_LDVAL(pitn)  = (bus_clk_khz*1000)/freq - 1 ;                                           //设置溢出中断时间
        LDR.N    R2,??DataTable6_2
        LDR      R2,[R2, #+0]
        MOV      R3,#+1000
        MULS     R2,R3,R2
        UDIV     R1,R2,R1
        SUBS     R1,R1,#+1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LSLS     R2,R0,#+4
        LDR.N    R3,??DataTable6_3  ;; 0x40037100
        STR      R1,[R2, R3]
//   40 
//   41     //定时时间到了后，TIF 置 1 。写1的时候就会清0
//   42     PIT_Flag_Clear(pitn);                                             //清中断标志位
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R1,??DataTable6_3  ;; 0x40037100
        ADDS     R1,R1,R0, LSL #+4
        LDR      R1,[R1, #+12]
        ORRS     R1,R1,#0x1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R2,??DataTable6_3  ;; 0x40037100
        ADDS     R2,R2,R0, LSL #+4
        STR      R1,[R2, #+12]
//   43 
//   44     /* 定时器控制寄存器 Timer Control Register (PIT_TCTRL0) */
//   45     PIT_TCTRL(pitn) |= PIT_TCTRL_TEN_MASK;
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R1,??DataTable6_3  ;; 0x40037100
        ADDS     R1,R1,R0, LSL #+4
        LDR      R1,[R1, #+8]
        ORRS     R1,R1,#0x1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R2,??DataTable6_3  ;; 0x40037100
        ADDS     R0,R2,R0, LSL #+4
        STR      R1,[R0, #+8]
//   46     		                                  
//   47 }
        BX       LR               ;; return
//   48 
//   49 /*************************************************************************
//   50 * 函数名称: PIT_Reload_Freq                                                    
//   51 * 函数返回: 计数器重新计数                                         
//   52 * 参数说明: pitn:表示pit通道号。        
//   53 * 功能概要: 设置相关寄存器的值 
//   54 *  修改时间：2012-3-24
//   55 *  备    注：要更改计数器值需要先关闭使能再改，再打开
//   56 *************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   57 void PIT_Reload_Freq(PITn pitn,u32 freq)
//   58 {
//   59     PIT_TCTRL(pitn) &= ~PIT_TCTRL_TEN_MASK;
PIT_Reload_Freq:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R2,??DataTable6_3  ;; 0x40037100
        ADDS     R2,R2,R0, LSL #+4
        LDR      R2,[R2, #+8]
        LSRS     R2,R2,#+1
        LSLS     R2,R2,#+1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R3,??DataTable6_3  ;; 0x40037100
        ADDS     R3,R3,R0, LSL #+4
        STR      R2,[R3, #+8]
//   60     PIT_LDVAL(pitn)  = (bus_clk_khz*1000)/freq - 1 ;  
        LDR.N    R2,??DataTable6_2
        LDR      R2,[R2, #+0]
        MOV      R3,#+1000
        MULS     R2,R3,R2
        UDIV     R1,R2,R1
        SUBS     R1,R1,#+1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LSLS     R2,R0,#+4
        LDR.N    R3,??DataTable6_3  ;; 0x40037100
        STR      R1,[R2, R3]
//   61     PIT_TCTRL(pitn) |= PIT_TCTRL_TEN_MASK;
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R1,??DataTable6_3  ;; 0x40037100
        ADDS     R1,R1,R0, LSL #+4
        LDR      R1,[R1, #+8]
        ORRS     R1,R1,#0x1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R2,??DataTable6_3  ;; 0x40037100
        ADDS     R0,R2,R0, LSL #+4
        STR      R1,[R0, #+8]
//   62 }
        BX       LR               ;; return
//   63 
//   64 /*************************************************************************
//   65 * 函数名称: get_get_PITCNT                                                       
//   66 * 函数返回: 当前定时器剩余时间                                          
//   67 * 参数说明: pitn:表示pit通道号。        
//   68 * 功能概要: 设置相关寄存器的值 
//   69 *  修改时间：2012-3-24
//   70 *  备    注：ms返回ms,us返回us
//   71 *************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   72 uint32 get_PITCNTms(PITn pitn)
//   73 {
//   74     return PIT_CVAL(pitn)/bus_clk_khz;
get_PITCNTms:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R1,??DataTable6_3  ;; 0x40037100
        ADDS     R0,R1,R0, LSL #+4
        LDR      R0,[R0, #+4]
        LDR.N    R1,??DataTable6_2
        LDR      R1,[R1, #+0]
        UDIV     R0,R0,R1
        BX       LR               ;; return
//   75 }
//   76 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   77 uint32 get_PITCNTus(PITn pitn)
//   78 {
//   79     return PIT_CVAL(pitn)/(bus_clk_khz/1000);
get_PITCNTus:
        LDR.N    R1,??DataTable6_2
        LDR      R1,[R1, #+0]
        MOV      R2,#+1000
        UDIV     R1,R1,R2
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R2,??DataTable6_3  ;; 0x40037100
        ADDS     R0,R2,R0, LSL #+4
        LDR      R0,[R0, #+4]
        UDIV     R0,R0,R1
        BX       LR               ;; return
//   80 }

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   81 uint32 get_PITCNTtick(PITn pitn)
//   82 {
//   83     return PIT_CVAL(pitn);
get_PITCNTtick:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R1,??DataTable6_3  ;; 0x40037100
        ADDS     R0,R1,R0, LSL #+4
        LDR      R0,[R0, #+4]
        BX       LR               ;; return
//   84 }
//   85 
//   86 /*************************************************************************
//   87 *  函数名称：pit_irq_EN
//   88 *  功能说明：PITn定时中断使能
//   89 *  参数说明：PITn        模块号（PIT0~PIT3）
//   90 *  函数返回：无
//   91 *  修改时间：2012-3-24
//   92 *  备    注：
//   93 *************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   94 void pit_irq_EN(PITn pitn)
//   95 {
pit_irq_EN:
        PUSH     {R7,LR}
//   96      PIT_TCTRL(pitn) |= PIT_TCTRL_TIE_MASK;    //使能 PITn定时器,并开PITn中断  
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R1,??DataTable6_3  ;; 0x40037100
        ADDS     R1,R1,R0, LSL #+4
        LDR      R1,[R1, #+8]
        ORRS     R1,R1,#0x2
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R2,??DataTable6_3  ;; 0x40037100
        ADDS     R2,R2,R0, LSL #+4
        STR      R1,[R2, #+8]
//   97      enable_irq(pitn+68);                      //开接收引脚的IRQ中断
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADDS     R0,R0,#+68
        BL       enable_irq
//   98 }
        POP      {R0,PC}          ;; return
//   99 
//  100 /*************************************************************************
//  101 *  函数名称：pit_irq_DIS
//  102 *  功能说明：PITn定时中断关闭
//  103 *  参数说明：PITn        模块号（PIT0~PIT3）
//  104 *  函数返回：无
//  105 *  修改时间：2012-3-24
//  106 *  备    注：
//  107 *************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  108 void pit_irq_DIS(PITn pitn)
//  109 {
pit_irq_DIS:
        PUSH     {R7,LR}
//  110      PIT_TCTRL(pitn) &= ~PIT_TCTRL_TIE_MASK;    //关 PITn定时器, 
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R1,??DataTable6_3  ;; 0x40037100
        ADDS     R1,R1,R0, LSL #+4
        LDR      R1,[R1, #+8]
        BICS     R1,R1,#0x2
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R2,??DataTable6_3  ;; 0x40037100
        ADDS     R2,R2,R0, LSL #+4
        STR      R1,[R2, #+8]
//  111      disable_irq(pitn+68);                      //关IRQ中断
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADDS     R0,R0,#+68
        BL       disable_irq
//  112 }
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6:
        DC32     0x4004803c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_1:
        DC32     0x40037000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_2:
        DC32     bus_clk_khz

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_3:
        DC32     0x40037100

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
// 320 bytes in section .text
// 
// 320 bytes of CODE memory
//
//Errors: none
//Warnings: none
