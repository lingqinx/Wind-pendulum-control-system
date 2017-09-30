///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.30.1.53127/W32 for ARM    05/Apr/2012  04:25:34 /
// Copyright 1999-2011 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  D:\workspace\myworkspace\SW_K60\src\cpu\start.c         /
//    Command line =  D:\workspace\myworkspace\SW_K60\src\cpu\start.c -lCN    /
//                    D:\workspace\myworkspace\SW_K60\build\SX_demo\RAM\List\ /
//                     -lB D:\workspace\myworkspace\SW_K60\build\SX_demo\RAM\ /
//                    List\ -o D:\workspace\myworkspace\SW_K60\build\SX_demo\ /
//                    RAM\Obj\ --no_cse --no_unroll --no_inline               /
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
//                    start.s                                                 /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME start

        #define SHT_PROGBITS 0x1

        EXTERN __VECTOR_RAM
        EXTERN __VECTOR_TABLE
        EXTERN common_startup
        EXTERN core_clk_mhz
        EXTERN main
        EXTERN mcg_div
        EXTERN sysinit
        EXTERN uartPrintf
        EXTERN wdog_disable

        PUBLIC cpu_identify
        PUBLIC flash_identify
        PUBLIC start

// D:\workspace\myworkspace\SW_K60\src\cpu\start.c
//    1 /*
//    2  * File:	start.c
//    3  * Purpose:	Kinetis start up routines.
//    4  *
//    5  * Notes:		
//    6  */
//    7 #include "common.h"
//    8 #include "start.h"
//    9 #include "wdog.h"
//   10 #include "sysinit.h"
//   11 #include "uart.h"
//   12 
//   13 
//   14 /********************************************************************/
//   15 /*!
//   16  * \brief   Kinetis Start
//   17  * \return  None
//   18  *
//   19  * This function calls all of the needed starup routines and then
//   20  * branches to the main process.
//   21  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   22 void start(void)
//   23 {
start:
        PUSH     {R7,LR}
//   24 
//   25     /* 关闭看门狗 */
//   26     wdog_disable();
        BL       wdog_disable
//   27 
//   28     /* 复制中断向量表、初始化数据、以__ramfunc声明的子函数复制到RAM区 */
//   29     common_startup();
        BL       common_startup
//   30 
//   31     /* CPU初始化，设置频率 */
//   32     sysinit();
        BL       sysinit
//   33 
//   34 #if (defined(DEBUG) && defined(DEBUG_PRINT)) 
//   35 
//   36     uartPrintf("\n\n********************************************************\n");
        LDR.W    R0,??DataTable2_1
        BL       uartPrintf
//   37     uartPrintf("* \t\t北京邮电大学 K60 学习例程              *\n");
        LDR.W    R0,??DataTable2_2
        BL       uartPrintf
//   38     uartPrintf("* 内核频率：%3dMHz \t总线频率 ：%3dMHz              *\n",\ 
//   39            core_clk_mhz,core_clk_mhz/(mcg_div.bus_div+1));
        LDR.W    R0,??DataTable2_3
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable2_4
        LDRB     R1,[R1, #+3]
        ADDS     R1,R1,#+1
        UDIV     R2,R0,R1
        LDR.W    R0,??DataTable2_3
        LDR      R1,[R0, #+0]
        LDR.W    R0,??DataTable2_5
        BL       uartPrintf
//   40     uartPrintf("* flex频率：%3dMHz \tflash频率：%3dMHz              *\n",\ 
//   41            core_clk_mhz/(mcg_div.flex_div+1),core_clk_mhz/(mcg_div.flash_div+1));
        LDR.W    R0,??DataTable2_3
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable2_4
        LDRB     R1,[R1, #+5]
        ADDS     R1,R1,#+1
        UDIV     R2,R0,R1
        LDR.W    R0,??DataTable2_3
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable2_4
        LDRB     R1,[R1, #+4]
        ADDS     R1,R1,#+1
        UDIV     R1,R0,R1
        LDR.W    R0,??DataTable2_6
        BL       uartPrintf
//   42 
//   43     
//   44     uartPrintf("* 启动原因：");
        LDR.W    R0,??DataTable2_7
        BL       uartPrintf
//   45     /* Determine the last cause(s) of reset */
//   46     if (MC_SRSH & MC_SRSH_SW_MASK)
        LDR.W    R0,??DataTable2_8  ;; 0x4007e000
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+29
        BPL.N    ??start_0
//   47         uartPrintf("Software Reset                             *\n");
        LDR.W    R0,??DataTable2_9
        BL       uartPrintf
//   48     if (MC_SRSH & MC_SRSH_LOCKUP_MASK)
??start_0:
        LDR.W    R0,??DataTable2_8  ;; 0x4007e000
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+30
        BPL.N    ??start_1
//   49         uartPrintf("Core Lockup Event Reset                    *\n");
        LDR.W    R0,??DataTable2_10
        BL       uartPrintf
//   50     if (MC_SRSH & MC_SRSH_JTAG_MASK)
??start_1:
        LDR.W    R0,??DataTable2_8  ;; 0x4007e000
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+31
        BPL.N    ??start_2
//   51         uartPrintf("JTAG Reset                                 *\n");
        LDR.W    R0,??DataTable2_11
        BL       uartPrintf
//   52     if (MC_SRSL & MC_SRSL_POR_MASK)
??start_2:
        LDR.W    R0,??DataTable2_12  ;; 0x4007e001
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+24
        BPL.N    ??start_3
//   53         uartPrintf("Power-on Reset                             *\n");
        LDR.W    R0,??DataTable2_13
        BL       uartPrintf
//   54     if (MC_SRSL & MC_SRSL_PIN_MASK)
??start_3:
        LDR.W    R0,??DataTable2_12  ;; 0x4007e001
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+25
        BPL.N    ??start_4
//   55         uartPrintf("External Pin Reset                         *\n");
        LDR.W    R0,??DataTable2_14
        BL       uartPrintf
//   56     if (MC_SRSL & MC_SRSL_COP_MASK)
??start_4:
        LDR.W    R0,??DataTable2_12  ;; 0x4007e001
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+26
        BPL.N    ??start_5
//   57         uartPrintf("Watchdog(COP) Reset                        *\n");
        LDR.W    R0,??DataTable2_15
        BL       uartPrintf
//   58     if (MC_SRSL & MC_SRSL_LOC_MASK)
??start_5:
        LDR.W    R0,??DataTable2_12  ;; 0x4007e001
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+29
        BPL.N    ??start_6
//   59         uartPrintf("Loss of Clock Reset                        *\n");
        LDR.W    R0,??DataTable2_16
        BL       uartPrintf
//   60     if (MC_SRSL & MC_SRSL_LVD_MASK)
??start_6:
        LDR.W    R0,??DataTable2_12  ;; 0x4007e001
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+30
        BPL.N    ??start_7
//   61         uartPrintf("Low-voltage Detect Reset                   *\n");
        LDR.W    R0,??DataTable2_17
        BL       uartPrintf
//   62     if (MC_SRSL & MC_SRSL_WAKEUP_MASK)
??start_7:
        LDR.W    R0,??DataTable2_12  ;; 0x4007e001
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+31
        BPL.N    ??start_8
//   63         uartPrintf("LLWU Reset                                 *\n");	
        LDR.W    R0,??DataTable2_18
        BL       uartPrintf
//   64 
//   65     /* 这两个数组的地址 在  链接器Linker文件，即ICF文件 定义 */
//   66     extern uint32 __VECTOR_TABLE[];
//   67     extern uint32 __VECTOR_RAM[];
//   68 
//   69     /* 检测是否需要 复制中断向量表,即可以知道是ROM启动还是RAM启动*/
//   70     uartPrintf("* 启动方式：");
??start_8:
        LDR.W    R0,??DataTable2_19
        BL       uartPrintf
//   71     if (__VECTOR_RAM != __VECTOR_TABLE)     
        LDR.W    R0,??DataTable2_20
        LDR.W    R1,??DataTable2_21
        CMP      R0,R1
        BEQ.N    ??start_9
//   72       uartPrintf("flash启动                                  *\n");
        LDR.W    R0,??DataTable2_22
        BL       uartPrintf
        B.N      ??start_10
//   73     else                                    
//   74       uartPrintf("SRAM启动                                   *\n");
??start_9:
        LDR.W    R0,??DataTable2_23
        BL       uartPrintf
//   75 
//   76 #ifdef CPU_INFO
//   77     /* Determine specific Kinetis device and revision */
//   78     cpu_identify();
//   79 #endif
//   80 
//   81 #endif  //DUBUG && DEBUG_PRINT
//   82 
//   83     /* 跳进main函数 */
//   84     uartPrintf("* Designed By：snowwolf                                *\n");  
??start_10:
        LDR.W    R0,??DataTable2_24
        BL       uartPrintf
//   85     uartPrintf("* 最后更新：");  
        LDR.W    R0,??DataTable2_25
        BL       uartPrintf
//   86     uartPrintf("%s  %s                      *\n",__DATE__,__TIME__);  
        LDR.W    R2,??DataTable2_26
        LDR.W    R1,??DataTable2_27
        LDR.W    R0,??DataTable2_28
        BL       uartPrintf
//   87     main();
        BL       main
//   88 
//   89     /* 保证CPU不会停止执行 */
//   90     while(1);
??start_11:
        B.N      ??start_11
//   91 }
//   92 /********************************************************************/
//   93 /*!
//   94  * \brief   Kinetis Identify
//   95  * \return  None
//   96  *
//   97  * This is primarly a reporting function that displays information
//   98  * about the specific CPU to the default terminal including:
//   99  * - Kinetis family
//  100  * - package
//  101  * - die revision
//  102  * - P-flash size
//  103  * - Ram size
//  104  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  105 void cpu_identify (void)
//  106 {
cpu_identify:
        PUSH     {R7,LR}
//  107     
//  108     /* Determine the Kinetis family */
//  109     uartPrintf("芯片信息：");
        LDR.W    R0,??DataTable2_29
        BL       uartPrintf
//  110     switch((SIM_SDID & SIM_SDID_FAMID(0x7))>>SIM_SDID_FAMID_SHIFT)
        LDR.W    R0,??DataTable2_30  ;; 0x40048024
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+4
        ANDS     R0,R0,#0x7
        CMP      R0,#+0
        BEQ.N    ??cpu_identify_0
        CMP      R0,#+2
        BEQ.N    ??cpu_identify_1
        BCC.N    ??cpu_identify_2
        CMP      R0,#+4
        BEQ.N    ??cpu_identify_3
        BCC.N    ??cpu_identify_4
        CMP      R0,#+6
        BEQ.N    ??cpu_identify_5
        BCC.N    ??cpu_identify_6
        CMP      R0,#+7
        BEQ.N    ??cpu_identify_7
        B.N      ??cpu_identify_8
//  111     {
//  112     	case 0x0:
//  113     		uartPrintf("K10");
??cpu_identify_0:
        ADR.N    R0,??DataTable1  ;; "K10"
        BL       uartPrintf
//  114     		break;
        B.N      ??cpu_identify_9
//  115     	case 0x1:
//  116     		uartPrintf("K20");
??cpu_identify_2:
        ADR.N    R0,??DataTable1_1  ;; "K20"
        BL       uartPrintf
//  117     		break;
        B.N      ??cpu_identify_9
//  118     	case 0x2:
//  119     		uartPrintf("K30");
??cpu_identify_1:
        ADR.N    R0,??DataTable1_2  ;; "K30"
        BL       uartPrintf
//  120     		break;
        B.N      ??cpu_identify_9
//  121     	case 0x3:
//  122     		uartPrintf("K40");
??cpu_identify_4:
        ADR.N    R0,??DataTable1_3  ;; "K40"
        BL       uartPrintf
//  123     		break;
        B.N      ??cpu_identify_9
//  124     	case 0x4:
//  125     		uartPrintf("K60");
??cpu_identify_3:
        ADR.N    R0,??DataTable1_4  ;; "K60"
        BL       uartPrintf
//  126     		break;
        B.N      ??cpu_identify_9
//  127     	case 0x5:
//  128     		uartPrintf("K70");
??cpu_identify_6:
        ADR.N    R0,??DataTable1_5  ;; "K70"
        BL       uartPrintf
//  129     		break;
        B.N      ??cpu_identify_9
//  130     	case 0x6:
//  131     		uartPrintf("K50");
??cpu_identify_5:
        ADR.N    R0,??DataTable1_6  ;; "K50"
        BL       uartPrintf
//  132     		break;
        B.N      ??cpu_identify_9
//  133     	case 0x7:
//  134     		uartPrintf("K53");
??cpu_identify_7:
        ADR.N    R0,??DataTable1_7  ;; "K53"
        BL       uartPrintf
//  135     		break;
        B.N      ??cpu_identify_9
//  136 	default:
//  137 		uartPrintf("Unrecognized Kinetis family device.\n");
??cpu_identify_8:
        LDR.W    R0,??DataTable2_31
        BL       uartPrintf
//  138 		break;  	
//  139     }
//  140     uartPrintf(" \n管脚数：");
??cpu_identify_9:
        LDR.W    R0,??DataTable2_32
        BL       uartPrintf
//  141     /* Determine the package size */
//  142     switch((SIM_SDID & SIM_SDID_PINID(0xF))>>SIM_SDID_PINID_SHIFT)
        LDR.N    R0,??DataTable2_30  ;; 0x40048024
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0xF
        CMP      R0,#+2
        BEQ.N    ??cpu_identify_10
        CMP      R0,#+4
        BEQ.N    ??cpu_identify_11
        CMP      R0,#+5
        BEQ.N    ??cpu_identify_12
        CMP      R0,#+6
        BEQ.N    ??cpu_identify_13
        CMP      R0,#+7
        BEQ.N    ??cpu_identify_14
        CMP      R0,#+8
        BEQ.N    ??cpu_identify_15
        CMP      R0,#+9
        BEQ.N    ??cpu_identify_16
        CMP      R0,#+10
        BEQ.N    ??cpu_identify_17
        CMP      R0,#+12
        BEQ.N    ??cpu_identify_18
        CMP      R0,#+14
        BEQ.N    ??cpu_identify_19
        B.N      ??cpu_identify_20
//  143     {
//  144     	case 0x2:
//  145     		uartPrintf("32pin");
??cpu_identify_10:
        LDR.N    R0,??DataTable2_33
        BL       uartPrintf
//  146     		break;
        B.N      ??cpu_identify_21
//  147     	case 0x4:
//  148     		uartPrintf("48pin");
??cpu_identify_11:
        LDR.N    R0,??DataTable2_34
        BL       uartPrintf
//  149     		break;
        B.N      ??cpu_identify_21
//  150     	case 0x5:
//  151     		uartPrintf("64pin");
??cpu_identify_12:
        LDR.N    R0,??DataTable2_35
        BL       uartPrintf
//  152     		break;
        B.N      ??cpu_identify_21
//  153     	case 0x6:
//  154     		uartPrintf("80pin");
??cpu_identify_13:
        LDR.N    R0,??DataTable2_36
        BL       uartPrintf
//  155     		break;
        B.N      ??cpu_identify_21
//  156     	case 0x7:
//  157     		uartPrintf("81pin");
??cpu_identify_14:
        LDR.N    R0,??DataTable2_37
        BL       uartPrintf
//  158     		break;
        B.N      ??cpu_identify_21
//  159     	case 0x8:
//  160     		uartPrintf("100pin");
??cpu_identify_15:
        LDR.N    R0,??DataTable2_38
        BL       uartPrintf
//  161     		break;
        B.N      ??cpu_identify_21
//  162     	case 0x9:
//  163     		uartPrintf("104pin");
??cpu_identify_16:
        LDR.N    R0,??DataTable2_39
        BL       uartPrintf
//  164     		break;
        B.N      ??cpu_identify_21
//  165     	case 0xA:
//  166     		uartPrintf("144pin");
??cpu_identify_17:
        LDR.N    R0,??DataTable2_40
        BL       uartPrintf
//  167     		break;
        B.N      ??cpu_identify_21
//  168     	case 0xC:
//  169     		uartPrintf("196pin");
??cpu_identify_18:
        LDR.N    R0,??DataTable2_41
        BL       uartPrintf
//  170     		break;
        B.N      ??cpu_identify_21
//  171     	case 0xE:
//  172     		uartPrintf("256pin");
??cpu_identify_19:
        LDR.N    R0,??DataTable2_42
        BL       uartPrintf
//  173     		break;
        B.N      ??cpu_identify_21
//  174 	default:
//  175 		uartPrintf("\nUnrecognized Kinetis package code.");
??cpu_identify_20:
        LDR.N    R0,??DataTable2_43
        BL       uartPrintf
//  176 		break;  	
//  177     }
//  178 
//  179     /* Determine the revision ID */
//  180     uartPrintf("\n版本信息：");
??cpu_identify_21:
        LDR.N    R0,??DataTable2_44
        BL       uartPrintf
//  181     switch((SIM_SDID & SIM_SDID_REVID(0xF))>>SIM_SDID_REVID_SHIFT)
        LDR.N    R0,??DataTable2_30  ;; 0x40048024
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+12
        ANDS     R0,R0,#0xF
        CMP      R0,#+0
        BEQ.N    ??cpu_identify_22
        CMP      R0,#+2
        BEQ.N    ??cpu_identify_23
        BCC.N    ??cpu_identify_24
        B.N      ??cpu_identify_25
//  182     {
//  183 
//  184     case 0x0:
//  185     		uartPrintf("Silicon rev 1.0   \n");
??cpu_identify_22:
        LDR.N    R0,??DataTable2_45
        BL       uartPrintf
//  186     		break;
        B.N      ??cpu_identify_26
//  187     case 0x1:
//  188     		uartPrintf("Silicon rev 1.1  \n");
??cpu_identify_24:
        LDR.N    R0,??DataTable2_46
        BL       uartPrintf
//  189     		break;
        B.N      ??cpu_identify_26
//  190     case 0x2:
//  191     		uartPrintf("Silicon rev 1.2  \n");
??cpu_identify_23:
        LDR.N    R0,??DataTable2_47
        BL       uartPrintf
//  192     		break;
        B.N      ??cpu_identify_26
//  193     default:
//  194 		uartPrintf("\nThis version of software doesn't recognize the revision code.");
??cpu_identify_25:
        LDR.N    R0,??DataTable2_48
        BL       uartPrintf
//  195 		break;
//  196     }
//  197 
//  198 
//  199     // Determine the flash revision
//  200     uartPrintf("\nFlash信息：\n");
??cpu_identify_26:
        LDR.N    R0,??DataTable2_49
        BL       uartPrintf
//  201     flash_identify();
        BL       flash_identify
//  202     
//  203     /* Determine the P-flash size */
//  204     switch((SIM_FCFG1 & SIM_FCFG1_PFSIZE(0xF))>>SIM_FCFG1_PFSIZE_SHIFT)
        LDR.N    R0,??DataTable2_50  ;; 0x4004804c
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+24
        ANDS     R0,R0,#0xF
        CMP      R0,#+7
        BEQ.N    ??cpu_identify_27
        CMP      R0,#+9
        BEQ.N    ??cpu_identify_28
        CMP      R0,#+11
        BEQ.N    ??cpu_identify_29
        CMP      R0,#+15
        BEQ.N    ??cpu_identify_30
        B.N      ??cpu_identify_31
//  205     {
//  206     	case 0x7:
//  207     		uartPrintf("128 kBytes of P-flash	");
??cpu_identify_27:
        LDR.N    R0,??DataTable2_51
        BL       uartPrintf
//  208     		break;
        B.N      ??cpu_identify_32
//  209     	case 0x9:
//  210     		uartPrintf("256 kBytes of P-flash	");
??cpu_identify_28:
        LDR.N    R0,??DataTable2_52
        BL       uartPrintf
//  211     		break;
        B.N      ??cpu_identify_32
//  212         case 0xB:
//  213     		uartPrintf("512 kBytes of P-flash	");
??cpu_identify_29:
        LDR.N    R0,??DataTable2_53
        BL       uartPrintf
//  214     		break;
        B.N      ??cpu_identify_32
//  215     	case 0xF:
//  216     		uartPrintf("512 kBytes of P-flash	");
??cpu_identify_30:
        LDR.N    R0,??DataTable2_53
        BL       uartPrintf
//  217     		break;
        B.N      ??cpu_identify_32
//  218 	default:
//  219 		uartPrintf("ERR!! Undefined P-flash size\n");
??cpu_identify_31:
        LDR.N    R0,??DataTable2_54
        BL       uartPrintf
//  220 		break;  		
//  221     }
//  222     uartPrintf("\n");
??cpu_identify_32:
        ADR.N    R0,??DataTable2  ;; "\n"
        BL       uartPrintf
//  223     /* Determine if the part has P-flash only or P-flash and FlexNVM */
//  224     if (SIM_FCFG2 & SIM_FCFG2_PFLSH_MASK)
        LDR.N    R0,??DataTable2_55  ;; 0x40048050
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+8
        BPL.N    ??cpu_identify_33
//  225       uartPrintf("P-flash only\n");
        LDR.N    R0,??DataTable2_56
        BL       uartPrintf
        B.N      ??cpu_identify_34
//  226     else
//  227       /* if part has FlexNVM determine the FlexNVM size*/
//  228       switch((SIM_FCFG1 & SIM_FCFG1_NVMSIZE(0xF))>>SIM_FCFG1_NVMSIZE_SHIFT)
??cpu_identify_33:
        LDR.N    R0,??DataTable2_50  ;; 0x4004804c
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+28
        CMP      R0,#+0
        BEQ.N    ??cpu_identify_35
        CMP      R0,#+7
        BEQ.N    ??cpu_identify_36
        CMP      R0,#+9
        BEQ.N    ??cpu_identify_37
        CMP      R0,#+15
        BEQ.N    ??cpu_identify_38
        B.N      ??cpu_identify_39
//  229       {
//  230       	case 0x0:
//  231       		uartPrintf("0 kBytes of FlexNVM\n");
??cpu_identify_35:
        LDR.N    R0,??DataTable2_57
        BL       uartPrintf
//  232       		break;
        B.N      ??cpu_identify_34
//  233     	case 0x7:
//  234       		uartPrintf("128 kBytes of FlexNVM\n");
??cpu_identify_36:
        LDR.N    R0,??DataTable2_58
        BL       uartPrintf
//  235     		break;
        B.N      ??cpu_identify_34
//  236         case 0x9:
//  237       		uartPrintf("256 kBytes of FlexNVM\n");
??cpu_identify_37:
        LDR.N    R0,??DataTable2_59
        BL       uartPrintf
//  238     		break;
        B.N      ??cpu_identify_34
//  239     	case 0xF:
//  240       		uartPrintf("256 kBytes of FlexNVM\n");
??cpu_identify_38:
        LDR.N    R0,??DataTable2_59
        BL       uartPrintf
//  241     		break;
        B.N      ??cpu_identify_34
//  242 	default:
//  243 		uartPrintf("ERR!! Undefined FlexNVM size\n");
??cpu_identify_39:
        LDR.N    R0,??DataTable2_60
        BL       uartPrintf
//  244 		break;  		
//  245       }
//  246 
//  247 
//  248     /* Determine the RAM size */
//  249     switch((SIM_SOPT1 & SIM_SOPT1_RAMSIZE(0xF))>>SIM_SOPT1_RAMSIZE_SHIFT)
??cpu_identify_34:
        LDR.N    R0,??DataTable2_61  ;; 0x40047000
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+12
        ANDS     R0,R0,#0xF
        CMP      R0,#+5
        BEQ.N    ??cpu_identify_40
        CMP      R0,#+7
        BEQ.N    ??cpu_identify_41
        CMP      R0,#+8
        BEQ.N    ??cpu_identify_42
        CMP      R0,#+9
        BEQ.N    ??cpu_identify_43
        B.N      ??cpu_identify_44
//  250     {
//  251     	case 0x5:
//  252     		uartPrintf("32 kBytes of RAM\n\n");
??cpu_identify_40:
        LDR.N    R0,??DataTable2_62
        BL       uartPrintf
//  253     		break;
        B.N      ??cpu_identify_45
//  254     	case 0x7:
//  255     		uartPrintf("64 kBytes of RAM\n\n");
??cpu_identify_41:
        LDR.N    R0,??DataTable2_63
        BL       uartPrintf
//  256     		break;
        B.N      ??cpu_identify_45
//  257     	case 0x8:
//  258     		uartPrintf("96 kBytes of RAM\n\n");
??cpu_identify_42:
        LDR.N    R0,??DataTable2_64
        BL       uartPrintf
//  259     		break;
        B.N      ??cpu_identify_45
//  260     	case 0x9:
//  261     		uartPrintf("128 kBytes of RAM\n\n");
??cpu_identify_43:
        LDR.N    R0,??DataTable2_65
        BL       uartPrintf
//  262     		break;
        B.N      ??cpu_identify_45
//  263 		default:
//  264 			uartPrintf("ERR!! Undefined RAM size\n\n");
??cpu_identify_44:
        LDR.N    R0,??DataTable2_66
        BL       uartPrintf
//  265 			break;  		
//  266     }
//  267 }
??cpu_identify_45:
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1:
        DC8      "K10"

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_1:
        DC8      "K20"

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_2:
        DC8      "K30"

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_3:
        DC8      "K40"

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_4:
        DC8      "K60"

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_5:
        DC8      "K70"

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_6:
        DC8      "K50"

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_7:
        DC8      "K53"
//  268 
//  269 /********************************************************************/
//  270 /*!
//  271  * \brief   flash Identify
//  272  * \return  None
//  273  *
//  274  * This is primarly a reporting function that displays information
//  275  * about the specific flash parameters and flash version ID for
//  276  * the current device. These parameters are obtained using a special
//  277  * flash command call "read resource." The first four bytes returned
//  278  * are the flash parameter revision, and the second four bytes are
//  279  * the flash version ID.
//  280  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  281 void  flash_identify (void)
//  282 {
flash_identify:
        PUSH     {R7,LR}
//  283     u32 i;
//  284     /*     避免提示警告，这里定义几个变量保存 volatile  变量的值       */
//  285     uint8_t b4,b5,b6,b7;
//  286 
//  287     /* Get the flash parameter version */
//  288 
//  289     /* Write the flash FCCOB registers with the values for a read resource command */
//  290     FTFL_FCCOB0 = 0x03;
        LDR.N    R0,??DataTable2_67  ;; 0x40020007
        MOVS     R1,#+3
        STRB     R1,[R0, #+0]
//  291     FTFL_FCCOB1 = 0x00;
        LDR.N    R0,??DataTable2_68  ;; 0x40020006
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
//  292     FTFL_FCCOB2 = 0x00;
        LDR.N    R0,??DataTable2_69  ;; 0x40020005
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
//  293     FTFL_FCCOB3 = 0x00;
        LDR.N    R0,??DataTable2_70  ;; 0x40020004
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
//  294     FTFL_FCCOB8 = 0x01;
        LDR.N    R0,??DataTable2_71  ;; 0x4002000f
        MOVS     R1,#+1
        STRB     R1,[R0, #+0]
//  295 
//  296     /* All required FCCOBx registers are written, so launch the command */
//  297     FTFL_FSTAT = FTFL_FSTAT_CCIF_MASK;
        LDR.N    R0,??DataTable2_72  ;; 0x40020000
        MOVS     R1,#+128
        STRB     R1,[R0, #+0]
//  298 
//  299     /* Wait for the command to complete */
//  300     while(!(FTFL_FSTAT & FTFL_FSTAT_CCIF_MASK));
??flash_identify_0:
        LDR.N    R0,??DataTable2_72  ;; 0x40020000
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+24
        BPL.N    ??flash_identify_0
//  301 
//  302     b4=FTFL_FCCOB4;
        LDR.N    R0,??DataTable2_73  ;; 0x4002000b
        LDRB     R1,[R0, #+0]
//  303     b5=FTFL_FCCOB5;
        LDR.N    R0,??DataTable2_74  ;; 0x4002000a
        LDRB     R2,[R0, #+0]
//  304     b6=FTFL_FCCOB6;
        LDR.N    R0,??DataTable2_75  ;; 0x40020009
        LDRB     R3,[R0, #+0]
//  305     b7=FTFL_FCCOB7;
        LDR.N    R0,??DataTable2_76  ;; 0x40020008
        LDRB     R0,[R0, #+0]
//  306     uartPrintf("Flash parameter version %d.%d.%d.%d\n",b4,b5,b6,b7);
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        STR      R0,[SP, #+0]
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.N    R0,??DataTable2_77
        BL       uartPrintf
//  307 
//  308     /* Get the flash version ID */
//  309 
//  310     /* Write the flash FCCOB registers with the values for a read resource command */
//  311     FTFL_FCCOB0 = 0x03;
        LDR.N    R0,??DataTable2_67  ;; 0x40020007
        MOVS     R1,#+3
        STRB     R1,[R0, #+0]
//  312     FTFL_FCCOB1 = 0x00;
        LDR.N    R0,??DataTable2_68  ;; 0x40020006
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
//  313     FTFL_FCCOB2 = 0x00;
        LDR.N    R0,??DataTable2_69  ;; 0x40020005
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
//  314     FTFL_FCCOB3 = 0x04;
        LDR.N    R0,??DataTable2_70  ;; 0x40020004
        MOVS     R1,#+4
        STRB     R1,[R0, #+0]
//  315     FTFL_FCCOB8 = 0x01;
        LDR.N    R0,??DataTable2_71  ;; 0x4002000f
        MOVS     R1,#+1
        STRB     R1,[R0, #+0]
//  316 
//  317     /* All required FCCOBx registers are written, so launch the command */
//  318     FTFL_FSTAT = FTFL_FSTAT_CCIF_MASK;
        LDR.N    R0,??DataTable2_72  ;; 0x40020000
        MOVS     R1,#+128
        STRB     R1,[R0, #+0]
//  319 
//  320     /* Wait for the command to complete */
//  321     while(!(FTFL_FSTAT & FTFL_FSTAT_CCIF_MASK));
??flash_identify_1:
        LDR.N    R0,??DataTable2_72  ;; 0x40020000
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+24
        BPL.N    ??flash_identify_1
//  322 
//  323     b4=FTFL_FCCOB4;
        LDR.N    R0,??DataTable2_73  ;; 0x4002000b
        LDRB     R1,[R0, #+0]
//  324     b5=FTFL_FCCOB5;
        LDR.N    R0,??DataTable2_74  ;; 0x4002000a
        LDRB     R2,[R0, #+0]
//  325     b6=FTFL_FCCOB6;
        LDR.N    R0,??DataTable2_75  ;; 0x40020009
        LDRB     R3,[R0, #+0]
//  326     b7=FTFL_FCCOB7;
        LDR.N    R0,??DataTable2_76  ;; 0x40020008
        LDRB     R0,[R0, #+0]
//  327     uartPrintf("Flash version ID %d.%d.%d.%d\n",b4,b5,b6,b7);
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        STR      R0,[SP, #+0]
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.N    R0,??DataTable2_78
        BL       uartPrintf
//  328 
//  329     /* Clear all of the flags in the flash status register */
//  330     FTFL_FSTAT = 0xFF;
        LDR.N    R0,??DataTable2_72  ;; 0x40020000
        MOVS     R1,#+255
        STRB     R1,[R0, #+0]
//  331    
//  332     //延时一会
//  333     for(i=0;i<10000;i++);
        MOVS     R0,#+0
        B.N      ??flash_identify_2
??flash_identify_3:
        ADDS     R0,R0,#+1
??flash_identify_2:
        MOVW     R1,#+10000
        CMP      R0,R1
        BCC.N    ??flash_identify_3
//  334 }
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2:
        DC8      "\n",0x0,0x0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_1:
        DC32     `?<Constant "\\n\\n*******************...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_2:
        DC32     `?<Constant "* \\t\\t\\261\\261\\276\\251\\323\\312\\265`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_3:
        DC32     core_clk_mhz

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_4:
        DC32     mcg_div

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_5:
        DC32     `?<Constant "* \\304\\332\\272\\313\\306\\265\\302\\312`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_6:
        DC32     `?<Constant "* flex\\306\\265\\302\\312\\243\\272%3dM`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_7:
        DC32     `?<Constant "* \\306\\364\\266\\257\\324\\255\\322\\362`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_8:
        DC32     0x4007e000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_9:
        DC32     `?<Constant "Software Reset       ...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_10:
        DC32     `?<Constant "Core Lockup Event Res...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_11:
        DC32     `?<Constant "JTAG Reset           ...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_12:
        DC32     0x4007e001

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_13:
        DC32     `?<Constant "Power-on Reset       ...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_14:
        DC32     `?<Constant "External Pin Reset   ...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_15:
        DC32     `?<Constant "Watchdog(COP) Reset  ...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_16:
        DC32     `?<Constant "Loss of Clock Reset  ...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_17:
        DC32     `?<Constant "Low-voltage Detect Re...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_18:
        DC32     `?<Constant "LLWU Reset           ...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_19:
        DC32     `?<Constant "* \\306\\364\\266\\257\\267\\275\\312\\275`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_20:
        DC32     __VECTOR_RAM

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_21:
        DC32     __VECTOR_TABLE

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_22:
        DC32     `?<Constant "flash\\306\\364\\266\\257            .`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_23:
        DC32     `?<Constant "SRAM\\306\\364\\266\\257             .`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_24:
        DC32     `?<Constant "* Designed By\\243\\272snowwo...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_25:
        DC32     `?<Constant "* \\327\\356\\272\\363\\270\\374\\320\\302`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_26:
        DC32     `?<Constant "04:25:34">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_27:
        DC32     `?<Constant "Apr  5 2012">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_28:
        DC32     `?<Constant "%s  %s               ...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_29:
        DC32     `?<Constant "\\320\\276\\306\\254\\320\\305\\317\\242\\2`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_30:
        DC32     0x40048024

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_31:
        DC32     `?<Constant "Unrecognized Kinetis ...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_32:
        DC32     `?<Constant " \\n\\271\\334\\275\\305\\312\\375\\243\\27`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_33:
        DC32     `?<Constant "32pin">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_34:
        DC32     `?<Constant "48pin">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_35:
        DC32     `?<Constant "64pin">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_36:
        DC32     `?<Constant "80pin">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_37:
        DC32     `?<Constant "81pin">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_38:
        DC32     `?<Constant "100pin">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_39:
        DC32     `?<Constant "104pin">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_40:
        DC32     `?<Constant "144pin">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_41:
        DC32     `?<Constant "196pin">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_42:
        DC32     `?<Constant "256pin">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_43:
        DC32     `?<Constant "\\nUnrecognized Kinetis...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_44:
        DC32     `?<Constant "\\n\\260\\346\\261\\276\\320\\305\\317\\242`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_45:
        DC32     `?<Constant "Silicon rev 1.0   \\n">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_46:
        DC32     `?<Constant "Silicon rev 1.1  \\n">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_47:
        DC32     `?<Constant "Silicon rev 1.2  \\n">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_48:
        DC32     `?<Constant "\\nThis version of soft...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_49:
        DC32     `?<Constant "\\nFlash\\320\\305\\317\\242\\243\\272\\n"`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_50:
        DC32     0x4004804c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_51:
        DC32     `?<Constant "128 kBytes of P-flash\\t">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_52:
        DC32     `?<Constant "256 kBytes of P-flash\\t">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_53:
        DC32     `?<Constant "512 kBytes of P-flash\\t">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_54:
        DC32     `?<Constant "ERR!! Undefined P-fla...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_55:
        DC32     0x40048050

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_56:
        DC32     `?<Constant "P-flash only\\n">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_57:
        DC32     `?<Constant "0 kBytes of FlexNVM\\n">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_58:
        DC32     `?<Constant "128 kBytes of FlexNVM\\n">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_59:
        DC32     `?<Constant "256 kBytes of FlexNVM\\n">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_60:
        DC32     `?<Constant "ERR!! Undefined FlexN...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_61:
        DC32     0x40047000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_62:
        DC32     `?<Constant "32 kBytes of RAM\\n\\n">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_63:
        DC32     `?<Constant "64 kBytes of RAM\\n\\n">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_64:
        DC32     `?<Constant "96 kBytes of RAM\\n\\n">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_65:
        DC32     `?<Constant "128 kBytes of RAM\\n\\n">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_66:
        DC32     `?<Constant "ERR!! Undefined RAM s...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_67:
        DC32     0x40020007

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_68:
        DC32     0x40020006

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_69:
        DC32     0x40020005

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_70:
        DC32     0x40020004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_71:
        DC32     0x4002000f

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_72:
        DC32     0x40020000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_73:
        DC32     0x4002000b

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_74:
        DC32     0x4002000a

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_75:
        DC32     0x40020009

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_76:
        DC32     0x40020008

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_77:
        DC32     `?<Constant "Flash parameter versi...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_78:
        DC32     `?<Constant "Flash version ID %d.%...">`

        SECTION `.iar_vfe_header`:DATA:REORDER:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "\\n\\n*******************...">`:
        DATA
        DC8 0AH, 0AH, 2AH, 2AH, 2AH, 2AH, 2AH, 2AH
        DC8 2AH, 2AH, 2AH, 2AH, 2AH, 2AH, 2AH, 2AH
        DC8 2AH, 2AH, 2AH, 2AH, 2AH, 2AH, 2AH, 2AH
        DC8 2AH, 2AH, 2AH, 2AH, 2AH, 2AH, 2AH, 2AH
        DC8 2AH, 2AH, 2AH, 2AH, 2AH, 2AH, 2AH, 2AH
        DC8 2AH, 2AH, 2AH, 2AH, 2AH, 2AH, 2AH, 2AH
        DC8 2AH, 2AH, 2AH, 2AH, 2AH, 2AH, 2AH, 2AH
        DC8 2AH, 2AH, 0AH, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "* \\t\\t\\261\\261\\276\\251\\323\\312\\265`:
        DATA
        DC8 "* \t\t\261\261\276\251\323\312\265\347\264\363\321\247 K60 \321\247\317\260\300\375\263\314              *\012"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "* \\304\\332\\272\\313\\306\\265\\302\\312`:
        DATA
        DC8 2AH, 20H, 0C4H, 0DAH, 0BAH, 0CBH, 0C6H, 0B5H
        DC8 0C2H, 0CAH, 0A3H, 0BAH, 25H, 33H, 64H, 4DH
        DC8 48H, 7AH, 20H, 9, 0D7H, 0DCH, 0CFH, 0DFH
        DC8 0C6H, 0B5H, 0C2H, 0CAH, 20H, 0A3H, 0BAH, 25H
        DC8 33H, 64H, 4DH, 48H, 7AH, 20H, 20H, 20H
        DC8 20H, 20H, 20H, 20H, 20H, 20H, 20H, 20H
        DC8 20H, 20H, 20H, 2AH, 0AH, 0
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "* flex\\306\\265\\302\\312\\243\\272%3dM`:
        DATA
        DC8 2AH, 20H, 66H, 6CH, 65H, 78H, 0C6H, 0B5H
        DC8 0C2H, 0CAH, 0A3H, 0BAH, 25H, 33H, 64H, 4DH
        DC8 48H, 7AH, 20H, 9, 66H, 6CH, 61H, 73H
        DC8 68H, 0C6H, 0B5H, 0C2H, 0CAH, 0A3H, 0BAH, 25H
        DC8 33H, 64H, 4DH, 48H, 7AH, 20H, 20H, 20H
        DC8 20H, 20H, 20H, 20H, 20H, 20H, 20H, 20H
        DC8 20H, 20H, 20H, 2AH, 0AH, 0
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "* \\306\\364\\266\\257\\324\\255\\322\\362`:
        DATA
        DC8 "* \306\364\266\257\324\255\322\362\243\272"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Software Reset       ...">`:
        DATA
        DC8 "Software Reset                             *\012"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Core Lockup Event Res...">`:
        DATA
        DC8 "Core Lockup Event Reset                    *\012"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "JTAG Reset           ...">`:
        DATA
        DC8 "JTAG Reset                                 *\012"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Power-on Reset       ...">`:
        DATA
        DC8 "Power-on Reset                             *\012"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "External Pin Reset   ...">`:
        DATA
        DC8 "External Pin Reset                         *\012"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Watchdog(COP) Reset  ...">`:
        DATA
        DC8 "Watchdog(COP) Reset                        *\012"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Loss of Clock Reset  ...">`:
        DATA
        DC8 "Loss of Clock Reset                        *\012"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Low-voltage Detect Re...">`:
        DATA
        DC8 "Low-voltage Detect Reset                   *\012"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "LLWU Reset           ...">`:
        DATA
        DC8 "LLWU Reset                                 *\012"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "* \\306\\364\\266\\257\\267\\275\\312\\275`:
        DATA
        DC8 "* \306\364\266\257\267\275\312\275\243\272"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "flash\\306\\364\\266\\257            .`:
        DATA
        DC8 "flash\306\364\266\257                                  *\012"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "SRAM\\306\\364\\266\\257             .`:
        DATA
        DC8 "SRAM\306\364\266\257                                   *\012"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "* Designed By\\243\\272snowwo...">`:
        DATA
        DC8 2AH, 20H, 44H, 65H, 73H, 69H, 67H, 6EH
        DC8 65H, 64H, 20H, 42H, 79H, 0A3H, 0BAH, 73H
        DC8 6EH, 6FH, 77H, 77H, 6FH, 6CH, 66H, 20H
        DC8 20H, 20H, 20H, 20H, 20H, 20H, 20H, 20H
        DC8 20H, 20H, 20H, 20H, 20H, 20H, 20H, 20H
        DC8 20H, 20H, 20H, 20H, 20H, 20H, 20H, 20H
        DC8 20H, 20H, 20H, 20H, 20H, 20H, 20H, 2AH
        DC8 0AH, 0
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "* \\327\\356\\272\\363\\270\\374\\320\\302`:
        DATA
        DC8 "* \327\356\272\363\270\374\320\302\243\272"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "%s  %s               ...">`:
        DATA
        DC8 "%s  %s                      *\012"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Apr  5 2012">`:
        DATA
        DC8 "Apr  5 2012"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "04:25:34">`:
        DATA
        DC8 "04:25:34"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "\\320\\276\\306\\254\\320\\305\\317\\242\\2`:
        DATA
        DC8 "\320\276\306\254\320\305\317\242\243\272"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
        DC8 "K10"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
        DC8 "K20"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
        DC8 "K30"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
        DC8 "K40"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
        DC8 "K60"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
        DC8 "K70"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
        DC8 "K50"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
        DC8 "K53"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Unrecognized Kinetis ...">`:
        DATA
        DC8 "Unrecognized Kinetis family device.\012"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant " \\n\\271\\334\\275\\305\\312\\375\\243\\27`:
        DATA
        DC8 " \012\271\334\275\305\312\375\243\272"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "32pin">`:
        DATA
        DC8 "32pin"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "48pin">`:
        DATA
        DC8 "48pin"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "64pin">`:
        DATA
        DC8 "64pin"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "80pin">`:
        DATA
        DC8 "80pin"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "81pin">`:
        DATA
        DC8 "81pin"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "100pin">`:
        DATA
        DC8 "100pin"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "104pin">`:
        DATA
        DC8 "104pin"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "144pin">`:
        DATA
        DC8 "144pin"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "196pin">`:
        DATA
        DC8 "196pin"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "256pin">`:
        DATA
        DC8 "256pin"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "\\nUnrecognized Kinetis...">`:
        DATA
        DC8 "\012Unrecognized Kinetis package code."

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "\\n\\260\\346\\261\\276\\320\\305\\317\\242`:
        DATA
        DC8 "\012\260\346\261\276\320\305\317\242\243\272"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Silicon rev 1.0   \\n">`:
        DATA
        DC8 "Silicon rev 1.0   \012"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Silicon rev 1.1  \\n">`:
        DATA
        DC8 "Silicon rev 1.1  \012"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Silicon rev 1.2  \\n">`:
        DATA
        DC8 "Silicon rev 1.2  \012"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "\\nThis version of soft...">`:
        DATA
        DC8 0AH, 54H, 68H, 69H, 73H, 20H, 76H, 65H
        DC8 72H, 73H, 69H, 6FH, 6EH, 20H, 6FH, 66H
        DC8 20H, 73H, 6FH, 66H, 74H, 77H, 61H, 72H
        DC8 65H, 20H, 64H, 6FH, 65H, 73H, 6EH, 27H
        DC8 74H, 20H, 72H, 65H, 63H, 6FH, 67H, 6EH
        DC8 69H, 7AH, 65H, 20H, 74H, 68H, 65H, 20H
        DC8 72H, 65H, 76H, 69H, 73H, 69H, 6FH, 6EH
        DC8 20H, 63H, 6FH, 64H, 65H, 2EH, 0
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "\\nFlash\\320\\305\\317\\242\\243\\272\\n"`:
        DATA
        DC8 "\012Flash\320\305\317\242\243\272\012"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "128 kBytes of P-flash\\t">`:
        DATA
        DC8 "128 kBytes of P-flash\t"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "256 kBytes of P-flash\\t">`:
        DATA
        DC8 "256 kBytes of P-flash\t"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "512 kBytes of P-flash\\t">`:
        DATA
        DC8 "512 kBytes of P-flash\t"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "ERR!! Undefined P-fla...">`:
        DATA
        DC8 "ERR!! Undefined P-flash size\012"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(1)
        DATA
        DC8 "\012"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "P-flash only\\n">`:
        DATA
        DC8 "P-flash only\012"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "0 kBytes of FlexNVM\\n">`:
        DATA
        DC8 "0 kBytes of FlexNVM\012"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "128 kBytes of FlexNVM\\n">`:
        DATA
        DC8 "128 kBytes of FlexNVM\012"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "256 kBytes of FlexNVM\\n">`:
        DATA
        DC8 "256 kBytes of FlexNVM\012"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "ERR!! Undefined FlexN...">`:
        DATA
        DC8 "ERR!! Undefined FlexNVM size\012"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "32 kBytes of RAM\\n\\n">`:
        DATA
        DC8 "32 kBytes of RAM\012\012"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "64 kBytes of RAM\\n\\n">`:
        DATA
        DC8 "64 kBytes of RAM\012\012"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "96 kBytes of RAM\\n\\n">`:
        DATA
        DC8 "96 kBytes of RAM\012\012"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "128 kBytes of RAM\\n\\n">`:
        DATA
        DC8 "128 kBytes of RAM\012\012"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "ERR!! Undefined RAM s...">`:
        DATA
        DC8 "ERR!! Undefined RAM size\012\012"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Flash parameter versi...">`:
        DATA
        DC8 "Flash parameter version %d.%d.%d.%d\012"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Flash version ID %d.%...">`:
        DATA
        DC8 "Flash version ID %d.%d.%d.%d\012"
        DC8 0, 0

        END
//  335 /********************************************************************/
//  336 
// 
// 1 682 bytes in section .rodata
// 1 428 bytes in section .text
// 
// 1 428 bytes of CODE  memory
// 1 682 bytes of CONST memory
//
//Errors: none
//Warnings: none
