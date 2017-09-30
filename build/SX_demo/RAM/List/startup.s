///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.30.1.53127/W32 for ARM    05/Apr/2012  04:25:38 /
// Copyright 1999-2011 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  D:\workspace\myworkspace\SW_K60\src\common\startup.c    /
//    Command line =  D:\workspace\myworkspace\SW_K60\src\common\startup.c    /
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
//                    startup.s                                               /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME startup

        #define SHT_PROGBITS 0x1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0
        SECTION `.data`:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0
        SECTION `.data_init`:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0
        SECTION CodeRelocate:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0
        SECTION CodeRelocateRam:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        EXTERN __VECTOR_RAM
        EXTERN __VECTOR_TABLE
        EXTERN write_vtor

        PUBLIC common_startup

// D:\workspace\myworkspace\SW_K60\src\common\startup.c
//    1 /******************** (C) COPYRIGHT 2011 野火嵌入式开发工作室 ********************
//    2  * 文件名       ：startup.c
//    3  * 描述         ：kinetis的启动代码，把中断向量表、初始化数据、以__ramfunc声明的子函数复制到RAM区
//    4  *          
//    5  * 实验平台     ：野火kinetis开发板
//    6  * 库版本       ：
//    7  * 
//    8  * 作者         ：飞思卡尔公司
//    9  * 淘宝店       ：http://firestm32.taobao.com
//   10  * 技术支持论坛 ：http://www.ourdev.cn/bbs/bbs_list.jsp?bbs_id=1008   
//   11 **********************************************************************************/	
//   12 
//   13 #include "common.h"
//   14 
//   15 #if (defined(IAR))
//   16 	#pragma section = ".data"
//   17 	#pragma section = ".data_init"
//   18 	#pragma section = ".bss"
//   19 	#pragma section = "CodeRelocate"
//   20 	#pragma section = "CodeRelocateRam"
//   21 #endif
//   22 
//   23 /********************************************************************/
//   24 //复制中断向量表、初始化数据、以__ramfunc声明的子函数复制到RAM区(对flash操作的函数必须这样)

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//   25 void
//   26 common_startup(void)
//   27 {
common_startup:
        PUSH     {R7,LR}
//   28 
//   29 #if (defined(CW))	
//   30     extern char __START_BSS[];
//   31     extern char __END_BSS[];
//   32     extern uint32 __DATA_ROM[];
//   33     extern uint32 __DATA_RAM[];
//   34     extern char __DATA_END[];
//   35 #endif
//   36 
//   37     /* Declare a counter we'll use in all of the copy loops */
//   38     uint32 n;
//   39 
//   40     /* Declare pointers for various data sections. These pointers
//   41      * are initialized using values pulled in from the linker file
//   42      */
//   43     uint8 * data_ram, * data_rom, * data_rom_end;
//   44     uint8 * bss_start, * bss_end;
//   45 
//   46 
//   47     /* 这两个数组的地址 在  链接器Linker文件，即ICF文件 定义       */
//   48     /* 这两个全局变量在上面.icf文件里可以找到，里面定义了它们的地址*/  
//   49     extern uint32 __VECTOR_TABLE[];
//   50     extern uint32 __VECTOR_RAM[];
//   51 
//   52     /* 检测是否需要 复制中断向量表                            */
//   53     /*如果它们地址不一样，则复制flash内的向量表到RAM区得向量表*/
//   54     if (__VECTOR_RAM != __VECTOR_TABLE)
        LDR.N    R0,??common_startup_0
        LDR.N    R1,??common_startup_0+0x4
        CMP      R0,R1
        BEQ.N    ??common_startup_1
//   55     {
//   56         for (n = 0; n < 0x410; n++)
        MOVS     R0,#+0
        B.N      ??common_startup_2
//   57             __VECTOR_RAM[n] = __VECTOR_TABLE[n];
??common_startup_3:
        LDR.N    R1,??common_startup_0
        LDR.N    R2,??common_startup_0+0x4
        LDR      R2,[R2, R0, LSL #+2]
        STR      R2,[R1, R0, LSL #+2]
        ADDS     R0,R0,#+1
??common_startup_2:
        CMP      R0,#+1040
        BCC.N    ??common_startup_3
//   58     }
//   59 
//   60     /* 把 中断向量表地址 重新指向 RAM 里的 中断向量表 */
//   61     write_vtor((uint32)__VECTOR_RAM);  
??common_startup_1:
        LDR.N    R0,??common_startup_0
        BL       write_vtor
//   62     
//   63       
//   64     
//   65     /*获取初始化数据地址*/
//   66     #if (defined(CW))
//   67         data_ram = (uint8 *)__DATA_RAM;
//   68 	data_rom = (uint8 *)__DATA_ROM; 
//   69         data_rom_end  = (uint8 *)__DATA_END; /* This is actually a RAM address in CodeWarrior */
//   70         n = data_rom_end - data_ram;
//   71     #elif (defined(IAR))
//   72         data_ram = __section_begin(".data");
        LDR.N    R1,??common_startup_0+0x8
//   73         data_rom = __section_begin(".data_init");
        LDR.N    R2,??common_startup_0+0xC
//   74         data_rom_end = __section_end(".data_init");
        LDR.N    R0,??common_startup_0+0x10
//   75         n = data_rom_end - data_rom;
        SUBS     R0,R0,R2
        B.N      ??common_startup_4
//   76     #endif		
//   77 		
//   78 	/* 复制初始化数据 */
//   79 	while (n--)
//   80 		*data_ram++ = *data_rom++;
??common_startup_5:
        LDRB     R3,[R2, #+0]
        STRB     R3,[R1, #+0]
        ADDS     R2,R2,#+1
        ADDS     R1,R1,#+1
??common_startup_4:
        MOVS     R3,R0
        SUBS     R0,R3,#+1
        CMP      R3,#+0
        BNE.N    ??common_startup_5
//   81 	
//   82 	
//   83       /* 获取 .bss 段的地址 (初始化数据为0) */
//   84       #if (defined(CW))
//   85               bss_start = (uint8 *)__START_BSS;
//   86               bss_end = (uint8 *)__END_BSS;
//   87       #elif (defined(IAR))
//   88               bss_start = __section_begin(".bss");
        LDR.N    R1,??common_startup_0+0x14
//   89               bss_end = __section_end(".bss");
        LDR.N    R0,??common_startup_0+0x18
//   90       #endif
//   91               
//   92 
//   93       /* 清除初始化为0的数据段 */
//   94       n = bss_end - bss_start;
        SUBS     R0,R0,R1
        B.N      ??common_startup_6
//   95       while(n--)
//   96         *bss_start++ = 0;
??common_startup_7:
        MOVS     R2,#+0
        STRB     R2,[R1, #+0]
        ADDS     R1,R1,#+1
??common_startup_6:
        MOVS     R2,R0
        SUBS     R0,R2,#+1
        CMP      R2,#+0
        BNE.N    ??common_startup_7
//   97 
//   98       /* 把以__ramfunc声明的子函数复制到RAM区	 */
//   99       #if (defined(IAR))
//  100           uint8* code_relocate_ram  = __section_begin("CodeRelocateRam");
        LDR.N    R1,??common_startup_0+0x1C
//  101           uint8* code_relocate      = __section_begin("CodeRelocate");
        LDR.N    R2,??common_startup_0+0x20
//  102           uint8* code_relocate_end  = __section_end("CodeRelocate");
        LDR.N    R0,??common_startup_0+0x24
//  103 
//  104           /* Copy functions from ROM to RAM */
//  105           n = code_relocate_end - code_relocate;
        SUBS     R0,R0,R2
        B.N      ??common_startup_8
//  106           while (n--)
//  107                   *code_relocate_ram++ = *code_relocate++;
??common_startup_9:
        LDRB     R3,[R2, #+0]
        STRB     R3,[R1, #+0]
        ADDS     R2,R2,#+1
        ADDS     R1,R1,#+1
??common_startup_8:
        MOVS     R3,R0
        SUBS     R0,R3,#+1
        CMP      R3,#+0
        BNE.N    ??common_startup_9
//  108       #endif
//  109 }
        POP      {R0,PC}          ;; return
        DATA
??common_startup_0:
        DC32     __VECTOR_RAM
        DC32     __VECTOR_TABLE
        DC32     SFB(`.data`)
        DC32     SFB(`.data_init`)
        DC32     SFE(`.data_init`)
        DC32     SFB(`.bss`)
        DC32     SFE(`.bss`)
        DC32     SFB(CodeRelocateRam)
        DC32     SFB(CodeRelocate)
        DC32     SFE(CodeRelocate)

        SECTION `.iar_vfe_header`:DATA:REORDER:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION `.data`:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION `.data_init`:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION CodeRelocate:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION CodeRelocateRam:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//  110 /********************************************************************/
// 
// 156 bytes in section .text
// 
// 156 bytes of CODE memory
//
//Errors: none
//Warnings: none
