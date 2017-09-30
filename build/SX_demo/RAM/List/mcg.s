///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.30.1.53127/W32 for ARM    05/Apr/2012  04:25:38 /
// Copyright 1999-2011 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  D:\workspace\myworkspace\SW_K60\src\drivers\mcg\mcg.c   /
//    Command line =  D:\workspace\myworkspace\SW_K60\src\drivers\mcg\mcg.c   /
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
//                    mcg.s                                                   /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME mcg

        #define SHT_PROGBITS 0x1
        #define SHF_WRITE 0x1
        #define SHF_EXECINSTR 0x4

        PUBLIC mcg_div
        PUBLIC pll_init
        PUBLIC set_sys_dividers

// D:\workspace\myworkspace\SW_K60\src\drivers\mcg\mcg.c
//    1 /*
//    2 ************************************************************************
//    3 *                北京邮电大学 K60 学习例程                                        
//    4 * 文件名 :[mcg.c] 
//    5 * 描  述 ：工作时钟模式设置，锁相环
//    6 * 原创   ：野火嵌入式开发工作室
//    7 *设计改进：snowwolf
//    8 *  Email ：snowwolf2012@qq.com
//    9 *最后更新：2012-04-03
//   10 * 说  明 ：
//   11 ***********************************************************************
//   12 */
//   13 #include "common.h"
//   14 #include "mcg.h"
//   15 
//   16 //时钟参数，便于外部调用
//   17 extern u32 core_clk_khz;
//   18 extern u32 core_clk_mhz;
//   19 extern u32 bus_clk_khz;
//   20 
//   21 //时钟分频因子

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   22 struct mcg_div mcg_div = { PRDIV , VDIV , CORE_DIV , BUS_DIV , FLEX_DIV , FLASH_DIV }; //定义的同时，初始化
mcg_div:
        DATA
        DC8 11, 31, 0, 0, 0, 9, 0, 0
//   23 
//   24 
//   25 /*
//   26 ************************************************************************
//   27 *  函数名称：pll_init
//   28 *  功能说明：锁相环函数，用于设定频率。
//   29 *  参数说明：crystal_val 晶体选项，这里没用到
//   30 *  函数返回：无
//   31 *  修改时间：2012-1-20
//   32 *  备    注：根据 全局变量 mcg_div 保存的分频因子来分频
//   33 ************************************************************************
//   34 */

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//   35 unsigned char pll_init(clk_option opt)
//   36 {
pll_init:
        PUSH     {R4,LR}
//   37     unsigned char pll_freq;
//   38 
//   39     if(opt  != PLLUSR ) //自定义模式，直接加载全局变量mcg_div的值
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.W    ??pll_init_0
//   40     {
//   41         //设置MCG时钟
//   42         //mcg_div.prdiv 为12~24之间
//   43         switch(opt)
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        MOVS     R1,R0
        CMP      R1,#+48
        BEQ.N    ??pll_init_1
        CMP      R1,#+50
        BEQ.N    ??pll_init_2
        CMP      R1,#+96
        BEQ.N    ??pll_init_3
        CMP      R1,#+100
        BEQ.N    ??pll_init_4
        CMP      R1,#+110
        BEQ.N    ??pll_init_5
        CMP      R1,#+120
        BEQ.N    ??pll_init_6
        CMP      R1,#+125
        BEQ.N    ??pll_init_7
        CMP      R1,#+130
        BEQ.N    ??pll_init_8
        CMP      R1,#+140
        BEQ.N    ??pll_init_9
        CMP      R1,#+150
        BEQ.N    ??pll_init_10
        CMP      R1,#+160
        BEQ.N    ??pll_init_11
        CMP      R1,#+170
        BEQ.N    ??pll_init_12
        CMP      R1,#+180
        BEQ.N    ??pll_init_13
        CMP      R1,#+200
        BEQ.N    ??pll_init_14
        CMP      R1,#+225
        BEQ.N    ??pll_init_15
        CMP      R1,#+250
        BEQ.N    ??pll_init_16
        B.N      ??pll_init_17
//   44         {
//   45         case PLL48:
//   46             mcg_div.prdiv       =24;
??pll_init_1:
        LDR.N    R1,??pll_init_18
        MOVS     R2,#+24
        STRB     R2,[R1, #+0]
//   47             mcg_div.vdiv        =0;
        LDR.N    R1,??pll_init_18
        MOVS     R2,#+0
        STRB     R2,[R1, #+1]
//   48             break;
//   49         case PLL50:
//   50             mcg_div.prdiv       =24;
//   51             mcg_div.vdiv        =1;
//   52             break;
//   53         case PLL96:
//   54             mcg_div.prdiv       =24;
//   55             mcg_div.vdiv        =24;
//   56             break;
//   57         case PLL100:
//   58             mcg_div.prdiv       =24;
//   59             mcg_div.vdiv        =26;
//   60             break;
//   61         case PLL110:
//   62             mcg_div.prdiv       =24;
//   63             mcg_div.vdiv        =31;
//   64             break;
//   65         case PLL120:
//   66             mcg_div.prdiv       =19;
//   67             mcg_div.vdiv        =24;
//   68             break;
//   69         case PLL125:
//   70             mcg_div.prdiv       =19;
//   71             mcg_div.vdiv        =26;
//   72             break;
//   73         case PLL130:
//   74             mcg_div.prdiv       =19;
//   75             mcg_div.vdiv        =28;
//   76             break;
//   77         case PLL140:
//   78             mcg_div.prdiv       =14;
//   79             mcg_div.vdiv        =18;
//   80             break;
//   81         case PLL150:
//   82             mcg_div.prdiv       =14;
//   83             mcg_div.vdiv        =21;
//   84             break;
//   85         case PLL160:
//   86             mcg_div.prdiv       =14;
//   87             mcg_div.vdiv        =24;
//   88             break;
//   89         case PLL170:
//   90             mcg_div.prdiv       =14;
//   91             mcg_div.vdiv        =27;
//   92             break;
//   93         case PLL180:
//   94             mcg_div.prdiv       =14;
//   95             mcg_div.vdiv        =30;
//   96             break;
//   97         case PLL200:
//   98             mcg_div.prdiv       =12;
//   99             mcg_div.vdiv        =28;
//  100             break;
//  101         case PLL225: //绝大部分芯片都成超到这个程度
//  102             mcg_div.prdiv       =11;
//  103             mcg_div.vdiv        =30;
//  104             break;
//  105         case PLL250: //不同芯片，不同板子，超频能力不一样，不一定全部都能超到这个水平
//  106             mcg_div.prdiv       =10;
//  107             mcg_div.vdiv        =31;
//  108             break;
//  109         default:
//  110             return pll_init(PLL100);        //这情况不会发生。
//  111         }
//  112 
//  113         //设置分频
//  114         mcg_div.core_div    = 0;           // core = MCG
??pll_init_19:
        LDR.N    R1,??pll_init_18
        MOVS     R2,#+0
        STRB     R2,[R1, #+2]
//  115 
//  116         /* 这里提示警告，但是安全的，是为了安全才故意添加进去 */
//  117         if     (opt <= 1*MAX_BUS_CLK)   mcg_div.bus_div = 0;      // bus  = MCG
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+51
        BCS.N    ??pll_init_20
        LDR.N    R1,??pll_init_18
        MOVS     R2,#+0
        STRB     R2,[R1, #+3]
        B.N      ??pll_init_21
??pll_init_2:
        LDR.N    R1,??pll_init_18
        MOVS     R2,#+24
        STRB     R2,[R1, #+0]
        LDR.N    R1,??pll_init_18
        MOVS     R2,#+1
        STRB     R2,[R1, #+1]
        B.N      ??pll_init_19
??pll_init_3:
        LDR.N    R1,??pll_init_18
        MOVS     R2,#+24
        STRB     R2,[R1, #+0]
        LDR.N    R1,??pll_init_18
        MOVS     R2,#+24
        STRB     R2,[R1, #+1]
        B.N      ??pll_init_19
??pll_init_4:
        LDR.N    R1,??pll_init_18
        MOVS     R2,#+24
        STRB     R2,[R1, #+0]
        LDR.N    R1,??pll_init_18
        MOVS     R2,#+26
        STRB     R2,[R1, #+1]
        B.N      ??pll_init_19
??pll_init_5:
        LDR.N    R1,??pll_init_18
        MOVS     R2,#+24
        STRB     R2,[R1, #+0]
        LDR.N    R1,??pll_init_18
        MOVS     R2,#+31
        STRB     R2,[R1, #+1]
        B.N      ??pll_init_19
??pll_init_6:
        LDR.N    R1,??pll_init_18
        MOVS     R2,#+19
        STRB     R2,[R1, #+0]
        LDR.N    R1,??pll_init_18
        MOVS     R2,#+24
        STRB     R2,[R1, #+1]
        B.N      ??pll_init_19
??pll_init_7:
        LDR.N    R1,??pll_init_18
        MOVS     R2,#+19
        STRB     R2,[R1, #+0]
        LDR.N    R1,??pll_init_18
        MOVS     R2,#+26
        STRB     R2,[R1, #+1]
        B.N      ??pll_init_19
??pll_init_8:
        LDR.N    R1,??pll_init_18
        MOVS     R2,#+19
        STRB     R2,[R1, #+0]
        LDR.N    R1,??pll_init_18
        MOVS     R2,#+28
        STRB     R2,[R1, #+1]
        B.N      ??pll_init_19
??pll_init_9:
        LDR.N    R1,??pll_init_18
        MOVS     R2,#+14
        STRB     R2,[R1, #+0]
        LDR.N    R1,??pll_init_18
        MOVS     R2,#+18
        STRB     R2,[R1, #+1]
        B.N      ??pll_init_19
??pll_init_10:
        LDR.N    R1,??pll_init_18
        MOVS     R2,#+14
        STRB     R2,[R1, #+0]
        LDR.N    R1,??pll_init_18
        MOVS     R2,#+21
        STRB     R2,[R1, #+1]
        B.N      ??pll_init_19
??pll_init_11:
        LDR.N    R1,??pll_init_18
        MOVS     R2,#+14
        STRB     R2,[R1, #+0]
        LDR.N    R1,??pll_init_18
        MOVS     R2,#+24
        STRB     R2,[R1, #+1]
        B.N      ??pll_init_19
??pll_init_12:
        LDR.N    R1,??pll_init_18
        MOVS     R2,#+14
        STRB     R2,[R1, #+0]
        LDR.N    R1,??pll_init_18
        MOVS     R2,#+27
        STRB     R2,[R1, #+1]
        B.N      ??pll_init_19
??pll_init_13:
        LDR.N    R1,??pll_init_18
        MOVS     R2,#+14
        STRB     R2,[R1, #+0]
        LDR.N    R1,??pll_init_18
        MOVS     R2,#+30
        STRB     R2,[R1, #+1]
        B.N      ??pll_init_19
??pll_init_14:
        LDR.N    R1,??pll_init_18
        MOVS     R2,#+12
        STRB     R2,[R1, #+0]
        LDR.N    R1,??pll_init_18
        MOVS     R2,#+28
        STRB     R2,[R1, #+1]
        B.N      ??pll_init_19
??pll_init_15:
        LDR.N    R1,??pll_init_18
        MOVS     R2,#+11
        STRB     R2,[R1, #+0]
        LDR.N    R1,??pll_init_18
        MOVS     R2,#+30
        STRB     R2,[R1, #+1]
        B.N      ??pll_init_19
??pll_init_16:
        LDR.N    R1,??pll_init_18
        MOVS     R2,#+10
        STRB     R2,[R1, #+0]
        LDR.N    R1,??pll_init_18
        MOVS     R2,#+31
        STRB     R2,[R1, #+1]
        B.N      ??pll_init_19
??pll_init_17:
        MOVS     R0,#+100
        BL       pll_init
        B.N      ??pll_init_22
//  118         else if(opt <= 2*MAX_BUS_CLK)   mcg_div.bus_div = 1;      // bus  = MCG/2
??pll_init_20:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+101
        BCS.N    ??pll_init_23
        LDR.N    R1,??pll_init_18
        MOVS     R2,#+1
        STRB     R2,[R1, #+3]
        B.N      ??pll_init_21
//  119         else if(opt <= 3*MAX_BUS_CLK)   mcg_div.bus_div = 2;      // bus  = MCG/3
??pll_init_23:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+151
        BCS.N    ??pll_init_24
        LDR.N    R1,??pll_init_18
        MOVS     R2,#+2
        STRB     R2,[R1, #+3]
        B.N      ??pll_init_21
//  120         else if(opt <= 4*MAX_BUS_CLK)   mcg_div.bus_div = 3;      // bus  = MCG/4    这里提示警告，不过没关系
??pll_init_24:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+201
        BCS.N    ??pll_init_25
        LDR.N    R1,??pll_init_18
        MOVS     R2,#+3
        STRB     R2,[R1, #+3]
        B.N      ??pll_init_21
//  121         else                            mcg_div.bus_div =15;      // bus  = MCG/16
??pll_init_25:
        LDR.N    R1,??pll_init_18
        MOVS     R2,#+15
        STRB     R2,[R1, #+3]
//  122 
//  123         mcg_div.flex_div = mcg_div.bus_div;                       // flex   = bus
??pll_init_21:
        LDR.N    R1,??pll_init_18
        LDR.N    R2,??pll_init_18
        LDRB     R2,[R2, #+3]
        STRB     R2,[R1, #+4]
//  124 
//  125         /* 这里提示警告，但是安全的，是为了安全才故意添加进去 */
//  126         if     (opt <= 1*MAX_FLASH_CLK)   mcg_div.flash_div = 0; // flash  = MCG
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+26
        BCS.N    ??pll_init_26
        LDR.N    R0,??pll_init_18
        MOVS     R1,#+0
        STRB     R1,[R0, #+5]
        B.N      ??pll_init_0
//  127         else if(opt <= 2*MAX_FLASH_CLK)   mcg_div.flash_div = 1; // flash  = MCG/2
??pll_init_26:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+51
        BCS.N    ??pll_init_27
        LDR.N    R0,??pll_init_18
        MOVS     R1,#+1
        STRB     R1,[R0, #+5]
        B.N      ??pll_init_0
//  128         else if(opt <= 3*MAX_FLASH_CLK)   mcg_div.flash_div = 2; // flash  = MCG/3
??pll_init_27:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+76
        BCS.N    ??pll_init_28
        LDR.N    R0,??pll_init_18
        MOVS     R1,#+2
        STRB     R1,[R0, #+5]
        B.N      ??pll_init_0
//  129         else if(opt <= 4*MAX_FLASH_CLK)   mcg_div.flash_div = 3; // flash  = MCG/4
??pll_init_28:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+101
        BCS.N    ??pll_init_29
        LDR.N    R0,??pll_init_18
        MOVS     R1,#+3
        STRB     R1,[R0, #+5]
        B.N      ??pll_init_0
//  130         else if(opt <= 5*MAX_FLASH_CLK)   mcg_div.flash_div = 4; // flash  = MCG/5
??pll_init_29:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+126
        BCS.N    ??pll_init_30
        LDR.N    R0,??pll_init_18
        MOVS     R1,#+4
        STRB     R1,[R0, #+5]
        B.N      ??pll_init_0
//  131         else if(opt <= 6*MAX_FLASH_CLK)   mcg_div.flash_div = 5; // flash  = MCG/6
??pll_init_30:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+151
        BCS.N    ??pll_init_31
        LDR.N    R0,??pll_init_18
        MOVS     R1,#+5
        STRB     R1,[R0, #+5]
        B.N      ??pll_init_0
//  132         else if(opt <= 7*MAX_FLASH_CLK)   mcg_div.flash_div = 6; // flash  = MCG/7
??pll_init_31:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+176
        BCS.N    ??pll_init_32
        LDR.N    R0,??pll_init_18
        MOVS     R1,#+6
        STRB     R1,[R0, #+5]
        B.N      ??pll_init_0
//  133         else if(opt <= 8*MAX_FLASH_CLK)   mcg_div.flash_div = 7; // flash  = MCG/8
??pll_init_32:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+201
        BCS.N    ??pll_init_33
        LDR.N    R0,??pll_init_18
        MOVS     R1,#+7
        STRB     R1,[R0, #+5]
        B.N      ??pll_init_0
//  134         else if(opt <= 9*MAX_FLASH_CLK)   mcg_div.flash_div = 8; // flash  = MCG/9     这里提示警告，不过没关系
??pll_init_33:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+226
        BCS.N    ??pll_init_34
        LDR.N    R0,??pll_init_18
        MOVS     R1,#+8
        STRB     R1,[R0, #+5]
        B.N      ??pll_init_0
//  135         else if(opt <= 10*MAX_FLASH_CLK)  mcg_div.flash_div = 9; // flash  = MCG/10
??pll_init_34:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+251
        BCS.N    ??pll_init_35
        LDR.N    R0,??pll_init_18
        MOVS     R1,#+9
        STRB     R1,[R0, #+5]
        B.N      ??pll_init_0
//  136         else                              mcg_div.flash_div =15; // flash  = MCG/16
??pll_init_35:
        LDR.N    R0,??pll_init_18
        MOVS     R1,#+15
        STRB     R1,[R0, #+5]
//  137 
//  138     }
//  139     
//  140     pll_freq = (u8)(( (u16)50 * (u16)( mcg_div.vdiv + 24 ))/ (u16)( mcg_div.prdiv +1 ) );              //  50/ ( prdiv +1 ) * ( mcg_div.vdiv + 24 )
??pll_init_0:
        LDR.N    R0,??pll_init_18
        LDRB     R0,[R0, #+1]
        ADDS     R0,R0,#+24
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        MOVS     R1,#+50
        MULS     R0,R1,R0
        LDR.N    R1,??pll_init_18
        LDRB     R1,[R1, #+0]
        ADDS     R1,R1,#+1
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        SDIV     R4,R0,R1
//  141 
//  142     //上电复位后，单片机会自动进入 FEI 模式，使用 内部参考时钟
//  143     //为了使用外部时钟参考源，我们要先进入 FBE 模式:
//  144 #if (defined(K60_CLK) || defined(ASB817))
//  145     MCG_C2 = 0;
        LDR.N    R0,??pll_init_18+0x4  ;; 0x40064001
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
//  146 #else
//  147     // Enable external oscillator, RANGE=2, HGO=1, EREFS=1, LP=0, IRCS=0
//  148     MCG_C2 = MCG_C2_RANGE(2) | MCG_C2_HGO_MASK | MCG_C2_EREFS_MASK;
//  149 #endif
//  150 
//  151     //初始化晶振后释放锁定状态的振荡器和GPIO
//  152     SIM_SCGC4 |= SIM_SCGC4_LLWU_MASK;
        LDR.N    R0,??pll_init_18+0x8  ;; 0x40048034
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x10000000
        LDR.N    R1,??pll_init_18+0x8  ;; 0x40048034
        STR      R0,[R1, #+0]
//  153     LLWU_CS |= LLWU_CS_ACKISO_MASK;
        LDR.N    R0,??pll_init_18+0xC  ;; 0x4007c008
        LDRB     R0,[R0, #+0]
        ORRS     R0,R0,#0x80
        LDR.N    R1,??pll_init_18+0xC  ;; 0x4007c008
        STRB     R0,[R1, #+0]
//  154 
//  155     // Select external oscilator and Reference Divider and clear IREFS to start ext osc
//  156     // CLKS=2, FRDIV=3, IREFS=0, IRCLKEN=0, IREFSTEN=0
//  157     MCG_C1 = MCG_C1_CLKS(2) | MCG_C1_FRDIV(3);
        LDR.N    R0,??pll_init_18+0x10  ;; 0x40064000
        MOVS     R1,#+152
        STRB     R1,[R0, #+0]
//  158 
//  159     /* if we aren't using an osc input we don't need to wait for the osc to init */
//  160 #if (!defined(K60_CLK) && !defined(ASB817))
//  161     while (!(MCG_S & MCG_S_OSCINIT_MASK)){};   //等待晶振稳定	
//  162 #endif
//  163 
//  164     while (MCG_S & MCG_S_IREFST_MASK){}; // wait for Reference clock Status bit to clear
??pll_init_36:
        LDR.N    R0,??pll_init_18+0x14  ;; 0x40064006
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+27
        BMI.N    ??pll_init_36
//  165 
//  166     while (((MCG_S & MCG_S_CLKST_MASK) >> MCG_S_CLKST_SHIFT) != 0x2){}; // Wait for clock status bits to show clock source is ext ref clk
??pll_init_37:
        LDR.N    R0,??pll_init_18+0x14  ;; 0x40064006
        LDRB     R0,[R0, #+0]
        UBFX     R0,R0,#+2,#+2
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+2
        BNE.N    ??pll_init_37
//  167 
//  168     //进入FBE模式  分频后结果必须在 ：2 MHz ~ 4 MHz.
//  169     //    n       (n+1)分频   50M/(n+1)       n为12~24之间
//  170     MCG_C5 = MCG_C5_PRDIV(mcg_div.prdiv);   // prdiv +1 分频 ：2M
        LDR.N    R0,??pll_init_18
        LDRB     R0,[R0, #+0]
        ANDS     R0,R0,#0x1F
        LDR.N    R1,??pll_init_18+0x18  ;; 0x40064004
        STRB     R0,[R1, #+0]
//  171 
//  172     MCG_C6 = 0x0;       // Ensure MCG_C6 is at the reset default of 0. LOLIE disabled, PLL disabled, clk monitor disabled, PLL VCO divider is clear
        LDR.N    R0,??pll_init_18+0x1C  ;; 0x40064005
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
//  173 
//  174     // 设置系统分频因子选项
//  175     //MCG=PLL, core = MCG/(mcg_div.core_div + 1), bus = MCG/(mcg_div.bus_div + 1),
//  176     //FlexBus = MCG/(mcg_div.flex_div + 1), Flash clock= MCG/(mcg_div.flash_div + 1)
//  177     set_sys_dividers(mcg_div.core_div,mcg_div.bus_div,mcg_div.flex_div,mcg_div.flash_div);
        LDR.N    R0,??pll_init_18
        LDRB     R3,[R0, #+5]
        LDR.N    R0,??pll_init_18
        LDRB     R2,[R0, #+4]
        LDR.N    R0,??pll_init_18
        LDRB     R1,[R0, #+3]
        LDR.N    R0,??pll_init_18
        LDRB     R0,[R0, #+2]
        BL       set_sys_dividers
//  178 
//  179     // Set the VCO divider and enable the PLL for 48MHz, LOLIE=0, PLLS=1, CME=0, VDIV=0
//  180     //   n    (n+24)倍频            n为0~31之间
//  181     MCG_C6 = MCG_C6_PLLS_MASK | MCG_C6_VDIV(mcg_div.vdiv) ;  //  mcg_div.vdiv + 1 倍频
        LDR.N    R0,??pll_init_18
        LDRB     R0,[R0, #+1]
        ANDS     R0,R0,#0x1F
        ORRS     R0,R0,#0x40
        LDR.N    R1,??pll_init_18+0x1C  ;; 0x40064005
        STRB     R0,[R1, #+0]
//  182 
//  183     while (!(MCG_S & MCG_S_PLLST_MASK)){}; // wait for PLL status bit to set
??pll_init_38:
        LDR.N    R0,??pll_init_18+0x14  ;; 0x40064006
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+26
        BPL.N    ??pll_init_38
//  184 
//  185     while (!(MCG_S & MCG_S_LOCK_MASK)){}; // Wait for LOCK bit to set
??pll_init_39:
        LDR.N    R0,??pll_init_18+0x14  ;; 0x40064006
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+25
        BPL.N    ??pll_init_39
//  186 
//  187     // 现在已经进入了 PBE 模式
//  188 
//  189     // Transition into PEE by setting CLKS to 0
//  190     // CLKS=0, FRDIV=3, IREFS=0, IRCLKEN=0, IREFSTEN=0
//  191     MCG_C1 &= ~MCG_C1_CLKS_MASK;
        LDR.N    R0,??pll_init_18+0x10  ;; 0x40064000
        LDRB     R0,[R0, #+0]
        ANDS     R0,R0,#0x3F
        LDR.N    R1,??pll_init_18+0x10  ;; 0x40064000
        STRB     R0,[R1, #+0]
//  192 
//  193     // Wait for clock status bits to update
//  194     while (((MCG_S & MCG_S_CLKST_MASK) >> MCG_S_CLKST_SHIFT) != 0x3){};
??pll_init_40:
        LDR.N    R0,??pll_init_18+0x14  ;; 0x40064006
        LDRB     R0,[R0, #+0]
        UBFX     R0,R0,#+2,#+2
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+3
        BNE.N    ??pll_init_40
//  195 
//  196     // 现在已经进入了 PEE 模式
//  197 
//  198     return pll_freq;
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
??pll_init_22:
        POP      {R4,PC}          ;; return
        DATA
??pll_init_18:
        DC32     mcg_div
        DC32     0x40064001
        DC32     0x40048034
        DC32     0x4007c008
        DC32     0x40064000
        DC32     0x40064006
        DC32     0x40064004
        DC32     0x40064005
//  199 } //pll_init
//  200 
//  201 
//  202 /*
//  203 ********************************************************************************
//  204 ** 函数名: set_sys_dividers                                                 
//  205 ** 功  能: 设置系系统分频器                                                  
//  206 ** 参  数: 预分频值   							   
//  207 ** 返  回: 无                                                               
//  208 ** 说  明: 此函数必须放在RAM里执行，否则会产生错误e2448。当FLASH时钟分频改变 
//  209 **         时，必须禁止FLASH的预取功能。在时钟分频改变之后，必须延时一小段时
//  210 ** 	 间才可以从新使能预取功能。                                        
//  211 **        MCG=PLL   core=MCG/(outdiv1+1)               bus=MCG/(outdiv2+1)  
//  212 **                  FlexBus=MCG/(outdiv1+1)    Flash clock=MCG/(outdiv1+1)  
//  213 ********************************************************************************
//  214 */
//  215 

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE | SHF_EXECINSTR
        THUMB
//  216 __ramfunc  void set_sys_dividers(uint32 outdiv1, uint32 outdiv2, uint32 outdiv3, uint32 outdiv4)
//  217 {
set_sys_dividers:
        PUSH     {R4-R6}
//  218   /*
//  219   * This routine must be placed in RAM. It is a workaround for errata e2448.
//  220   * Flash prefetch must be disabled when the flash clock divider is changed.
//  221   * This cannot be performed while executing out of flash.
//  222   * There must be a short delay after the clock dividers are changed before prefetch
//  223   * can be re-enabled.
//  224   */
//  225     uint32 temp_reg;
//  226     uint8 i;
//  227 
//  228     temp_reg = FMC_PFAPR; // store present value of FMC_PFAPR
        LDR.N    R4,??set_sys_dividers_0  ;; 0x4001f000
        LDR      R4,[R4, #+0]
//  229 
//  230     // set M0PFD through M7PFD to 1 to disable prefetch
//  231     FMC_PFAPR |= FMC_PFAPR_M7PFD_MASK | FMC_PFAPR_M6PFD_MASK | FMC_PFAPR_M5PFD_MASK
//  232                  | FMC_PFAPR_M4PFD_MASK | FMC_PFAPR_M3PFD_MASK | FMC_PFAPR_M2PFD_MASK
//  233                  | FMC_PFAPR_M1PFD_MASK | FMC_PFAPR_M0PFD_MASK;
        LDR.N    R5,??set_sys_dividers_0  ;; 0x4001f000
        LDR      R5,[R5, #+0]
        ORRS     R5,R5,#0xFF0000
        LDR.N    R6,??set_sys_dividers_0  ;; 0x4001f000
        STR      R5,[R6, #+0]
//  234 
//  235     // set clock dividers to desired value
//  236     SIM_CLKDIV1 = SIM_CLKDIV1_OUTDIV1(outdiv1) | SIM_CLKDIV1_OUTDIV2(outdiv2)
//  237                   | SIM_CLKDIV1_OUTDIV3(outdiv3) | SIM_CLKDIV1_OUTDIV4(outdiv4);
        LSLS     R1,R1,#+24
        ANDS     R1,R1,#0xF000000
        ORRS     R0,R1,R0, LSL #+28
        LSLS     R1,R2,#+20
        ANDS     R1,R1,#0xF00000
        ORRS     R0,R1,R0
        LSLS     R1,R3,#+16
        ANDS     R1,R1,#0xF0000
        ORRS     R0,R1,R0
        LDR.N    R1,??set_sys_dividers_0+0x4  ;; 0x40048044
        STR      R0,[R1, #+0]
//  238 
//  239     // wait for dividers to change
//  240     for (i = 0 ; i < outdiv4 ; i++)
        MOVS     R0,#+0
        B.N      ??set_sys_dividers_1
??set_sys_dividers_2:
        ADDS     R0,R0,#+1
??set_sys_dividers_1:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,R3
        BCC.N    ??set_sys_dividers_2
//  241     {}
//  242 
//  243     FMC_PFAPR = temp_reg; // re-store original value of FMC_PFAPR
        LDR.N    R0,??set_sys_dividers_0  ;; 0x4001f000
        STR      R4,[R0, #+0]
//  244 
//  245     return;
        POP      {R4-R6}
        BX       LR               ;; return
        DATA
??set_sys_dividers_0:
        DC32     0x4001f000
        DC32     0x40048044
//  246 } // set_sys_dividers

        SECTION `.iar_vfe_header`:DATA:REORDER:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//  247 
//  248 
//  249 
// 
//   8 bytes in section .data
// 748 bytes in section .text
//  76 bytes in section .textrw
// 
// 824 bytes of CODE memory
//   8 bytes of DATA memory
//
//Errors: none
//Warnings: none
