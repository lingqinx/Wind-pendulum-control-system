///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.60.1.5097/W32 for ARM     15/Aug/2015  19:53:03 /
// Copyright 1999-2013 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  C:\Users\Administrator\Desktop\MPU60508.12\src\drivers\ /
//                    i2c\ioi2c.c                                             /
//    Command line =  C:\Users\Administrator\Desktop\MPU60508.12\src\drivers\ /
//                    i2c\ioi2c.c -lCN C:\Users\Administrator\Desktop\MPU6050 /
//                    8.12\build\gpio_demo\FLASH\List\ -lB                    /
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
//                    emo\FLASH\List\ioi2c.s                                  /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        PUBLIC IIC_ack_main
        PUBLIC IIC_ad_main
        PUBLIC IIC_ad_sub
        PUBLIC IIC_buf
        PUBLIC IIC_num
        PUBLIC IIC_start
        PUBLIC IIC_stop
        PUBLIC read_byte
        PUBLIC read_from_byte
        PUBLIC read_from_nbyte
        PUBLIC send_byte
        PUBLIC send_to_byte
        PUBLIC send_to_nbyte

// C:\Users\Administrator\Desktop\MPU60508.12\src\drivers\i2c\ioi2c.c
//    1 /*
//    2 ************************************************************************
//    3 *                飞思卡尔智能车程序  直立行走例程                                       
//    4 * 文件名 :[ioi2c.c] 
//    5 * 描  述 ：模拟IIC
//    6 * 设  计 ：snowwolf
//    7 *  Email ：snowwolf2012@qq.com
//    8 * 说  明 ：
//    9 ***********************************************************************
//   10 */
//   11 
//   12 
//   13 
//   14 #include "ioi2c.h"
//   15 
//   16 #ifdef IOIIC
//   17 
//   18 //内部数据定义

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   19 unsigned char IIC_ad_main; //器件从地址	    
IIC_ad_main:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   20 unsigned char IIC_ad_sub;  //器件子地址	   
IIC_ad_sub:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   21 unsigned char *IIC_buf;    //发送|接收数据缓冲区	    
IIC_buf:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   22 unsigned char IIC_num;     //发送|接收数据个数	
IIC_num:
        DS8 1
//   23 
//   24 

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//   25  void IIC_start(void)
//   26  {
//   27 	SCL=0;
IIC_start:
        LDR.W    R0,??DataTable4  ;; 0x400ff040
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+1
        LSLS     R0,R0,#+1
        LDR.W    R1,??DataTable4  ;; 0x400ff040
        STR      R0,[R1, #+0]
//   28 	SDA=1;
        LDR.W    R0,??DataTable4  ;; 0x400ff040
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x2
        LDR.W    R1,??DataTable4  ;; 0x400ff040
        STR      R0,[R1, #+0]
//   29 	ioi2cnops();
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
//   30 	SCL=1;
        LDR.W    R0,??DataTable4  ;; 0x400ff040
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR.W    R1,??DataTable4  ;; 0x400ff040
        STR      R0,[R1, #+0]
//   31 	ioi2cnops();
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
//   32 	SDA=0;
        LDR.W    R0,??DataTable4  ;; 0x400ff040
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x2
        LDR.W    R1,??DataTable4  ;; 0x400ff040
        STR      R0,[R1, #+0]
//   33 	ioi2cnops();
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
//   34 	SCL=0;
        LDR.W    R0,??DataTable4  ;; 0x400ff040
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+1
        LSLS     R0,R0,#+1
        LDR.W    R1,??DataTable4  ;; 0x400ff040
        STR      R0,[R1, #+0]
//   35 }
        BX       LR               ;; return
//   36 //************************************************
//   37 //送停止位 SDA=0->1

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//   38 void IIC_stop(void)
//   39 {
//   40 	SCL=0;
IIC_stop:
        LDR.W    R0,??DataTable4  ;; 0x400ff040
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+1
        LSLS     R0,R0,#+1
        LDR.W    R1,??DataTable4  ;; 0x400ff040
        STR      R0,[R1, #+0]
//   41 	ioi2cnops();
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
//   42 	SDA=0;
        LDR.W    R0,??DataTable4  ;; 0x400ff040
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x2
        LDR.W    R1,??DataTable4  ;; 0x400ff040
        STR      R0,[R1, #+0]
//   43 	ioi2cnops();
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
//   44 	SCL=1;
        LDR.W    R0,??DataTable4  ;; 0x400ff040
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR.W    R1,??DataTable4  ;; 0x400ff040
        STR      R0,[R1, #+0]
//   45 	ioi2cnops();
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
//   46 	SDA=1;
        LDR.W    R0,??DataTable4  ;; 0x400ff040
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x2
        LDR.W    R1,??DataTable4  ;; 0x400ff040
        STR      R0,[R1, #+0]
//   47 	ioi2cnops();
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
//   48 	SCL=0;
        LDR.W    R0,??DataTable4  ;; 0x400ff040
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+1
        LSLS     R0,R0,#+1
        LDR.W    R1,??DataTable4  ;; 0x400ff040
        STR      R0,[R1, #+0]
//   49 }
        BX       LR               ;; return
//   50 //************************************************
//   51 //主应答(包含ack:SDA=0和no_ack:SDA=0)

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//   52 void IIC_ack_main(byte ack_main){
//   53 	SCL=0;
IIC_ack_main:
        LDR.W    R1,??DataTable4  ;; 0x400ff040
        LDR      R1,[R1, #+0]
        LSRS     R1,R1,#+1
        LSLS     R1,R1,#+1
        LDR.W    R2,??DataTable4  ;; 0x400ff040
        STR      R1,[R2, #+0]
//   54 	if(ack_main)SDA=0; //ack主应答
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.N    ??IIC_ack_main_0
        LDR.W    R0,??DataTable4  ;; 0x400ff040
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x2
        LDR.W    R1,??DataTable4  ;; 0x400ff040
        STR      R0,[R1, #+0]
        B.N      ??IIC_ack_main_1
//   55 	else SDA=1; //no_ack无需应答
??IIC_ack_main_0:
        LDR.W    R0,??DataTable4  ;; 0x400ff040
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x2
        LDR.W    R1,??DataTable4  ;; 0x400ff040
        STR      R0,[R1, #+0]
//   56 	ioi2cnops();
??IIC_ack_main_1:
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
//   57 	SCL=1;
        LDR.W    R0,??DataTable4  ;; 0x400ff040
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR.W    R1,??DataTable4  ;; 0x400ff040
        STR      R0,[R1, #+0]
//   58 	ioi2cnops();
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
//   59 	SCL=0;
        LDR.W    R0,??DataTable4  ;; 0x400ff040
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+1
        LSLS     R0,R0,#+1
        LDR.W    R1,??DataTable4  ;; 0x400ff040
        STR      R0,[R1, #+0]
//   60 }
        BX       LR               ;; return
//   61 //*************************************************
//   62 //字节发送程序
//   63 //发送c(可以是数据也可是地址)，送完后接收从应答
//   64 //不考虑从应答位
//   65 

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//   66 void send_byte(unsigned char c){
//   67 	unsigned char i;
//   68  //unsigned char ack; //因为没有看到他的用途，所以就注释掉了，下面也一样
//   69 	for(i=0;i<8;i++)
send_byte:
        MOVS     R1,#+0
        B.N      ??send_byte_0
//   70         {
//   71             SCL=0;
//   72             if((c<<i) & 0x80)SDA=1; //判断发送位
//   73             else SDA=0;
??send_byte_1:
        LDR.W    R2,??DataTable4  ;; 0x400ff040
        LDR      R2,[R2, #+0]
        BICS     R2,R2,#0x2
        LDR.W    R3,??DataTable4  ;; 0x400ff040
        STR      R2,[R3, #+0]
//   74             ioi2cnops();
??send_byte_2:
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
//   75             SCL=1;
        LDR.W    R2,??DataTable4  ;; 0x400ff040
        LDR      R2,[R2, #+0]
        ORRS     R2,R2,#0x1
        LDR.W    R3,??DataTable4  ;; 0x400ff040
        STR      R2,[R3, #+0]
//   76             ioi2cnops();
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
//   77             SCL=0;
        LDR.W    R2,??DataTable4  ;; 0x400ff040
        LDR      R2,[R2, #+0]
        LSRS     R2,R2,#+1
        LSLS     R2,R2,#+1
        LDR.W    R3,??DataTable4  ;; 0x400ff040
        STR      R2,[R3, #+0]
        ADDS     R1,R1,#+1
??send_byte_0:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+8
        BGE.N    ??send_byte_3
        LDR.W    R2,??DataTable4  ;; 0x400ff040
        LDR      R2,[R2, #+0]
        LSRS     R2,R2,#+1
        LSLS     R2,R2,#+1
        LDR.W    R3,??DataTable4  ;; 0x400ff040
        STR      R2,[R3, #+0]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LSLS     R2,R0,R1
        LSLS     R2,R2,#+24
        BPL.W    ??send_byte_1
        LDR.W    R2,??DataTable4  ;; 0x400ff040
        LDR      R2,[R2, #+0]
        ORRS     R2,R2,#0x2
        LDR.W    R3,??DataTable4  ;; 0x400ff040
        STR      R2,[R3, #+0]
        B.N      ??send_byte_2
//   78 	}
//   79         
//   80         SDADDR=IIC_IN;    //输入
??send_byte_3:
        LDR.W    R0,??DataTable4_1  ;; 0x400ff054
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x2
        LDR.W    R1,??DataTable4_1  ;; 0x400ff054
        STR      R0,[R1, #+0]
//   81 	ioi2cnops();
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
//   82 	SDA=1; //发送完8bit，释放总线准备接收应答位
        LDR.N    R0,??DataTable4  ;; 0x400ff040
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x2
        LDR.N    R1,??DataTable4  ;; 0x400ff040
        STR      R0,[R1, #+0]
//   83 	ioi2cnops();
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
//   84 	SCL=1; //
        LDR.N    R0,??DataTable4  ;; 0x400ff040
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR.N    R1,??DataTable4  ;; 0x400ff040
        STR      R0,[R1, #+0]
//   85         ioi2cnops(); //sda上数据即是从应答位 
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
//   86         //while(!SDA);//为确认信息做准备
//   87        /* while(!SDA)//因为调试的时候从没有出现“未收到应答”，但为确保准确，还要加一个信号
//   88         {
//   89 	ioi2cnops(); //sda上数据即是从应答位 
//   90         uartPrintf("未收到应答\n");
//   91         }
//   92         uartPrintf("收到从应答\n");
//   93         */
//   94         //外部循环是自己加，不知道读取端口是不是这样
//   95    //ack = IIC_OUT;   //因为没有看到他的用途，所以就注释掉了，同上一体
//   96         
//   97         SCL=0; //不考虑从应答位|但要控制好时序
        LDR.N    R0,??DataTable4  ;; 0x400ff040
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+1
        LSLS     R0,R0,#+1
        LDR.N    R1,??DataTable4  ;; 0x400ff040
        STR      R0,[R1, #+0]
//   98         
//   99         SDADDR=IIC_OUT;
        LDR.N    R0,??DataTable4_1  ;; 0x400ff054
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x2
        LDR.N    R1,??DataTable4_1  ;; 0x400ff054
        STR      R0,[R1, #+0]
//  100         ioi2cnops();
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
//  101 }
        BX       LR               ;; return
//  102 //**************************************************
//  103 //字节接收程序
//  104 //接收器件传来的数据，此程序应配合|主应答函数|IIC_ack_main()使用
//  105 //return: uchar型1字节
//  106 //读取字节要是错误的话，那就是ioi2cnops时钟设置不对，但经过测试没有问题

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//  107 unsigned char read_byte(void)
//  108 {
//  109         unsigned char i;
//  110         unsigned char c;
//  111 	c=0;
read_byte:
        MOVS     R0,#+0
//  112 	SCL=0;
        LDR.N    R1,??DataTable4  ;; 0x400ff040
        LDR      R1,[R1, #+0]
        LSRS     R1,R1,#+1
        LSLS     R1,R1,#+1
        LDR.N    R2,??DataTable4  ;; 0x400ff040
        STR      R1,[R2, #+0]
//  113 	ioi2cnops();
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
//  114 	SDA=1; //置数据线为输入方式
        LDR.N    R1,??DataTable4  ;; 0x400ff040
        LDR      R1,[R1, #+0]
        ORRS     R1,R1,#0x2
        LDR.N    R2,??DataTable4  ;; 0x400ff040
        STR      R1,[R2, #+0]
//  115 	SDADDR=IIC_IN;
        LDR.N    R1,??DataTable4_1  ;; 0x400ff054
        LDR      R1,[R1, #+0]
        BICS     R1,R1,#0x2
        LDR.N    R2,??DataTable4_1  ;; 0x400ff054
        STR      R1,[R2, #+0]
//  116         ioi2cnops();
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
//  117 	for(i=0;i<8;i++)
        MOVS     R1,#+0
        B.N      ??read_byte_0
//  118         {
//  119             SCL=1; //置时钟线为高，使数据线上数据有效
??read_byte_1:
        LDR.N    R2,??DataTable4  ;; 0x400ff040
        LDR      R2,[R2, #+0]
        ORRS     R2,R2,#0x1
        LDR.N    R3,??DataTable4  ;; 0x400ff040
        STR      R2,[R3, #+0]
//  120             ioi2cnops();
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
//  121             c<<=1;
        LSLS     R0,R0,#+1
//  122             if(SDA_IN)c+=1; //读数据位，将接收的数据存c
        LDR.N    R2,??DataTable4_2  ;; 0x400ff050
        LDR      R2,[R2, #+0]
        UBFX     R2,R2,#+1,#+1
        CMP      R2,#+0
        BEQ.N    ??read_byte_2
        ADDS     R0,R0,#+1
//  123             SCL=0; //置时钟线为低，准备接收数据位
??read_byte_2:
        LDR.N    R2,??DataTable4  ;; 0x400ff040
        LDR      R2,[R2, #+0]
        LSRS     R2,R2,#+1
        LSLS     R2,R2,#+1
        LDR.N    R3,??DataTable4  ;; 0x400ff040
        STR      R2,[R3, #+0]
//  124             ioi2cnops();
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
//  125 	}
        ADDS     R1,R1,#+1
??read_byte_0:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+8
        BLT.N    ??read_byte_1
//  126 	SCL=0;
        LDR.N    R1,??DataTable4  ;; 0x400ff040
        LDR      R1,[R1, #+0]
        LSRS     R1,R1,#+1
        LSLS     R1,R1,#+1
        LDR.N    R2,??DataTable4  ;; 0x400ff040
        STR      R1,[R2, #+0]
//  127 	SDADDR=IIC_OUT;
        LDR.N    R1,??DataTable4_1  ;; 0x400ff054
        LDR      R1,[R1, #+0]
        ORRS     R1,R1,#0x2
        LDR.N    R2,??DataTable4_1  ;; 0x400ff054
        STR      R1,[R2, #+0]
//  128 	return c;
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BX       LR               ;; return
//  129 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4:
        DC32     0x400ff040

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_1:
        DC32     0x400ff054

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_2:
        DC32     0x400ff050
//  130 //***************************************************
//  131 //向无子地址器件发送单字节数据

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  132 void send_to_byte(unsigned char ad_main,unsigned char c){
send_to_byte:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
//  133 	IIC_start();
        BL       IIC_start
//  134 	send_byte(ad_main); //发送器件地址
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       send_byte
//  135 	send_byte(c); //发送数据c
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       send_byte
//  136 	IIC_stop();
        BL       IIC_stop
//  137 }
        POP      {R0,R4,R5,PC}    ;; return
//  138 //***************************************************
//  139 //向有子地址器件发送多字节数据

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  140 void send_to_nbyte(unsigned char ad_main,unsigned char ad_sub,unsigned char *buf,unsigned char num){
send_to_nbyte:
        PUSH     {R3-R7,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R7,R3
//  141 	unsigned char i;
//  142 	IIC_start();
        BL       IIC_start
//  143 	send_byte(ad_main); //发送器件地址
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       send_byte
//  144 	send_byte(ad_sub); //发送器件子地址
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       send_byte
//  145 	for(i=0;i<num;i++){
        MOVS     R4,#+0
        B.N      ??send_to_nbyte_0
//  146 		send_byte(*buf); //发送数据*buf
??send_to_nbyte_1:
        LDRB     R0,[R6, #+0]
        BL       send_byte
//  147 		buf++;
        ADDS     R6,R6,#+1
//  148 	}
        ADDS     R4,R4,#+1
??send_to_nbyte_0:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R4,R7
        BCC.N    ??send_to_nbyte_1
//  149 	IIC_stop();
        BL       IIC_stop
//  150 }
        POP      {R0,R4-R7,PC}    ;; return
//  151 //***************************************************
//  152 //从无子地址器件读单字节数据
//  153 //function:器件地址，所读数据存在接收缓冲区当前字节

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  154 void read_from_byte(unsigned char ad_main,unsigned char *buf){
read_from_byte:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
//  155 	IIC_start();
        BL       IIC_start
//  156 	send_byte(ad_main); //发送器件地址
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       send_byte
//  157 	*buf=read_byte();
        BL       read_byte
        STRB     R0,[R5, #+0]
//  158 	IIC_ack_main(no_ack); //无需应答<no_ack=0>
        MOVS     R0,#+0
        BL       IIC_ack_main
//  159 	IIC_stop();
        BL       IIC_stop
//  160 }
        POP      {R0,R4,R5,PC}    ;; return
//  161 //***************************************************
//  162 //从有子地址器件读多个字节数据
//  163 //function:

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  164 void read_from_nbyte(unsigned char ad_main,unsigned char ad_sub,unsigned char *buf,unsigned char num){
read_from_nbyte:
        PUSH     {R3-R7,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R7,R3
//  165 	unsigned char i;
//  166 	IIC_start();
        BL       IIC_start
//  167 	send_byte(ad_main);
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       send_byte
//  168 	send_byte(ad_sub);
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       send_byte
//  169 	for(i=0;i<num-1;i++){
        MOVS     R4,#+0
        B.N      ??read_from_nbyte_0
//  170 		*buf=read_byte();
??read_from_nbyte_1:
        BL       read_byte
        STRB     R0,[R6, #+0]
//  171 		IIC_ack_main(ack); //主应答<ack=1>
        MOVS     R0,#+1
        BL       IIC_ack_main
//  172 		buf++;
        ADDS     R6,R6,#+1
//  173 	}
        ADDS     R4,R4,#+1
??read_from_nbyte_0:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        SUBS     R0,R7,#+1
        CMP      R4,R0
        BLT.N    ??read_from_nbyte_1
//  174 	*buf=read_byte();
        BL       read_byte
        STRB     R0,[R6, #+0]
//  175 	buf++; //本次指针调整无意义，目的是操作后buf指向下一地址
        ADDS     R6,R6,#+1
//  176 	IIC_ack_main(no_ack); //无需应答<no_ack=0>
        MOVS     R0,#+0
        BL       IIC_ack_main
//  177 	IIC_stop();
        BL       IIC_stop
//  178 }
        POP      {R0,R4-R7,PC}    ;; return

        SECTION `.iar_vfe_header`:DATA:REORDER:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//  179 
//  180 
//  181 #endif
//  182 
//  183 #ifdef SCCB
//  184 /*************************************************
//  185 Function: SCCB_Wait
//  186 Description: delay
//  187 Input: no
//  188 Output: no
//  189 More:no
//  190 *************************************************/
//  191 void SCCB_Wait(void)    
//  192 {
//  193   unsigned int i;
//  194 
//  195   for(i=0;i<600;i++)  //20us
//  196   {
//  197     //asm("nop");
//  198   }
//  199 }
//  200 
//  201 /*************************************************
//  202 Function: SCCB_Start
//  203 Description: signal of start
//  204 Input: no
//  205 Output: no
//  206 More:no
//  207 *************************************************/
//  208 void SCCB_Start(void)   
//  209 {
//  210   SDA_DR=SCCB_OUT;
//  211   SDA = 1;
//  212   SCL = 1;
//  213   SCCB_Wait();
//  214   SDA = 0;
//  215   SCCB_Wait();
//  216   SCL = 0;
//  217 }
//  218 
//  219 /*************************************************
//  220 Function: SCCB_Stop
//  221 Description: signal of stop
//  222 Input: no
//  223 Output: no
//  224 More:no
//  225 *************************************************/
//  226 void SCCB_Stop(void)    
//  227 {
//  228   SCL = 0;
//  229   SDA_DR=SCCB_OUT;
//  230   SDA = 0;
//  231   SCCB_Wait();
//  232   SCL = 1;
//  233   SCCB_Wait();   //时钟高电平下，数据从0-》1
//  234   SDA = 1;
//  235   SCCB_Wait();
//  236 }
//  237 
//  238 /*************************************************
//  239 Function: SCCB_SendAck
//  240 Description: send ack to slave
//  241 Input: signal of ack
//  242 Output: no
//  243 More:no
//  244 *************************************************/
//  245 void SCCB_SendAck(byte ack)  
//  246 {
//  247   SDA_DR=SCCB_OUT;
//  248   SDA = ack;
//  249   SCL = 1;
//  250   SCCB_Wait();
//  251   SCL = 0;
//  252 }
//  253 
//  254 /*************************************************
//  255 Function: SCCB_SendByte
//  256 Description: send data  to SCCB register
//  257 Input: byte of data
//  258 Output: return ack  1:receive ack  0:no ack
//  259 More:no
//  260 *************************************************/
//  261 byte SCCB_SendByte(unsigned char bytedata) 
//  262 {
//  263   unsigned char i;
//  264   byte ack;
//  265   SDA_DR=SCCB_OUT;
//  266   for(i=0;i<8;i++)
//  267   {
//  268     SCL = 0;
//  269     SCCB_Wait();
//  270     
//  271     if(bytedata & 0x80)
//  272       SDA = 1;
//  273     else
//  274       SDA = 0;
//  275 
//  276     bytedata <<= 1;
//  277     SCCB_Wait();
//  278 
//  279     SCL = 1;
//  280     SCCB_Wait();
//  281     SCL = 0;
//  282     
//  283   }
//  284   SCCB_Wait();
//  285   SDA = 1;
//  286   SDA_DR=SCCB_IN;
//  287   SCCB_Wait();
//  288   SCL = 1;
//  289   SCCB_Wait();
//  290 
//  291   ack = SCCB_IN;    
//  292 
//  293   SCL = 0;
//  294   SCCB_Wait();
//  295 
//  296   SDA_DR=SCCB_OUT;
//  297   return ack;
//  298 }
//  299 
//  300 
//  301 /******************************************************
//  302 Function: SCCB_ReceiveByte
//  303 Description: receive data  from SCCB register
//  304 Input: no
//  305 Output: data 
//  306 More:no
//  307 ********************************************************/
//  308 unsigned char SCCB_ReceiveByte(void)  
//  309 {
//  310   unsigned char i;
//  311   unsigned char bytedata = 0;
//  312   SDA_DR=SCCB_IN;
//  313   for(i=0;i<8;i++)
//  314   {
//  315     SCL = 1;
//  316     SCCB_Wait();
//  317 
//  318     bytedata <<= 1;
//  319 
//  320     if(SDA_IN)
//  321     {
//  322       bytedata |= 0x01;
//  323     }
//  324     SCL = 0;
//  325     SCCB_Wait();
//  326   }
//  327  
//  328   SDA_DR=SCCB_OUT;
//  329   return bytedata;
//  330 }
//  331 
//  332 /******************************************************
//  333 Function: SCCB_ByteWrite
//  334 Description: write the data to the address 
//  335 Input: device  0xC0  write to  OV6620
//  336                0XC1  read from OV6620
//  337                0x42  write to  OV7620
//  338                0x43  read from OV7620
//  339 Output: no
//  340 More:no
//  341 ********************************************************/
//  342 
//  343 void SCCB_ByteWrite(unsigned char device,unsigned char address,unsigned char bytedata)
//  344 {     
//  345    SCCB_Start();
//  346    
//  347    SCCB_SendByte(device);
//  348    
//  349    SCCB_SendByte(address);
//  350    
//  351    SCCB_SendByte(bytedata);
//  352    
//  353    SCCB_Stop();
//  354 
//  355 }
//  356 
//  357 
//  358 unsigned char SCCB_ByteRead(unsigned char device,unsigned char address)  
//  359 {
//  360   unsigned char bytedata = 0;
//  361   
//  362   SCCB_Start();
//  363   
//  364   SCCB_SendByte(device);
//  365   
//  366   SCCB_SendByte(address);
//  367   
//  368   SCCB_Stop();
//  369   
//  370   SCCB_Start();
//  371   
//  372   SCCB_SendByte(device+1);
//  373   
//  374   bytedata = SCCB_ReceiveByte();
//  375   
//  376   SCCB_SendAck(1)  ;
//  377   
//  378   SCCB_Stop();
//  379   
//  380   
//  381   return bytedata;
//  382 }
//  383 #endif
// 
//     7 bytes in section .bss
// 2 662 bytes in section .text
// 
// 2 662 bytes of CODE memory
//     7 bytes of DATA memory
//
//Errors: none
//Warnings: none
