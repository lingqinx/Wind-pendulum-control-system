///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.60.1.5097/W32 for ARM     15/Aug/2015  19:53:06 /
// Copyright 1999-2013 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  C:\Users\Administrator\Desktop\MPU60508.12\src\drivers\ /
//                    diskio\Sdhc.c                                           /
//    Command line =  C:\Users\Administrator\Desktop\MPU60508.12\src\drivers\ /
//                    diskio\Sdhc.c -lCN C:\Users\Administrator\Desktop\MPU60 /
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
//                    emo\FLASH\List\Sdhc.s                                   /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1
        #define SHF_WRITE 0x1
        #define SHF_EXECINSTR 0x4

        EXTERN SDHC_Card
        EXTERN uartPrintf

        PUBLIC PLL_Init
        PUBLIC SDHC_init
        PUBLIC SDHC_ioctl
        PUBLIC SDHC_is_running
        PUBLIC SDHC_receive_block
        PUBLIC SDHC_send_block
        PUBLIC SDHC_send_command
        PUBLIC SDHC_set_baudrate
        PUBLIC SDHC_status_wait


        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "\\264\\355\\316\\363\\267\\265\\273\\3301\\`:
        DATA
        DC8 "\264\355\316\363\267\265\273\3301\012"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "\\265\\310\\264\\375\\312\\375\\276\\335\\n`:
        DATA
        DC8 "\265\310\264\375\312\375\276\335\012"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "\\313\\371\\323\\320\\312\\375\\276\\335\\2`:
        DATA
        DC8 "\313\371\323\320\312\375\276\335\267\242\313\315\315\352\261\317\012"
        DC8 0, 0
// C:\Users\Administrator\Desktop\MPU60508.12\src\drivers\diskio\Sdhc.c
//    1 //*******************************************************************************************
//    2 //  MK60DN512ZVL(K/L/Q)10 Demo - Vectors, Ultra-Low Pwr UART 115200 Echo ISR, 50MHz ACLK
//    3 //
//    4 //           MK60DN512ZVL(K/L/Q)10
//    5 //            -----------------
//    6 //        /|\|              XIN|-
//    7 //         | |                 | 32kHz
//    8 //         --|RST          XOUT|-
//    9 //           |                 |
//   10 //           |                 |
//   11 //           |           P1.1  |<----L1 
//   12 //           |           P1.3  |<----L2
//   13 //           |           P1.5  |<----L3
//   14 //           |                 |
//   15 //           |                 |
//   16 //           |           P1.4  |---->H1 
//   17 //           |           P1.2  |---->H2
//   18 //           |           P1.0  |---->H3
//   19 //           |                 |
//   20 //           |                 |
//   21 //
//   22 //  Copyright (c) 2012.04  WH, All Rights Reserved.
//   23 //  WebSite     : http://united-electronic.taobao.com/
//   24 //  Email       : dragonhzw@163.com
//   25 //  QQ群         : 226846867
//   26 //  Description : The vectors module
//   27 //  History     :                                                           
//   28 //     [Author]   [Date]      [Version]    [Description]                     
//   29 //     [1] dragonhzw   2012/04/09  Ver 1.0.0    Initial file.
//   30 //
//   31 //  Built with IAR Embedded Workbench for ARM 6.30  
//   32 //***********************************************************************************************
//   33 #include "K60_datatype.h"
//   34 #include "common.h"
//   35 #include "include.h"
//   36 
//   37 #ifdef  __cplusplus
//   38 extern "C" {
//   39 #endif
//   40 
//   41   //  u8  sdhc_dat_buffer1[512];      
//   42   //  u8  sdhc_dat_buffer2[512] = {44,55,99,100,6,7,8,9,10,11,12,13,14,15,26,27,18,19,20};
//   43 
//   44   __ramfunc static void SetSysDividers(u32 uiOutDiv1, u32 uiOutDiv2, u32 uiOutDiv3, u32 uiOutDiv4);
//   45 
//   46 //SDHC命令，包括每条命令执行时的XFERTYP寄存器各个域的设置

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
//   47 static const unsigned long ESDHC_COMMAND_XFERTYP[] = 
ESDHC_COMMAND_XFERTYP:
        DATA
        DC32 0, 16777216, 34144256, 52035584, 67108864, 84017152, 102367232
        DC32 119209984, 135921664, 151584768, 168361984, 186253312, 215678976
        DC32 219807744, 0, 251658240, 270139392, 286916608, 303693824, 0
        DC32 337248256, 0, 370802688, 387579904, 404357120, 421134336
        DC32 437911552, 454688768, 471531520, 488308736, 505020416, 0
        DC32 538574848, 555352064, 572129280, 588906496, 605683712, 622460928
        DC32 639303680, 654442496, 672792576, 687996928, 706412544, 0, 0, 0, 0
        DC32 0, 0, 0, 0, 857341952, 874119168, 890896384, 0, 924450816
        DC32 941293568, 0, 0, 0, 1008402432, 1025179648, 0, 0
//   48 {
//   49     // CMD0
//   50     SDHC_XFERTYP_CMDINX(ESDHC_CMD0) | SDHC_XFERTYP_RSPTYP(ESDHC_XFERTYP_RSPTYP_NO),
//   51     SDHC_XFERTYP_CMDINX(ESDHC_CMD1) | SDHC_XFERTYP_RSPTYP(ESDHC_XFERTYP_RSPTYP_NO),
//   52     SDHC_XFERTYP_CMDINX(ESDHC_CMD2) | SDHC_XFERTYP_CCCEN_MASK | SDHC_XFERTYP_RSPTYP(ESDHC_XFERTYP_RSPTYP_136),
//   53     SDHC_XFERTYP_CMDINX(ESDHC_CMD3) | SDHC_XFERTYP_CICEN_MASK | SDHC_XFERTYP_CCCEN_MASK | SDHC_XFERTYP_RSPTYP(ESDHC_XFERTYP_RSPTYP_48),
//   54     SDHC_XFERTYP_CMDINX(ESDHC_CMD4) | SDHC_XFERTYP_RSPTYP(ESDHC_XFERTYP_RSPTYP_NO),
//   55     // CMD5 
//   56     SDHC_XFERTYP_CMDINX(ESDHC_CMD5) | SDHC_XFERTYP_RSPTYP(ESDHC_XFERTYP_RSPTYP_48),
//   57     SDHC_XFERTYP_CMDINX(ESDHC_CMD6) | SDHC_XFERTYP_CICEN_MASK | SDHC_XFERTYP_CCCEN_MASK | SDHC_XFERTYP_RSPTYP(ESDHC_XFERTYP_RSPTYP_48),
//   58     SDHC_XFERTYP_CMDINX(ESDHC_CMD7) | SDHC_XFERTYP_CICEN_MASK | SDHC_XFERTYP_CCCEN_MASK | SDHC_XFERTYP_RSPTYP(ESDHC_XFERTYP_RSPTYP_48BUSY),
//   59     SDHC_XFERTYP_CMDINX(ESDHC_CMD8) | SDHC_XFERTYP_CICEN_MASK | SDHC_XFERTYP_CCCEN_MASK | SDHC_XFERTYP_RSPTYP(ESDHC_XFERTYP_RSPTYP_48),
//   60     SDHC_XFERTYP_CMDINX(ESDHC_CMD9) | SDHC_XFERTYP_CCCEN_MASK | SDHC_XFERTYP_RSPTYP(ESDHC_XFERTYP_RSPTYP_136),
//   61     // CMD10 
//   62     SDHC_XFERTYP_CMDINX(ESDHC_CMD10) | SDHC_XFERTYP_CCCEN_MASK | SDHC_XFERTYP_RSPTYP(ESDHC_XFERTYP_RSPTYP_136),
//   63     SDHC_XFERTYP_CMDINX(ESDHC_CMD11) | SDHC_XFERTYP_CICEN_MASK | SDHC_XFERTYP_CCCEN_MASK | SDHC_XFERTYP_RSPTYP(ESDHC_XFERTYP_RSPTYP_48),
//   64     SDHC_XFERTYP_CMDINX(ESDHC_CMD12) | SDHC_XFERTYP_CMDTYP(ESDHC_XFERTYP_CMDTYP_ABORT) | SDHC_XFERTYP_CICEN_MASK | SDHC_XFERTYP_CCCEN_MASK | SDHC_XFERTYP_RSPTYP(ESDHC_XFERTYP_RSPTYP_48BUSY),
//   65     SDHC_XFERTYP_CMDINX(ESDHC_CMD13) | SDHC_XFERTYP_CICEN_MASK | SDHC_XFERTYP_CCCEN_MASK | SDHC_XFERTYP_RSPTYP(ESDHC_XFERTYP_RSPTYP_48),
//   66     0,
//   67     // CMD15 
//   68     SDHC_XFERTYP_CMDINX(ESDHC_CMD15) | SDHC_XFERTYP_RSPTYP(ESDHC_XFERTYP_RSPTYP_NO),
//   69     SDHC_XFERTYP_CMDINX(ESDHC_CMD16) | SDHC_XFERTYP_CICEN_MASK | SDHC_XFERTYP_CCCEN_MASK | SDHC_XFERTYP_RSPTYP(ESDHC_XFERTYP_RSPTYP_48),
//   70     SDHC_XFERTYP_CMDINX(ESDHC_CMD17) | SDHC_XFERTYP_CICEN_MASK | SDHC_XFERTYP_CCCEN_MASK | SDHC_XFERTYP_RSPTYP(ESDHC_XFERTYP_RSPTYP_48),
//   71     SDHC_XFERTYP_CMDINX(ESDHC_CMD18) | SDHC_XFERTYP_CICEN_MASK | SDHC_XFERTYP_CCCEN_MASK | SDHC_XFERTYP_RSPTYP(ESDHC_XFERTYP_RSPTYP_48),
//   72     0,
//   73     // CMD20 
//   74     SDHC_XFERTYP_CMDINX(ESDHC_CMD20) | SDHC_XFERTYP_CICEN_MASK | SDHC_XFERTYP_CCCEN_MASK | SDHC_XFERTYP_RSPTYP(ESDHC_XFERTYP_RSPTYP_48),
//   75     0,
//   76     SDHC_XFERTYP_CMDINX(ESDHC_ACMD22) | SDHC_XFERTYP_CICEN_MASK | SDHC_XFERTYP_CCCEN_MASK | SDHC_XFERTYP_RSPTYP(ESDHC_XFERTYP_RSPTYP_48),
//   77     SDHC_XFERTYP_CMDINX(ESDHC_ACMD23) | SDHC_XFERTYP_CICEN_MASK | SDHC_XFERTYP_CCCEN_MASK | SDHC_XFERTYP_RSPTYP(ESDHC_XFERTYP_RSPTYP_48),
//   78     SDHC_XFERTYP_CMDINX(ESDHC_CMD24) | SDHC_XFERTYP_CICEN_MASK | SDHC_XFERTYP_CCCEN_MASK | SDHC_XFERTYP_RSPTYP(ESDHC_XFERTYP_RSPTYP_48),
//   79     // CMD25 
//   80     SDHC_XFERTYP_CMDINX(ESDHC_CMD25) | SDHC_XFERTYP_CICEN_MASK | SDHC_XFERTYP_CCCEN_MASK | SDHC_XFERTYP_RSPTYP(ESDHC_XFERTYP_RSPTYP_48),
//   81     SDHC_XFERTYP_CMDINX(ESDHC_CMD26) | SDHC_XFERTYP_CICEN_MASK | SDHC_XFERTYP_CCCEN_MASK | SDHC_XFERTYP_RSPTYP(ESDHC_XFERTYP_RSPTYP_48),
//   82     SDHC_XFERTYP_CMDINX(ESDHC_CMD27) | SDHC_XFERTYP_CICEN_MASK | SDHC_XFERTYP_CCCEN_MASK | SDHC_XFERTYP_RSPTYP(ESDHC_XFERTYP_RSPTYP_48),
//   83     SDHC_XFERTYP_CMDINX(ESDHC_CMD28) | SDHC_XFERTYP_CICEN_MASK | SDHC_XFERTYP_CCCEN_MASK | SDHC_XFERTYP_RSPTYP(ESDHC_XFERTYP_RSPTYP_48BUSY),
//   84     SDHC_XFERTYP_CMDINX(ESDHC_CMD29) | SDHC_XFERTYP_CICEN_MASK | SDHC_XFERTYP_CCCEN_MASK | SDHC_XFERTYP_RSPTYP(ESDHC_XFERTYP_RSPTYP_48BUSY),
//   85     // CMD30 
//   86     SDHC_XFERTYP_CMDINX(ESDHC_CMD30) | SDHC_XFERTYP_CICEN_MASK | SDHC_XFERTYP_CCCEN_MASK | SDHC_XFERTYP_RSPTYP(ESDHC_XFERTYP_RSPTYP_48),
//   87     0,
//   88     SDHC_XFERTYP_CMDINX(ESDHC_CMD32) | SDHC_XFERTYP_CICEN_MASK | SDHC_XFERTYP_CCCEN_MASK | SDHC_XFERTYP_RSPTYP(ESDHC_XFERTYP_RSPTYP_48),
//   89     SDHC_XFERTYP_CMDINX(ESDHC_CMD33) | SDHC_XFERTYP_CICEN_MASK | SDHC_XFERTYP_CCCEN_MASK | SDHC_XFERTYP_RSPTYP(ESDHC_XFERTYP_RSPTYP_48),
//   90     SDHC_XFERTYP_CMDINX(ESDHC_CMD34) | SDHC_XFERTYP_CICEN_MASK | SDHC_XFERTYP_CCCEN_MASK | SDHC_XFERTYP_RSPTYP(ESDHC_XFERTYP_RSPTYP_48),
//   91     // CMD35 
//   92     SDHC_XFERTYP_CMDINX(ESDHC_CMD35) | SDHC_XFERTYP_CICEN_MASK | SDHC_XFERTYP_CCCEN_MASK | SDHC_XFERTYP_RSPTYP(ESDHC_XFERTYP_RSPTYP_48),
//   93     SDHC_XFERTYP_CMDINX(ESDHC_CMD36) | SDHC_XFERTYP_CICEN_MASK | SDHC_XFERTYP_CCCEN_MASK | SDHC_XFERTYP_RSPTYP(ESDHC_XFERTYP_RSPTYP_48),
//   94     SDHC_XFERTYP_CMDINX(ESDHC_CMD37) | SDHC_XFERTYP_CICEN_MASK | SDHC_XFERTYP_CCCEN_MASK | SDHC_XFERTYP_RSPTYP(ESDHC_XFERTYP_RSPTYP_48),
//   95     SDHC_XFERTYP_CMDINX(ESDHC_CMD38) | SDHC_XFERTYP_CICEN_MASK | SDHC_XFERTYP_CCCEN_MASK | SDHC_XFERTYP_RSPTYP(ESDHC_XFERTYP_RSPTYP_48BUSY),
//   96     SDHC_XFERTYP_CMDINX(ESDHC_CMD39) | SDHC_XFERTYP_RSPTYP(ESDHC_XFERTYP_RSPTYP_48),
//   97     // CMD40 
//   98     SDHC_XFERTYP_CMDINX(ESDHC_CMD40) | SDHC_XFERTYP_CICEN_MASK | SDHC_XFERTYP_CCCEN_MASK | SDHC_XFERTYP_RSPTYP(ESDHC_XFERTYP_RSPTYP_48),
//   99     SDHC_XFERTYP_CMDINX(ESDHC_ACMD41) | SDHC_XFERTYP_RSPTYP(ESDHC_XFERTYP_RSPTYP_48),
//  100     SDHC_XFERTYP_CMDINX(ESDHC_CMD42) | SDHC_XFERTYP_CICEN_MASK | SDHC_XFERTYP_CCCEN_MASK | SDHC_XFERTYP_RSPTYP(ESDHC_XFERTYP_RSPTYP_48BUSY),
//  101     0,
//  102     0,
//  103     // CMD45 
//  104     0,
//  105     0,
//  106     0,
//  107     0,
//  108     0,
//  109     // CMD50 
//  110     0,
//  111     SDHC_XFERTYP_CMDINX(ESDHC_ACMD51) | SDHC_XFERTYP_CICEN_MASK | SDHC_XFERTYP_CCCEN_MASK | SDHC_XFERTYP_RSPTYP(ESDHC_XFERTYP_RSPTYP_48),
//  112     SDHC_XFERTYP_CMDINX(ESDHC_CMD52) | SDHC_XFERTYP_CICEN_MASK | SDHC_XFERTYP_CCCEN_MASK | SDHC_XFERTYP_RSPTYP(ESDHC_XFERTYP_RSPTYP_48),
//  113     SDHC_XFERTYP_CMDINX(ESDHC_CMD53) | SDHC_XFERTYP_CICEN_MASK | SDHC_XFERTYP_CCCEN_MASK | SDHC_XFERTYP_RSPTYP(ESDHC_XFERTYP_RSPTYP_48),
//  114     0,
//  115     // CMD55 
//  116     SDHC_XFERTYP_CMDINX(ESDHC_CMD55) | SDHC_XFERTYP_CICEN_MASK | SDHC_XFERTYP_CCCEN_MASK | SDHC_XFERTYP_RSPTYP(ESDHC_XFERTYP_RSPTYP_48),
//  117     SDHC_XFERTYP_CMDINX(ESDHC_CMD56) | SDHC_XFERTYP_CICEN_MASK | SDHC_XFERTYP_CCCEN_MASK | SDHC_XFERTYP_RSPTYP(ESDHC_XFERTYP_RSPTYP_48BUSY),
//  118     0,
//  119     0,
//  120     0,
//  121     // CMD60 
//  122     SDHC_XFERTYP_CMDINX(ESDHC_CMD60) | SDHC_XFERTYP_CICEN_MASK | SDHC_XFERTYP_CCCEN_MASK | SDHC_XFERTYP_RSPTYP(ESDHC_XFERTYP_RSPTYP_48BUSY),
//  123     SDHC_XFERTYP_CMDINX(ESDHC_CMD61) | SDHC_XFERTYP_CICEN_MASK | SDHC_XFERTYP_CCCEN_MASK | SDHC_XFERTYP_RSPTYP(ESDHC_XFERTYP_RSPTYP_48BUSY),
//  124     0,
//  125     0
//  126 };
//  127 
//  128 /***FUNC+*********************************************************************/
//  129 /* Name   : PLL_Init                                                         */
//  130 /* Descrp : Initialize PLL                                                   */
//  131 /* Input  : None.                                                            */   
//  132 /* Output : None.                                                            */
//  133 /* Return : None.                                                            */   
//  134 /***FUNC-*********************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  135 void PLL_Init(void)
//  136 {
PLL_Init:
        PUSH     {R7,LR}
//  137 
//  138     MCG_C2 = 0;                        // x x RANGE HGO EREFS LP IRCS
        LDR.W    R0,??DataTable8  ;; 0x40064001
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
//  139                                        // 0 0   00    0    0   0   0
//  140                                        // RANGE=00:Low frequency range selected for the crystal oscillator of 32 kHz to 40 kHz
//  141                                        // HGO  =0 :Configure crystal oscillator for low-power operation
//  142                                        // EREFS=0 :External reference clock requested 
//  143     
//  144     SIM_SCGC4 |= SIM_SCGC4_LLWU_MASK;
        LDR.W    R0,??DataTable8_1  ;; 0x40048034
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x10000000
        LDR.W    R1,??DataTable8_1  ;; 0x40048034
        STR      R0,[R1, #+0]
//  145     LLWU_CS |= LLWU_CS_ACKISO_MASK;
        LDR.W    R0,??DataTable8_2  ;; 0x4007c008
        LDRB     R0,[R0, #+0]
        ORRS     R0,R0,#0x80
        LDR.W    R1,??DataTable8_2  ;; 0x4007c008
        STRB     R0,[R1, #+0]
//  146     
//  147     MCG_C1 = MCG_C1_CLKS(2) |          // CLKS FRDIV IREFS IRCLKEN IREFSTEN
//  148              MCG_C1_FRDIV(3);          //  10   011    1     0        0  
        LDR.W    R0,??DataTable8_3  ;; 0x40064000
        MOVS     R1,#+152
        STRB     R1,[R0, #+0]
//  149                                        // CLKS =10 :External reference clock is selected
//  150                                        // FRDIV=011:Divide Factor is 8
//  151     
//  152     while (MCG_S & MCG_S_IREFST_MASK)  // wait until source of FLL reference clock is the external reference clock
??PLL_Init_0:
        LDR.W    R0,??DataTable8_4  ;; 0x40064006
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+27
        BMI.N    ??PLL_Init_0
//  153     {
//  154         ;  
//  155     }
//  156     
//  157     while (((MCG_S & MCG_S_CLKST_MASK) // wait until external reference clock is selected
//  158           >> MCG_S_CLKST_SHIFT) != 0x2)
??PLL_Init_1:
        LDR.W    R0,??DataTable8_4  ;; 0x40064006
        LDRB     R0,[R0, #+0]
        UBFX     R0,R0,#+2,#+2
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+2
        BNE.N    ??PLL_Init_1
//  159     {
//  160         ;   
//  161     }
//  162     
//  163     MCG_C5 = MCG_C5_PRDIV(0x18);       // x PLLCLKEN PLLSTEN PRDIV
        LDR.W    R0,??DataTable8_5  ;; 0x40064004
        MOVS     R1,#+24
        STRB     R1,[R0, #+0]
//  164                                        // 0    0        0    11000
//  165                                        // PRDIV=11000:Divide Factor is 25 
//  166        
//  167     SetSysDividers(0, 1, 1, 3);        // MCG=PLL, core=MCG, bus=MCG/2, FlexBus=MCG/2, Flash clock=MCG/4
        MOVS     R3,#+3
        MOVS     R2,#+1
        MOVS     R1,#+1
        MOVS     R0,#+0
        BL       SetSysDividers
//  168     
//  169     MCG_C6 = MCG_C6_PLLS_MASK |        // LOLIE PLLS CME VDIV  
//  170              MCG_C6_VDIV(24);          //   0    1    0  11000    
        LDR.W    R0,??DataTable8_6  ;; 0x40064005
        MOVS     R1,#+88
        STRB     R1,[R0, #+0]
//  171                                        // PLLS=1    :PLL is selected 
//  172                                        // VDIV=11000:Multiply Factor is 48
//  173                                        // PLL = 2MHz x 48 = 96MHz
//  174     
//  175     while (!(MCG_S & MCG_S_PLLST_MASK))// wait until source of PLLS clock is PLL clock
??PLL_Init_2:
        LDR.W    R0,??DataTable8_4  ;; 0x40064006
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+26
        BPL.N    ??PLL_Init_2
//  176     {
//  177         ;   
//  178     }
//  179     
//  180     while (!(MCG_S & MCG_S_LOCK_MASK)) // wait until PLL is locked
??PLL_Init_3:
        LDR.W    R0,??DataTable8_4  ;; 0x40064006
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+25
        BPL.N    ??PLL_Init_3
//  181     {
//  182         ;
//  183     }
//  184     
//  185     MCG_C1 &= ~MCG_C1_CLKS_MASK;       // Output of FLL or PLL is selected
        LDR.W    R0,??DataTable8_3  ;; 0x40064000
        LDRB     R0,[R0, #+0]
        ANDS     R0,R0,#0x3F
        LDR.W    R1,??DataTable8_3  ;; 0x40064000
        STRB     R0,[R1, #+0]
//  186     
//  187     while (((MCG_S & MCG_S_CLKST_MASK) // wait until Output of the PLL is selected 
//  188           >> MCG_S_CLKST_SHIFT) != 0x3)
??PLL_Init_4:
        LDR.W    R0,??DataTable8_4  ;; 0x40064006
        LDRB     R0,[R0, #+0]
        UBFX     R0,R0,#+2,#+2
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+3
        BNE.N    ??PLL_Init_4
//  189     {
//  190         ;
//  191     }
//  192 }
        POP      {R0,PC}          ;; return
//  193 
//  194 /***FUNC+*********************************************************************/
//  195 /* Name   : SetSysDividers                                                   */
//  196 /* Descrp : This routine must be placed in RAM.It is a                       */
//  197 /*          workaround for errata e2448.Flash prefetch must                  */
//  198 /*          be disabled when the flash clock divider is                      */
//  199 /*          changed.This cannot be performed while executing                 */
//  200 /*          out of flash.There must be a short delay after                   */
//  201 /*          the clock dividers are changed before prefetch                   */
//  202 /*          can be re-enabled.                                               */
//  203 /* Input  : None.                                                            */   
//  204 /* Output : None.                                                            */
//  205 /* Return : None.                                                            */   
//  206 /***FUNC-*********************************************************************/

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE | SHF_EXECINSTR
        THUMB
//  207 __ramfunc static void SetSysDividers(u32 uiOutDiv1, u32 uiOutDiv2, u32 uiOutDiv3, u32 uiOutDiv4)
//  208 {
SetSysDividers:
        PUSH     {R4-R6}
//  209 
//  210     u32 uiTemp;
//  211   
//  212     int  i;
//  213   
//  214  
//  215     // store present value of FMC_PFAPR
//  216     uiTemp = FMC_PFAPR; 
        LDR.N    R4,??SetSysDividers_0  ;; 0x4001f000
        LDR      R4,[R4, #+0]
//  217   
//  218     // set M0PFD through M7PFD to 1 to disable prefetch
//  219     FMC_PFAPR |= FMC_PFAPR_M7PFD_MASK | FMC_PFAPR_M6PFD_MASK | FMC_PFAPR_M5PFD_MASK
//  220               | FMC_PFAPR_M4PFD_MASK | FMC_PFAPR_M3PFD_MASK | FMC_PFAPR_M2PFD_MASK
//  221               | FMC_PFAPR_M1PFD_MASK | FMC_PFAPR_M0PFD_MASK;
        LDR.N    R5,??SetSysDividers_0  ;; 0x4001f000
        LDR      R5,[R5, #+0]
        ORRS     R5,R5,#0xFF0000
        LDR.N    R6,??SetSysDividers_0  ;; 0x4001f000
        STR      R5,[R6, #+0]
//  222   
//  223     // set clock dividers to desired value  
//  224     SIM_CLKDIV1 = SIM_CLKDIV1_OUTDIV1(uiOutDiv1) | SIM_CLKDIV1_OUTDIV2(uiOutDiv2) 
//  225                 | SIM_CLKDIV1_OUTDIV3(uiOutDiv3) | SIM_CLKDIV1_OUTDIV4(uiOutDiv4);
        LSLS     R1,R1,#+24
        ANDS     R1,R1,#0xF000000
        ORRS     R0,R1,R0, LSL #+28
        LSLS     R1,R2,#+20
        ANDS     R1,R1,#0xF00000
        ORRS     R0,R1,R0
        LSLS     R1,R3,#+16
        ANDS     R1,R1,#0xF0000
        ORRS     R0,R1,R0
        LDR.N    R1,??SetSysDividers_0+0x4  ;; 0x40048044
        STR      R0,[R1, #+0]
//  226 
//  227     // wait for dividers to change
//  228     for (i = 0; i < uiOutDiv4; i++)
        MOVS     R0,#+0
        B.N      ??SetSysDividers_1
??SetSysDividers_2:
        ADDS     R0,R0,#+1
??SetSysDividers_1:
        CMP      R0,R3
        BCC.N    ??SetSysDividers_2
//  229     {
//  230         ;   
//  231     }
//  232  
//  233     // re-store original value of FMC_PFAPR
//  234     FMC_PFAPR = uiTemp; 
        LDR.N    R0,??SetSysDividers_0  ;; 0x4001f000
        STR      R4,[R0, #+0]
//  235   
//  236 } 
        POP      {R4-R6}
        BX       LR               ;; return
        Nop      
        DATA
??SetSysDividers_0:
        DC32     0x4001f000
        DC32     0x40048044
//  237 /***FUNC+*********************************************************************/
//  238 /* Name   : main                                                             */
//  239 /* Descrp :                                                                  */
//  240 /* Input  : None.                                                            */   
//  241 /* Output : None.                                                            */
//  242 /* Return : None.                                                            */   
//  243 /***FUNC-*********************************************************************/
//  244 #if 0
//  245 
//  246 void main(void)
//  247 {
//  248     short sIndex =0;
//  249     u32 i = 0;
//  250     DRESULT sd_state;    //SD卡操作状态
//  251 
//  252 
//  253     /*********************************************************/
//  254     /* Close all irq.                                        */
//  255     /*********************************************************/
//  256     DisableInterrupts;  
//  257     
//  258     /*********************************************************/
//  259     /* Watchdog disable.                                     */
//  260     /*********************************************************/
//  261     WatchdogDisable();
//  262 
//  263     /*********************************************************/
//  264     /*Copy the vector table to RAM .                         */
//  265     /*********************************************************/
//  266     VECTableInit();
//  267 
//  268     /*
//  269     * Enable all of the port clocks. These have to be enabled to configure
//  270     * pin muxing options, so most code will need all of these on anyway.
//  271     */
//  272     SIM_SCGC5 |= (SIM_SCGC5_PORTA_MASK
//  273                       | SIM_SCGC5_PORTB_MASK
//  274                       | SIM_SCGC5_PORTC_MASK
//  275                       | SIM_SCGC5_PORTD_MASK
//  276                       | SIM_SCGC5_PORTE_MASK );
//  277     /*********************************************************/
//  278     /*Initialize PLL.                                        */
//  279     /*********************************************************/ 
//  280     PLL_Init();
//  281 
//  282     /*********************************************************/
//  283     /*Init Uart3 BaudRate and clk .                          */
//  284     /*********************************************************/
//  285     UART_Init(PERIPH_SYS_CLK, BAUD_RATE_115200, UART4);
//  286     
//  287     sd_state = disk_initialize(0); 
//  288     /*********************************************************/
//  289     /* open all irq.                                         */
//  290     /*********************************************************/
//  291     EnableInterrupts;
//  292     
//  293     uartPrintf("\r\n");
//  294     uartPrintf("|********************************************************************|\r\n");
//  295     uartPrintf("|******MK60DN512ZVL(K/L/Q)10 development board SD Card Example!******|\r\n");
//  296     uartPrintf("|********************************************************************|\r\n");    
//  297 
//  298     //对初始化操作进行处理
//  299     if (RES_OK == sd_state)
//  300     {
//  301         uartPrintf("SD init success.\r\n");
//  302     }
//  303     else
//  304     {
//  305         uartPrintf("sd_state :%d \r\n", sd_state);
//  306         uartPrintf("SD init failure.\r\n");
//  307     }
//  308     
//  309     while(1)
//  310     {
//  311         
//  312         uartPrintf("\r\nPlease Select Enter Number[1~2]: ");
//  313         sIndex = Uart_GetIntNum();
//  314         uartPrintf("\r\n");
//  315         if(0x01 == sIndex)
//  316         {
//  317             sd_state = disk_read(0,sdhc_dat_buffer1,0,1);//读操作，更新SD操作状态
//  318             //对读操作进行处理
//  319             if (RES_OK == sd_state)
//  320             {
//  321                 uartPrintf("Read disk success.\r\n");
//  322                 uartPrintf("SD data: \r\n");
//  323                 for(i = 0;i < 512;i++) //若读成功，打印该扇区内容
//  324                 {
//  325                     uartPrintf("%02X ", sdhc_dat_buffer1[i]);
//  326                 }  
//  327                 uartPrintf("\r\n");
//  328             }
//  329             else
//  330             {
//  331                 uartPrintf("Read disk failed!\n\r");
//  332             }
//  333         }
//  334 
//  335         else if(0x02 == sIndex)
//  336         {
//  337             sd_state = disk_write(0, sdhc_dat_buffer2, 0, 1);  //写操作，SD操作更新状态
//  338             //对读操作进行处理
//  339             if (RES_OK == sd_state)
//  340             {
//  341                 uartPrintf("Read disk success.\r\n");
//  342                 uartPrintf("SD data: \r\n");
//  343                 for(i = 0;i < 512;i++) //若读成功，打印该扇区内容
//  344                 {
//  345                     uartPrintf("%02X ", sdhc_dat_buffer1[i]);
//  346                 }  
//  347                 uartPrintf("\r\n");
//  348             }
//  349             else
//  350             {
//  351                 uartPrintf("Read disk failed!\n\r");
//  352             }
//  353         }
//  354     
//  355       
//  356     }
//  357     
//  358 }
//  359 
//  360 #endif
//  361 
//  362 //=========================================================================
//  363 //函数名称：hw_sdhc_init                                                        
//  364 //功能概要：初始化SDHC模块。                                                
//  365 //参数说明：coreClk：内核时钟                                                    
//  366 //         baud：SDHC通信频率                                 
//  367 //函数返回：成功时返回：ESDHC_OK;其他返回值为错误。                                                               
//  368 //=========================================================================

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  369 u32 SDHC_init(u32 coreClk, u32 baud)
//  370 {
SDHC_init:
        PUSH     {R7,LR}
//  371     SDHC_Card.CARD_TYPE = ESDHC_CARD_NONE;
        LDR.W    R2,??DataTable8_7
        MOVS     R3,#+0
        STRB     R3,[R2, #+0]
//  372         
//  373     //使能SDHC模块的时钟门
//  374     SIM_SCGC3 |= SIM_SCGC3_SDHC_MASK;
        LDR.W    R2,??DataTable8_8  ;; 0x40048030
        LDR      R2,[R2, #+0]
        ORRS     R2,R2,#0x20000
        LDR.W    R3,??DataTable8_8  ;; 0x40048030
        STR      R2,[R3, #+0]
//  375     
//  376     //复位SDHC
//  377     SDHC_SYSCTL = SDHC_SYSCTL_RSTA_MASK | SDHC_SYSCTL_SDCLKFS(0x80);    
        LDR.W    R2,??DataTable8_9  ;; 0x400b102c
        LDR.W    R3,??DataTable8_10  ;; 0x1008000
        STR      R3,[R2, #+0]
//  378     while (SDHC_SYSCTL & SDHC_SYSCTL_RSTA_MASK){};
??SDHC_init_0:
        LDR.W    R2,??DataTable8_9  ;; 0x400b102c
        LDR      R2,[R2, #+0]
        LSLS     R2,R2,#+7
        BMI.N    ??SDHC_init_0
//  379     
//  380     //初始化SDHC相关寄存器
//  381     SDHC_VENDOR = 0;
        LDR.W    R2,??DataTable8_11  ;; 0x400b10c0
        MOVS     R3,#+0
        STR      R3,[R2, #+0]
//  382     SDHC_BLKATTR = SDHC_BLKATTR_BLKCNT(1) | SDHC_BLKATTR_BLKSIZE(512);
        LDR.W    R2,??DataTable8_12  ;; 0x400b1004
        MOVS     R3,#+66048
        STR      R3,[R2, #+0]
//  383     SDHC_PROCTL = SDHC_PROCTL_EMODE(ESDHC_PROCTL_EMODE_INVARIANT) 
//  384                 | SDHC_PROCTL_D3CD_MASK; 
        LDR.W    R2,??DataTable8_13  ;; 0x400b1028
        MOVS     R3,#+40
        STR      R3,[R2, #+0]
//  385     SDHC_WML = SDHC_WML_RDWML(1) | SDHC_WML_WRWML(1);
        LDR.W    R2,??DataTable8_14  ;; 0x400b1044
        MOVS     R3,#+65537
        STR      R3,[R2, #+0]
//  386     
//  387     //设置SDHC模块的通信速率
//  388     SDHC_set_baudrate (coreClk,baud);
        BL       SDHC_set_baudrate
//  389     
//  390     //检查CMD通道和DAT通道是否准备就绪
//  391     while (SDHC_PRSSTAT & (  SDHC_PRSSTAT_CIHB_MASK 
//  392                            | SDHC_PRSSTAT_CDIHB_MASK)){};
??SDHC_init_1:
        LDR.W    R0,??DataTable8_15  ;; 0x400b1024
        LDR      R0,[R0, #+0]
        TST      R0,#0x3
        BNE.N    ??SDHC_init_1
//  393 
//  394     //设置复用引脚功能为SDHC
//  395     PORTE_PCR(0) = 0xFFFF & (   PORT_PCR_MUX(4) 
//  396                               | PORT_PCR_PS_MASK 
//  397                               | PORT_PCR_PE_MASK 
//  398                               | PORT_PCR_DSE_MASK); // ESDHC.D1  
        LDR.W    R0,??DataTable8_16  ;; 0x4004d000
        MOVW     R1,#+1091
        STR      R1,[R0, #+0]
//  399     PORTE_PCR(1) = 0xFFFF & (   PORT_PCR_MUX(4) 
//  400                               | PORT_PCR_PS_MASK 
//  401                               | PORT_PCR_PE_MASK 
//  402                               | PORT_PCR_DSE_MASK); // ESDHC.D0  
        LDR.W    R0,??DataTable8_17  ;; 0x4004d004
        MOVW     R1,#+1091
        STR      R1,[R0, #+0]
//  403     PORTE_PCR(2) = 0xFFFF & (   PORT_PCR_MUX(4) 
//  404                               | PORT_PCR_DSE_MASK); // ESDHC.CLK 
        LDR.W    R0,??DataTable8_18  ;; 0x4004d008
        MOV      R1,#+1088
        STR      R1,[R0, #+0]
//  405     PORTE_PCR(3) = 0xFFFF & (   PORT_PCR_MUX(4) 
//  406                               | PORT_PCR_PS_MASK 
//  407                               | PORT_PCR_PE_MASK 
//  408                               | PORT_PCR_DSE_MASK); // ESDHC.CMD 
        LDR.W    R0,??DataTable8_19  ;; 0x4004d00c
        MOVW     R1,#+1091
        STR      R1,[R0, #+0]
//  409     PORTE_PCR(4) = 0xFFFF & (   PORT_PCR_MUX(4) 
//  410                               | PORT_PCR_PS_MASK 
//  411                               | PORT_PCR_PE_MASK 
//  412                               | PORT_PCR_DSE_MASK); // ESDHC.D3  
        LDR.W    R0,??DataTable8_20  ;; 0x4004d010
        MOVW     R1,#+1091
        STR      R1,[R0, #+0]
//  413     PORTE_PCR(5) = 0xFFFF & (   PORT_PCR_MUX(4) 
//  414                               | PORT_PCR_PS_MASK 
//  415                               | PORT_PCR_PE_MASK 
//  416                               | PORT_PCR_DSE_MASK);  // ESDHC.D2  
        LDR.W    R0,??DataTable8_21  ;; 0x4004d014
        MOVW     R1,#+1091
        STR      R1,[R0, #+0]
//  417     
//  418     //清除SDHC模块的中断标志
//  419     SDHC_IRQSTAT = 0xFFFF;
        LDR.W    R0,??DataTable8_22  ;; 0x400b1030
        MOVW     R1,#+65535
        STR      R1,[R0, #+0]
//  420     //使能中断位
//  421     SDHC_IRQSTATEN = SDHC_IRQSTATEN_DEBESEN_MASK 
//  422                    | SDHC_IRQSTATEN_DCESEN_MASK 
//  423                    | SDHC_IRQSTATEN_DTOESEN_MASK 
//  424                    | SDHC_IRQSTATEN_CIESEN_MASK 
//  425                    | SDHC_IRQSTATEN_CEBESEN_MASK 
//  426                    | SDHC_IRQSTATEN_CCESEN_MASK 
//  427                    | SDHC_IRQSTATEN_CTOESEN_MASK 
//  428                    | SDHC_IRQSTATEN_BRRSEN_MASK 
//  429                    | SDHC_IRQSTATEN_BWRSEN_MASK 
//  430                    | SDHC_IRQSTATEN_CRMSEN_MASK
//  431                    | SDHC_IRQSTATEN_TCSEN_MASK 
//  432                    | SDHC_IRQSTATEN_CCSEN_MASK;
        LDR.W    R0,??DataTable8_23  ;; 0x400b1034
        LDR.W    R1,??DataTable8_24  ;; 0x7f00b3
        STR      R1,[R0, #+0]
//  433     
//  434     //80个时钟周期的初始化
//  435     SDHC_SYSCTL |= SDHC_SYSCTL_INITA_MASK;
        LDR.W    R0,??DataTable8_9  ;; 0x400b102c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x8000000
        LDR.W    R1,??DataTable8_9  ;; 0x400b102c
        STR      R0,[R1, #+0]
//  436     while (SDHC_SYSCTL & SDHC_SYSCTL_INITA_MASK){};
??SDHC_init_2:
        LDR.W    R0,??DataTable8_9  ;; 0x400b102c
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+4
        BMI.N    ??SDHC_init_2
//  437 
//  438     //检查卡是否已经插入
//  439     if (SDHC_PRSSTAT & SDHC_PRSSTAT_CINS_MASK)
        LDR.W    R0,??DataTable8_15  ;; 0x400b1024
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+15
        BPL.N    ??SDHC_init_3
//  440     {
//  441         SDHC_Card.CARD_TYPE = ESDHC_CARD_UNKNOWN;
        LDR.W    R0,??DataTable8_7
        MOVS     R1,#+1
        STRB     R1,[R0, #+0]
//  442     }
//  443     SDHC_IRQSTAT |= SDHC_IRQSTAT_CRM_MASK;
??SDHC_init_3:
        LDR.W    R0,??DataTable8_22  ;; 0x400b1030
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x80
        LDR.W    R1,??DataTable8_22  ;; 0x400b1030
        STR      R0,[R1, #+0]
//  444     
//  445     return ESDHC_OK;
        MOVS     R0,#+0
        POP      {R1,PC}          ;; return
//  446 }
//  447 
//  448 //=========================================================================
//  449 //函数名称：SDHC_receive_block                                                         
//  450 //功能概要：接收n个字节                                                 
//  451 //参数说明：buff: 接收缓冲区                                                 
//  452 //		   btr:接收长度                                                     
//  453 //函数返回： 1:成功;0:失败                                                    
//  454 //=========================================================================

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  455 u32 SDHC_receive_block (u8 *buff,u32 btr)
//  456 {
SDHC_receive_block:
        PUSH     {R4}
//  457     u32 bytes, i, j;
//  458     u32 *ptr = (u32*)buff;
//  459     
//  460     //当可识别的卡插入后，接收数据前，检测DAT通道是否忙（正在使用中）
//  461     if (    (SDHC_Card.CARD_TYPE == ESDHC_CARD_SD) 
//  462          || (SDHC_Card.CARD_TYPE == ESDHC_CARD_SDHC) 
//  463          || (SDHC_Card.CARD_TYPE == ESDHC_CARD_MMC) 
//  464          || (SDHC_Card.CARD_TYPE == ESDHC_CARD_CEATA))
        LDR.W    R2,??DataTable8_7
        LDRB     R2,[R2, #+0]
        CMP      R2,#+2
        BEQ.N    ??SDHC_receive_block_0
        LDR.W    R2,??DataTable8_7
        LDRB     R2,[R2, #+0]
        CMP      R2,#+3
        BEQ.N    ??SDHC_receive_block_0
        LDR.W    R2,??DataTable8_7
        LDRB     R2,[R2, #+0]
        CMP      R2,#+7
        BEQ.N    ??SDHC_receive_block_0
        LDR.W    R2,??DataTable8_7
        LDRB     R2,[R2, #+0]
        CMP      R2,#+8
        BNE.N    ??SDHC_receive_block_1
//  465     {
//  466         while (SDHC_PRSSTAT & SDHC_PRSSTAT_DLA_MASK){};
??SDHC_receive_block_0:
        LDR.W    R2,??DataTable8_15  ;; 0x400b1024
        LDR      R2,[R2, #+0]
        LSLS     R2,R2,#+29
        BMI.N    ??SDHC_receive_block_0
//  467     }    
//  468     
//  469     //读取数据时，每次读取4个字节
//  470     bytes = btr;
??SDHC_receive_block_1:
        B.N      ??SDHC_receive_block_2
//  471     while (bytes)
//  472     {
//  473         i = bytes > 512 ? 512 : bytes;
//  474         for (j = (i + 3) >> 2; j != 0; j--)
//  475         {
//  476             if (SDHC_IRQSTAT & (    SDHC_IRQSTAT_DEBE_MASK 
//  477                                   | SDHC_IRQSTAT_DCE_MASK 
//  478                                   | SDHC_IRQSTAT_DTOE_MASK))
//  479             {
//  480                 SDHC_IRQSTAT |= SDHC_IRQSTAT_DEBE_MASK 
//  481                               | SDHC_IRQSTAT_DCE_MASK 
//  482                               | SDHC_IRQSTAT_DTOE_MASK 
//  483                               | SDHC_IRQSTAT_BRR_MASK;
//  484                 return 0;
//  485             }
//  486             
//  487             while (0 == (SDHC_PRSSTAT & SDHC_PRSSTAT_BREN_MASK)){};
//  488 
//  489             *ptr++ = SDHC_DATPORT;
//  490         }
//  491         bytes -= i;
??SDHC_receive_block_3:
        SUBS     R1,R1,R2
??SDHC_receive_block_2:
        CMP      R1,#+0
        BEQ.N    ??SDHC_receive_block_4
        CMP      R1,#+512
        BLS.N    ??SDHC_receive_block_5
        MOV      R2,#+512
        B.N      ??SDHC_receive_block_6
??SDHC_receive_block_5:
        MOVS     R2,R1
??SDHC_receive_block_6:
        ADDS     R3,R2,#+3
        LSRS     R3,R3,#+2
        B.N      ??SDHC_receive_block_7
??SDHC_receive_block_8:
        LDR.W    R4,??DataTable8_15  ;; 0x400b1024
        LDR      R4,[R4, #+0]
        LSLS     R4,R4,#+20
        BPL.N    ??SDHC_receive_block_8
        LDR.W    R4,??DataTable8_25  ;; 0x400b1020
        LDR      R4,[R4, #+0]
        STR      R4,[R0, #+0]
        ADDS     R0,R0,#+4
        SUBS     R3,R3,#+1
??SDHC_receive_block_7:
        CMP      R3,#+0
        BEQ.N    ??SDHC_receive_block_3
        LDR.W    R4,??DataTable8_22  ;; 0x400b1030
        LDR      R4,[R4, #+0]
        TST      R4,#0x700000
        BEQ.N    ??SDHC_receive_block_8
        LDR.W    R0,??DataTable8_22  ;; 0x400b1030
        LDR      R0,[R0, #+0]
        ORR      R0,R0,#0x700000
        ORRS     R0,R0,#0x20
        LDR.W    R1,??DataTable8_22  ;; 0x400b1030
        STR      R0,[R1, #+0]
        MOVS     R0,#+0
        B.N      ??SDHC_receive_block_9
//  492     }
//  493     
//  494     return 1;       // Return with success     
??SDHC_receive_block_4:
        MOVS     R0,#+1
??SDHC_receive_block_9:
        POP      {R4}
        BX       LR               ;; return
//  495 }
//  496 
//  497 //=========================================================================
//  498 //函数名称：SDHC_send_block                                                         
//  499 //功能概要：发送n个字节                                                 
//  500 //参数说明：buff: 发送缓冲区                                                 
//  501 //		   btr:发送长度                                                     
//  502 //函数返回： 1:成功;0:失败                                                    
//  503 //=========================================================================

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  504 u32 SDHC_send_block (const u8 *buff,u32 btr)
//  505 {
SDHC_send_block:
        PUSH     {R3-R7,LR}
        MOVS     R4,R0
        MOVS     R6,R1
//  506     u32  bytes, i;
//  507     //u32 *ptr = (u32*)buff;
//  508    
//  509     //读取数据时，每次读取4个字节
//  510     bytes = btr;
//  511     //uartPrintf("%d\n",bytes);
//  512     while (bytes)
??SDHC_send_block_0:
        CMP      R6,#+0
        BEQ.N    ??SDHC_send_block_1
//  513     {
//  514       //uartPrintf("%d\n",c);
//  515        u32 *ptr = (u32*)buff;
        MOVS     R5,R4
//  516        // i = bytes > 512 ? 512 : bytes;
//  517       i=512;
        MOV      R7,#+512
//  518 #if PRINT
//  519         //uartPrintf("%d\n",bytes);
//  520 #endif 
//  521         bytes -= i;
        SUBS     R6,R6,R7
//  522         for (i = (i + 3) >> 2; i != 0; i--)
        ADDS     R0,R7,#+3
        LSRS     R7,R0,#+2
        B.N      ??SDHC_send_block_2
//  523         {
//  524             if (SDHC_IRQSTAT & (    SDHC_IRQSTAT_DEBE_MASK 
//  525                                   | SDHC_IRQSTAT_DCE_MASK 
//  526                                   | SDHC_IRQSTAT_DTOE_MASK))
//  527             {
//  528                 SDHC_IRQSTAT    |= SDHC_IRQSTAT_DEBE_MASK 
//  529                                 | SDHC_IRQSTAT_DCE_MASK 
//  530                                 | SDHC_IRQSTAT_DTOE_MASK 
//  531                                 | SDHC_IRQSTAT_BWR_MASK;
//  532 #if PRINT
//  533                 
//  534 #endif 
//  535                uartPrintf("错误返回1\n");
//  536               return 0;
//  537             }
//  538             while (0 == (SDHC_PRSSTAT & SDHC_PRSSTAT_BWEN_MASK))
//  539             {
//  540               uartPrintf("等待数据\n");
??SDHC_send_block_3:
        LDR.W    R0,??DataTable8_26
        BL       uartPrintf
//  541 #if PRINT
//  542               //
//  543 #endif
//  544             }  //等待数据准备好
??SDHC_send_block_4:
        LDR.W    R0,??DataTable8_15  ;; 0x400b1024
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+21
        BPL.N    ??SDHC_send_block_3
//  545 
//  546             
//  547 
//  548            
//  549             SDHC_DATPORT = *ptr++;
        LDR.W    R0,??DataTable8_25  ;; 0x400b1020
        LDR      R1,[R5, #+0]
        STR      R1,[R0, #+0]
        ADDS     R5,R5,#+4
        SUBS     R7,R7,#+1
??SDHC_send_block_2:
        CMP      R7,#+0
        BEQ.N    ??SDHC_send_block_0
        LDR.W    R0,??DataTable8_22  ;; 0x400b1030
        LDR      R0,[R0, #+0]
        TST      R0,#0x700000
        BEQ.N    ??SDHC_send_block_4
        LDR.W    R0,??DataTable8_22  ;; 0x400b1030
        LDR      R0,[R0, #+0]
        ORR      R0,R0,#0x700000
        ORRS     R0,R0,#0x10
        LDR.W    R1,??DataTable8_22  ;; 0x400b1030
        STR      R0,[R1, #+0]
        LDR.W    R0,??DataTable8_27
        BL       uartPrintf
        MOVS     R0,#+0
        B.N      ??SDHC_send_block_5
//  550            // 
//  551            
//  552            
//  553             
//  554             
//  555           
//  556         }   
//  557       //  uartPrintf("%d\n",c);
//  558         
//  559        //     c--;
//  560       //  uartPrintf("%d\n",c);  
//  561             
//  562 #if PRINT
//  563         //uartPrintf("%d\n",bytes);
//  564 #endif
//  565     
//  566     }
//  567     
//  568      uartPrintf("所有数据发送完毕\n");
??SDHC_send_block_1:
        LDR.W    R0,??DataTable8_28
        BL       uartPrintf
//  569               
//  570 #if PRINT
//  571     
//  572 #endif    
//  573          
//  574     
//  575     
//  576     
//  577 	return 1;
        MOVS     R0,#+1
??SDHC_send_block_5:
        POP      {R1,R4-R7,PC}    ;; return
//  578 }
//  579 
//  580 //=========================================================================
//  581 //函数名称：SDHC_ioctl
//  582 //功能概要：配置SDHC模块
//  583 //参数说明：cmd: 配置命令
//  584 //		   param_ptr:数据指针
//  585 //函数返回： 功时返回：ESDHC_OK;其他返回值为错误
//  586 //=========================================================================

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  587 u32 SDHC_ioctl(u32 cmd,void *param_ptr)
//  588 {
SDHC_ioctl:
        PUSH     {R4-R10,LR}
        SUB      SP,SP,#+32
        MOVS     R4,R1
//  589     ESDHC_COMMAND_STRUCT    command; 
//  590     u8 mem, io, mmc, ceata, mp, hc; //标志当前卡类型
//  591     u32  i, val;
//  592     u32  result = ESDHC_OK;
        MOVS     R10,#+0
//  593     u32  *param32_ptr = param_ptr;
//  594 #if PRINT
//  595     uartPrintf("开始重新配置卡模式，发送卡模块命令\n");
//  596 #endif
//  597     
//  598     switch (cmd) 
        CMP      R0,#+1
        BEQ.N    ??SDHC_ioctl_0
        BCC.W    ??SDHC_ioctl_1
        CMP      R0,#+3
        BEQ.W    ??SDHC_ioctl_2
        BCC.W    ??SDHC_ioctl_3
        CMP      R0,#+5
        BEQ.W    ??SDHC_ioctl_4
        BCC.W    ??SDHC_ioctl_5
        CMP      R0,#+7
        BEQ.W    ??SDHC_ioctl_6
        BCC.W    ??SDHC_ioctl_7
        CMP      R0,#+9
        BEQ.W    ??SDHC_ioctl_8
        BCC.W    ??SDHC_ioctl_9
        B.N      ??SDHC_ioctl_1
//  599     {
//  600         //初始化SD卡读写系统
//  601         case IO_IOCTL_ESDHC_INIT:        
//  602             result = SDHC_init (CORE_CLOCK_HZ, BAUD_RATE_HZ);
??SDHC_ioctl_0:
        LDR.W    R1,??DataTable8_29  ;; 0x17d7840
        LDR.W    R0,??DataTable8_30  ;; 0x5b8d800
        BL       SDHC_init
        MOV      R10,R0
//  603             if (ESDHC_OK != result)
        CMP      R10,#+0
        BNE.W    ??SDHC_ioctl_10
//  604             {
//  605                 break;
//  606             }
//  607             
//  608             mem = FALSE;
??SDHC_ioctl_11:
        MOVS     R4,#+0
//  609             io = FALSE;
        MOVS     R5,#+0
//  610             mmc = FALSE;
        MOVS     R6,#+0
//  611             ceata = FALSE;
        MOVS     R7,#+0
//  612             hc = FALSE;
        MOVS     R8,#+0
//  613             mp = FALSE;
        MOVS     R9,#+0
//  614 
//  615             //CMD0,使得SD卡进入空闲模式，复位SD卡
//  616             command.COMMAND = ESDHC_CMD0;
        MOVS     R0,#+0
        STRB     R0,[SP, #+0]
//  617             command.TYPE = ESDHC_TYPE_NORMAL;
        MOVS     R0,#+0
        STRB     R0,[SP, #+1]
//  618             command.ARGUMENT = 0;
        MOVS     R0,#+0
        STR      R0,[SP, #+4]
//  619             command.READ = FALSE;
        MOVS     R0,#+0
        STRB     R0,[SP, #+8]
//  620             command.BLOCKS = 0;
        MOVS     R0,#+0
        STR      R0,[SP, #+12]
//  621             if (SDHC_send_command (&command))
        ADD      R0,SP,#+0
        BL       SDHC_send_command
        CMP      R0,#+0
        BEQ.N    ??SDHC_ioctl_12
//  622             {
//  623                 result = ESDHC_ERROR_INIT_FAILED;
        MOVS     R10,#+1
//  624                 break;
        B.N      ??SDHC_ioctl_10
//  625             }
//  626             
//  627             for(i = 0;i < 2000000;i++)
??SDHC_ioctl_12:
        MOVS     R0,#+0
        B.N      ??SDHC_ioctl_13
??SDHC_ioctl_14:
        ADDS     R0,R0,#+1
??SDHC_ioctl_13:
        LDR.W    R1,??DataTable8_31  ;; 0x1e8480
        CMP      R0,R1
        BCC.N    ??SDHC_ioctl_14
//  628             {
//  629             }
//  630 
//  631             //CMD8
//  632             command.COMMAND = ESDHC_CMD8;
        MOVS     R0,#+8
        STRB     R0,[SP, #+0]
//  633             command.TYPE = ESDHC_TYPE_NORMAL;
        MOVS     R0,#+0
        STRB     R0,[SP, #+1]
//  634             command.ARGUMENT = 0x000001AA;
        MOV      R0,#+426
        STR      R0,[SP, #+4]
//  635             command.READ = FALSE;
        MOVS     R0,#+0
        STRB     R0,[SP, #+8]
//  636             command.BLOCKS = 0;
        MOVS     R0,#+0
        STR      R0,[SP, #+12]
//  637             val = SDHC_send_command (&command);
        ADD      R0,SP,#+0
        BL       SDHC_send_command
        MOV      R9,R0
//  638             
//  639             if (val == 0)
        CMP      R9,#+0
        BNE.N    ??SDHC_ioctl_15
//  640             {
//  641                 // SDHC卡
//  642                 if (command.RESPONSE[0] != command.ARGUMENT)
        LDR      R0,[SP, #+16]
        LDR      R1,[SP, #+4]
        CMP      R0,R1
        BEQ.N    ??SDHC_ioctl_16
//  643                 {
//  644                     result = ESDHC_ERROR_INIT_FAILED;
        MOVS     R10,#+1
//  645                     break;
        B.N      ??SDHC_ioctl_10
//  646                 }
//  647                 hc = TRUE;
??SDHC_ioctl_16:
        MOVS     R8,#+1
//  648             }
//  649 
//  650             mp = TRUE;
??SDHC_ioctl_15:
        MOVS     R9,#+1
//  651             
//  652             if (mp)
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        CMP      R9,#+0
        BEQ.W    ??SDHC_ioctl_17
//  653             {
//  654                 //CMD55，检查是否为MMC卡
//  655                 command.COMMAND = ESDHC_CMD55;
        MOVS     R0,#+55
        STRB     R0,[SP, #+0]
//  656                 command.TYPE = ESDHC_TYPE_NORMAL;
        MOVS     R0,#+0
        STRB     R0,[SP, #+1]
//  657                 command.ARGUMENT = 0;
        MOVS     R0,#+0
        STR      R0,[SP, #+4]
//  658                 command.READ = FALSE;
        MOVS     R0,#+0
        STRB     R0,[SP, #+8]
//  659                 command.BLOCKS = 0;
        MOVS     R0,#+0
        STR      R0,[SP, #+12]
//  660                 val = SDHC_send_command (&command);
        ADD      R0,SP,#+0
        BL       SDHC_send_command
        MOV      R9,R0
//  661                 if (val > 0)
        CMP      R9,#+0
        BEQ.N    ??SDHC_ioctl_18
//  662                 {
//  663                     result = ESDHC_ERROR_INIT_FAILED;
        MOVS     R10,#+1
//  664                     break;
        B.N      ??SDHC_ioctl_10
//  665                 }
//  666                 if (val < 0)
//  667                 {
//  668                     // MMC 或 CE-ATA
//  669                     io = FALSE;
//  670                     mem = FALSE;
//  671                     hc = FALSE;
//  672                     
//  673                     //CMD1
//  674                     command.COMMAND = ESDHC_CMD1;
//  675                     command.TYPE = ESDHC_TYPE_NORMAL;
//  676                     command.ARGUMENT = 0x40300000;
//  677                     command.READ = FALSE;
//  678                     command.BLOCKS = 0;
//  679                     if (SDHC_send_command (&command))
//  680                     {
//  681                         result = ESDHC_ERROR_INIT_FAILED;
//  682                         break;
//  683                     }
//  684                     if (0x20000000 == (command.RESPONSE[0] & 0x60000000))
//  685                     {
//  686                         hc = TRUE;
//  687                     }
//  688                     mmc = TRUE;
//  689 
//  690                     //CMD39
//  691                     command.COMMAND = ESDHC_CMD39;
//  692                     command.TYPE = ESDHC_TYPE_NORMAL;
//  693                     command.ARGUMENT = 0x0C00;
//  694                     command.READ = FALSE;
//  695                     command.BLOCKS = 0;
//  696                     if (SDHC_send_command (&command))
//  697                     {
//  698                         result = ESDHC_ERROR_INIT_FAILED;
//  699                         break;
//  700                     }
//  701                     if (0xCE == (command.RESPONSE[0] >> 8) & 0xFF)
//  702                     {
//  703                         //CMD39
//  704                         command.COMMAND = ESDHC_CMD39;
//  705                         command.TYPE = ESDHC_TYPE_NORMAL;
//  706                         command.ARGUMENT = 0x0D00;
//  707                         command.READ = FALSE;
//  708                         command.BLOCKS = 0;
//  709                         if (SDHC_send_command (&command))
//  710                         {
//  711                             result = ESDHC_ERROR_INIT_FAILED;
//  712                             break;
//  713                         }
//  714                         if (0xAA == (command.RESPONSE[0] >> 8) & 0xFF)
//  715                         {
//  716                             mmc = FALSE;
//  717                             ceata = TRUE;
//  718                         }
//  719                     }
//  720                 }
//  721                 else
//  722                 {
//  723                     //当为SD卡时
//  724                     // ACMD41
//  725                     command.COMMAND = ESDHC_ACMD41;
??SDHC_ioctl_18:
        MOVS     R0,#+105
        STRB     R0,[SP, #+0]
//  726                     command.TYPE = ESDHC_TYPE_NORMAL;
        MOVS     R0,#+0
        STRB     R0,[SP, #+1]
//  727                     command.ARGUMENT = 0;
        MOVS     R0,#+0
        STR      R0,[SP, #+4]
//  728                     command.READ = FALSE;
        MOVS     R0,#+0
        STRB     R0,[SP, #+8]
//  729                     command.BLOCKS = 0;
        MOVS     R0,#+0
        STR      R0,[SP, #+12]
//  730                     if (SDHC_send_command (&command))
        ADD      R0,SP,#+0
        BL       SDHC_send_command
        CMP      R0,#+0
        BEQ.N    ??SDHC_ioctl_19
//  731                     {
//  732                         result = ESDHC_ERROR_INIT_FAILED;
        MOVS     R10,#+1
//  733                         break;
        B.N      ??SDHC_ioctl_10
//  734                     }
//  735                     if (command.RESPONSE[0] & 0x300000)
??SDHC_ioctl_19:
        LDR      R0,[SP, #+16]
        TST      R0,#0x300000
        BEQ.N    ??SDHC_ioctl_17
//  736                     {
//  737                         val = 0;
        MOVS     R9,#+0
//  738                         do 
//  739                         {
//  740                             for(i = 0;i < 500000;i++)
??SDHC_ioctl_20:
        MOVS     R0,#+0
        B.N      ??SDHC_ioctl_21
??SDHC_ioctl_22:
        ADDS     R0,R0,#+1
??SDHC_ioctl_21:
        LDR.W    R1,??DataTable8_32  ;; 0x7a120
        CMP      R0,R1
        BCC.N    ??SDHC_ioctl_22
//  741                             {
//  742                             }
//  743                             val++;
        ADDS     R9,R9,#+1
//  744                             
//  745                             // CMD55 + ACMD41 - Send OCR 
//  746                             command.COMMAND = ESDHC_CMD55;
        MOVS     R0,#+55
        STRB     R0,[SP, #+0]
//  747                             command.TYPE = ESDHC_TYPE_NORMAL;
        MOVS     R0,#+0
        STRB     R0,[SP, #+1]
//  748                             command.ARGUMENT = 0;
        MOVS     R0,#+0
        STR      R0,[SP, #+4]
//  749                             command.READ = FALSE;
        MOVS     R0,#+0
        STRB     R0,[SP, #+8]
//  750                             command.BLOCKS = 0;
        MOVS     R0,#+0
        STR      R0,[SP, #+12]
//  751                             if (SDHC_send_command (&command))
        ADD      R0,SP,#+0
        BL       SDHC_send_command
        CMP      R0,#+0
        BEQ.N    ??SDHC_ioctl_23
//  752                             {
//  753                                 result = ESDHC_ERROR_INIT_FAILED;
        MOVS     R10,#+1
//  754                                 break;
        B.N      ??SDHC_ioctl_24
//  755                             }
//  756 
//  757                             command.COMMAND = ESDHC_ACMD41;
??SDHC_ioctl_23:
        MOVS     R0,#+105
        STRB     R0,[SP, #+0]
//  758                             command.TYPE = ESDHC_TYPE_NORMAL;
        MOVS     R0,#+0
        STRB     R0,[SP, #+1]
//  759                             if (hc)
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        CMP      R8,#+0
        BEQ.N    ??SDHC_ioctl_25
//  760                             {
//  761                                 command.ARGUMENT = 0x40300000;
        LDR.W    R0,??DataTable8_33  ;; 0x40300000
        STR      R0,[SP, #+4]
        B.N      ??SDHC_ioctl_26
//  762                             }
//  763                             else
//  764                             {
//  765                                 command.ARGUMENT = 0x00300000;
??SDHC_ioctl_25:
        MOVS     R0,#+3145728
        STR      R0,[SP, #+4]
//  766                             }
//  767                             command.READ = FALSE;
??SDHC_ioctl_26:
        MOVS     R0,#+0
        STRB     R0,[SP, #+8]
//  768                             command.BLOCKS = 0;
        MOVS     R0,#+0
        STR      R0,[SP, #+12]
//  769                             if (SDHC_send_command (&command))
        ADD      R0,SP,#+0
        BL       SDHC_send_command
        CMP      R0,#+0
        BEQ.N    ??SDHC_ioctl_27
//  770                             {
//  771                                 result = ESDHC_ERROR_INIT_FAILED;
        MOVS     R10,#+1
//  772                                 break;
        B.N      ??SDHC_ioctl_24
//  773                             }
//  774                         } while ((0 == (command.RESPONSE[0] & 0x80000000)) && (val < 10));
??SDHC_ioctl_27:
        LDR      R0,[SP, #+16]
        CMP      R0,#+0
        BMI.N    ??SDHC_ioctl_24
        CMP      R9,#+10
        BCC.N    ??SDHC_ioctl_20
//  775                         if (ESDHC_OK != result)
??SDHC_ioctl_24:
        CMP      R10,#+0
        BNE.W    ??SDHC_ioctl_10
//  776                         {
//  777                             break;
//  778                         }
//  779                         if (val >= 10)
??SDHC_ioctl_28:
        CMP      R9,#+10
        BCC.N    ??SDHC_ioctl_29
//  780                         {
//  781                             hc = FALSE;
        MOVS     R8,#+0
        B.N      ??SDHC_ioctl_17
//  782                         }
//  783                         else
//  784                         {
//  785                             mem = TRUE;
??SDHC_ioctl_29:
        MOVS     R4,#+1
//  786                             if (hc)
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        CMP      R8,#+0
        BEQ.N    ??SDHC_ioctl_17
//  787                             {
//  788                                 hc = FALSE;
        MOVS     R8,#+0
//  789                                 if (command.RESPONSE[0] & 0x40000000)
        LDR      R0,[SP, #+16]
        LSLS     R0,R0,#+1
        BPL.N    ??SDHC_ioctl_17
//  790                                 {
//  791                                     hc = TRUE;
        MOVS     R8,#+1
//  792                                 }
//  793                             }
//  794                         }
//  795                     }
//  796                 }
//  797             }
//  798             
//  799             
//  800             if (mmc)
??SDHC_ioctl_17:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+0
        BEQ.N    ??SDHC_ioctl_30
//  801             {
//  802                 SDHC_Card.CARD_TYPE = ESDHC_CARD_MMC;
        LDR.W    R0,??DataTable8_7
        MOVS     R1,#+7
        STRB     R1,[R0, #+0]
//  803             }
//  804             if (ceata)
??SDHC_ioctl_30:
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R7,#+0
        BEQ.N    ??SDHC_ioctl_31
//  805             {
//  806                 SDHC_Card.CARD_TYPE = ESDHC_CARD_CEATA;
        LDR.W    R0,??DataTable8_7
        MOVS     R1,#+8
        STRB     R1,[R0, #+0]
//  807             }
//  808             if (io)
??SDHC_ioctl_31:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??SDHC_ioctl_32
//  809             {
//  810                 SDHC_Card.CARD_TYPE = ESDHC_CARD_SDIO;
        LDR.W    R0,??DataTable8_7
        MOVS     R1,#+4
        STRB     R1,[R0, #+0]
//  811             }
//  812             if (mem)
??SDHC_ioctl_32:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BEQ.N    ??SDHC_ioctl_33
//  813             {
//  814                 SDHC_Card.CARD_TYPE = ESDHC_CARD_SD;
        LDR.W    R0,??DataTable8_7
        MOVS     R1,#+2
        STRB     R1,[R0, #+0]
//  815                 if (hc)
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        CMP      R8,#+0
        BEQ.N    ??SDHC_ioctl_33
//  816                 {
//  817                     SDHC_Card.CARD_TYPE = ESDHC_CARD_SDHC;
        LDR.W    R0,??DataTable8_7
        MOVS     R1,#+3
        STRB     R1,[R0, #+0]
//  818                 }
//  819             }
//  820             if (io && mem)
??SDHC_ioctl_33:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??SDHC_ioctl_34
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BEQ.N    ??SDHC_ioctl_34
//  821             {
//  822                 SDHC_Card.CARD_TYPE = ESDHC_CARD_SDCOMBO;
        LDR.W    R0,??DataTable8_7
        MOVS     R1,#+5
        STRB     R1,[R0, #+0]
//  823                 if (hc)
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        CMP      R8,#+0
        BEQ.N    ??SDHC_ioctl_34
//  824                 {
//  825                     SDHC_Card.CARD_TYPE = ESDHC_CARD_SDHCCOMBO;
        LDR.W    R0,??DataTable8_7
        MOVS     R1,#+6
        STRB     R1,[R0, #+0]
//  826                 }
//  827             }
//  828 
//  829             /*
//  830             //清除引脚复用寄存器
//  831             PORTE_PCR(0) = 0 & (PORT_PCR_MUX(4) | PORT_PCR_PS_MASK | PORT_PCR_PE_MASK | PORT_PCR_DSE_MASK);    // ESDHC.D1  
//  832             PORTE_PCR(1) = 0 & (PORT_PCR_MUX(4) | PORT_PCR_PS_MASK | PORT_PCR_PE_MASK | PORT_PCR_DSE_MASK);    // ESDHC.D0  
//  833             PORTE_PCR(2) = 0 & (PORT_PCR_MUX(4) | PORT_PCR_DSE_MASK);                                          // ESDHC.CLK 
//  834             PORTE_PCR(3) = 0 & (PORT_PCR_MUX(4) | PORT_PCR_PS_MASK | PORT_PCR_PE_MASK | PORT_PCR_DSE_MASK);    // ESDHC.CMD 
//  835             PORTE_PCR(4) = 0 & (PORT_PCR_MUX(4) | PORT_PCR_PS_MASK | PORT_PCR_PE_MASK | PORT_PCR_DSE_MASK);    // ESDHC.D3  
//  836             PORTE_PCR(5) = 0 & (PORT_PCR_MUX(4) | PORT_PCR_PS_MASK | PORT_PCR_PE_MASK | PORT_PCR_DSE_MASK);    // ESDHC.D2  
//  837 
//  838             //设置SDHC模块的波特率
//  839             SDHC_set_baudrate (CORE_CLOCK_HZ, BAUD_RATE_HZ);
//  840 
//  841             //设置复用引脚功能为SDHC
//  842             PORTE_PCR(0) = 0xFFFF & (PORT_PCR_MUX(4) | PORT_PCR_PS_MASK | PORT_PCR_PE_MASK | PORT_PCR_DSE_MASK);    // ESDHC.D1  
//  843             PORTE_PCR(1) = 0xFFFF & (PORT_PCR_MUX(4) | PORT_PCR_PS_MASK | PORT_PCR_PE_MASK | PORT_PCR_DSE_MASK);    // ESDHC.D0  
//  844             PORTE_PCR(2) = 0xFFFF & (PORT_PCR_MUX(4) | PORT_PCR_DSE_MASK);                                          // ESDHC.CLK 
//  845             PORTE_PCR(3) = 0xFFFF & (PORT_PCR_MUX(4) | PORT_PCR_PS_MASK | PORT_PCR_PE_MASK | PORT_PCR_DSE_MASK);    // ESDHC.CMD 
//  846             PORTE_PCR(4) = 0xFFFF & (PORT_PCR_MUX(4) | PORT_PCR_PS_MASK | PORT_PCR_PE_MASK | PORT_PCR_DSE_MASK);    // ESDHC.D3  
//  847             PORTE_PCR(5) = 0xFFFF & (PORT_PCR_MUX(4) | PORT_PCR_PS_MASK | PORT_PCR_PE_MASK | PORT_PCR_DSE_MASK);    // ESDHC.D2  
//  848 
//  849             //使能SDHC模块的时钟
//  850             SIM_SCGC3 |= SIM_SCGC3_SDHC_MASK;
//  851             */
//  852             break;
??SDHC_ioctl_34:
        B.N      ??SDHC_ioctl_10
//  853         //向卡发送命令
//  854         case IO_IOCTL_ESDHC_SEND_COMMAND:
//  855 #if PRINT
//  856           uartPrintf("发送命令：IO_IOCTL_ESDHC_SEND_COMMAND\n");
//  857 #endif
//  858             val = SDHC_send_command ((ESDHC_COMMAND_STRUCT_PTR)param32_ptr);
??SDHC_ioctl_3:
        MOVS     R0,R4
        BL       SDHC_send_command
        MOV      R9,R0
//  859             if (val > 0)
        CMP      R9,#+0
        BEQ.N    ??SDHC_ioctl_35
//  860             {
//  861                 result = ESDHC_ERROR_COMMAND_FAILED;
        MOVS     R10,#+2
//  862             }
//  863             if (val < 0)
//  864             {
//  865                 result = ESDHC_ERROR_COMMAND_TIMEOUT;
//  866             }
//  867             break;
??SDHC_ioctl_35:
        B.N      ??SDHC_ioctl_10
//  868         //获取当前通信波特率状态
//  869         case IO_IOCTL_ESDHC_GET_BAUDRATE:
//  870             if (NULL == param32_ptr) 
??SDHC_ioctl_5:
        CMP      R4,#+0
        BNE.N    ??SDHC_ioctl_36
//  871             {
//  872                 result = IO_ERROR_INVALID_PARAMETER;
        MOVS     R10,#+12
        B.N      ??SDHC_ioctl_37
//  873             } 
//  874             else 
//  875             {
//  876                 //获取当前设置的波特率
//  877                 val = ((SDHC_SYSCTL & SDHC_SYSCTL_SDCLKFS_MASK) >> SDHC_SYSCTL_SDCLKFS_SHIFT) << 1;
??SDHC_ioctl_36:
        LDR.W    R0,??DataTable8_9  ;; 0x400b102c
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+7
        ANDS     R9,R0,#0x1FE
//  878                 val *= ((SDHC_SYSCTL & SDHC_SYSCTL_DVS_MASK) >> SDHC_SYSCTL_DVS_SHIFT) + 1;
        LDR.W    R0,??DataTable8_9  ;; 0x400b102c
        LDR      R0,[R0, #+0]
        UBFX     R0,R0,#+4,#+4
        ADDS     R0,R0,#+1
        MUL      R9,R0,R9
//  879                 *param32_ptr = (u32)(CORE_CLOCK_HZ / val);
        LDR.W    R0,??DataTable8_30  ;; 0x5b8d800
        UDIV     R0,R0,R9
        STR      R0,[R4, #+0]
//  880             }
//  881             break;
??SDHC_ioctl_37:
        B.N      ??SDHC_ioctl_10
//  882         //设定当前通信波特率状态
//  883         case IO_IOCTL_ESDHC_SET_BAUDRATE:
//  884             if (NULL == param32_ptr) 
??SDHC_ioctl_4:
        CMP      R4,#+0
        BNE.N    ??SDHC_ioctl_38
//  885             {
//  886                 result = IO_ERROR_INVALID_PARAMETER;
        MOVS     R10,#+12
        B.N      ??SDHC_ioctl_39
//  887             } 
//  888             else if (0 == (*param32_ptr)) 
??SDHC_ioctl_38:
        LDR      R0,[R4, #+0]
        CMP      R0,#+0
        BNE.N    ??SDHC_ioctl_40
//  889             {
//  890                 result = IO_ERROR_INVALID_PARAMETER;
        MOVS     R10,#+12
        B.N      ??SDHC_ioctl_39
//  891             } 
//  892             else 
//  893             {
//  894                 if (! SDHC_is_running())
??SDHC_ioctl_40:
        BL       SDHC_is_running
        CMP      R0,#+0
        BNE.N    ??SDHC_ioctl_41
//  895                 {
//  896                     //清除引脚复用寄存器
//  897                     PORTE_PCR(0) = 0 & (PORT_PCR_MUX(4) | PORT_PCR_PS_MASK | PORT_PCR_PE_MASK | PORT_PCR_DSE_MASK);    // ESDHC.D1  
        LDR.W    R0,??DataTable8_16  ;; 0x4004d000
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  898                     PORTE_PCR(1) = 0 & (PORT_PCR_MUX(4) | PORT_PCR_PS_MASK | PORT_PCR_PE_MASK | PORT_PCR_DSE_MASK);    // ESDHC.D0  
        LDR.W    R0,??DataTable8_17  ;; 0x4004d004
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  899                     PORTE_PCR(2) = 0 & (PORT_PCR_MUX(4) | PORT_PCR_DSE_MASK);                                          // ESDHC.CLK 
        LDR.W    R0,??DataTable8_18  ;; 0x4004d008
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  900                     PORTE_PCR(3) = 0 & (PORT_PCR_MUX(4) | PORT_PCR_PS_MASK | PORT_PCR_PE_MASK | PORT_PCR_DSE_MASK);    // ESDHC.CMD 
        LDR.W    R0,??DataTable8_19  ;; 0x4004d00c
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  901                     PORTE_PCR(4) = 0 & (PORT_PCR_MUX(4) | PORT_PCR_PS_MASK | PORT_PCR_PE_MASK | PORT_PCR_DSE_MASK);    // ESDHC.D3  
        LDR.W    R0,??DataTable8_20  ;; 0x4004d010
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  902                     PORTE_PCR(5) = 0 & (PORT_PCR_MUX(4) | PORT_PCR_PS_MASK | PORT_PCR_PE_MASK | PORT_PCR_DSE_MASK);    // ESDHC.D2  
        LDR.W    R0,??DataTable8_21  ;; 0x4004d014
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  903 
//  904                     //设置SDHC模块的波特率
//  905                     SDHC_set_baudrate (CORE_CLOCK_HZ, *param32_ptr);
        LDR      R1,[R4, #+0]
        LDR.W    R0,??DataTable8_30  ;; 0x5b8d800
        BL       SDHC_set_baudrate
//  906 
//  907                     //设置复用引脚功能为SDHC
//  908                     PORTE_PCR(0) = 0xFFFF & (PORT_PCR_MUX(4) | PORT_PCR_PS_MASK | PORT_PCR_PE_MASK | PORT_PCR_DSE_MASK);    // ESDHC.D1  
        LDR.W    R0,??DataTable8_16  ;; 0x4004d000
        MOVW     R1,#+1091
        STR      R1,[R0, #+0]
//  909                     PORTE_PCR(1) = 0xFFFF & (PORT_PCR_MUX(4) | PORT_PCR_PS_MASK | PORT_PCR_PE_MASK | PORT_PCR_DSE_MASK);    // ESDHC.D0  
        LDR.W    R0,??DataTable8_17  ;; 0x4004d004
        MOVW     R1,#+1091
        STR      R1,[R0, #+0]
//  910                     PORTE_PCR(2) = 0xFFFF & (PORT_PCR_MUX(4) | PORT_PCR_DSE_MASK);                                          // ESDHC.CLK 
        LDR.W    R0,??DataTable8_18  ;; 0x4004d008
        MOV      R1,#+1088
        STR      R1,[R0, #+0]
//  911                     PORTE_PCR(3) = 0xFFFF & (PORT_PCR_MUX(4) | PORT_PCR_PS_MASK | PORT_PCR_PE_MASK | PORT_PCR_DSE_MASK);    // ESDHC.CMD 
        LDR.W    R0,??DataTable8_19  ;; 0x4004d00c
        MOVW     R1,#+1091
        STR      R1,[R0, #+0]
//  912                     PORTE_PCR(4) = 0xFFFF & (PORT_PCR_MUX(4) | PORT_PCR_PS_MASK | PORT_PCR_PE_MASK | PORT_PCR_DSE_MASK);    // ESDHC.D3  
        LDR.W    R0,??DataTable8_20  ;; 0x4004d010
        MOVW     R1,#+1091
        STR      R1,[R0, #+0]
//  913                     PORTE_PCR(5) = 0xFFFF & (PORT_PCR_MUX(4) | PORT_PCR_PS_MASK | PORT_PCR_PE_MASK | PORT_PCR_DSE_MASK);    // ESDHC.D2  
        LDR.W    R0,??DataTable8_21  ;; 0x4004d014
        MOVW     R1,#+1091
        STR      R1,[R0, #+0]
//  914 
//  915                     //使能SDHC模块的时钟
//  916                     SIM_SCGC3 |= SIM_SCGC3_SDHC_MASK;
        LDR.W    R0,??DataTable8_8  ;; 0x40048030
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x20000
        LDR.W    R1,??DataTable8_8  ;; 0x40048030
        STR      R0,[R1, #+0]
        B.N      ??SDHC_ioctl_39
//  917                 }
//  918                 else
//  919                 {
//  920                     result = IO_ERROR_DEVICE_BUSY;
??SDHC_ioctl_41:
        MOVS     R10,#+10
//  921                 }
//  922             }
//  923             break;
??SDHC_ioctl_39:
        B.N      ??SDHC_ioctl_10
//  924         //获取块长度
//  925         case IO_IOCTL_ESDHC_GET_BLOCK_SIZE:
//  926             if (NULL == param32_ptr) 
??SDHC_ioctl_9:
        CMP      R4,#+0
        BNE.N    ??SDHC_ioctl_42
//  927             {
//  928                 result = IO_ERROR_INVALID_PARAMETER;
        MOVS     R10,#+12
        B.N      ??SDHC_ioctl_43
//  929             } 
//  930             else 
//  931             {
//  932                 //获取SDHC模块设置的块的大小
//  933                 *param32_ptr = (SDHC_BLKATTR & SDHC_BLKATTR_BLKSIZE_MASK) >> SDHC_BLKATTR_BLKSIZE_SHIFT;
??SDHC_ioctl_42:
        LDR.W    R0,??DataTable8_12  ;; 0x400b1004
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+19       ;; ZeroExtS R0,R0,#+19,#+19
        LSRS     R0,R0,#+19
        STR      R0,[R4, #+0]
//  934             }       
//  935             break;
??SDHC_ioctl_43:
        B.N      ??SDHC_ioctl_10
//  936         //设定块长度
//  937         case IO_IOCTL_ESDHC_SET_BLOCK_SIZE:
//  938             if (NULL == param32_ptr) 
??SDHC_ioctl_8:
        CMP      R4,#+0
        BNE.N    ??SDHC_ioctl_44
//  939             {
//  940                 result = IO_ERROR_INVALID_PARAMETER;
        MOVS     R10,#+12
        B.N      ??SDHC_ioctl_45
//  941             } 
//  942             else 
//  943             {
//  944                 //设置SDHC模块处理的块的大小
//  945                 if (! SDHC_is_running())
??SDHC_ioctl_44:
        BL       SDHC_is_running
        CMP      R0,#+0
        BNE.N    ??SDHC_ioctl_46
//  946                 {
//  947                     if (*param32_ptr > 0x0FFF)
        LDR      R0,[R4, #+0]
        CMP      R0,#+4096
        BCC.N    ??SDHC_ioctl_47
//  948                     {
//  949                         result = IO_ERROR_INVALID_PARAMETER;
        MOVS     R10,#+12
        B.N      ??SDHC_ioctl_45
//  950                     }
//  951                     else
//  952                     {
//  953                         SDHC_BLKATTR &= (~ SDHC_BLKATTR_BLKSIZE_MASK); 
??SDHC_ioctl_47:
        LDR.W    R0,??DataTable8_12  ;; 0x400b1004
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+13
        LSLS     R0,R0,#+13
        LDR.W    R1,??DataTable8_12  ;; 0x400b1004
        STR      R0,[R1, #+0]
//  954                         SDHC_BLKATTR |= SDHC_BLKATTR_BLKSIZE(*param32_ptr);
        LDR.W    R0,??DataTable8_12  ;; 0x400b1004
        LDR      R0,[R0, #+0]
        LDR      R1,[R4, #+0]
        LSLS     R1,R1,#+19       ;; ZeroExtS R1,R1,#+19,#+19
        LSRS     R1,R1,#+19
        ORRS     R0,R1,R0
        LDR.W    R1,??DataTable8_12  ;; 0x400b1004
        STR      R0,[R1, #+0]
        B.N      ??SDHC_ioctl_45
//  955                     }
//  956                 }
//  957                 else
//  958                 {
//  959                     result = IO_ERROR_DEVICE_BUSY;
??SDHC_ioctl_46:
        MOVS     R10,#+10
//  960                 }
//  961             }       
//  962             break;
??SDHC_ioctl_45:
        B.N      ??SDHC_ioctl_10
//  963         //获取卡通信总线位宽
//  964         case IO_IOCTL_ESDHC_GET_BUS_WIDTH:
//  965             if (NULL == param32_ptr) 
??SDHC_ioctl_7:
        CMP      R4,#+0
        BNE.N    ??SDHC_ioctl_48
//  966             {
//  967                 result = IO_ERROR_INVALID_PARAMETER;
        MOVS     R10,#+12
        B.N      ??SDHC_ioctl_49
//  968             } 
//  969             else 
//  970             {
//  971                 //获取当前配置的SDHC模块的总线宽度
//  972                 val = (SDHC_PROCTL & SDHC_PROCTL_DTW_MASK) >> SDHC_PROCTL_DTW_SHIFT;
??SDHC_ioctl_48:
        LDR.W    R0,??DataTable8_13  ;; 0x400b1028
        LDR      R0,[R0, #+0]
        UBFX     R9,R0,#+1,#+2
//  973                 if (ESDHC_PROCTL_DTW_1BIT == val)
        CMP      R9,#+0
        BNE.N    ??SDHC_ioctl_50
//  974                 {
//  975                     *param32_ptr = ESDHC_BUS_WIDTH_1BIT;
        MOVS     R0,#+0
        STR      R0,[R4, #+0]
        B.N      ??SDHC_ioctl_49
//  976                 }
//  977                 else if (ESDHC_PROCTL_DTW_4BIT == val)
??SDHC_ioctl_50:
        CMP      R9,#+1
        BNE.N    ??SDHC_ioctl_51
//  978                 {
//  979                     *param32_ptr = ESDHC_BUS_WIDTH_4BIT;
        MOVS     R0,#+1
        STR      R0,[R4, #+0]
        B.N      ??SDHC_ioctl_49
//  980                 }
//  981                 else if (ESDHC_PROCTL_DTW_8BIT == val)
??SDHC_ioctl_51:
        CMP      R9,#+16
        BNE.N    ??SDHC_ioctl_52
//  982                 {
//  983                     *param32_ptr = ESDHC_BUS_WIDTH_8BIT;
        MOVS     R0,#+2
        STR      R0,[R4, #+0]
        B.N      ??SDHC_ioctl_49
//  984                 }
//  985                 else
//  986                 {
//  987                     result = ESDHC_ERROR_INVALID_BUS_WIDTH; 
??SDHC_ioctl_52:
        MOVS     R10,#+5
//  988                 }
//  989             }       
//  990             break;
??SDHC_ioctl_49:
        B.N      ??SDHC_ioctl_10
//  991         //设定卡通信总线位宽
//  992         case IO_IOCTL_ESDHC_SET_BUS_WIDTH:
//  993             if (NULL == param32_ptr) 
??SDHC_ioctl_6:
        CMP      R4,#+0
        BNE.N    ??SDHC_ioctl_53
//  994             {
//  995                 result = IO_ERROR_INVALID_PARAMETER;
        MOVS     R10,#+12
        B.N      ??SDHC_ioctl_54
//  996             } 
//  997             else 
//  998             {
//  999                 //设置SDHC模块的总线宽度
// 1000                 if (! SDHC_is_running())
??SDHC_ioctl_53:
        BL       SDHC_is_running
        CMP      R0,#+0
        BNE.N    ??SDHC_ioctl_55
// 1001                 {
// 1002                     if (ESDHC_BUS_WIDTH_1BIT == *param32_ptr)
        LDR      R0,[R4, #+0]
        CMP      R0,#+0
        BNE.N    ??SDHC_ioctl_56
// 1003                     {
// 1004                         SDHC_PROCTL &= (~ SDHC_PROCTL_DTW_MASK);
        LDR.N    R0,??DataTable8_13  ;; 0x400b1028
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x6
        LDR.N    R1,??DataTable8_13  ;; 0x400b1028
        STR      R0,[R1, #+0]
// 1005                         SDHC_PROCTL |= SDHC_PROCTL_DTW(ESDHC_PROCTL_DTW_1BIT);
        LDR.N    R0,??DataTable8_13  ;; 0x400b1028
        LDR.N    R1,??DataTable8_13  ;; 0x400b1028
        LDR      R1,[R1, #+0]
        STR      R1,[R0, #+0]
        B.N      ??SDHC_ioctl_54
// 1006                     }
// 1007                     else if (ESDHC_BUS_WIDTH_4BIT == *param32_ptr)
??SDHC_ioctl_56:
        LDR      R0,[R4, #+0]
        CMP      R0,#+1
        BNE.N    ??SDHC_ioctl_57
// 1008                     {
// 1009                         SDHC_PROCTL &= (~ SDHC_PROCTL_DTW_MASK);
        LDR.N    R0,??DataTable8_13  ;; 0x400b1028
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x6
        LDR.N    R1,??DataTable8_13  ;; 0x400b1028
        STR      R0,[R1, #+0]
// 1010                         SDHC_PROCTL |= SDHC_PROCTL_DTW(ESDHC_PROCTL_DTW_4BIT);
        LDR.N    R0,??DataTable8_13  ;; 0x400b1028
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x2
        LDR.N    R1,??DataTable8_13  ;; 0x400b1028
        STR      R0,[R1, #+0]
        B.N      ??SDHC_ioctl_54
// 1011                     }
// 1012                     else if (ESDHC_BUS_WIDTH_8BIT == *param32_ptr)
??SDHC_ioctl_57:
        LDR      R0,[R4, #+0]
        CMP      R0,#+2
        BNE.N    ??SDHC_ioctl_58
// 1013                     {
// 1014                         SDHC_PROCTL &= (~ SDHC_PROCTL_DTW_MASK);
        LDR.N    R0,??DataTable8_13  ;; 0x400b1028
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x6
        LDR.N    R1,??DataTable8_13  ;; 0x400b1028
        STR      R0,[R1, #+0]
// 1015                         SDHC_PROCTL |= SDHC_PROCTL_DTW(ESDHC_PROCTL_DTW_8BIT);
        LDR.N    R0,??DataTable8_13  ;; 0x400b1028
        LDR.N    R1,??DataTable8_13  ;; 0x400b1028
        LDR      R1,[R1, #+0]
        STR      R1,[R0, #+0]
        B.N      ??SDHC_ioctl_54
// 1016                     }
// 1017                     else
// 1018                     {
// 1019                         result = ESDHC_ERROR_INVALID_BUS_WIDTH; 
??SDHC_ioctl_58:
        MOVS     R10,#+5
        B.N      ??SDHC_ioctl_54
// 1020                     }
// 1021                 }
// 1022                 else
// 1023                 {
// 1024                     result = IO_ERROR_DEVICE_BUSY;
??SDHC_ioctl_55:
        MOVS     R10,#+10
// 1025                 }
// 1026             }       
// 1027             break;
??SDHC_ioctl_54:
        B.N      ??SDHC_ioctl_10
// 1028         //获取卡当前状态
// 1029         case IO_IOCTL_ESDHC_GET_CARD:
// 1030             if (NULL == param32_ptr) 
??SDHC_ioctl_2:
        CMP      R4,#+0
        BNE.N    ??SDHC_ioctl_59
// 1031             {
// 1032                 result = IO_ERROR_INVALID_PARAMETER;
        MOVS     R10,#+12
        B.N      ??SDHC_ioctl_60
// 1033             } 
// 1034             else 
// 1035             {
// 1036                 //等待80个时钟
// 1037                 SDHC_SYSCTL |= SDHC_SYSCTL_INITA_MASK;
??SDHC_ioctl_59:
        LDR.N    R0,??DataTable8_9  ;; 0x400b102c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x8000000
        LDR.N    R1,??DataTable8_9  ;; 0x400b102c
        STR      R0,[R1, #+0]
// 1038                 while (SDHC_SYSCTL & SDHC_SYSCTL_INITA_MASK){};
??SDHC_ioctl_61:
        LDR.N    R0,??DataTable8_9  ;; 0x400b102c
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+4
        BMI.N    ??SDHC_ioctl_61
// 1039                     
// 1040                 //读取SD卡返回的状态
// 1041                 if (SDHC_IRQSTAT & SDHC_IRQSTAT_CRM_MASK)
        LDR.N    R0,??DataTable8_22  ;; 0x400b1030
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+24
        BPL.N    ??SDHC_ioctl_62
// 1042                 {
// 1043                     SDHC_IRQSTAT |= SDHC_IRQSTAT_CRM_MASK;
        LDR.N    R0,??DataTable8_22  ;; 0x400b1030
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x80
        LDR.N    R1,??DataTable8_22  ;; 0x400b1030
        STR      R0,[R1, #+0]
// 1044                     SDHC_Card.CARD_TYPE = ESDHC_CARD_NONE;
        LDR.N    R0,??DataTable8_7
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
// 1045                 }
// 1046                 if (SDHC_PRSSTAT & SDHC_PRSSTAT_CINS_MASK)
??SDHC_ioctl_62:
        LDR.N    R0,??DataTable8_15  ;; 0x400b1024
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+15
        BPL.N    ??SDHC_ioctl_63
// 1047                 {
// 1048                     if (ESDHC_CARD_NONE == SDHC_Card.CARD_TYPE)
        LDR.N    R0,??DataTable8_7
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??SDHC_ioctl_64
// 1049                     {
// 1050                     	SDHC_Card.CARD_TYPE = ESDHC_CARD_UNKNOWN;
        LDR.N    R0,??DataTable8_7
        MOVS     R1,#+1
        STRB     R1,[R0, #+0]
        B.N      ??SDHC_ioctl_64
// 1051                     }
// 1052                 }
// 1053                 else
// 1054                 {
// 1055                 	SDHC_Card.CARD_TYPE = ESDHC_CARD_NONE;
??SDHC_ioctl_63:
        LDR.N    R0,??DataTable8_7
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
// 1056                 }
// 1057                 *param32_ptr = SDHC_Card.CARD_TYPE;
??SDHC_ioctl_64:
        LDR.N    R0,??DataTable8_7
        LDRB     R0,[R0, #+0]
        STR      R0,[R4, #+0]
// 1058             }
// 1059             break;
??SDHC_ioctl_60:
        B.N      ??SDHC_ioctl_10
// 1060         default:
// 1061             result = IO_ERROR_INVALID_IOCTL_CMD;
??SDHC_ioctl_1:
        MOVS     R10,#+9
// 1062             break;
// 1063     }
// 1064     return result;
??SDHC_ioctl_10:
        MOV      R0,R10
        ADD      SP,SP,#+32
        POP      {R4-R10,PC}      ;; return
// 1065 }
// 1066 
// 1067 
// 1068 //=========================================================================
// 1069 //函数名称：SDHC_set_baudrate                                                        
// 1070 //功能概要：设置SDHC模块的时钟。                                                
// 1071 //参数说明：clock:系统时钟                                               
// 1072 //         baudrate：波特率                                 
// 1073 //函数返回：无                                                               
// 1074 //=========================================================================

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1075 void SDHC_set_baudrate(u32 clock,u32 baudrate)
// 1076 {
SDHC_set_baudrate:
        PUSH     {R4-R7}
// 1077     u32 i, pres, div, min, minpres = 0x80, mindiv = 0x0F;
        MOVS     R2,#+128
        MOVS     R3,#+15
// 1078     u32  val;
// 1079 
// 1080     //找到相近的分频因子
// 1081     min = (u32)-1;
        MOVS     R6,#-1
// 1082     for (pres = 2; pres <= 256; pres <<= 1) 
        MOVS     R4,#+2
        B.N      ??SDHC_set_baudrate_0
// 1083     {
// 1084         for (div = 1; div <= 16; div++) 
// 1085         {
// 1086             val = pres * div * baudrate - clock;
??SDHC_set_baudrate_1:
        MUL      R7,R5,R4
        MULS     R7,R1,R7
        SUBS     R7,R7,R0
// 1087             if (val >= 0)
// 1088             {
// 1089                 if (min > val) 
        CMP      R7,R6
        BCS.N    ??SDHC_set_baudrate_2
// 1090                 {
// 1091                     min = val;
        MOVS     R6,R7
// 1092                     minpres = pres;
        MOVS     R2,R4
// 1093                     mindiv = div;
        MOVS     R3,R5
// 1094                 }
// 1095             }
// 1096         }
??SDHC_set_baudrate_2:
        ADDS     R5,R5,#+1
??SDHC_set_baudrate_3:
        CMP      R5,#+17
        BCC.N    ??SDHC_set_baudrate_1
        LSLS     R4,R4,#+1
??SDHC_set_baudrate_0:
        CMP      R4,#+256
        BHI.N    ??SDHC_set_baudrate_4
        MOVS     R5,#+1
        B.N      ??SDHC_set_baudrate_3
// 1097     }
// 1098 
// 1099     //禁止SDHC模块时钟
// 1100     SDHC_SYSCTL &= (~ SDHC_SYSCTL_SDCLKEN_MASK);
??SDHC_set_baudrate_4:
        LDR.N    R0,??DataTable8_9  ;; 0x400b102c
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x8
        LDR.N    R1,??DataTable8_9  ;; 0x400b102c
        STR      R0,[R1, #+0]
// 1101 
// 1102     //修改分频因子
// 1103     div = SDHC_SYSCTL & (~ (SDHC_SYSCTL_DTOCV_MASK | SDHC_SYSCTL_SDCLKFS_MASK | SDHC_SYSCTL_DVS_MASK));
        LDR.N    R0,??DataTable8_9  ;; 0x400b102c
        LDR      R0,[R0, #+0]
        MOVS     R5,R0
        BFC      R5,#+4,#+16
// 1104     SDHC_SYSCTL = div | (SDHC_SYSCTL_DTOCV(0x0E) | SDHC_SYSCTL_SDCLKFS(minpres >> 1) | SDHC_SYSCTL_DVS(mindiv - 1));
        LSLS     R0,R2,#+7
        ANDS     R0,R0,#0xFF00
        ORRS     R0,R0,R5
        SUBS     R1,R3,#+1
        LSLS     R1,R1,#+4
        ANDS     R1,R1,#0xF0
        ORRS     R0,R1,R0
        ORRS     R0,R0,#0xE0000
        LDR.N    R1,??DataTable8_9  ;; 0x400b102c
        STR      R0,[R1, #+0]
// 1105 
// 1106     //等在时钟稳定
// 1107     while (0 == (SDHC_PRSSTAT & SDHC_PRSSTAT_SDSTB_MASK))
??SDHC_set_baudrate_5:
        LDR.N    R0,??DataTable8_15  ;; 0x400b1024
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+28
        BMI.N    ??SDHC_set_baudrate_6
// 1108     {
// 1109         for(i = 0;i < 200000;i++)
        MOVS     R0,#+0
??SDHC_set_baudrate_7:
        LDR.N    R1,??DataTable8_34  ;; 0x30d40
        CMP      R0,R1
        BCS.N    ??SDHC_set_baudrate_5
        ADDS     R0,R0,#+1
        B.N      ??SDHC_set_baudrate_7
// 1110         {
// 1111         }
// 1112     };
// 1113 
// 1114     //使能SDHC模块时钟
// 1115     SDHC_SYSCTL |= SDHC_SYSCTL_SDCLKEN_MASK;
??SDHC_set_baudrate_6:
        LDR.N    R0,??DataTable8_9  ;; 0x400b102c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x8
        LDR.N    R1,??DataTable8_9  ;; 0x400b102c
        STR      R0,[R1, #+0]
// 1116     SDHC_IRQSTAT |= SDHC_IRQSTAT_DTOE_MASK;
        LDR.N    R0,??DataTable8_22  ;; 0x400b1030
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x100000
        LDR.N    R1,??DataTable8_22  ;; 0x400b1030
        STR      R0,[R1, #+0]
// 1117 }
        POP      {R4-R7}
        BX       LR               ;; return
// 1118 
// 1119 //=========================================================================
// 1120 //函数名称：SDHC_is_running                                                        
// 1121 //功能概要：检测SDHC模块是否忙                                                
// 1122 //参数说明：无                              
// 1123 //函数返回：1：正忙;0：其他。                                                               
// 1124 //=========================================================================

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1125 u8 SDHC_is_running(void)
// 1126 {
// 1127     return (0 != (SDHC_PRSSTAT & (SDHC_PRSSTAT_RTA_MASK | SDHC_PRSSTAT_WTA_MASK | SDHC_PRSSTAT_DLA_MASK | SDHC_PRSSTAT_CDIHB_MASK | SDHC_PRSSTAT_CIHB_MASK)));
SDHC_is_running:
        LDR.N    R0,??DataTable8_15  ;; 0x400b1024
        LDR      R0,[R0, #+0]
        MOVW     R1,#+775
        TST      R0,R1
        BEQ.N    ??SDHC_is_running_0
        MOVS     R0,#+1
        B.N      ??SDHC_is_running_1
??SDHC_is_running_0:
        MOVS     R0,#+0
??SDHC_is_running_1:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BX       LR               ;; return
// 1128 }   
// 1129 
// 1130 //=========================================================================
// 1131 //函数名称：SDHC_status_wait                                                        
// 1132 //功能概要：等待中断标志位置位                                                
// 1133 //参数说明：mask：待不断的标志位掩码                              
// 1134 //函数返回：返回传入的数                                                              
// 1135 //=========================================================================

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1136 u32 SDHC_status_wait(u32 mask)
// 1137 {
// 1138  // uartPrintf("9\n");
// 1139   //uartPrintf("%d\n",mask);
// 1140   
// 1141     u32 result;
// 1142     do
// 1143     {
// 1144       
// 1145         result = SDHC_IRQSTAT & mask;
SDHC_status_wait:
??SDHC_status_wait_0:
        LDR.N    R1,??DataTable8_22  ;; 0x400b1030
        LDR      R1,[R1, #+0]
        ANDS     R1,R0,R1
// 1146 #if PRINT   
// 1147         uartPrintf("%d\n",SDHC_IRQSTAT);
// 1148 #endif 
// 1149     } 
// 1150     while (0 == result);
        CMP      R1,#+0
        BEQ.N    ??SDHC_status_wait_0
// 1151     return result;
        MOVS     R0,R1
        BX       LR               ;; return
// 1152 }
// 1153 
// 1154 //=========================================================================
// 1155 //函数名称：SDHC_send_command                                                        
// 1156 //功能概要：发送命令                                                
// 1157 //参数说明：command：命令结构体指针                              
// 1158 //函数返回：0：成功，1：错误，-1：超时。                                                              
// 1159 //=========================================================================

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1160 u32 SDHC_send_command (ESDHC_COMMAND_STRUCT_PTR command)
// 1161 {
SDHC_send_command:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
// 1162   //uartPrintf("开始发送命令\n");
// 1163     u32 xfertyp;//Transfer Type Register (SDHC_XFERTYP)
// 1164     
// 1165     //检查和配置命令
// 1166     xfertyp = ESDHC_COMMAND_XFERTYP[command->COMMAND & 0x3F];
        LDRB     R0,[R4, #+0]
        ANDS     R0,R0,#0x3F
        LDR.N    R1,??DataTable8_35
        LDR      R5,[R1, R0, LSL #+2]
// 1167     if ((0 == xfertyp) && (0 != command->COMMAND))
        CMP      R5,#+0
        BNE.N    ??SDHC_send_command_0
        LDRB     R0,[R4, #+0]
        CMP      R0,#+0
        BEQ.N    ??SDHC_send_command_0
// 1168     {
// 1169 #if PRINT
// 1170       uartPrintf("配置命令不全，返回1\n");
// 1171 #endif
// 1172      
// 1173       
// 1174         return 1;
        MOVS     R0,#+1
        B.N      ??SDHC_send_command_1
// 1175     }
// 1176     //uartPrintf("1\n");
// 1177     //卡移除检测
// 1178     SDHC_IRQSTAT |= SDHC_IRQSTAT_CRM_MASK;
??SDHC_send_command_0:
        LDR.N    R0,??DataTable8_22  ;; 0x400b1030
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x80
        LDR.N    R1,??DataTable8_22  ;; 0x400b1030
        STR      R0,[R1, #+0]
// 1179 
// 1180     //等待CMD通道空闲
// 1181     while (SDHC_PRSSTAT & SDHC_PRSSTAT_CIHB_MASK)
??SDHC_send_command_2:
        LDR.N    R0,??DataTable8_15  ;; 0x400b1024
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+31
        BMI.N    ??SDHC_send_command_2
// 1182     {
// 1183 #if PRINT
// 1184       uartPrintf("等待CMD通道空闲\n");
// 1185 #endif
// 1186       
// 1187     }
// 1188    
// 1189 
// 1190     //设置传输类型寄存器参数
// 1191     //写命令参数寄存器(Command Argument Register，SDHC_CMDARG)
// 1192     SDHC_CMDARG = command->ARGUMENT;
        LDR      R0,[R4, #+4]
        LDR.N    R1,??DataTable8_36  ;; 0x400b1008
        STR      R0,[R1, #+0]
// 1193     //清除XFERTYP寄存器的命令类型域
// 1194     xfertyp &= (~ SDHC_XFERTYP_CMDTYP_MASK);
        BICS     R5,R5,#0xC00000
// 1195     //设置XFERTYP寄存器的命令类型域
// 1196     xfertyp |= SDHC_XFERTYP_CMDTYP(command->TYPE);
        LDRB     R0,[R4, #+1]
        LSLS     R0,R0,#+22
        ANDS     R0,R0,#0xC00000
        ORRS     R5,R0,R5
// 1197     //如果为恢复类型
// 1198     if (ESDHC_TYPE_RESUME == command->TYPE)
        LDRB     R0,[R4, #+1]
        CMP      R0,#+2
        BNE.N    ??SDHC_send_command_3
// 1199     {
// 1200         //如果命令类型为恢复CMD52写功能选择，则置数据传送选择位。
// 1201         xfertyp |= SDHC_XFERTYP_DPSEL_MASK;
        ORRS     R5,R5,#0x200000
// 1202     }
// 1203     // uartPrintf("3\n");
// 1204     //如果是切换忙类型
// 1205     if (ESDHC_TYPE_SWITCH_BUSY == command->TYPE)
??SDHC_send_command_3:
        LDRB     R0,[R4, #+1]
        CMP      R0,#+4
        BNE.N    ??SDHC_send_command_4
// 1206     {
// 1207        //uartPrintf("4\n");
// 1208     
// 1209         if ((xfertyp & SDHC_XFERTYP_RSPTYP_MASK) == SDHC_XFERTYP_RSPTYP(ESDHC_XFERTYP_RSPTYP_48))
        ANDS     R0,R5,#0x30000
        CMP      R0,#+131072
        BNE.N    ??SDHC_send_command_5
// 1210         {
// 1211             xfertyp &= (~ SDHC_XFERTYP_RSPTYP_MASK);
        BICS     R5,R5,#0x30000
// 1212             xfertyp |= SDHC_XFERTYP_RSPTYP(ESDHC_XFERTYP_RSPTYP_48BUSY);
        ORRS     R5,R5,#0x30000
        B.N      ??SDHC_send_command_4
// 1213         }
// 1214         else
// 1215         {
// 1216             xfertyp &= (~ SDHC_XFERTYP_RSPTYP_MASK);
??SDHC_send_command_5:
        BICS     R5,R5,#0x30000
// 1217             xfertyp |= SDHC_XFERTYP_RSPTYP(ESDHC_XFERTYP_RSPTYP_48);
        ORRS     R5,R5,#0x20000
// 1218         }
// 1219     }
// 1220     //清除块数
// 1221     SDHC_BLKATTR &= (~ SDHC_BLKATTR_BLKCNT_MASK);
??SDHC_send_command_4:
        LDR.N    R0,??DataTable8_12  ;; 0x400b1004
        LDR      R0,[R0, #+0]
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        LDR.N    R1,??DataTable8_12  ;; 0x400b1004
        STR      R0,[R1, #+0]
// 1222      //uartPrintf("5\n");
// 1223     //块数判断
// 1224     if (0 != command->BLOCKS)
        LDR      R0,[R4, #+12]
        CMP      R0,#+0
        BEQ.N    ??SDHC_send_command_6
// 1225     {
// 1226       // uartPrintf("6\n");
// 1227         //块不为0
// 1228         if ((xfertyp & SDHC_XFERTYP_RSPTYP_MASK) != SDHC_XFERTYP_RSPTYP(ESDHC_XFERTYP_RSPTYP_48BUSY))
        ANDS     R0,R5,#0x30000
        CMP      R0,#+196608
        BEQ.N    ??SDHC_send_command_7
// 1229         {
// 1230             xfertyp |= SDHC_XFERTYP_DPSEL_MASK;
        ORRS     R5,R5,#0x200000
// 1231         }
// 1232         if (command->READ)
??SDHC_send_command_7:
        LDRB     R0,[R4, #+8]
        CMP      R0,#+0
        BEQ.N    ??SDHC_send_command_8
// 1233         {
// 1234             xfertyp |= SDHC_XFERTYP_DTDSEL_MASK;    
        ORRS     R5,R5,#0x10
// 1235         }
// 1236         if (command->BLOCKS > 1)
??SDHC_send_command_8:
        LDR      R0,[R4, #+12]
        CMP      R0,#+2
        BCC.N    ??SDHC_send_command_9
// 1237         {
// 1238             xfertyp |= SDHC_XFERTYP_MSBSEL_MASK;    
        ORRS     R5,R5,#0x20
// 1239         }
// 1240         if ((u32)-1 != command->BLOCKS)
??SDHC_send_command_9:
        LDR      R0,[R4, #+12]
        CMN      R0,#+1
        BEQ.N    ??SDHC_send_command_6
// 1241         {
// 1242             SDHC_BLKATTR |= SDHC_BLKATTR_BLKCNT(command->BLOCKS);
        LDR.N    R0,??DataTable8_12  ;; 0x400b1004
        LDR      R0,[R0, #+0]
        LDR      R1,[R4, #+12]
        ORRS     R0,R0,R1, LSL #+16
        LDR.N    R1,??DataTable8_12  ;; 0x400b1004
        STR      R0,[R1, #+0]
// 1243          //    uartPrintf("7\n");
// 1244             xfertyp |= SDHC_XFERTYP_BCEN_MASK;
        ORRS     R5,R5,#0x2
// 1245         }
// 1246     }
// 1247 
// 1248     //执行命令
// 1249     SDHC_DSADDR = 0;
??SDHC_send_command_6:
        LDR.N    R0,??DataTable8_37  ;; 0x400b1000
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
// 1250     SDHC_XFERTYP = xfertyp;
        LDR.N    R0,??DataTable8_38  ;; 0x400b100c
        STR      R5,[R0, #+0]
// 1251    // uartPrintf("8\n");
// 1252     //等待状态寄存器置位
// 1253     if (SDHC_status_wait (SDHC_IRQSTAT_CIE_MASK | SDHC_IRQSTAT_CEBE_MASK | SDHC_IRQSTAT_CCE_MASK | SDHC_IRQSTAT_CC_MASK) != SDHC_IRQSTAT_CC_MASK)
        LDR.N    R0,??DataTable8_39  ;; 0xe0001
        BL       SDHC_status_wait
        CMP      R0,#+1
        BEQ.N    ??SDHC_send_command_10
// 1254     {
// 1255         SDHC_IRQSTAT |= SDHC_IRQSTAT_CTOE_MASK | SDHC_IRQSTAT_CIE_MASK | SDHC_IRQSTAT_CEBE_MASK | SDHC_IRQSTAT_CCE_MASK | SDHC_IRQSTAT_CC_MASK;
        LDR.N    R0,??DataTable8_22  ;; 0x400b1030
        LDR      R0,[R0, #+0]
        ORR      R0,R0,#0xF0000
        ORRS     R0,R0,#0x1
        LDR.N    R1,??DataTable8_22  ;; 0x400b1030
        STR      R0,[R1, #+0]
// 1256 #if PRINT
// 1257         uartPrintf("等待卡置位\n");
// 1258 #endif 
// 1259         return 1;
        MOVS     R0,#+1
        B.N      ??SDHC_send_command_1
// 1260     }
// 1261 
// 1262     //检测卡是否被移除
// 1263     if (SDHC_IRQSTAT & SDHC_IRQSTAT_CRM_MASK)
??SDHC_send_command_10:
        LDR.N    R0,??DataTable8_22  ;; 0x400b1030
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+24
        BPL.N    ??SDHC_send_command_11
// 1264     {
// 1265         SDHC_IRQSTAT |= SDHC_IRQSTAT_CTOE_MASK | SDHC_IRQSTAT_CC_MASK;
        LDR.N    R0,??DataTable8_22  ;; 0x400b1030
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x10001
        LDR.N    R1,??DataTable8_22  ;; 0x400b1030
        STR      R0,[R1, #+0]
// 1266 #if PRINT
// 1267         uartPrintf("检测卡是否移除\n");
// 1268 #endif
// 1269         
// 1270         return 1;
        MOVS     R0,#+1
        B.N      ??SDHC_send_command_1
// 1271     }
// 1272 
// 1273     //检查命令是否超时
// 1274     if (SDHC_IRQSTAT & SDHC_IRQSTAT_CTOE_MASK)
??SDHC_send_command_11:
        LDR.N    R0,??DataTable8_22  ;; 0x400b1030
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+15
        BPL.N    ??SDHC_send_command_12
// 1275     {
// 1276         SDHC_IRQSTAT |= SDHC_IRQSTAT_CTOE_MASK | SDHC_IRQSTAT_CC_MASK;
        LDR.N    R0,??DataTable8_22  ;; 0x400b1030
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x10001
        LDR.N    R1,??DataTable8_22  ;; 0x400b1030
        STR      R0,[R1, #+0]
// 1277 #if PRINT
// 1278         uartPrintf("检查命令是否超时\n");
// 1279 #endif
// 1280         return -1;
        MOVS     R0,#-1
        B.N      ??SDHC_send_command_1
// 1281     }
// 1282     if ((xfertyp & SDHC_XFERTYP_RSPTYP_MASK) != SDHC_XFERTYP_RSPTYP(ESDHC_XFERTYP_RSPTYP_NO))
??SDHC_send_command_12:
        TST      R5,#0x30000
        BEQ.N    ??SDHC_send_command_13
// 1283     {
// 1284         command->RESPONSE[0] = SDHC_CMDRSP(0);
        LDR.N    R0,??DataTable8_40  ;; 0x400b1010
        LDR      R0,[R0, #+0]
        STR      R0,[R4, #+16]
// 1285         if ((xfertyp & SDHC_XFERTYP_RSPTYP_MASK) == SDHC_XFERTYP_RSPTYP(ESDHC_XFERTYP_RSPTYP_136))
        ANDS     R0,R5,#0x30000
        CMP      R0,#+65536
        BNE.N    ??SDHC_send_command_13
// 1286         {
// 1287             command->RESPONSE[1] = SDHC_CMDRSP(1);
        LDR.N    R0,??DataTable8_41  ;; 0x400b1014
        LDR      R0,[R0, #+0]
        STR      R0,[R4, #+20]
// 1288             command->RESPONSE[2] = SDHC_CMDRSP(2);
        LDR.N    R0,??DataTable8_42  ;; 0x400b1018
        LDR      R0,[R0, #+0]
        STR      R0,[R4, #+24]
// 1289             command->RESPONSE[3] = SDHC_CMDRSP(3);
        LDR.N    R0,??DataTable8_43  ;; 0x400b101c
        LDR      R0,[R0, #+0]
        STR      R0,[R4, #+28]
// 1290         }
// 1291     }
// 1292     
// 1293     SDHC_IRQSTAT |= SDHC_IRQSTAT_CC_MASK;
??SDHC_send_command_13:
        LDR.N    R0,??DataTable8_22  ;; 0x400b1030
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR.N    R1,??DataTable8_22  ;; 0x400b1030
        STR      R0,[R1, #+0]
// 1294 
// 1295     return 0;
        MOVS     R0,#+0
??SDHC_send_command_1:
        POP      {R1,R4,R5,PC}    ;; return
// 1296 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8:
        DC32     0x40064001

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_1:
        DC32     0x40048034

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_2:
        DC32     0x4007c008

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_3:
        DC32     0x40064000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_4:
        DC32     0x40064006

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_5:
        DC32     0x40064004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_6:
        DC32     0x40064005

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_7:
        DC32     SDHC_Card

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_8:
        DC32     0x40048030

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_9:
        DC32     0x400b102c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_10:
        DC32     0x1008000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_11:
        DC32     0x400b10c0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_12:
        DC32     0x400b1004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_13:
        DC32     0x400b1028

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_14:
        DC32     0x400b1044

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_15:
        DC32     0x400b1024

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_16:
        DC32     0x4004d000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_17:
        DC32     0x4004d004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_18:
        DC32     0x4004d008

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_19:
        DC32     0x4004d00c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_20:
        DC32     0x4004d010

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_21:
        DC32     0x4004d014

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_22:
        DC32     0x400b1030

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_23:
        DC32     0x400b1034

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_24:
        DC32     0x7f00b3

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_25:
        DC32     0x400b1020

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_26:
        DC32     `?<Constant "\\265\\310\\264\\375\\312\\375\\276\\335\\n`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_27:
        DC32     `?<Constant "\\264\\355\\316\\363\\267\\265\\273\\3301\\`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_28:
        DC32     `?<Constant "\\313\\371\\323\\320\\312\\375\\276\\335\\2`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_29:
        DC32     0x17d7840

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_30:
        DC32     0x5b8d800

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_31:
        DC32     0x1e8480

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_32:
        DC32     0x7a120

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_33:
        DC32     0x40300000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_34:
        DC32     0x30d40

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_35:
        DC32     ESDHC_COMMAND_XFERTYP

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_36:
        DC32     0x400b1008

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_37:
        DC32     0x400b1000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_38:
        DC32     0x400b100c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_39:
        DC32     0xe0001

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_40:
        DC32     0x400b1010

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_41:
        DC32     0x400b1014

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_42:
        DC32     0x400b1018

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_43:
        DC32     0x400b101c

        SECTION `.iar_vfe_header`:DATA:REORDER:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
// 1297 
// 1298 
// 1299 #ifdef  __cplusplus
// 1300 }
// 1301 #endif
// 
//   300 bytes in section .rodata
// 2 610 bytes in section .text
//    76 bytes in section .textrw
// 
// 2 686 bytes of CODE  memory
//   300 bytes of CONST memory
//
//Errors: none
//Warnings: 3
