///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.60.1.5097/W32 for ARM     15/Aug/2015  19:53:02 /
// Copyright 1999-2013 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  C:\Users\Administrator\Desktop\MPU60508.12\src\drivers\ /
//                    Flash\flash.c                                           /
//    Command line =  C:\Users\Administrator\Desktop\MPU60508.12\src\drivers\ /
//                    Flash\flash.c -lCN C:\Users\Administrator\Desktop\MPU60 /
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
//                    emo\FLASH\List\flash.s                                  /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1
        #define SHF_WRITE 0x1
        #define SHF_EXECINSTR 0x4

        EXTERN assert_failed
        EXTERN k_1
        EXTERN k_2
        EXTERN k_3
        EXTERN k_4
        EXTERN line_first
        EXTERN line_fourth
        EXTERN line_second
        EXTERN line_third
        EXTERN speed_duty
        EXTERN steer_dd
        EXTERN steer_dp
        EXTERN time

        PUBLIC FlashData
        PUBLIC FlashDataInit
        PUBLIC ReadFlashData
        PUBLIC SetUserFlash
        PUBLIC WriteFlashData
        PUBLIC flash_erase_sector
        PUBLIC flash_init
        PUBLIC flash_write
        PUBLIC flash_write_buf
        PUBLIC flash_write_buf32

// C:\Users\Administrator\Desktop\MPU60508.12\src\drivers\Flash\flash.c
//    1 /*
//    2 ************************************************************************
//    3 *                北京邮电大学 K60 学习例程 
//    4 * 文件名 :[flash.c] 
//    5 * 描  述 ：flash驱动函数
//    6 *设计改进：snowwolf
//    7 *  Email ：snowwolf2012@qq.com
//    8 * 说  明 ：flash驱动函数
//    9 * 备注	：从苏州大学例程修改而成
//   10 *     K60的程序Flash，每个扇区 2K
//   11 *	k60N512包含512K的程序Flash ， 即扇区总数为256 ，即扇区取值范围为 0~255
//   12 *	k60X256包含256K的程序Flash ， 即扇区总数为128 ，即扇区取值范围为 0~127
//   13 *	注意，扇区，请尽量用最后面的扇区，最前面的扇区，通常都是存放代码的。
//   14 *		有可能破坏了前面的代码！！！！
//   15 ************************************************************************
//   16 */
//   17 
//   18 
//   19 //包含头文件
//   20 #include "flash.h" 
//   21 #include "global.h"
//   22 #include "common.h"
//   23 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   24 uint32 FlashData[FLASH_BUFFER_MAX] = {0};
FlashData:
        DS8 160
//   25 
//   26 //Flash命令宏定义，内部使用
//   27 #define   RD1BLK    0x00   // 读整块Flash
//   28 #define   RD1SEC    0x01   // 读整个扇区
//   29 #define   PGMCHK    0x02   // 写入检查
//   30 #define   RDRSRC    0x03   // 读目标数据
//   31 #define   PGM4      0x06   // 写入长字
//   32 #define   ERSBLK    0x08   // 擦除整块Flash
//   33 #define   ERSSCR    0x09   // 擦除Flash扇区
//   34 #define   PGMSEC    0x0B   // 写入扇区
//   35 #define   RD1ALL    0x40   // 读所有的块
//   36 #define   RDONCE    0x41   // 只读一次
//   37 #define   PGMONCE   0x43   // 只写一次
//   38 #define   ERSALL    0x44   // 擦除所有块
//   39 #define   VFYKEY    0x45   // 验证后门访问钥匙
//   40 #define   PGMPART   0x80   // 写入分区
//   41 #define   SETRAM    0x81   // 设定FlexRAM功能
//   42 
//   43 
//   44 #define VAR00  time
//   45 #define VAR01  speed_duty
//   46 #define VAR02  steer_dp
//   47 #define VAR03  steer_dd
//   48 #define VAR04  line_first
//   49 #define VAR05  line_second
//   50 #define VAR06  line_third
//   51 #define VAR07  line_fourth
//   52 #define VAR08  k_1
//   53 #define VAR09  k_2
//   54 #define VAR10  k_3
//   55 #define VAR11  k_4
//   56 
//   57 void FlashDataInit() ;
//   58 void ReadFlashData() ;
//   59 /***************************************************
//   60 ** 函数名称: void SetUserFlash(byte cho) 
//   61 ** 功能描述: 将用户变量与falsh缓存关联
//   62 **  入  口 ：
//   63 **  出  口 ：
//   64 **  说  明 : 可以在这里把要存到flash中的变量与flash
//   65              关联，最多32个int变量  
//   66 ****************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   67 void SetUserFlash(byte cho) 
//   68 {
//   69      //将用户数据放回到flash缓冲区
//   70      if(cho == 1) 
SetUserFlash:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+1
        BNE.N    ??SetUserFlash_0
//   71      {
//   72        
//   73          FlashData[0]  = VAR00;
        LDR.N    R0,??DataTable3
        LDR.N    R1,??DataTable3_1
        LDRB     R1,[R1, #+0]
        STR      R1,[R0, #+0]
//   74          FlashData[1]  = VAR01;
        LDR.N    R0,??DataTable3
        LDR.N    R1,??DataTable3_2
        LDR      R1,[R1, #+0]
        STR      R1,[R0, #+4]
//   75          FlashData[2]  = VAR02;
        LDR.N    R0,??DataTable3
        LDR.N    R1,??DataTable3_3
        LDR      R1,[R1, #+0]
        STR      R1,[R0, #+8]
//   76          FlashData[3]  = VAR03;
        LDR.N    R0,??DataTable3
        LDR.N    R1,??DataTable3_4
        LDR      R1,[R1, #+0]
        STR      R1,[R0, #+12]
//   77          FlashData[4]  = VAR04;
        LDR.N    R0,??DataTable3
        LDR.N    R1,??DataTable3_5
        LDRB     R1,[R1, #+0]
        STR      R1,[R0, #+16]
//   78          FlashData[5]  = VAR05;
        LDR.N    R0,??DataTable3
        LDR.N    R1,??DataTable3_6
        LDRB     R1,[R1, #+0]
        STR      R1,[R0, #+20]
//   79          FlashData[6]  = VAR06;
        LDR.N    R0,??DataTable3
        LDR.N    R1,??DataTable3_7
        LDRB     R1,[R1, #+0]
        STR      R1,[R0, #+24]
//   80          FlashData[7]  = VAR07;
        LDR.N    R0,??DataTable3
        LDR.N    R1,??DataTable3_8
        LDRB     R1,[R1, #+0]
        STR      R1,[R0, #+28]
//   81          FlashData[8]  = VAR08;
        LDR.N    R0,??DataTable3
        LDR.N    R1,??DataTable3_9
        LDR      R1,[R1, #+0]
        STR      R1,[R0, #+32]
//   82          FlashData[9]  = VAR09;
        LDR.N    R0,??DataTable3
        LDR.N    R1,??DataTable3_10
        LDR      R1,[R1, #+0]
        STR      R1,[R0, #+36]
//   83          FlashData[10] = VAR10;
        LDR.N    R0,??DataTable3
        LDR.N    R1,??DataTable3_11
        LDR      R1,[R1, #+0]
        STR      R1,[R0, #+40]
//   84          FlashData[11] = VAR11;
        LDR.N    R0,??DataTable3
        LDR.N    R1,??DataTable3_12
        LDR      R1,[R1, #+0]
        STR      R1,[R0, #+44]
        B.N      ??SetUserFlash_1
//   85          
//   86      } //将flash缓冲区中数据放到到用户变量中
//   87      else  if(cho == 0) 
??SetUserFlash_0:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BNE.N    ??SetUserFlash_1
//   88      {
//   89          VAR00 = FlashData[0];
        LDR.N    R0,??DataTable3_1
        LDR.N    R1,??DataTable3
        LDR      R1,[R1, #+0]
        STRB     R1,[R0, #+0]
//   90          VAR01 = FlashData[1];
        LDR.N    R0,??DataTable3
        LDR      R0,[R0, #+4]
        LDR.N    R1,??DataTable3_2
        STR      R0,[R1, #+0]
//   91          VAR02 = FlashData[2];
        LDR.N    R0,??DataTable3
        LDR      R0,[R0, #+8]
        LDR.N    R1,??DataTable3_3
        STR      R0,[R1, #+0]
//   92          VAR03 = FlashData[3];
        LDR.N    R0,??DataTable3
        LDR      R0,[R0, #+12]
        LDR.N    R1,??DataTable3_4
        STR      R0,[R1, #+0]
//   93          VAR04 = FlashData[4];
        LDR.N    R0,??DataTable3
        LDR      R0,[R0, #+16]
        LDR.N    R1,??DataTable3_5
        STRB     R0,[R1, #+0]
//   94          VAR05 = FlashData[5];
        LDR.N    R0,??DataTable3
        LDR      R0,[R0, #+20]
        LDR.N    R1,??DataTable3_6
        STRB     R0,[R1, #+0]
//   95          VAR06 = FlashData[6];
        LDR.N    R0,??DataTable3
        LDR      R0,[R0, #+24]
        LDR.N    R1,??DataTable3_7
        STRB     R0,[R1, #+0]
//   96          VAR07 = FlashData[7];
        LDR.N    R0,??DataTable3
        LDR      R0,[R0, #+28]
        LDR.N    R1,??DataTable3_8
        STRB     R0,[R1, #+0]
//   97          VAR08 = FlashData[8];
        LDR.N    R0,??DataTable3
        LDR      R0,[R0, #+32]
        LDR.N    R1,??DataTable3_9
        STR      R0,[R1, #+0]
//   98          VAR09 = FlashData[9];
        LDR.N    R0,??DataTable3
        LDR      R0,[R0, #+36]
        LDR.N    R1,??DataTable3_10
        STR      R0,[R1, #+0]
//   99          VAR10 = FlashData[10];
        LDR.N    R0,??DataTable3
        LDR      R0,[R0, #+40]
        LDR.N    R1,??DataTable3_11
        STR      R0,[R1, #+0]
//  100          VAR11 = FlashData[11];
        LDR.N    R0,??DataTable3
        LDR      R0,[R0, #+44]
        LDR.N    R1,??DataTable3_12
        STR      R0,[R1, #+0]
//  101          
//  102      }
//  103 
//  104 }
??SetUserFlash_1:
        BX       LR               ;; return
//  105 
//  106 
//  107 
//  108 /*************************************************************************
//  109 *  函数名称：flash_cmd_launch
//  110 *  功能说明：启动Flash命令
//  111 *  参数说明：无
//  112 *  函数返回：0-成功 1-失败
//  113 *  修改时间：2012-6-11    已测试
//  114 *  备    注：内部函数实现
//  115 *************************************************************************/

        SECTION `.textrw`:CODE:NOROOT(1)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE | SHF_EXECINSTR
        THUMB
//  116 __RAMFUN static uint32 flash_cmd_launch(void)
//  117 {
//  118     
//  119     FTFL_FSTAT = 	(0
//  120 				  	|	FTFL_FSTAT_CCIF_MASK 		// 启动命令
//  121 					|	FTFL_FSTAT_ACCERR_MASK 		// 清除访问错误标志位
//  122 					| 	FTFL_FSTAT_FPVIOL_MASK		// 非法访问标志位
//  123 					);	
flash_cmd_launch:
        LDR.N    R0,??DataTable21  ;; 0x40020000
        MOVS     R1,#+176
        STRB     R1,[R0, #+0]
//  124     									
//  125     while(!(FTFL_FSTAT & FTFL_FSTAT_CCIF_MASK));	// 等待命令完成
??flash_cmd_launch_0:
        LDR.N    R0,??DataTable21  ;; 0x40020000
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+24
        BPL.N    ??flash_cmd_launch_0
//  126 
//  127     // 检查错误标志
//  128     if( FTFL_FSTAT & (FTFL_FSTAT_ACCERR_MASK | FTFL_FSTAT_FPVIOL_MASK | FTFL_FSTAT_MGSTAT0_MASK))
        LDR.N    R0,??DataTable21  ;; 0x40020000
        LDRB     R0,[R0, #+0]
        MOVS     R1,#+49
        TST      R0,R1
        BEQ.N    ??flash_cmd_launch_1
//  129         return 1 ; 				//执行命令出错
        MOVS     R0,#+1
        B.N      ??flash_cmd_launch_2
//  130   
//  131     return 0; 					//执行命令成功
??flash_cmd_launch_1:
        MOVS     R0,#+0
??flash_cmd_launch_2:
        BX       LR               ;; return
//  132 }
//  133 /*************************************************************************
//  134 *  函数名称：flash_init
//  135 *  功能说明：初始化flash模块
//  136 *  参数说明：无
//  137 *  函数返回：无
//  138 *  修改时间：2012-6-11    已测试
//  139 *  备    注：外部接口函数
//  140 *************************************************************************/

        SECTION `.textrw`:CODE:NOROOT(1)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE | SHF_EXECINSTR
        THUMB
//  141 __RAMFUN void flash_init(void)
//  142 {
//  143 	// 清除Flash预读取缓冲区
//  144     FMC_PFB0CR |= FMC_PFB0CR_S_B_INV_MASK;
flash_init:
        LDR.N    R0,??DataTable21_1  ;; 0x4001f004
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x80000
        LDR.N    R1,??DataTable21_1  ;; 0x4001f004
        STR      R0,[R1, #+0]
//  145     FMC_PFB1CR |= FMC_PFB0CR_S_B_INV_MASK;
        LDR.N    R0,??DataTable21_2  ;; 0x4001f008
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x80000
        LDR.N    R1,??DataTable21_2  ;; 0x4001f008
        STR      R0,[R1, #+0]
//  146     
//  147     while(!(FTFL_FSTAT & FTFL_FSTAT_CCIF_MASK));	// 等待命令完成
??flash_init_0:
        LDR.N    R0,??DataTable21  ;; 0x40020000
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+24
        BPL.N    ??flash_init_0
//  148     
//  149     FTFL_FSTAT = (0
//  150                 |FTFL_FSTAT_ACCERR_MASK 		// 清除访问错误标志位
//  151                 |FTFL_FSTAT_FPVIOL_MASK		// 非法访问标志位
//  152                 );	
        LDR.N    R0,??DataTable21  ;; 0x40020000
        MOVS     R1,#+48
        STRB     R1,[R0, #+0]
//  153 }
        BX       LR               ;; return
//  154 
//  155 
//  156 /*************************************************************************
//  157 *  函数名称：flash_erase_sector
//  158 *  功能说明：擦除指定flash扇区
//  159 *  参数说明：sectorNo：扇区号（K60N512实际使用0~255）
//  160 *  函数返回：函数执行执行状态：0=正常；非0=异常。
//  161 *  修改时间：2012-6-11    已测试
//  162 *  备    注：外部接口函数
//  163 *************************************************************************/

        SECTION `.textrw`:CODE:NOROOT(1)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE | SHF_EXECINSTR
        THUMB
//  164 __RAMFUN uint8 flash_erase_sector(uint16 sectorNo)
//  165 {
flash_erase_sector:
        PUSH     {R4,LR}
        SUB      SP,SP,#+8
        MOVS     R4,R0
//  166     Dtype	addr;	
//  167 	addr.DW = (uint32)(sectorNo<<11);	//每个扇区2KB，所以扇区地址=扇区号*2K ，这里用 <<11 表示 *2*1024 
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        LSLS     R0,R4,#+11
        STR      R0,[SP, #+0]
//  168     
//  169     //dest.word    = (uint32)(sectorNo<<11);	//每个扇区2KB，所以扇区地址=扇区号*2K ，这里用 <<11 表示 *2*1024 
//  170 
//  171     // 设置擦除命令
//  172     FTFL_FCCOB0 = ERSSCR; // 擦除扇区命令
        LDR.N    R0,??DataTable21_3  ;; 0x40020007
        MOVS     R1,#+9
        STRB     R1,[R0, #+0]
//  173     
//  174     // 设置目标地址
//  175     FTFL_FCCOB1 = addr.B[2];
        LDRB     R0,[SP, #+2]
        LDR.N    R1,??DataTable21_4  ;; 0x40020006
        STRB     R0,[R1, #+0]
//  176     FTFL_FCCOB2 = addr.B[1];
        LDRB     R0,[SP, #+1]
        LDR.N    R1,??DataTable21_5  ;; 0x40020005
        STRB     R0,[R1, #+0]
//  177     FTFL_FCCOB3 = addr.B[0];
        LDR.N    R0,??DataTable21_6  ;; 0x40020004
        LDRB     R1,[SP, #+0]
        STRB     R1,[R0, #+0]
//  178     
//  179     // 执行命令序列
//  180     if(1 == flash_cmd_launch())    //若执行命令出现错误
        BL       flash_cmd_launch
        CMP      R0,#+1
        BNE.N    ??flash_erase_sector_0
//  181         return 1;     //擦除命令错误
        MOVS     R0,#+1
        B.N      ??flash_erase_sector_1
//  182    
//  183     // 若擦除sector0时，则解锁设备
//  184     if(sectorNo ==0)
??flash_erase_sector_0:
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R4,#+0
        BNE.N    ??flash_erase_sector_2
//  185     {
//  186         // 写入4字节
//  187         FTFL_FCCOB0 = PGM4; 
        LDR.N    R0,??DataTable21_3  ;; 0x40020007
        MOVS     R1,#+6
        STRB     R1,[R0, #+0]
//  188         // 设置目标地址
//  189         FTFL_FCCOB1 = 0x00;
        LDR.N    R0,??DataTable21_4  ;; 0x40020006
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
//  190         FTFL_FCCOB2 = 0x04;
        LDR.N    R0,??DataTable21_5  ;; 0x40020005
        MOVS     R1,#+4
        STRB     R1,[R0, #+0]
//  191         FTFL_FCCOB3 = 0x0C;
        LDR.N    R0,??DataTable21_6  ;; 0x40020004
        MOVS     R1,#+12
        STRB     R1,[R0, #+0]
//  192         // 数据
//  193         FTFL_FCCOB4 = 0xFF;
        LDR.N    R0,??DataTable21_7  ;; 0x4002000b
        MOVS     R1,#+255
        STRB     R1,[R0, #+0]
//  194         FTFL_FCCOB5 = 0xFF;
        LDR.N    R0,??DataTable21_8  ;; 0x4002000a
        MOVS     R1,#+255
        STRB     R1,[R0, #+0]
//  195         FTFL_FCCOB6 = 0xFF;
        LDR.N    R0,??DataTable21_9  ;; 0x40020009
        MOVS     R1,#+255
        STRB     R1,[R0, #+0]
//  196         FTFL_FCCOB7 = 0xFE;
        LDR.N    R0,??DataTable21_10  ;; 0x40020008
        MOVS     R1,#+254
        STRB     R1,[R0, #+0]
//  197         // 执行命令序列
//  198         if(1 == flash_cmd_launch())  //若执行命令出现错误
        BL       flash_cmd_launch
        CMP      R0,#+1
        BNE.N    ??flash_erase_sector_2
//  199             return 2;   //解锁命令错误
        MOVS     R0,#+2
        B.N      ??flash_erase_sector_1
//  200     }  
//  201     
//  202     return 0;  //成功返回
??flash_erase_sector_2:
        MOVS     R0,#+0
??flash_erase_sector_1:
        POP      {R1,R2,R4,PC}    ;; return
//  203 }
//  204 /*************************************************************************
//  205 *  函数名称：flash_write
//  206 *  功能说明：擦除指定flash扇区
//  207 *  参数说明：sectorNo：目标扇区号 （K60N512实际使用0~255）
//  208 *            offset:写入扇区内部偏移地址（0~2043）     
//  209 *            data：源数据
//  210 *  函数返回：函数执行状态：0=正常；非0=异常。
//  211 *  修改时间：2012-6-11    已测试
//  212 *  备    注：flash写入操作
//  213 *************************************************************************/

        SECTION `.textrw`:CODE:NOROOT(1)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE | SHF_EXECINSTR
        THUMB
//  214 __RAMFUN uint8 flash_write(uint16 sectorNo,uint16 offset,uint32 data)
//  215 {
flash_write:
        PUSH     {R2-R6,LR}
        MOVS     R5,R0
        MOVS     R6,R1
        MOVS     R4,R2
//  216     Dtype	addr;	
//  217     Dtype	Data;
//  218     
//  219     ASSERT(offset%4 == 0);			//偏移量必须为4的倍数
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        MOVS     R0,#+4
        SDIV     R1,R6,R0
        MLS      R1,R1,R0,R6
        CMP      R1,#+0
        BEQ.N    ??flash_write_0
        MOVS     R1,#+219
        LDR.N    R0,??DataTable21_11
        BL       assert_failed
//  220                                                                     //此处提示警告，但是安全的……
//  221     ASSERT(offset <= 0x800);		//扇区大小为2K，即偏移量必须不大于 0x800
??flash_write_0:
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        CMP      R6,#+2048
        BLE.N    ??flash_write_1
        MOVS     R1,#+221
        LDR.N    R0,??DataTable21_11
        BL       assert_failed
//  222                                                                     //此处提示警告，但是安全的……
//  223     
//  224     addr.DW = (uint32)((sectorNo<<11) + offset);		//计算地址
??flash_write_1:
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        LSLS     R0,R5,#+11
        UXTAH    R0,R0,R6
        STR      R0,[SP, #+4]
//  225     Data.DW	= data;	
        STR      R4,[SP, #+0]
//  226         
//  227     FTFL_FCCOB0 = PGM4;				// 设置写入命令
        LDR.N    R0,??DataTable21_3  ;; 0x40020007
        MOVS     R1,#+6
        STRB     R1,[R0, #+0]
//  228     
//  229     FTFL_FCCOB1 = addr.B[2];		// 设置目标地址
        LDRB     R0,[SP, #+6]
        LDR.N    R1,??DataTable21_4  ;; 0x40020006
        STRB     R0,[R1, #+0]
//  230     FTFL_FCCOB2 = addr.B[1];
        LDRB     R0,[SP, #+5]
        LDR.N    R1,??DataTable21_5  ;; 0x40020005
        STRB     R0,[R1, #+0]
//  231     FTFL_FCCOB3 = addr.B[0];
        LDR.N    R0,??DataTable21_6  ;; 0x40020004
        LDRB     R1,[SP, #+4]
        STRB     R1,[R0, #+0]
//  232     
//  233     
//  234     FTFL_FCCOB4 = Data.B[3];        // 设置写入数据
        LDRB     R0,[SP, #+3]
        LDR.N    R1,??DataTable21_7  ;; 0x4002000b
        STRB     R0,[R1, #+0]
//  235     FTFL_FCCOB5 = Data.B[2];
        LDRB     R0,[SP, #+2]
        LDR.N    R1,??DataTable21_8  ;; 0x4002000a
        STRB     R0,[R1, #+0]
//  236     FTFL_FCCOB6 = Data.B[1];
        LDRB     R0,[SP, #+1]
        LDR.N    R1,??DataTable21_9  ;; 0x40020009
        STRB     R0,[R1, #+0]
//  237     FTFL_FCCOB7 = Data.B[0];
        LDR.N    R0,??DataTable21_10  ;; 0x40020008
        LDRB     R1,[SP, #+0]
        STRB     R1,[R0, #+0]
//  238     
//  239     if(1 == flash_cmd_launch()) 	return 2;  //写入命令错误
        BL       flash_cmd_launch
        CMP      R0,#+1
        BNE.N    ??flash_write_2
        MOVS     R0,#+2
        B.N      ??flash_write_3
//  240 
//  241     return 0;  //成功执行
??flash_write_2:
        MOVS     R0,#+0
??flash_write_3:
        POP      {R1,R2,R4-R6,PC}  ;; return
//  242 }
//  243 
//  244 
//  245 /*************************************************************************
//  246 *  函数名称：flash_write_buf
//  247 *  功能说明：擦除指定flash扇区
//  248 *  参数说明：sectorNo：目标扇区号 （K60N512实际使用0~255）
//  249 *            offset:写入扇区内部偏移地址（0~2043）     
//  250 *            cnt：写入字节数目（0~2043）
//  251 *            buf：源数据缓冲区首地址
//  252 *  函数返回：函数执行状态：0=正常；非0=异常。
//  253 *  修改时间：2012-6-11    已测试
//  254 *  备    注：flash写入操作
//  255 *************************************************************************/

        SECTION `.textrw`:CODE:NOROOT(1)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE | SHF_EXECINSTR
        THUMB
//  256 __RAMFUN uint8 flash_write_buf(uint16 sectorNo,uint16 offset,uint16 cnt,uint8 buf[])
//  257 {
flash_write_buf:
        PUSH     {R3-R7,LR}
        MOVS     R7,R0
        MOVS     R6,R1
        MOVS     R4,R2
        MOVS     R5,R3
//  258     uint32 size;
//  259  
//  260     Dtype	addr;	
//  261 
//  262     ASSERT(offset%4 == 0);			//偏移量必须为4的倍数
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        MOVS     R0,#+4
        SDIV     R1,R6,R0
        MLS      R1,R1,R0,R6
        CMP      R1,#+0
        BEQ.N    ??flash_write_buf_0
        MOV      R1,#+262
        LDR.N    R0,??DataTable21_11
        BL       assert_failed
//  263                                                                     //此处提示警告，但是安全的……
//  264     ASSERT(offset <= 0x800);		//扇区大小为2K，即偏移量必须不大于 0x800
??flash_write_buf_0:
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        CMP      R6,#+2048
        BLE.N    ??flash_write_buf_1
        MOV      R1,#+264
        LDR.N    R0,??DataTable21_11
        BL       assert_failed
//  265                                                                     //此处提示警告，但是安全的……
//  266     ASSERT((offset + cnt*4) <= 0x800);        //只能在当前块操作
??flash_write_buf_1:
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        LSLS     R0,R4,#+2
        UXTAH    R0,R0,R6
        CMP      R0,#+2048
        BLE.N    ??flash_write_buf_2
        MOV      R1,#+266
        LDR.N    R0,??DataTable21_11
        BL       assert_failed
//  267 									//此处提示警告，但是安全的……
//  268 	
//  269     addr.DW = (uint32)((sectorNo<<11) + offset);		//计算地址
??flash_write_buf_2:
        UXTH     R7,R7            ;; ZeroExt  R7,R7,#+16,#+16
        LSLS     R0,R7,#+11
        UXTAH    R0,R0,R6
        STR      R0,[SP, #+0]
//  270 	
//  271     // 设置写入命令
//  272     FTFL_FCCOB0 = PGM4;
        LDR.N    R0,??DataTable21_3  ;; 0x40020007
        MOVS     R1,#+6
        STRB     R1,[R0, #+0]
//  273 
//  274     for(size=0; size<cnt; size+=4, addr.DW+=4, buf+=4)
        MOVS     R6,#+0
        B.N      ??flash_write_buf_3
??flash_write_buf_4:
        ADDS     R6,R6,#+4
        LDR      R0,[SP, #+0]
        ADDS     R0,R0,#+4
        STR      R0,[SP, #+0]
        ADDS     R5,R5,#+4
??flash_write_buf_3:
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R6,R4
        BCS.N    ??flash_write_buf_5
//  275     {
//  276         
//  277         FTFL_FCCOB1 = addr.B[2];						// 设置目标地址
        LDRB     R0,[SP, #+2]
        LDR.N    R1,??DataTable21_4  ;; 0x40020006
        STRB     R0,[R1, #+0]
//  278         FTFL_FCCOB2 = addr.B[1];
        LDRB     R0,[SP, #+1]
        LDR.N    R1,??DataTable21_5  ;; 0x40020005
        STRB     R0,[R1, #+0]
//  279         FTFL_FCCOB3 = addr.B[0];
        LDR.N    R0,??DataTable21_6  ;; 0x40020004
        LDRB     R1,[SP, #+0]
        STRB     R1,[R0, #+0]
//  280  
//  281         FTFL_FCCOB4 = buf[3];							// 拷贝数据
        LDRB     R0,[R5, #+3]
        LDR.N    R1,??DataTable21_7  ;; 0x4002000b
        STRB     R0,[R1, #+0]
//  282         FTFL_FCCOB5 = buf[2];
        LDRB     R0,[R5, #+2]
        LDR.N    R1,??DataTable21_8  ;; 0x4002000a
        STRB     R0,[R1, #+0]
//  283         FTFL_FCCOB6 = buf[1];
        LDRB     R0,[R5, #+1]
        LDR.N    R1,??DataTable21_9  ;; 0x40020009
        STRB     R0,[R1, #+0]
//  284         FTFL_FCCOB7 = buf[0];
        LDR.N    R0,??DataTable21_10  ;; 0x40020008
        LDRB     R1,[R5, #+0]
        STRB     R1,[R0, #+0]
//  285         
//  286         if(1 == flash_cmd_launch()) 
        BL       flash_cmd_launch
        CMP      R0,#+1
        BNE.N    ??flash_write_buf_4
//  287             return 2;  									//写入命令错误
        MOVS     R0,#+2
        B.N      ??flash_write_buf_6
//  288     }
//  289     
//  290     return 0;  //成功执行
??flash_write_buf_5:
        MOVS     R0,#+0
??flash_write_buf_6:
        POP      {R1,R4-R7,PC}    ;; return
//  291 }
//  292 
//  293 /*************************************************************************
//  294 *  函数名称：flash_write_buf32
//  295 *  功能说明：擦除指定flash扇区
//  296 *  参数说明：sectorNo：目标扇区号 （K60N512实际使用0~255）
//  297 *            offset:写入扇区内部偏移地址（0~2043）     
//  298 *            cnt：写入字节数目（0~2043）
//  299 *            buf：源数据缓冲区首地址
//  300 *  函数返回：函数执行状态：0=正常；非0=异常。
//  301 *  修改时间：2012-6-11    已测试
//  302 *  备    注：flash写入操作
//  303 *************************************************************************/

        SECTION `.textrw`:CODE:NOROOT(1)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE | SHF_EXECINSTR
        THUMB
//  304 __RAMFUN uint8 flash_write_buf32(uint16 sectorNo,uint16 offset,uint16 cnt,uint32 buf[])
//  305 {
flash_write_buf32:
        PUSH     {R4-R7,LR}
        SUB      SP,SP,#+12
        MOVS     R6,R0
        MOVS     R7,R1
        MOVS     R4,R2
        MOVS     R5,R3
//  306     uint32 size;
//  307     Dtype	Data;
//  308     Dtype	addr;	
//  309 
//  310     ASSERT(offset%4 == 0);			//偏移量必须为4的倍数
        UXTH     R7,R7            ;; ZeroExt  R7,R7,#+16,#+16
        MOVS     R0,#+4
        SDIV     R1,R7,R0
        MLS      R1,R1,R0,R7
        CMP      R1,#+0
        BEQ.N    ??flash_write_buf32_0
        MOV      R1,#+310
        LDR.N    R0,??DataTable21_11
        BL       assert_failed
//  311                                                                     //此处提示警告，但是安全的……
//  312     ASSERT(offset <= 0x800);		//扇区大小为2K，即偏移量必须不大于 0x800
??flash_write_buf32_0:
        UXTH     R7,R7            ;; ZeroExt  R7,R7,#+16,#+16
        CMP      R7,#+2048
        BLE.N    ??flash_write_buf32_1
        MOV      R1,#+312
        LDR.N    R0,??DataTable21_11
        BL       assert_failed
//  313                                                                     //此处提示警告，但是安全的……
//  314     ASSERT((offset + cnt) <= 0x800);        //只能在当前块操作
??flash_write_buf32_1:
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        UXTAH    R0,R4,R7
        CMP      R0,#+2048
        BLE.N    ??flash_write_buf32_2
        MOV      R1,#+314
        LDR.N    R0,??DataTable21_11
        BL       assert_failed
//  315                                                                     //此处提示警告，但是安全的……
//  316 	
//  317     addr.DW = (uint32)((sectorNo<<11) + offset);		//计算地址
??flash_write_buf32_2:
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        LSLS     R0,R6,#+11
        UXTAH    R0,R0,R7
        STR      R0,[SP, #+0]
//  318     // 设置写入命令
//  319     FTFL_FCCOB0 = PGM4;
        LDR.N    R0,??DataTable21_3  ;; 0x40020007
        MOVS     R1,#+6
        STRB     R1,[R0, #+0]
//  320 
//  321     for(size=0; size<cnt; size+=1, addr.DW+=4)
        MOVS     R6,#+0
        B.N      ??flash_write_buf32_3
??flash_write_buf32_4:
        ADDS     R6,R6,#+1
        LDR      R0,[SP, #+0]
        ADDS     R0,R0,#+4
        STR      R0,[SP, #+0]
??flash_write_buf32_3:
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R6,R4
        BCS.N    ??flash_write_buf32_5
//  322     {
//  323         Data.DW	= buf[size];	
        LDR      R0,[R5, R6, LSL #+2]
        STR      R0,[SP, #+4]
//  324         FTFL_FCCOB1 = addr.B[2];						// 设置目标地址
        LDRB     R0,[SP, #+2]
        LDR.N    R1,??DataTable21_4  ;; 0x40020006
        STRB     R0,[R1, #+0]
//  325         FTFL_FCCOB2 = addr.B[1];
        LDRB     R0,[SP, #+1]
        LDR.N    R1,??DataTable21_5  ;; 0x40020005
        STRB     R0,[R1, #+0]
//  326         FTFL_FCCOB3 = addr.B[0];
        LDR.N    R0,??DataTable21_6  ;; 0x40020004
        LDRB     R1,[SP, #+0]
        STRB     R1,[R0, #+0]
//  327 
//  328 	FTFL_FCCOB4 = Data.B[3];        // 设置写入数据
        LDRB     R0,[SP, #+7]
        LDR.N    R1,??DataTable21_7  ;; 0x4002000b
        STRB     R0,[R1, #+0]
//  329 	FTFL_FCCOB5 = Data.B[2];
        LDRB     R0,[SP, #+6]
        LDR.N    R1,??DataTable21_8  ;; 0x4002000a
        STRB     R0,[R1, #+0]
//  330 	FTFL_FCCOB6 = Data.B[1];
        LDRB     R0,[SP, #+5]
        LDR.N    R1,??DataTable21_9  ;; 0x40020009
        STRB     R0,[R1, #+0]
//  331 	FTFL_FCCOB7 = Data.B[0];
        LDR.N    R0,??DataTable21_10  ;; 0x40020008
        LDRB     R1,[SP, #+4]
        STRB     R1,[R0, #+0]
//  332         
//  333         
//  334         if(1 == flash_cmd_launch()) 
        BL       flash_cmd_launch
        CMP      R0,#+1
        BNE.N    ??flash_write_buf32_4
//  335             return 2;  									//写入命令错误
        MOVS     R0,#+2
        B.N      ??flash_write_buf32_6
//  336     }
//  337     
//  338     return 0;  //成功执行
??flash_write_buf32_5:
        MOVS     R0,#+0
??flash_write_buf32_6:
        POP      {R1-R7,PC}       ;; return
//  339 }

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE
        DATA
??DataTable21:
        DC32     0x40020000

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE
        DATA
??DataTable21_1:
        DC32     0x4001f004

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE
        DATA
??DataTable21_2:
        DC32     0x4001f008

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE
        DATA
??DataTable21_3:
        DC32     0x40020007

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE
        DATA
??DataTable21_4:
        DC32     0x40020006

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE
        DATA
??DataTable21_5:
        DC32     0x40020005

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE
        DATA
??DataTable21_6:
        DC32     0x40020004

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE
        DATA
??DataTable21_7:
        DC32     0x4002000b

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE
        DATA
??DataTable21_8:
        DC32     0x4002000a

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE
        DATA
??DataTable21_9:
        DC32     0x40020009

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE
        DATA
??DataTable21_10:
        DC32     0x40020008

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE
        DATA
??DataTable21_11:
        DC32     `?<Constant "C:\\\\Users\\\\Administrato...">`
//  340 
//  341 /***************************************************
//  342 ** 函数名称: void FlashDataInit() 
//  343 ** 功能描述: 初始化flash数据
//  344 **  入  口 ：
//  345 **  出  口 ：
//  346 **  说  明 : 如果flash中没有数据就把变量初始值写入，
//  347              否则保持原有值不变量
//  348              主要作用是单片机每一次下载程序后会把所
//  349              有flash擦除，所以要写一次初始值
//  350 ****************************************************/ 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  351 void FlashDataInit() 
//  352 {
FlashDataInit:
        PUSH     {R4,LR}
//  353      uint8      i = 0;
        MOVS     R4,#+0
//  354      uint32	data32;
//  355      
//  356      //将用户数据放回到flash
//  357      SetUserFlash(1); 
        MOVS     R0,#+1
        BL       SetUserFlash
//  358          
//  359      for(i=0;i<FLASH_BUFFER_MAX;i++) 
        MOVS     R0,#+0
        MOVS     R4,R0
        B.N      ??FlashDataInit_0
//  360      {
//  361         data32 = flash_read(SECTOR_NUM,i*4,uint32);	//读取4字节
??FlashDataInit_1:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LSLS     R0,R4,#+2
        ADDS     R0,R0,#+260096
        LDR      R0,[R0, #+0]
//  362         if(data32 != 0xFFFFFFFF)//有数据
        CMN      R0,#+1
        BEQ.N    ??FlashDataInit_2
//  363              FlashData[i] = data32;
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.N    R1,??DataTable3
        STR      R0,[R1, R4, LSL #+2]
//  364      }
??FlashDataInit_2:
        ADDS     R4,R4,#+1
??FlashDataInit_0:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+40
        BLT.N    ??FlashDataInit_1
//  365      flash_erase_sector(SECTOR_NUM);		//擦除扇区
        MOVS     R0,#+127
        BL       flash_erase_sector
//  366      flash_write_buf32(SECTOR_NUM,0,FLASH_BUFFER_MAX,FlashData);
        LDR.N    R3,??DataTable3
        MOVS     R2,#+40
        MOVS     R1,#+0
        MOVS     R0,#+127
        BL       flash_write_buf32
//  367 }
        POP      {R4,PC}          ;; return
//  368 /***************************************************
//  369 ** 函数名称: void ReadFlashData() 
//  370 ** 功能描述: 读取flash中数据并写回到用户变量中
//  371 **  入  口 ：
//  372 **  出  口 ：
//  373 **  说  明 : 
//  374 ****************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  375 void ReadFlashData() 
//  376 {
ReadFlashData:
        PUSH     {R7,LR}
//  377      uint8      i = 0;
        MOVS     R0,#+0
//  378      uint32	data32;
//  379      
//  380      for(i=0;i<FLASH_BUFFER_MAX;i++) 
        MOVS     R1,#+0
        MOVS     R0,R1
        B.N      ??ReadFlashData_0
//  381      {
//  382         data32 = flash_read(SECTOR_NUM,i*4,uint32);	//读取4字节         
??ReadFlashData_1:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LSLS     R1,R0,#+2
        ADDS     R1,R1,#+260096
        LDR      R1,[R1, #+0]
//  383         FlashData[i] = data32;
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R2,??DataTable3
        STR      R1,[R2, R0, LSL #+2]
//  384      }
        ADDS     R0,R0,#+1
??ReadFlashData_0:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+40
        BLT.N    ??ReadFlashData_1
//  385      //将flash缓冲区中数据放到到用户变量中
//  386      SetUserFlash(0) ;
        MOVS     R0,#+0
        BL       SetUserFlash
//  387 }
        POP      {R0,PC}          ;; return
//  388 
//  389 /***************************************************
//  390 ** 函数名称: void WriteFlashData() 
//  391 ** 功能描述: 把用户变量中数据写回到flash中
//  392 **  入  口 ：
//  393 **  出  口 ：
//  394 **  说  明 : 
//  395 ****************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  396 void WriteFlashData() 
//  397 {
WriteFlashData:
        PUSH     {R7,LR}
//  398      //将用户数据放回到flash
//  399      SetUserFlash(1); 
        MOVS     R0,#+1
        BL       SetUserFlash
//  400      flash_erase_sector(SECTOR_NUM);		//擦除扇区
        MOVS     R0,#+127
        BL       flash_erase_sector
//  401      flash_write_buf32(SECTOR_NUM,0,FLASH_BUFFER_MAX,FlashData);
        LDR.N    R3,??DataTable3
        MOVS     R2,#+40
        MOVS     R1,#+0
        MOVS     R0,#+127
        BL       flash_write_buf32
//  402 }
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3:
        DC32     FlashData

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_1:
        DC32     time

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_2:
        DC32     speed_duty

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_3:
        DC32     steer_dp

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_4:
        DC32     steer_dd

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_5:
        DC32     line_first

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_6:
        DC32     line_second

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_7:
        DC32     line_third

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_8:
        DC32     line_fourth

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_9:
        DC32     k_1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_10:
        DC32     k_2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_11:
        DC32     k_3

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_12:
        DC32     k_4

        SECTION `.iar_vfe_header`:DATA:REORDER:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "C:\\\\Users\\\\Administrato...">`:
        DATA
        DC8 43H, 3AH, 5CH, 55H, 73H, 65H, 72H, 73H
        DC8 5CH, 41H, 64H, 6DH, 69H, 6EH, 69H, 73H
        DC8 74H, 72H, 61H, 74H, 6FH, 72H, 5CH, 44H
        DC8 65H, 73H, 6BH, 74H, 6FH, 70H, 5CH, 4DH
        DC8 50H, 55H, 36H, 30H, 35H, 30H, 38H, 2EH
        DC8 31H, 32H, 5CH, 73H, 72H, 63H, 5CH, 64H
        DC8 72H, 69H, 76H, 65H, 72H, 73H, 5CH, 46H
        DC8 6CH, 61H, 73H, 68H, 5CH, 66H, 6CH, 61H
        DC8 73H, 68H, 2EH, 63H, 0
        DC8 0, 0, 0

        END
//  403 
//  404 //===========================example=================================================
//  405 /*
//  406 #define	SECTOR_NUM	127			//尽量用最后面的扇区，确保安全
//  407 void  main(void)
//  408 {
//  409 	uint32	data32;
//  410 	uint16	data16;
//  411 	uint8	data8;
//  412 	
//  413 	flash_init();										//初始化flash
//  414 	
//  415 	flash_erase_sector(SECTOR_NUM);						//擦除扇区
//  416 														//写入flash数据前，需要先擦除对应的扇区(不然数据会乱)      
//  417         if( 0==flash_write(SECTOR_NUM,4,0x90ABCDEF) )		//写入数据到扇区，偏移地址为0，必须一次写入4字节													//if是用来检测是否写入成功，写入成功了就读取
//  418 	{
//  419 		data32 = 	flash_read(SECTOR_NUM,4,uint32);	//读取4字节
//  420 		uart0Printf("一次读取32位的数据为：0x%08X\n",data32);
//  421 		
//  422 		data16 =	flash_read(SECTOR_NUM,4,uint16);	//读取2字节
//  423 		uart0Printf("一次读取16位的数据为：0x%04X\n",data16);
//  424 		
//  425 		data8  =	flash_read(SECTOR_NUM,4,uint8);		//读取1字节
//  426 		uart0Printf("一次读取8位的数据为：0x%02X\n",data8);
//  427                 
//  428                 data8  =	flash_read(SECTOR_NUM,5,uint8);		//读取1字节
//  429 		uart0Printf("一次读取8位的数据为：0x%02X\n",data8);
//  430                 
//  431                 data8  =	flash_read(SECTOR_NUM,6,uint8);		//读取1字节
//  432 		uart0Printf("一次读取8位的数据为：0x%02X\n",data8);
//  433                 
//  434                 data8  =	flash_read(SECTOR_NUM,7,uint8);		//读取1字节
//  435 		uart0Printf("一次读取8位的数据为：0x%02X\n",data8);
//  436 	}
//  437 	
//  438     while(1);
//  439 }
//  440 */
//  441 //==========================================================================
// 
// 160 bytes in section .bss
//  72 bytes in section .rodata
// 400 bytes in section .text
// 750 bytes in section .textrw
// 
// 1 150 bytes of CODE  memory
//    72 bytes of CONST memory
//   160 bytes of DATA  memory
//
//Errors: none
//Warnings: 16
