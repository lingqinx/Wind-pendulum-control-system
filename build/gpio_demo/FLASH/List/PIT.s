///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.60.1.5097/W32 for ARM     15/Aug/2015  12:46:33 /
// Copyright 1999-2013 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  C:\Users\Administrator\Desktop\MPU60508.12\src\drivers\ /
//                    PIT\PIT.c                                               /
//    Command line =  C:\Users\Administrator\Desktop\MPU60508.12\src\drivers\ /
//                    PIT\PIT.c -lCN C:\Users\Administrator\Desktop\MPU60508. /
//                    12\build\gpio_demo\FLASH\List\ -lB                      /
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
//                    emo\FLASH\List\PIT.s                                    /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

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

// C:\Users\Administrator\Desktop\MPU60508.12\src\drivers\PIT\PIT.c
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
