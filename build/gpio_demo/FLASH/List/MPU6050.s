///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.60.1.5097/W32 for ARM     15/Aug/2015  12:46:31 /
// Copyright 1999-2013 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  C:\Users\Administrator\Desktop\MPU60508.12\src\drivers\ /
//                    MPU6050\MPU6050.c                                       /
//    Command line =  C:\Users\Administrator\Desktop\MPU60508.12\src\drivers\ /
//                    MPU6050\MPU6050.c -lCN C:\Users\Administrator\Desktop\M /
//                    PU60508.12\build\gpio_demo\FLASH\List\ -lB              /
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
//                    emo\FLASH\List\MPU6050.s                                /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN i2c_init
        EXTERN i2c_readaddr
        EXTERN i2c_writeaddr

        PUBLIC MPU6050_ACCEL_XOUT_DATA
        PUBLIC MPU6050_ACCEL_YOUT_DATA
        PUBLIC MPU6050_ACCEL_ZOUT_DATA
        PUBLIC MPU6050_GYRO_XOUT_DATA
        PUBLIC MPU6050_GYRO_YOUT_DATA
        PUBLIC MPU6050_GYRO_ZOUT_DATA
        PUBLIC MPU6050_GetData
        PUBLIC MPU6050_GetDoubleData
        PUBLIC MPU6050_Init
        PUBLIC MPU6050_TEMP_OUT_DATA

// C:\Users\Administrator\Desktop\MPU60508.12\src\drivers\MPU6050\MPU6050.c
//    1 #include "MPU6050.h"
//    2 

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//    3 volatile int16 MPU6050_ACCEL_XOUT_DATA=0;
MPU6050_ACCEL_XOUT_DATA:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//    4 volatile int16 MPU6050_ACCEL_YOUT_DATA=0;
MPU6050_ACCEL_YOUT_DATA:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//    5 volatile int16 MPU6050_ACCEL_ZOUT_DATA=0;
MPU6050_ACCEL_ZOUT_DATA:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//    6 volatile int16 MPU6050_TEMP_OUT_DATA=0;
MPU6050_TEMP_OUT_DATA:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//    7 volatile int16 MPU6050_GYRO_XOUT_DATA=0;
MPU6050_GYRO_XOUT_DATA:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//    8 volatile int16 MPU6050_GYRO_YOUT_DATA=0;
MPU6050_GYRO_YOUT_DATA:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//    9 volatile int16 MPU6050_GYRO_ZOUT_DATA=0;
MPU6050_GYRO_ZOUT_DATA:
        DS8 2
//   10 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   11 void MPU6050_Init(void)
//   12 {
MPU6050_Init:
        PUSH     {R7,LR}
//   13   i2c_init(MPU6050_I2C_Moudle,0,0,4);
        MOVS     R3,#+4
        MOVS     R2,#+0
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       i2c_init
//   14   i2c_writeaddr(MPU6050_I2C_Moudle, MPU6050_ADDRESS,MPU6050_PWR_MGMT_1, 0x00);
        MOVS     R3,#+0
        MOVS     R2,#+107
        MOVS     R1,#+104
        MOVS     R0,#+0
        BL       i2c_writeaddr
//   15   i2c_writeaddr(MPU6050_I2C_Moudle, MPU6050_ADDRESS,MPU6050_PWR_MGMT_2, 0x00);
        MOVS     R3,#+0
        MOVS     R2,#+108
        MOVS     R1,#+104
        MOVS     R0,#+0
        BL       i2c_writeaddr
//   16   i2c_writeaddr(MPU6050_I2C_Moudle, MPU6050_ADDRESS,MPU6050_CONFIG, 0x06);//低通滤波器带宽5Hz
        MOVS     R3,#+6
        MOVS     R2,#+26
        MOVS     R1,#+104
        MOVS     R0,#+0
        BL       i2c_writeaddr
//   17   i2c_writeaddr(MPU6050_I2C_Moudle, MPU6050_ADDRESS,MPU6050_GYRO_CONFIG, 0x08);//不自检   ±500 °/s
        MOVS     R3,#+8
        MOVS     R2,#+27
        MOVS     R1,#+104
        MOVS     R0,#+0
        BL       i2c_writeaddr
//   18   i2c_writeaddr(MPU6050_I2C_Moudle, MPU6050_ADDRESS,MPU6050_ACCEL_CONFIG, 0x08);//不自检  ±4g
        MOVS     R3,#+8
        MOVS     R2,#+28
        MOVS     R1,#+104
        MOVS     R0,#+0
        BL       i2c_writeaddr
//   19 }
        POP      {R0,PC}          ;; return
//   20 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   21 int16 MPU6050_GetDoubleData(uint8 Addr)
//   22 {
MPU6050_GetDoubleData:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
//   23   uint16 data=0x0000;
        MOVS     R5,#+0
//   24   data=i2c_readaddr(MPU6050_I2C_Moudle,MPU6050_ADDRESS, Addr);
        MOVS     R2,R4
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,#+104
        MOVS     R0,#+0
        BL       i2c_readaddr
        MOVS     R5,R0
//   25   data=(uint16)((data<<8)&0xff00);
        LSLS     R5,R5,#+8
//   26   data+=i2c_readaddr(MPU6050_I2C_Moudle,MPU6050_ADDRESS, Addr+1);
        ADDS     R2,R4,#+1
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,#+104
        MOVS     R0,#+0
        BL       i2c_readaddr
        UXTAB    R5,R5,R0
//   27   //int16 data;
//   28   //data=	((int16)i2c_readaddr(MPU6050_I2C_Moudle,MPU6050_ADDRESS, Addr)<<8)
//   29   //      |(int16)i2c_readaddr(MPU6050_I2C_Moudle,MPU6050_ADDRESS, Addr+1);
//   30   
//   31   return (int16)data;//合成数据，为有符号整形数
        MOVS     R0,R5
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        POP      {R1,R4,R5,PC}    ;; return
//   32 }
//   33 
//   34 
//   35 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   36 void MPU6050_GetData(void)
//   37 {
MPU6050_GetData:
        PUSH     {R4,LR}
//   38   MPU6050_ACCEL_XOUT_DATA=((int16)i2c_readaddr(MPU6050_I2C_Moudle,MPU6050_ADDRESS, MPU6050_ACCEL_XOUT)<<8)
//   39                           |(int16)i2c_readaddr(MPU6050_I2C_Moudle,MPU6050_ADDRESS, MPU6050_ACCEL_XOUT+1);
        MOVS     R2,#+59
        MOVS     R1,#+104
        MOVS     R0,#+0
        BL       i2c_readaddr
        MOVS     R4,R0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        MOVS     R2,#+60
        MOVS     R1,#+104
        MOVS     R0,#+0
        BL       i2c_readaddr
        ORRS     R0,R0,R4, LSL #+8
        LDR.N    R1,??DataTable0
        STRH     R0,[R1, #+0]
//   40   MPU6050_ACCEL_YOUT_DATA=((int16)i2c_readaddr(MPU6050_I2C_Moudle,MPU6050_ADDRESS, MPU6050_ACCEL_YOUT)<<8)
//   41                           |(int16)i2c_readaddr(MPU6050_I2C_Moudle,MPU6050_ADDRESS, MPU6050_ACCEL_YOUT+1);
        MOVS     R2,#+61
        MOVS     R1,#+104
        MOVS     R0,#+0
        BL       i2c_readaddr
        MOVS     R4,R0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        MOVS     R2,#+62
        MOVS     R1,#+104
        MOVS     R0,#+0
        BL       i2c_readaddr
        ORRS     R0,R0,R4, LSL #+8
        LDR.N    R1,??DataTable0_1
        STRH     R0,[R1, #+0]
//   42   MPU6050_ACCEL_ZOUT_DATA=((int16)i2c_readaddr(MPU6050_I2C_Moudle,MPU6050_ADDRESS, MPU6050_ACCEL_ZOUT)<<8)
//   43                           |(int16)i2c_readaddr(MPU6050_I2C_Moudle,MPU6050_ADDRESS, MPU6050_ACCEL_ZOUT+1);
        MOVS     R2,#+63
        MOVS     R1,#+104
        MOVS     R0,#+0
        BL       i2c_readaddr
        MOVS     R4,R0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        MOVS     R2,#+64
        MOVS     R1,#+104
        MOVS     R0,#+0
        BL       i2c_readaddr
        ORRS     R0,R0,R4, LSL #+8
        LDR.N    R1,??DataTable0_2
        STRH     R0,[R1, #+0]
//   44   MPU6050_TEMP_OUT_DATA=((int16)i2c_readaddr(MPU6050_I2C_Moudle,MPU6050_ADDRESS, MPU6050_TEMP_OUT)<<8)
//   45                           |(int16)i2c_readaddr(MPU6050_I2C_Moudle,MPU6050_ADDRESS, MPU6050_TEMP_OUT+1);
        MOVS     R2,#+65
        MOVS     R1,#+104
        MOVS     R0,#+0
        BL       i2c_readaddr
        MOVS     R4,R0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        MOVS     R2,#+66
        MOVS     R1,#+104
        MOVS     R0,#+0
        BL       i2c_readaddr
        ORRS     R0,R0,R4, LSL #+8
        LDR.N    R1,??DataTable0_3
        STRH     R0,[R1, #+0]
//   46   MPU6050_GYRO_XOUT_DATA=((int16)i2c_readaddr(MPU6050_I2C_Moudle,MPU6050_ADDRESS, MPU6050_GYRO_XOUT)<<8)
//   47                           |(int16)i2c_readaddr(MPU6050_I2C_Moudle,MPU6050_ADDRESS, MPU6050_GYRO_XOUT+1);
        MOVS     R2,#+67
        MOVS     R1,#+104
        MOVS     R0,#+0
        BL       i2c_readaddr
        MOVS     R4,R0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        MOVS     R2,#+68
        MOVS     R1,#+104
        MOVS     R0,#+0
        BL       i2c_readaddr
        ORRS     R0,R0,R4, LSL #+8
        LDR.N    R1,??DataTable0_4
        STRH     R0,[R1, #+0]
//   48   MPU6050_GYRO_YOUT_DATA=((int16)i2c_readaddr(MPU6050_I2C_Moudle,MPU6050_ADDRESS, MPU6050_GYRO_YOUT)<<8)
//   49                           |(int16)i2c_readaddr(MPU6050_I2C_Moudle,MPU6050_ADDRESS, MPU6050_GYRO_YOUT+1);
        MOVS     R2,#+69
        MOVS     R1,#+104
        MOVS     R0,#+0
        BL       i2c_readaddr
        MOVS     R4,R0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        MOVS     R2,#+70
        MOVS     R1,#+104
        MOVS     R0,#+0
        BL       i2c_readaddr
        ORRS     R0,R0,R4, LSL #+8
        LDR.N    R1,??DataTable0_5
        STRH     R0,[R1, #+0]
//   50   MPU6050_GYRO_ZOUT_DATA=((int16)i2c_readaddr(MPU6050_I2C_Moudle,MPU6050_ADDRESS, MPU6050_GYRO_ZOUT)<<8)
//   51                           |(int16)i2c_readaddr(MPU6050_I2C_Moudle,MPU6050_ADDRESS, MPU6050_GYRO_ZOUT+1);
        MOVS     R2,#+71
        MOVS     R1,#+104
        MOVS     R0,#+0
        BL       i2c_readaddr
        MOVS     R4,R0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        MOVS     R2,#+72
        MOVS     R1,#+104
        MOVS     R0,#+0
        BL       i2c_readaddr
        ORRS     R0,R0,R4, LSL #+8
        LDR.N    R1,??DataTable0_6
        STRH     R0,[R1, #+0]
//   52 }
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable0:
        DC32     MPU6050_ACCEL_XOUT_DATA

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable0_1:
        DC32     MPU6050_ACCEL_YOUT_DATA

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable0_2:
        DC32     MPU6050_ACCEL_ZOUT_DATA

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable0_3:
        DC32     MPU6050_TEMP_OUT_DATA

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable0_4:
        DC32     MPU6050_GYRO_XOUT_DATA

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable0_5:
        DC32     MPU6050_GYRO_YOUT_DATA

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable0_6:
        DC32     MPU6050_GYRO_ZOUT_DATA

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
//  14 bytes in section .bss
// 376 bytes in section .text
// 
// 376 bytes of CODE memory
//  14 bytes of DATA memory
//
//Errors: none
//Warnings: none
