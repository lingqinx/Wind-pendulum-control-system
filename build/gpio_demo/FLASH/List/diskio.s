///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.60.1.5097/W32 for ARM     15/Aug/2015  19:53:01 /
// Copyright 1999-2013 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  C:\Users\Administrator\Desktop\MPU60508.12\src\drivers\ /
//                    diskio\diskio.c                                         /
//    Command line =  C:\Users\Administrator\Desktop\MPU60508.12\src\drivers\ /
//                    diskio\diskio.c -lCN C:\Users\Administrator\Desktop\MPU /
//                    60508.12\build\gpio_demo\FLASH\List\ -lB                /
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
//                    emo\FLASH\List\diskio.s                                 /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN PLL_Init
        EXTERN SDHC_ioctl
        EXTERN SDHC_receive_block
        EXTERN SDHC_send_block
        EXTERN count
        EXTERN gpio_set

        PUBLIC GetCardStat
        PUBLIC Pic_save
        PUBLIC Pic_save_end
        PUBLIC Pic_save_init
        PUBLIC SDHC_Card
        PUBLIC SD_init
        PUBLIC SetCardStat
        PUBLIC disk_initialize
        PUBLIC disk_ioctl
        PUBLIC disk_read
        PUBLIC disk_status
        PUBLIC disk_timerproc
        PUBLIC disk_write

// C:\Users\Administrator\Desktop\MPU60508.12\src\drivers\diskio\diskio.c
//    1 //=========================================================================
//    2 // 文件名称：diskio.h
//    3 // 功能概要：diskio构件源文件
//    4 // 版权所有: 苏州大学飞思卡尔嵌入式中心(sumcu.suda.edu.cn)
//    5 // 版本更新:  2011-12-14     V1.0        diskio构件初始版本
//    6 //           2011-12-20     V1.1        diskio构件优化修改
//    7 //=========================================================================
//    8 #include "K60_datatype.h"
//    9 #include "common.h"
//   10 #include "include.h"

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   11 SDCARD_STRUCT SDHC_Card;
SDHC_Card:
        DS8 24
//   12 
//   13 //SD卡状态属性访问器

        SECTION `.data`:DATA:REORDER:NOROOT(0)
//   14 static volatile unsigned char Stat   = STA_NOINIT; //保存SD卡状态
Stat:
        DATA
        DC8 1

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   15 u8 GetCardStat(void) { return Stat; }
GetCardStat:
        LDR.W    R0,??DataTable11
        LDRB     R0,[R0, #+0]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   16 void SetCardStat(u8 state) { Stat = state; }
SetCardStat:
        LDR.W    R1,??DataTable11
        STRB     R0,[R1, #+0]
        BX       LR               ;; return
//   17 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   18 static volatile unsigned int  Timer = 0; //读写时间
Timer:
        DS8 4
//   19 
//   20 //=========================================================================
//   21 //函数名称：disk_initialize
//   22 //功能概要：初始化数据盘（只支持数据盘0） 
//   23 //参数说明：drv:设备号
//   24 //函数返回：RES_OK：成功；其它：失败
//   25 //=========================================================================

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   26 DRESULT disk_initialize (unsigned char drv)
//   27 {
disk_initialize:
        PUSH     {R4,LR}
        SUB      SP,SP,#+40
//   28     u32  param, c_size, c_size_mult, read_bl_len;
//   29     ESDHC_COMMAND_STRUCT  command;
//   30     SDCARD_STRUCT_PTR     sdcard_ptr = (SDCARD_STRUCT_PTR)&SDHC_Card;
        LDR.W    R4,??DataTable11_1
//   31 
//   32     //检查参数
//   33     if (drv || (NULL == sdcard_ptr)) return RES_PARERR; //仅仅支持设备0
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BNE.N    ??disk_initialize_0
        CMP      R4,#+0
        BNE.N    ??disk_initialize_1
??disk_initialize_0:
        MOVS     R0,#+4
        B.N      ??disk_initialize_2
//   34     //检查卡插入状态
//   35     if (Stat & STA_NODISK) return RES_NOTRDY; //SD卡未插入
??disk_initialize_1:
        LDR.W    R0,??DataTable11
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+30
        BPL.N    ??disk_initialize_3
        MOVS     R0,#+3
        B.N      ??disk_initialize_2
//   36 
//   37     //初始化SD卡设备登记信息
//   38     sdcard_ptr->BITS = ESDHC_BUS_WIDTH_4BIT;//设置位宽为4位
??disk_initialize_3:
        MOVS     R0,#+1
        STR      R0,[R4, #+4]
//   39     sdcard_ptr->SD_TIMEOUT = 0;
        MOVS     R0,#+0
        STR      R0,[R4, #+8]
//   40     sdcard_ptr->NUM_BLOCKS = 0;
        MOVS     R0,#+0
        STR      R0,[R4, #+12]
//   41     sdcard_ptr->ADDRESS    = 0;
        MOVS     R0,#+0
        STR      R0,[R4, #+20]
//   42     sdcard_ptr->SDHC       = FALSE;
        MOVS     R0,#+0
        STRB     R0,[R4, #+16]
//   43     sdcard_ptr->VERSION2   = FALSE;
        MOVS     R0,#+0
        STRB     R0,[R4, #+17]
//   44 
//   45     //检测并初始化SD卡
//   46     if (ESDHC_OK != SDHC_ioctl (IO_IOCTL_ESDHC_INIT, NULL))
        MOVS     R1,#+0
        MOVS     R0,#+1
        BL       SDHC_ioctl
        CMP      R0,#+0
        BEQ.N    ??disk_initialize_4
//   47         return RES_ERROR;
        MOVS     R0,#+1
        B.N      ??disk_initialize_2
//   48 
//   49     //获取SD卡类型
//   50     param = 0;
??disk_initialize_4:
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
//   51     if (ESDHC_OK != SDHC_ioctl (IO_IOCTL_ESDHC_GET_CARD, &param))
        ADD      R1,SP,#+0
        MOVS     R0,#+3
        BL       SDHC_ioctl
        CMP      R0,#+0
        BEQ.N    ??disk_initialize_5
//   52         return RES_ERROR;
        MOVS     R0,#+1
        B.N      ??disk_initialize_2
//   53     if (    (ESDHC_CARD_SD == param) 
//   54          || (ESDHC_CARD_SDHC == param) 
//   55          || (ESDHC_CARD_SDCOMBO == param) 
//   56          || (ESDHC_CARD_SDHCCOMBO == param))
??disk_initialize_5:
        LDR      R0,[SP, #+0]
        CMP      R0,#+2
        BEQ.N    ??disk_initialize_6
        LDR      R0,[SP, #+0]
        CMP      R0,#+3
        BEQ.N    ??disk_initialize_6
        LDR      R0,[SP, #+0]
        CMP      R0,#+5
        BEQ.N    ??disk_initialize_6
        LDR      R0,[SP, #+0]
        CMP      R0,#+6
        BNE.N    ??disk_initialize_7
//   57     {
//   58         if ((ESDHC_CARD_SDHC == param) || (ESDHC_CARD_SDHCCOMBO == param))
??disk_initialize_6:
        LDR      R0,[SP, #+0]
        CMP      R0,#+3
        BEQ.N    ??disk_initialize_8
        LDR      R0,[SP, #+0]
        CMP      R0,#+6
        BNE.N    ??disk_initialize_9
//   59         {
//   60             sdcard_ptr->SDHC = TRUE;
??disk_initialize_8:
        MOVS     R0,#+1
        STRB     R0,[R4, #+16]
//   61         }
//   62     }
//   63     else
//   64         return RES_PARERR;
//   65 
//   66     //SD卡标识
//   67     command.COMMAND  = ESDHC_CMD2;
??disk_initialize_9:
        MOVS     R0,#+2
        STRB     R0,[SP, #+4]
//   68     command.TYPE     = ESDHC_TYPE_NORMAL;
        MOVS     R0,#+0
        STRB     R0,[SP, #+5]
//   69     command.ARGUMENT = 0;
        MOVS     R0,#+0
        STR      R0,[SP, #+8]
//   70     command.READ     = FALSE;
        MOVS     R0,#+0
        STRB     R0,[SP, #+12]
//   71     command.BLOCKS   = 0;
        MOVS     R0,#+0
        STR      R0,[SP, #+16]
//   72     if (ESDHC_OK != SDHC_ioctl (IO_IOCTL_ESDHC_SEND_COMMAND, &command))
        ADD      R1,SP,#+4
        MOVS     R0,#+2
        BL       SDHC_ioctl
        CMP      R0,#+0
        BNE.N    ??disk_initialize_10
//   73         return RES_ERROR;
//   74 
//   75     //获取SD卡地址
//   76     command.COMMAND  = ESDHC_CMD3;
        MOVS     R0,#+3
        STRB     R0,[SP, #+4]
//   77     command.TYPE     = ESDHC_TYPE_NORMAL;
        MOVS     R0,#+0
        STRB     R0,[SP, #+5]
//   78     command.ARGUMENT = 0;
        MOVS     R0,#+0
        STR      R0,[SP, #+8]
//   79     command.READ     = FALSE;
        MOVS     R0,#+0
        STRB     R0,[SP, #+12]
//   80     command.BLOCKS   = 0;
        MOVS     R0,#+0
        STR      R0,[SP, #+16]
//   81     if (ESDHC_OK != SDHC_ioctl (IO_IOCTL_ESDHC_SEND_COMMAND, &command))
        ADD      R1,SP,#+4
        MOVS     R0,#+2
        BL       SDHC_ioctl
        CMP      R0,#+0
        BEQ.N    ??disk_initialize_11
//   82         return RES_ERROR;
        MOVS     R0,#+1
        B.N      ??disk_initialize_2
??disk_initialize_7:
        MOVS     R0,#+4
        B.N      ??disk_initialize_2
??disk_initialize_10:
        MOVS     R0,#+1
        B.N      ??disk_initialize_2
//   83     sdcard_ptr->ADDRESS = command.RESPONSE[0] & 0xFFFF0000;
??disk_initialize_11:
        LDR      R0,[SP, #+20]
        LSRS     R0,R0,#+16
        LSLS     R0,R0,#+16
        STR      R0,[R4, #+20]
//   84     
//   85     //获取SD卡读写属性参数
//   86     command.COMMAND  = ESDHC_CMD9;
        MOVS     R0,#+9
        STRB     R0,[SP, #+4]
//   87     command.TYPE     = ESDHC_TYPE_NORMAL;
        MOVS     R0,#+0
        STRB     R0,[SP, #+5]
//   88     command.ARGUMENT = sdcard_ptr->ADDRESS;
        LDR      R0,[R4, #+20]
        STR      R0,[SP, #+8]
//   89     command.READ     = FALSE;
        MOVS     R0,#+0
        STRB     R0,[SP, #+12]
//   90     command.BLOCKS   = 0;
        MOVS     R0,#+0
        STR      R0,[SP, #+16]
//   91     if (ESDHC_OK != SDHC_ioctl (IO_IOCTL_ESDHC_SEND_COMMAND, &command))
        ADD      R1,SP,#+4
        MOVS     R0,#+2
        BL       SDHC_ioctl
        CMP      R0,#+0
        BEQ.N    ??disk_initialize_12
//   92         return RES_ERROR;
        MOVS     R0,#+1
        B.N      ??disk_initialize_2
//   93     if (0 == (command.RESPONSE[3] & 0x00C00000))
??disk_initialize_12:
        LDR      R0,[SP, #+32]
        TST      R0,#0xC00000
        BNE.N    ??disk_initialize_13
//   94     {
//   95         read_bl_len = (command.RESPONSE[2] >> 8) & 0x0F;
        LDR      R0,[SP, #+28]
        UBFX     R2,R0,#+8,#+4
//   96         c_size = command.RESPONSE[2] & 0x03;
        LDRB     R0,[SP, #+28]
        ANDS     R0,R0,#0x3
//   97         c_size = (c_size << 10) | (command.RESPONSE[1] >> 22);
        LDR      R1,[SP, #+24]
        LSRS     R1,R1,#+22
        ORRS     R0,R1,R0, LSL #+10
//   98         c_size_mult = (command.RESPONSE[1] >> 7) & 0x07;
        LDR      R1,[SP, #+24]
        UBFX     R1,R1,#+7,#+3
//   99         sdcard_ptr->NUM_BLOCKS = (c_size+1)*(1<<(c_size_mult+2))*(1<<(read_bl_len-9));
        ADDS     R0,R0,#+1
        MOVS     R3,#+1
        ADDS     R1,R1,#+2
        LSLS     R1,R3,R1
        MULS     R0,R1,R0
        MOVS     R1,#+1
        SUBS     R2,R2,#+9
        LSLS     R1,R1,R2
        MULS     R0,R1,R0
        STR      R0,[R4, #+12]
        B.N      ??disk_initialize_14
//  100     }
//  101     else
//  102     {
//  103         sdcard_ptr->VERSION2 = TRUE;
??disk_initialize_13:
        MOVS     R0,#+1
        STRB     R0,[R4, #+17]
//  104         c_size = (command.RESPONSE[1] >> 8) & 0x003FFFFF;
        LDR      R0,[SP, #+24]
        UBFX     R0,R0,#+8,#+22
//  105         sdcard_ptr->NUM_BLOCKS = (c_size + 1) << 10;
        ADDS     R0,R0,#+1
        LSLS     R0,R0,#+10
        STR      R0,[R4, #+12]
//  106     }
//  107 
//  108     //选择SD卡
//  109     command.COMMAND  = ESDHC_CMD7;
??disk_initialize_14:
        MOVS     R0,#+7
        STRB     R0,[SP, #+4]
//  110     command.TYPE     = ESDHC_TYPE_NORMAL;
        MOVS     R0,#+0
        STRB     R0,[SP, #+5]
//  111     command.ARGUMENT = sdcard_ptr->ADDRESS;
        LDR      R0,[R4, #+20]
        STR      R0,[SP, #+8]
//  112     command.READ     = FALSE;
        MOVS     R0,#+0
        STRB     R0,[SP, #+12]
//  113     command.BLOCKS   = 0;
        MOVS     R0,#+0
        STR      R0,[SP, #+16]
//  114     if (ESDHC_OK != SDHC_ioctl (IO_IOCTL_ESDHC_SEND_COMMAND, &command))
        ADD      R1,SP,#+4
        MOVS     R0,#+2
        BL       SDHC_ioctl
        CMP      R0,#+0
        BEQ.N    ??disk_initialize_15
//  115         return RES_ERROR;
        MOVS     R0,#+1
        B.N      ??disk_initialize_2
//  116 
//  117     //设置块大小
//  118     command.COMMAND  = ESDHC_CMD16;
??disk_initialize_15:
        MOVS     R0,#+16
        STRB     R0,[SP, #+4]
//  119     command.TYPE     = ESDHC_TYPE_NORMAL;
        MOVS     R0,#+0
        STRB     R0,[SP, #+5]
//  120     command.ARGUMENT = IO_SDCARD_BLOCK_SIZE;
        MOV      R0,#+512
        STR      R0,[SP, #+8]
//  121     command.READ     = FALSE;
        MOVS     R0,#+0
        STRB     R0,[SP, #+12]
//  122     command.BLOCKS   = 0;
        MOVS     R0,#+0
        STR      R0,[SP, #+16]
//  123     if (ESDHC_OK != SDHC_ioctl (IO_IOCTL_ESDHC_SEND_COMMAND, &command))
        ADD      R1,SP,#+4
        MOVS     R0,#+2
        BL       SDHC_ioctl
        CMP      R0,#+0
        BEQ.N    ??disk_initialize_16
//  124         return RES_ERROR;
        MOVS     R0,#+1
        B.N      ??disk_initialize_2
//  125 
//  126     if (ESDHC_BUS_WIDTH_4BIT == sdcard_ptr->BITS)
??disk_initialize_16:
        LDR      R0,[R4, #+4]
        CMP      R0,#+1
        BNE.N    ??disk_initialize_17
//  127     {
//  128         //发送特殊的命令CMD55
//  129         command.COMMAND  = ESDHC_CMD55;
        MOVS     R0,#+55
        STRB     R0,[SP, #+4]
//  130         command.TYPE     = ESDHC_TYPE_NORMAL;
        MOVS     R0,#+0
        STRB     R0,[SP, #+5]
//  131         command.ARGUMENT = sdcard_ptr->ADDRESS;
        LDR      R0,[R4, #+20]
        STR      R0,[SP, #+8]
//  132         command.READ     = FALSE;
        MOVS     R0,#+0
        STRB     R0,[SP, #+12]
//  133         command.BLOCKS  = 0;
        MOVS     R0,#+0
        STR      R0,[SP, #+16]
//  134         if (ESDHC_OK != SDHC_ioctl (IO_IOCTL_ESDHC_SEND_COMMAND, &command))
        ADD      R1,SP,#+4
        MOVS     R0,#+2
        BL       SDHC_ioctl
        CMP      R0,#+0
        BEQ.N    ??disk_initialize_18
//  135             return RES_ERROR;
        MOVS     R0,#+1
        B.N      ??disk_initialize_2
//  136 
//  137         //设置数据位宽为4位
//  138         command.COMMAND = ESDHC_ACMD6;
??disk_initialize_18:
        MOVS     R0,#+70
        STRB     R0,[SP, #+4]
//  139         command.TYPE = ESDHC_TYPE_NORMAL;
        MOVS     R0,#+0
        STRB     R0,[SP, #+5]
//  140         command.ARGUMENT = 2;
        MOVS     R0,#+2
        STR      R0,[SP, #+8]
//  141         command.READ = FALSE;
        MOVS     R0,#+0
        STRB     R0,[SP, #+12]
//  142         command.BLOCKS = 0;
        MOVS     R0,#+0
        STR      R0,[SP, #+16]
//  143         if (ESDHC_OK != SDHC_ioctl (IO_IOCTL_ESDHC_SEND_COMMAND, &command))
        ADD      R1,SP,#+4
        MOVS     R0,#+2
        BL       SDHC_ioctl
        CMP      R0,#+0
        BEQ.N    ??disk_initialize_19
//  144             return RES_ERROR;
        MOVS     R0,#+1
        B.N      ??disk_initialize_2
//  145 
//  146         param = ESDHC_BUS_WIDTH_4BIT;
??disk_initialize_19:
        MOVS     R0,#+1
        STR      R0,[SP, #+0]
//  147         if (ESDHC_OK != SDHC_ioctl (IO_IOCTL_ESDHC_SET_BUS_WIDTH, &param))
        ADD      R1,SP,#+0
        MOVS     R0,#+7
        BL       SDHC_ioctl
        CMP      R0,#+0
        BEQ.N    ??disk_initialize_17
//  148             return RES_ERROR;
        MOVS     R0,#+1
        B.N      ??disk_initialize_2
//  149     }
//  150 
//  151     Stat &= ~STA_NOINIT;//清除数据盘状态
??disk_initialize_17:
        LDR.W    R0,??DataTable11
        LDRB     R0,[R0, #+0]
        ANDS     R0,R0,#0xFE
        LDR.W    R1,??DataTable11
        STRB     R0,[R1, #+0]
//  152     
//  153     return RES_OK;
        MOVS     R0,#+0
??disk_initialize_2:
        ADD      SP,SP,#+40
        POP      {R4,PC}          ;; return
//  154 }
//  155 
//  156 //=========================================================================
//  157 //函数名称：disk_read                                                        
//  158 //功能概要：读数据盘扇区                                                
//  159 //参数说明：drv:设备号
//  160 //         buff:用于存储读取的数据的缓存区
//  161 //         sector:起始扇区号
//  162 //         count:扇区数
//  163 //函数返回：RES_OK：成功，其它：失败                                                              
//  164 //=========================================================================

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  165 DRESULT disk_read(u8 drv,u8 *buff,u32 sector, u32 count)
//  166 {
disk_read:
        PUSH     {R4,R5,LR}
        SUB      SP,SP,#+36
        MOVS     R4,R1
        MOVS     R5,R3
//  167     ESDHC_COMMAND_STRUCT command;
//  168     SDCARD_STRUCT_PTR    sdcard_ptr = (SDCARD_STRUCT_PTR)&SDHC_Card;
        LDR.W    R1,??DataTable11_1
//  169         
//  170     //检查参数
//  171     if (drv || !count) return RES_PARERR;
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BNE.N    ??disk_read_0
        CMP      R5,#+0
        BNE.N    ??disk_read_1
??disk_read_0:
        MOVS     R0,#+4
        B.N      ??disk_read_2
//  172     if (Stat & STA_NOINIT) return RES_NOTRDY;
??disk_read_1:
        LDR.W    R0,??DataTable11
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+31
        BPL.N    ??disk_read_3
        MOVS     R0,#+3
        B.N      ??disk_read_2
//  173     if ((NULL == buff)) return RES_ERROR;
??disk_read_3:
        CMP      R4,#+0
        BNE.N    ??disk_read_4
        MOVS     R0,#+1
        B.N      ??disk_read_2
//  174     
//  175     if (!sdcard_ptr->SDHC)
??disk_read_4:
        LDRB     R0,[R1, #+16]
        CMP      R0,#+0
        BNE.N    ??disk_read_5
//  176         //sector *= 512;//扇区号转化为起始地址
//  177         sector = sector << IO_SDCARD_BLOCK_SIZE_POWER;
        LSLS     R2,R2,#+9
//  178 
//  179     if (count == 1)//读单个扇区
??disk_read_5:
        CMP      R5,#+1
        BNE.N    ??disk_read_6
//  180     {
//  181         command.COMMAND  = ESDHC_CMD17;
        MOVS     R0,#+17
        STRB     R0,[SP, #+0]
//  182         command.TYPE     = ESDHC_TYPE_NORMAL;
        MOVS     R0,#+0
        STRB     R0,[SP, #+1]
//  183         command.ARGUMENT = sector;
        STR      R2,[SP, #+4]
//  184         command.READ     = TRUE;
        MOVS     R0,#+1
        STRB     R0,[SP, #+8]
//  185         command.BLOCKS   = count;	
        STR      R5,[SP, #+12]
//  186 
//  187         if (ESDHC_OK == SDHC_ioctl (IO_IOCTL_ESDHC_SEND_COMMAND, &command))
        ADD      R1,SP,#+0
        MOVS     R0,#+2
        BL       SDHC_ioctl
        CMP      R0,#+0
        BNE.N    ??disk_read_7
//  188         {
//  189             //if (hw_sdhc_receive_block(buff, 512))
//  190             if (SDHC_receive_block(buff, IO_SDCARD_BLOCK_SIZE))
        MOV      R1,#+512
        MOVS     R0,R4
        BL       SDHC_receive_block
        CMP      R0,#+0
        BEQ.N    ??disk_read_7
//  191                 count = 0;
        MOVS     R5,#+0
        B.N      ??disk_read_7
//  192         }
//  193     }
//  194     else //读多个扇区
//  195     {     
//  196         command.COMMAND  = ESDHC_CMD18;
??disk_read_6:
        MOVS     R0,#+18
        STRB     R0,[SP, #+0]
//  197         command.TYPE     = ESDHC_TYPE_NORMAL;
        MOVS     R0,#+0
        STRB     R0,[SP, #+1]
//  198         command.ARGUMENT = sector;
        STR      R2,[SP, #+4]
//  199         command.READ     = TRUE;
        MOVS     R0,#+1
        STRB     R0,[SP, #+8]
//  200         command.BLOCKS   = count;   
        STR      R5,[SP, #+12]
//  201 
//  202         if (ESDHC_OK == SDHC_ioctl (IO_IOCTL_ESDHC_SEND_COMMAND, &command))
        ADD      R1,SP,#+0
        MOVS     R0,#+2
        BL       SDHC_ioctl
        CMP      R0,#+0
        BNE.N    ??disk_read_7
//  203         {
//  204             if (SDHC_receive_block(buff, IO_SDCARD_BLOCK_SIZE*count))
        MOV      R0,#+512
        MUL      R1,R0,R5
        MOVS     R0,R4
        BL       SDHC_receive_block
        CMP      R0,#+0
        BEQ.N    ??disk_read_7
//  205                 count = 0;
        MOVS     R5,#+0
//  206         }
//  207     }
//  208 
//  209     return count ? RES_ERROR : RES_OK;
??disk_read_7:
        CMP      R5,#+0
        BEQ.N    ??disk_read_8
        MOVS     R0,#+1
        B.N      ??disk_read_9
??disk_read_8:
        MOVS     R0,#+0
??disk_read_9:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
??disk_read_2:
        ADD      SP,SP,#+36
        POP      {R4,R5,PC}       ;; return
//  210 }
//  211 
//  212 //=========================================================================
//  213 //函数名称：disk_write                                                        
//  214 //功能概要：写数据盘扇区                                                
//  215 //参数说明：drv:设备号
//  216 //         buff:待写入SD卡的数据的缓存区首地址
//  217 //         sector:起始扇区号
//  218 //         count:扇区数
//  219 //函数返回：RES_OK：成功，其它：失败                                                              
//  220 //=========================================================================
//  221 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//  222 static SDCARD_STRUCT_PTR    sdcard_ptr;
sdcard_ptr:
        DS8 4
//  223 
//  224 
//  225 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  226 DRESULT Pic_save_init(u8 drv,const u8 *buff,u32 sector,u32  count)
//  227 {
Pic_save_init:
        PUSH     {R4-R6,LR}
        SUB      SP,SP,#+32
        MOVS     R5,R2
        MOVS     R4,R3
//  228   ESDHC_COMMAND_STRUCT command;
//  229   sdcard_ptr = (SDCARD_STRUCT_PTR)&SDHC_Card;
        LDR.W    R2,??DataTable11_2
        LDR.W    R3,??DataTable11_1
        STR      R3,[R2, #+0]
//  230   //检查参数
//  231   if (drv || !count) return RES_PARERR;
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BNE.N    ??Pic_save_init_0
        CMP      R4,#+0
        BNE.N    ??Pic_save_init_1
??Pic_save_init_0:
        MOVS     R0,#+4
        B.N      ??Pic_save_init_2
//  232   if (Stat & STA_NOINIT) return RES_NOTRDY;
??Pic_save_init_1:
        LDR.W    R0,??DataTable11
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+31
        BPL.N    ??Pic_save_init_3
        MOVS     R0,#+3
        B.N      ??Pic_save_init_2
//  233   if (Stat & STA_PROTECT) return RES_WRPRT;
??Pic_save_init_3:
        LDR.W    R0,??DataTable11
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+29
        BPL.N    ??Pic_save_init_4
        MOVS     R0,#+2
        B.N      ??Pic_save_init_2
//  234   
//  235   
//  236   //检测缓存区是否为空
//  237   if ((NULL == buff)) return RES_ERROR;
??Pic_save_init_4:
        CMP      R1,#+0
        BNE.N    ??Pic_save_init_5
        MOVS     R0,#+1
        B.N      ??Pic_save_init_2
//  238   if (!sdcard_ptr->SDHC)
??Pic_save_init_5:
        LDR.W    R0,??DataTable11_2
        LDR      R0,[R0, #+0]
        LDRB     R0,[R0, #+16]
        CMP      R0,#+0
        BNE.N    ??Pic_save_init_6
//  239     //sector *= 512;	//扇区号转化为起始地址
//  240     sector = sector << IO_SDCARD_BLOCK_SIZE_POWER; 
        LSLS     R5,R5,#+9
//  241   
//  242   
//  243   command.COMMAND  = ESDHC_ACMD23;    //发送ACMD23命令，擦除扇区
??Pic_save_init_6:
        MOVS     R0,#+87
        STRB     R0,[SP, #+0]
//  244   command.TYPE     = ESDHC_TYPE_NORMAL;
        MOVS     R0,#+0
        STRB     R0,[SP, #+1]
//  245   command.ARGUMENT = sector;
        STR      R5,[SP, #+4]
//  246   command.READ     = FALSE;
        MOVS     R0,#+0
        STRB     R0,[SP, #+8]
//  247   command.BLOCKS   = count;
        STR      R4,[SP, #+12]
//  248   if (ESDHC_OK == SDHC_ioctl (IO_IOCTL_ESDHC_SEND_COMMAND, &command))
        ADD      R1,SP,#+0
        MOVS     R0,#+2
        BL       SDHC_ioctl
        MOVS     R6,R0
//  249   {
//  250           
//  251 #if PRINT
//  252           uartPrintf("多扇区写入时扇区擦除成功\n");
//  253 
//  254 #endif
//  255   }
//  256   
//  257   
//  258   
//  259   command.COMMAND  = ESDHC_CMD25;//发送CMD25命令，开始多块写扇区
        MOVS     R0,#+25
        STRB     R0,[SP, #+0]
//  260   command.TYPE     = ESDHC_TYPE_NORMAL;
        MOVS     R0,#+0
        STRB     R0,[SP, #+1]
//  261   command.ARGUMENT = sector;
        STR      R5,[SP, #+4]
//  262   command.READ     = FALSE;
        MOVS     R0,#+0
        STRB     R0,[SP, #+8]
//  263   command.BLOCKS   = count;
        STR      R4,[SP, #+12]
//  264   if (ESDHC_OK == SDHC_ioctl (IO_IOCTL_ESDHC_SEND_COMMAND, &command))
        ADD      R1,SP,#+0
        MOVS     R0,#+2
        BL       SDHC_ioctl
        CMP      R0,#+0
        BNE.N    ??Pic_save_init_7
//  265   {
//  266     
//  267     return  RES_OK;
        MOVS     R0,#+0
        B.N      ??Pic_save_init_2
//  268   }
//  269   else
//  270   {
//  271     return  RES_ERROR;
??Pic_save_init_7:
        MOVS     R0,#+1
??Pic_save_init_2:
        ADD      SP,SP,#+32
        POP      {R4-R6,PC}       ;; return
//  272   }
//  273 }
//  274 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  275 DRESULT Pic_save(u8 *buffer)
//  276 {
Pic_save:
        PUSH     {R4}
//  277   u16 i;
//  278   u8 j=18;
        MOVS     R2,#+18
//  279   u32 *ptr = (u32*)buffer;
        B.N      ??Pic_save_0
//  280   //读取数据时，每次读取4个字节
//  281   //bytes = btr;
//  282   while(j)
//  283   {
//  284     i=512;
//  285     for (i = (i + 3) >> 2; i != 0; i--)
//  286     {
//  287       if (SDHC_IRQSTAT & (    SDHC_IRQSTAT_DEBE_MASK 
//  288                                   | SDHC_IRQSTAT_DCE_MASK 
//  289                                   | SDHC_IRQSTAT_DTOE_MASK))
//  290       {
//  291                 SDHC_IRQSTAT    |= SDHC_IRQSTAT_DEBE_MASK 
//  292                                 | SDHC_IRQSTAT_DCE_MASK 
//  293                                 | SDHC_IRQSTAT_DTOE_MASK 
//  294                                 | SDHC_IRQSTAT_BWR_MASK;
//  295 #if PRINT
//  296                  uartPrintf("错误返回1\n");
//  297 #endif 
//  298                  return 0;
//  299       }
//  300       while (0 == (SDHC_PRSSTAT & SDHC_PRSSTAT_BWEN_MASK))
//  301       {
//  302               
//  303 #if PRINT
//  304               uartPrintf("等待数据\n");
//  305 #endif
//  306       }  //等待数据准备好
//  307       SDHC_DATPORT = *ptr++;
//  308     } 
//  309     j--;
??Pic_save_1:
        SUBS     R2,R2,#+1
??Pic_save_0:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+0
        BEQ.N    ??Pic_save_2
        MOV      R1,#+512
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        ADDS     R1,R1,#+3
        ASRS     R1,R1,#+2
        B.N      ??Pic_save_3
??Pic_save_4:
        LDR.W    R3,??DataTable11_3  ;; 0x400b1024
        LDR      R3,[R3, #+0]
        LSLS     R3,R3,#+21
        BPL.N    ??Pic_save_4
        LDR.N    R3,??DataTable11_4  ;; 0x400b1020
        LDR      R4,[R0, #+0]
        STR      R4,[R3, #+0]
        ADDS     R0,R0,#+4
        SUBS     R1,R1,#+1
??Pic_save_3:
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        CMP      R1,#+0
        BEQ.N    ??Pic_save_1
        LDR.N    R3,??DataTable11_5  ;; 0x400b1030
        LDR      R3,[R3, #+0]
        TST      R3,#0x700000
        BEQ.N    ??Pic_save_4
        LDR.N    R0,??DataTable11_5  ;; 0x400b1030
        LDR      R0,[R0, #+0]
        ORR      R0,R0,#0x700000
        ORRS     R0,R0,#0x10
        LDR.N    R1,??DataTable11_5  ;; 0x400b1030
        STR      R0,[R1, #+0]
        MOVS     R0,#+0
        B.N      ??Pic_save_5
//  310   }
//  311   return RES_OK;
??Pic_save_2:
        MOVS     R0,#+0
??Pic_save_5:
        POP      {R4}
        BX       LR               ;; return
//  312 }
//  313 
//  314 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  315 DRESULT Pic_save_end()
//  316 {
Pic_save_end:
        PUSH     {R4,LR}
        SUB      SP,SP,#+32
//  317   ESDHC_COMMAND_STRUCT command;
//  318    do
//  319     {
//  320       
//  321       command.COMMAND  = ESDHC_CMD12;
??Pic_save_end_0:
        MOVS     R0,#+12
        STRB     R0,[SP, #+0]
//  322       command.TYPE     = ESDHC_TYPE_NORMAL;
        MOVS     R0,#+0
        STRB     R0,[SP, #+1]
//  323       command.ARGUMENT = 0;
        MOVS     R0,#+0
        STR      R0,[SP, #+4]
//  324       command.READ     = FALSE;
        MOVS     R0,#+0
        STRB     R0,[SP, #+8]
//  325       command.BLOCKS   = 0;
        MOVS     R0,#+0
        STR      R0,[SP, #+12]
//  326       if(ESDHC_OK==SDHC_ioctl (IO_IOCTL_ESDHC_SEND_COMMAND, &command));//uartPrintf("CND12发送成功\n");
        ADD      R1,SP,#+0
        MOVS     R0,#+2
        BL       SDHC_ioctl
        MOVS     R4,R0
//  327 #if PRINT
//  328       uartPrintf("等待......\n");
//  329 #endif
//  330       command.COMMAND  = ESDHC_CMD13;   //获取卡当前的状态
        MOVS     R0,#+13
        STRB     R0,[SP, #+0]
//  331       command.TYPE     = ESDHC_TYPE_NORMAL;
        MOVS     R0,#+0
        STRB     R0,[SP, #+1]
//  332       command.ARGUMENT = sdcard_ptr->ADDRESS;
        LDR.N    R0,??DataTable11_2
        LDR      R0,[R0, #+0]
        LDR      R0,[R0, #+20]
        STR      R0,[SP, #+4]
//  333       command.READ     = FALSE;
        MOVS     R0,#+0
        STRB     R0,[SP, #+8]
//  334       command.BLOCKS   = 0;
        MOVS     R0,#+0
        STR      R0,[SP, #+12]
//  335       if (ESDHC_OK != SDHC_ioctl (IO_IOCTL_ESDHC_SEND_COMMAND, &command))
        ADD      R1,SP,#+0
        MOVS     R0,#+2
        BL       SDHC_ioctl
        CMP      R0,#+0
        BEQ.N    ??Pic_save_end_1
//  336       {
//  337 #if PRINT
//  338       uartPrintf("错误返回2\n");
//  339 #endif  
//  340       return RES_ERROR;
        MOVS     R0,#+1
        B.N      ??Pic_save_end_2
//  341       }
//  342       if (command.RESPONSE[0] & 0xFFD98008)
??Pic_save_end_1:
        LDR      R0,[SP, #+16]
        LDR.N    R1,??DataTable11_6  ;; 0xffd98008
        TST      R0,R1
        BEQ.N    ??Pic_save_end_3
//  343       {
//  344 #if PRINT
//  345       uartPrintf("错误返回3\n");
//  346 #endif
//  347       return RES_ERROR; 
        MOVS     R0,#+1
        B.N      ??Pic_save_end_2
//  348       }
//  349     }
//  350    while (0x000000900 != (command.RESPONSE[0] & 0x00001F00));    
??Pic_save_end_3:
        LDR      R0,[SP, #+16]
        ANDS     R0,R0,#0x1F00
        CMP      R0,#+2304
        BNE.N    ??Pic_save_end_0
//  351     
//  352 #if PRINT
//  353     uartPrintf("等待完成\n");
//  354 #endif
//  355 
//  356     return count ? RES_ERROR : RES_OK;
        LDR.N    R0,??DataTable11_7
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??Pic_save_end_4
        MOVS     R0,#+1
        B.N      ??Pic_save_end_5
??Pic_save_end_4:
        MOVS     R0,#+0
??Pic_save_end_5:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
??Pic_save_end_2:
        ADD      SP,SP,#+32
        POP      {R4,PC}          ;; return
//  357 }
//  358 
//  359     
//  360     
//  361     
//  362     
//  363     
//  364 
//  365   
//  366 
//  367 
//  368 
//  369 
//  370 
//  371 
//  372 
//  373 
//  374 
//  375 
//  376 
//  377 
//  378 
//  379 
//  380 
//  381 
//  382 
//  383 
//  384 
//  385 
//  386 
//  387 
//  388 
//  389 
//  390 
//  391 
//  392 
//  393 
//  394 
//  395 
//  396 
//  397 
//  398 
//  399 
//  400 
//  401 
//  402 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  403 DRESULT disk_write(u8 drv,const u8 *buff,u32 sector,u32  count)
//  404 {
disk_write:
        PUSH     {R4-R7,LR}
        SUB      SP,SP,#+36
        MOVS     R6,R1
        MOVS     R7,R2
        MOVS     R5,R3
//  405   
//  406     ESDHC_COMMAND_STRUCT command;
//  407     SDCARD_STRUCT_PTR    sdcard_ptr = (SDCARD_STRUCT_PTR)&SDHC_Card;
        LDR.N    R4,??DataTable11_1
//  408 
//  409     //检查参数
//  410     if (drv || !count) return RES_PARERR;
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BNE.N    ??disk_write_0
        CMP      R5,#+0
        BNE.N    ??disk_write_1
??disk_write_0:
        MOVS     R0,#+4
        B.N      ??disk_write_2
//  411     if (Stat & STA_NOINIT) return RES_NOTRDY;
??disk_write_1:
        LDR.N    R0,??DataTable11
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+31
        BPL.N    ??disk_write_3
        MOVS     R0,#+3
        B.N      ??disk_write_2
//  412     if (Stat & STA_PROTECT) return RES_WRPRT;
??disk_write_3:
        LDR.N    R0,??DataTable11
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+29
        BPL.N    ??disk_write_4
        MOVS     R0,#+2
        B.N      ??disk_write_2
//  413    
//  414 
//  415     //检测缓存区是否为空
//  416     if ((NULL == buff)) return RES_ERROR;
??disk_write_4:
        CMP      R6,#+0
        BNE.N    ??disk_write_5
        MOVS     R0,#+1
        B.N      ??disk_write_2
//  417 
//  418 
//  419     if (!sdcard_ptr->SDHC)
??disk_write_5:
        LDRB     R0,[R4, #+16]
        CMP      R0,#+0
        BNE.N    ??disk_write_6
//  420         //sector *= 512;	//扇区号转化为起始地址
//  421         sector = sector << IO_SDCARD_BLOCK_SIZE_POWER; 
        LSLS     R7,R7,#+9
//  422 
//  423    
//  424     if(1)
//  425     {
//  426      command.COMMAND  = ESDHC_ACMD23;
??disk_write_6:
        MOVS     R0,#+87
        STRB     R0,[SP, #+0]
//  427       command.TYPE     = ESDHC_TYPE_NORMAL;
        MOVS     R0,#+0
        STRB     R0,[SP, #+1]
//  428       command.ARGUMENT = sector;
        STR      R7,[SP, #+4]
//  429       command.READ     = FALSE;
        MOVS     R0,#+0
        STRB     R0,[SP, #+8]
//  430       command.BLOCKS   = count;
        STR      R5,[SP, #+12]
//  431        if (ESDHC_OK == SDHC_ioctl (IO_IOCTL_ESDHC_SEND_COMMAND, &command))
        ADD      R1,SP,#+0
        MOVS     R0,#+2
        BL       SDHC_ioctl
//  432         {
//  433           
//  434 #if PRINT
//  435           uartPrintf("多扇区写入时扇区擦除成功\n");
//  436 
//  437 #endif
//  438            
//  439         }
//  440     }
//  441     
//  442      
//  443     if (count == 1) //写单个扇区
        CMP      R5,#+1
        BNE.N    ??disk_write_7
//  444     {
//  445         command.COMMAND  = ESDHC_CMD24;
        MOVS     R0,#+24
        STRB     R0,[SP, #+0]
//  446         command.TYPE     = ESDHC_TYPE_NORMAL;
        MOVS     R0,#+0
        STRB     R0,[SP, #+1]
//  447         command.ARGUMENT = sector;
        STR      R7,[SP, #+4]
//  448         command.READ     = FALSE;
        MOVS     R0,#+0
        STRB     R0,[SP, #+8]
//  449         command.BLOCKS   = count;
        STR      R5,[SP, #+12]
//  450 
//  451         if (ESDHC_OK == SDHC_ioctl (IO_IOCTL_ESDHC_SEND_COMMAND, &command))
        ADD      R1,SP,#+0
        MOVS     R0,#+2
        BL       SDHC_ioctl
        CMP      R0,#+0
        BNE.N    ??disk_write_8
//  452         {
//  453             //if (hw_sdhc_send_block(buff,512))
//  454             if (SDHC_send_block(buff, IO_SDCARD_BLOCK_SIZE))
        MOV      R1,#+512
        MOVS     R0,R6
        BL       SDHC_send_block
        CMP      R0,#+0
        BEQ.N    ??disk_write_8
//  455                 count = 0;
        MOVS     R5,#+0
        B.N      ??disk_write_8
//  456         }
//  457     }
//  458     else //写多个扇区
//  459     {
//  460        
//  461         command.COMMAND  = ESDHC_CMD25;
??disk_write_7:
        MOVS     R0,#+25
        STRB     R0,[SP, #+0]
//  462         command.TYPE     = ESDHC_TYPE_NORMAL;
        MOVS     R0,#+0
        STRB     R0,[SP, #+1]
//  463         command.ARGUMENT = sector;
        STR      R7,[SP, #+4]
//  464         command.READ     = FALSE;
        MOVS     R0,#+0
        STRB     R0,[SP, #+8]
//  465         command.BLOCKS   = count;
        STR      R5,[SP, #+12]
//  466         
//  467 
//  468         if (ESDHC_OK == SDHC_ioctl (IO_IOCTL_ESDHC_SEND_COMMAND, &command))
        ADD      R1,SP,#+0
        MOVS     R0,#+2
        BL       SDHC_ioctl
        CMP      R0,#+0
        BNE.N    ??disk_write_8
//  469         {
//  470 #if PRINT
//  471           uartPrintf("CMD25发送完毕\n");
//  472 #endif
//  473            // 
//  474           gpio_set(PORTB,22,1);
        MOVS     R2,#+1
        MOVS     R1,#+22
        MOVS     R0,#+1
        BL       gpio_set
//  475             if (SDHC_send_block(buff,IO_SDCARD_BLOCK_SIZE*count))
        MOV      R0,#+512
        MUL      R1,R0,R5
        MOVS     R0,R6
        BL       SDHC_send_block
        CMP      R0,#+0
        BEQ.N    ??disk_write_9
//  476             {
//  477               count = 0;
        MOVS     R5,#+0
//  478 #if PRINT
//  479               uartPrintf("多块扇区写入完毕\n");
//  480 #endif
//  481              
//  482             }
//  483           gpio_set(PORTB,22,0);
??disk_write_9:
        MOVS     R2,#+0
        MOVS     R1,#+22
        MOVS     R0,#+1
        BL       gpio_set
//  484         }
//  485     }
//  486 
//  487     //等待完成
//  488   do
//  489     {
//  490       
//  491       command.COMMAND  = ESDHC_CMD12;
??disk_write_8:
        MOVS     R0,#+12
        STRB     R0,[SP, #+0]
//  492       command.TYPE     = ESDHC_TYPE_NORMAL;
        MOVS     R0,#+0
        STRB     R0,[SP, #+1]
//  493       command.ARGUMENT = 0;
        MOVS     R0,#+0
        STR      R0,[SP, #+4]
//  494       command.READ     = FALSE;
        MOVS     R0,#+0
        STRB     R0,[SP, #+8]
//  495       command.BLOCKS   = 0;
        MOVS     R0,#+0
        STR      R0,[SP, #+12]
//  496       if(ESDHC_OK==SDHC_ioctl (IO_IOCTL_ESDHC_SEND_COMMAND, &command));//uartPrintf("CND12发送成功\n");
        ADD      R1,SP,#+0
        MOVS     R0,#+2
        BL       SDHC_ioctl
        MOVS     R6,R0
//  497            
//  498     
//  499     
//  500        // command.COMMAND  = ESDHC_CMD12;     //发送强制多块扇区读入的命令
//  501         //command.TYPE     = ESDHC_TYPE_NORMAL;
//  502       //  command.ARGUMENT = sdcard_ptr->ADDRESS;
//  503       //  command.READ     = FALSE;
//  504       //  command.BLOCKS   = 0;
//  505       //  SDHC_ioctl (IO_IOCTL_ESDHC_SEND_COMMAND, &command);
//  506 #if PRINT
//  507       uartPrintf("等待......\n");
//  508 #endif
//  509        
//  510 
//  511     
//  512         command.COMMAND  = ESDHC_CMD13;   //获取卡当前的状态
        MOVS     R0,#+13
        STRB     R0,[SP, #+0]
//  513         command.TYPE     = ESDHC_TYPE_NORMAL;
        MOVS     R0,#+0
        STRB     R0,[SP, #+1]
//  514         command.ARGUMENT = sdcard_ptr->ADDRESS;
        LDR      R0,[R4, #+20]
        STR      R0,[SP, #+4]
//  515         command.READ     = FALSE;
        MOVS     R0,#+0
        STRB     R0,[SP, #+8]
//  516         command.BLOCKS   = 0;
        MOVS     R0,#+0
        STR      R0,[SP, #+12]
//  517     if (ESDHC_OK != SDHC_ioctl (IO_IOCTL_ESDHC_SEND_COMMAND, &command))
        ADD      R1,SP,#+0
        MOVS     R0,#+2
        BL       SDHC_ioctl
        CMP      R0,#+0
        BEQ.N    ??disk_write_10
//  518         
//  519     {
//  520 #if PRINT
//  521       uartPrintf("错误返回2\n");
//  522 #endif  
//  523       return RES_ERROR;
        MOVS     R0,#+1
        B.N      ??disk_write_2
//  524     }
//  525    
//  526     if (command.RESPONSE[0] & 0xFFD98008)
??disk_write_10:
        LDR      R0,[SP, #+16]
        LDR.N    R1,??DataTable11_6  ;; 0xffd98008
        TST      R0,R1
        BEQ.N    ??disk_write_11
//  527     {
//  528 #if PRINT
//  529       uartPrintf("错误返回3\n");
//  530 #endif
//  531       return RES_ERROR;
        MOVS     R0,#+1
        B.N      ??disk_write_2
//  532     }
//  533     
//  534     
//  535   
//  536     
//  537     //command.COMMAND  = ESDHC_CMD24;
//  538     } while (0x000000900 != (command.RESPONSE[0] & 0x00001F00));    
??disk_write_11:
        LDR      R0,[SP, #+16]
        ANDS     R0,R0,#0x1F00
        CMP      R0,#+2304
        BNE.N    ??disk_write_8
//  539     
//  540 #if PRINT
//  541     uartPrintf("等待完成\n");
//  542 #endif
//  543 
//  544     return count ? RES_ERROR : RES_OK;
        CMP      R5,#+0
        BEQ.N    ??disk_write_12
        MOVS     R0,#+1
        B.N      ??disk_write_13
??disk_write_12:
        MOVS     R0,#+0
??disk_write_13:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
??disk_write_2:
        ADD      SP,SP,#+36
        POP      {R4-R7,PC}       ;; return
//  545 }
//  546 
//  547 
//  548 //=========================================================================
//  549 //函数名称：disk_ioctl                                                        
//  550 //功能概要：数据盘控制                                                
//  551 //参数说明：drv:设备号
//  552 //         ctrl:命令
//  553 //         buff:数据的缓存区首地址
//  554 //函数返回：RES_OK：成功，其它：失败                                                              
//  555 //=========================================================================

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  556 DRESULT disk_ioctl(u8 drv,u8 ctrl,void  *buff)
//  557 {
disk_ioctl:
        PUSH     {R4,LR}
        SUB      SP,SP,#+32
        MOVS     R4,R2
//  558     DRESULT  res;
//  559     ESDHC_COMMAND_STRUCT command;
//  560     SDCARD_STRUCT_PTR	 sdcard_ptr = (SDCARD_STRUCT_PTR)&SDHC_Card;	
        LDR.N    R2,??DataTable11_1
//  561     
//  562     if (drv) return RES_PARERR;
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.N    ??disk_ioctl_0
        MOVS     R0,#+4
        B.N      ??disk_ioctl_1
//  563     if (Stat & STA_NOINIT) return RES_NOTRDY;
??disk_ioctl_0:
        LDR.N    R0,??DataTable11
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+31
        BPL.N    ??disk_ioctl_2
        MOVS     R0,#+3
        B.N      ??disk_ioctl_1
//  564     
//  565     res = RES_ERROR;
??disk_ioctl_2:
        MOVS     R0,#+1
//  566     switch (ctrl) 
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+0
        BEQ.N    ??disk_ioctl_3
        CMP      R1,#+1
        BEQ.N    ??disk_ioctl_4
        CMP      R1,#+2
        BEQ.N    ??disk_ioctl_5
        CMP      R1,#+3
        BEQ.N    ??disk_ioctl_6
        CMP      R1,#+5
        BEQ.N    ??disk_ioctl_7
        B.N      ??disk_ioctl_8
//  567     {
//  568     case CTRL_SYNC :
//  569         res = RES_OK;
??disk_ioctl_3:
        MOVS     R0,#+0
//  570         break;
        B.N      ??disk_ioctl_9
//  571     case GET_SECTOR_COUNT :
//  572         *(unsigned long*)buff = sdcard_ptr->NUM_BLOCKS;
??disk_ioctl_4:
        LDR      R0,[R2, #+12]
        STR      R0,[R4, #+0]
//  573         res = RES_OK;
        MOVS     R0,#+0
//  574         break; 
        B.N      ??disk_ioctl_9
//  575     case GET_SECTOR_SIZE :
//  576         *(unsigned short*)buff = IO_SDCARD_BLOCK_SIZE;
??disk_ioctl_5:
        MOV      R0,#+512
        STRH     R0,[R4, #+0]
//  577         res = RES_OK;
        MOVS     R0,#+0
//  578         break;
        B.N      ??disk_ioctl_9
//  579     case GET_BLOCK_SIZE :
//  580         command.COMMAND  = ESDHC_CMD9;
??disk_ioctl_6:
        MOVS     R0,#+9
        STRB     R0,[SP, #+0]
//  581         command.TYPE     = ESDHC_TYPE_NORMAL;
        MOVS     R0,#+0
        STRB     R0,[SP, #+1]
//  582         command.ARGUMENT = sdcard_ptr->ADDRESS;
        LDR      R0,[R2, #+20]
        STR      R0,[SP, #+4]
//  583         command.READ     = FALSE;
        MOVS     R0,#+0
        STRB     R0,[SP, #+8]
//  584         command.BLOCKS   = 0;
        MOVS     R0,#+0
        STR      R0,[SP, #+12]
//  585         if (ESDHC_OK != SDHC_ioctl (IO_IOCTL_ESDHC_SEND_COMMAND, &command))
        ADD      R1,SP,#+0
        MOVS     R0,#+2
        BL       SDHC_ioctl
        CMP      R0,#+0
        BEQ.N    ??disk_ioctl_10
//  586             return RES_ERROR;
        MOVS     R0,#+1
        B.N      ??disk_ioctl_1
//  587 
//  588         if (0 == (command.RESPONSE[3] & 0x00C00000)) //SD V1
??disk_ioctl_10:
        LDR      R0,[SP, #+28]
        TST      R0,#0xC00000
        BNE.N    ??disk_ioctl_11
//  589             *(unsigned long*)buff = ((((command.RESPONSE[2] >> 18) & 0x7F) + 1) << (((command.RESPONSE[3] >> 8) & 0x03) - 1));
        LDR      R0,[SP, #+24]
        UBFX     R0,R0,#+18,#+7
        ADDS     R0,R0,#+1
        LDR      R1,[SP, #+28]
        LSRS     R1,R1,#+8
        ANDS     R1,R1,#0x3
        SUBS     R1,R1,#+1
        LSLS     R0,R0,R1
        STR      R0,[R4, #+0]
        B.N      ??disk_ioctl_12
//  590         else //SD V2
//  591             *(unsigned long*)buff = (((command.RESPONSE[2] >> 18) & 0x7F) << (((command.RESPONSE[3] >> 8) & 0x03) - 1));				
??disk_ioctl_11:
        LDR      R0,[SP, #+24]
        UBFX     R0,R0,#+18,#+7
        LDR      R1,[SP, #+28]
        LSRS     R1,R1,#+8
        ANDS     R1,R1,#0x3
        SUBS     R1,R1,#+1
        LSLS     R0,R0,R1
        STR      R0,[R4, #+0]
//  592         res = RES_OK;
??disk_ioctl_12:
        MOVS     R0,#+0
//  593         break;
        B.N      ??disk_ioctl_9
//  594     case CTRL_DISK_TYPE:
//  595         res = sdcard_ptr->CARD_TYPE;
??disk_ioctl_7:
        LDRB     R0,[R2, #+0]
//  596     default:
//  597         res = RES_PARERR;
??disk_ioctl_8:
        MOVS     R0,#+4
//  598     }
//  599     
//  600     return res;
??disk_ioctl_9:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
??disk_ioctl_1:
        ADD      SP,SP,#+32
        POP      {R4,PC}          ;; return
//  601 }
//  602 
//  603 //=========================================================================
//  604 //函数名称：disk_status                                                        
//  605 //功能概要：返回数据盘状态                                              
//  606 //参数说明：drv：数据盘号
//  607 //函数返回：状态                                                        
//  608 //=========================================================================

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  609 u8 disk_status (u8 drv)
//  610 {
//  611     if (drv) return STA_NOINIT;
disk_status:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.N    ??disk_status_0
        MOVS     R0,#+1
        B.N      ??disk_status_1
//  612     return Stat;
??disk_status_0:
        LDR.N    R0,??DataTable11
        LDRB     R0,[R0, #+0]
??disk_status_1:
        BX       LR               ;; return
//  613 }
//  614 
//  615 //=========================================================================
//  616 //函数名称：disk_timerproc                                                        
//  617 //功能概要：检测SD卡状态                                              
//  618 //参数说明：无
//  619 //函数返回：无                                                        
//  620 //=========================================================================

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  621 void disk_timerproc (void)
//  622 {
//  623     u8 s;   
//  624     
//  625     Timer++;
disk_timerproc:
        LDR.N    R0,??DataTable11_8
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.N    R1,??DataTable11_8
        STR      R0,[R1, #+0]
//  626     s = Stat;
        LDR.N    R0,??DataTable11
        LDRB     R0,[R0, #+0]
//  627     
//  628     if (SDCARD_GPIO_PROTECT == 0)       
        LDR.N    R1,??DataTable11_9  ;; 0x400ff110
        LDR      R1,[R1, #+0]
        LSLS     R1,R1,#+4
        BMI.N    ??disk_timerproc_0
//  629     {
//  630         s &= ~STA_PROTECT;             //写使能
        ANDS     R0,R0,#0xFB
        B.N      ??disk_timerproc_1
//  631     }
//  632     else            
//  633     {
//  634         s |= STA_PROTECT;               //写保护
??disk_timerproc_0:
        ORRS     R0,R0,#0x4
//  635     }
//  636     if (SDCARD_GPIO_DETECT == 0)        //卡插入
??disk_timerproc_1:
        LDR.N    R1,??DataTable11_9  ;; 0x400ff110
        LDR      R1,[R1, #+0]
        LSLS     R1,R1,#+3
        BMI.N    ??disk_timerproc_2
//  637         s &= ~STA_NODISK;
        ANDS     R0,R0,#0xFD
        B.N      ??disk_timerproc_3
//  638     else                                //卡不存在
//  639         s |= (STA_NODISK | STA_NOINIT);
??disk_timerproc_2:
        ORRS     R0,R0,#0x3
//  640     
//  641     Stat = s;                           //更新卡状态
??disk_timerproc_3:
        LDR.N    R1,??DataTable11
        STRB     R0,[R1, #+0]
//  642 }
        BX       LR               ;; return
//  643 
//  644 //=========================================================================
//  645 //函数名称：SD_init                                                        
//  646 //功能概要：检测SD卡状态                                              
//  647 //参数说明：无
//  648 //函数返回：无                                                        
//  649 //=========================================================================
//  650 
//  651 

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//  652 void SD_init()
//  653 {
SD_init:
        PUSH     {R7,LR}
//  654   DisableInterrupts;  
        CPSID i
//  655   SIM_SCGC5 |= (SIM_SCGC5_PORTA_MASK
//  656                       | SIM_SCGC5_PORTB_MASK
//  657                       | SIM_SCGC5_PORTC_MASK
//  658                       | SIM_SCGC5_PORTD_MASK
//  659                       | SIM_SCGC5_PORTE_MASK );
        LDR.N    R0,??DataTable11_10  ;; 0x40048038
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x3E00
        LDR.N    R1,??DataTable11_10  ;; 0x40048038
        STR      R0,[R1, #+0]
//  660   PLL_Init();
        BL       PLL_Init
//  661   disk_initialize(0); 
        MOVS     R0,#+0
        BL       disk_initialize
//  662   EnableInterrupts;
        CPSIE i
//  663 }
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11:
        DC32     Stat

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_1:
        DC32     SDHC_Card

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_2:
        DC32     sdcard_ptr

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_3:
        DC32     0x400b1024

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_4:
        DC32     0x400b1020

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_5:
        DC32     0x400b1030

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_6:
        DC32     0xffd98008

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_7:
        DC32     count

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_8:
        DC32     Timer

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_9:
        DC32     0x400ff110

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_10:
        DC32     0x40048038

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
//    32 bytes in section .bss
//     1 byte  in section .data
// 1 818 bytes in section .text
// 
// 1 818 bytes of CODE memory
//    33 bytes of DATA memory
//
//Errors: none
//Warnings: 2
