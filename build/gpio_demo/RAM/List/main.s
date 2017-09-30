///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.30.1.53127/W32 for ARM    22/Dec/2013  00:56:38 /
// Copyright 1999-2011 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  C:\Users\Administrator\Desktop\�������K60ģ��_ֻ�л��� /
//                    IO����\src\projects\gpio_demo\main.c                    /
//    Command line =  C:\Users\Administrator\Desktop\�������K60ģ��_ֻ�л��� /
//                    IO����\src\projects\gpio_demo\main.c -lCN               /
//                    C:\Users\Administrator\Desktop\�������K60ģ��_ֻ�л��� /
//                    IO����\build\gpio_demo\RAM\List\ -lB                    /
//                    C:\Users\Administrator\Desktop\�������K60ģ��_ֻ�л��� /
//                    IO����\build\gpio_demo\RAM\List\ -o                     /
//                    C:\Users\Administrator\Desktop\�������K60ģ��_ֻ�л��� /
//                    IO����\build\gpio_demo\RAM\Obj\ --no_cse --no_unroll    /
//                    --no_inline --no_code_motion --no_tbaa --no_clustering  /
//                    --no_scheduling --debug --endian=little                 /
//                    --cpu=Cortex-M4 -e --fpu=None --dlib_config             /
//                    "E:\Program Files (x86)\IAR Systems\Embedded Workbench  /
//                    6.0\arm\INC\c\DLib_Config_Normal.h" -I                  /
//                    C:\Users\Administrator\Desktop\�������K60ģ��_ֻ�л��� /
//                    IO����\build\gpio_demo\..\ -I                           /
//                    C:\Users\Administrator\Desktop\�������K60ģ��_ֻ�л��� /
//                    IO����\build\gpio_demo\..\..\src\common\ -I             /
//                    C:\Users\Administrator\Desktop\�������K60ģ��_ֻ�л��� /
//                    IO����\build\gpio_demo\..\..\src\cpu\ -I                /
//                    C:\Users\Administrator\Desktop\�������K60ģ��_ֻ�л��� /
//                    IO����\build\gpio_demo\..\..\src\drivers\ -I            /
//                    C:\Users\Administrator\Desktop\�������K60ģ��_ֻ�л��� /
//                    IO����\build\gpio_demo\..\..\src\drivers\gpio\ -I       /
//                    C:\Users\Administrator\Desktop\�������K60ģ��_ֻ�л��� /
//                    IO����\build\gpio_demo\..\..\src\drivers\wdog\ -I       /
//                    C:\Users\Administrator\Desktop\�������K60ģ��_ֻ�л��� /
//                    IO����\build\gpio_demo\..\..\src\drivers\mcg\ -I        /
//                    C:\Users\Administrator\Desktop\�������K60ģ��_ֻ�л��� /
//                    IO����\build\gpio_demo\..\..\src\drivers\uart\ -I       /
//                    C:\Users\Administrator\Desktop\�������K60ģ��_ֻ�л��� /
//                    IO����\build\gpio_demo\..\..\src\drivers\lptmr\ -I      /
//                    C:\Users\Administrator\Desktop\�������K60ģ��_ֻ�л��� /
//                    IO����\build\gpio_demo\..\..\src\drivers\fun\ -I        /
//                    C:\Users\Administrator\Desktop\�������K60ģ��_ֻ�л��� /
//                    IO����\build\gpio_demo\..\..\src\drivers\led\ -I        /
//                    C:\Users\Administrator\Desktop\�������K60ģ��_ֻ�л��� /
//                    IO����\build\gpio_demo\..\..\src\drivers\i2c\ -I        /
//                    C:\Users\Administrator\Desktop\�������K60ģ��_ֻ�л��� /
//                    IO����\build\gpio_demo\..\..\src\drivers\MMA845x\ -I    /
//                    C:\Users\Administrator\Desktop\�������K60ģ��_ֻ�л��� /
//                    IO����\build\gpio_demo\..\..\src\drivers\motor\ -I      /
//                    C:\Users\Administrator\Desktop\�������K60ģ��_ֻ�л��� /
//                    IO����\build\gpio_demo\..\..\src\drivers\pit\ -I        /
//                    C:\Users\Administrator\Desktop\�������K60ģ��_ֻ�л��� /
//                    IO����\build\gpio_demo\..\..\src\drivers\steer\ -I      /
//                    C:\Users\Administrator\Desktop\�������K60ģ��_ֻ�л��� /
//                    IO����\build\gpio_demo\..\..\src\drivers\ftm\ -I        /
//                    C:\Users\Administrator\Desktop\�������K60ģ��_ֻ�л��� /
//                    IO����\build\gpio_demo\..\..\src\drivers\DIPswitch\ -I  /
//                    C:\Users\Administrator\Desktop\�������K60ģ��_ֻ�л��� /
//                    IO����\build\gpio_demo\..\..\src\drivers\dma\ -I        /
//                    C:\Users\Administrator\Desktop\�������K60ģ��_ֻ�л��� /
//                    IO����\build\gpio_demo\..\..\src\platforms\ -I          /
//                    C:\Users\Administrator\Desktop\�������K60ģ��_ֻ�л��� /
//                    IO����\build\gpio_demo\..\..\src\projects\ -I           /
//                    C:\Users\Administrator\Desktop\�������K60ģ��_ֻ�л��� /
//                    IO����\build\gpio_demo\..\..\src\projects\gpio_demo\    /
//                    -Ol                                                     /
//    List file    =  C:\Users\Administrator\Desktop\�������K60ģ��_ֻ�л��� /
//                    IO����\build\gpio_demo\RAM\List\main.s                  /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME main

        #define SHT_PROGBITS 0x1

        EXTERN Get845xX_10bit
        EXTERN Get845xX_12bit
        EXTERN Get845xX_8bit
        EXTERN Get845xY_10bit
        EXTERN Get845xY_12bit
        EXTERN Get845xY_8bit
        EXTERN Get845xZ_10bit
        EXTERN Get845xZ_12bit
        EXTERN Get845xZ_8bit
        EXTERN MMA845x_Init
        EXTERN UARTx
        EXTERN delayms
        EXTERN enable_irq
        EXTERN gpio_init
        EXTERN uartPrintf

        PUBLIC main

// C:\Users\Administrator\Desktop\�������K60ģ��_ֻ�л���IO����\src\projects\gpio_demo\main.c
//    1 /*******************************************************************************
//    2                               �����ʵ��ѧ K60 ѧϰ����
//    3 ���������ơ�GPIO����
//    4 ��Designed��snowwolf
//    5 ��E-mail  ��snowwolf20125@qq.com
//    6 ������汾��V1.0
//    7 �������¡�2012��3��24��
//    8 ------------------------------------------------
//    9 ��dev.env.��IAR 6.3
//   10 ��Target  ��K60X256
//   11 ��Crystal ��50.000Mhz
//   12 ��busclock��48.000MHz
//   13 ��pllclock��96.000MHz   
//   14 �� ˵  �� �������ڲ�ѧϰʹ�ã������⴫
//   15 �� ��  �� ��Ұ��Ƕ��ʽ����������
//   16             ���𿪷�����
//   17             ���ݴ�ѧ��Ƕ��ʽϵͳԭ����ʵ����
//   18 ********************************************************************************/	
//   19 
//   20 
//   21 
//   22 #include "common.h"
//   23 #include "include.h"
//   24 
//   25 
//   26 #if 0   
//   27 
//   28 #else
//   29 /*
//   30 ************************************************************************
//   31 *  ʵ��˵����Test 8451 IIC
//   32 *  ʵ���������
//   33 *  ʵ��Ч����
//   34 *
//   35 *  ʵ��Ŀ�ģ�Test 8451 IIC initializing, reading and writing.
//   36 *  �޸�ʱ�䣺2013-12-21
//   37 *  ��    ע��
//   38 * �ӿ�˵����
//   39          ���뿪�أ�PA14    PA15    PA16    PA17
//   40           ���    ��PC1     PC2     PC3     PC4
//   41           ����    ��PB16    PB17  ������ 115200  �ղ����źſ��԰��շ���תһ��
//   42           MMA845x : PC10 - I2C1_SCL     PC11 - I2C1_SDA 
//   43 
//   44 *  ��    ����Ұ��Kinetis��������
//   45 ***********************************************************************
//   46 */

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//   47 void  main(void)
//   48 {
main:
        PUSH     {R3-R5,LR}
//   49  DisableInterrupts;  
        CPSID i         
//   50   
//   51   uartPrintf("�����ʵ��ѧ�ٶ��뼤������\n");
        LDR.N    R0,??main_0
        BL       uartPrintf
//   52   
//   53   gpio_init  (PORTA,15,GPO,HIGH);         //���İ����LED����ʼ�� PTA15 ������ߵ�ƽ ,�� ��ʼ�� LED0����
        MOVS     R3,#+1
        MOVS     R2,#+1
        MOVS     R1,#+15
        MOVS     R0,#+0
        BL       gpio_init
//   54   gpio_init  (PORTA,4,GPO,HIGH);          //�������LED    ��ʼ�� PTA4 �� ����ߵ�ƽ ,�� ��ʼ�� LED0����
        MOVS     R3,#+1
        MOVS     R2,#+1
        MOVS     R1,#+4
        MOVS     R0,#+0
        BL       gpio_init
//   55   
//   56     //��ʼ��845x
//   57   MMA845x_Init();
        BL       MMA845x_Init
//   58   
//   59   //�򿪴����ж�
//   60   UART_IRQ_EN(UART0); 
        LDR.N    R0,??main_0+0x4
        LDR      R0,[R0, #+0]
        LDRB     R0,[R0, #+3]
        ORRS     R0,R0,#0x20
        LDR.N    R1,??main_0+0x4
        LDR      R1,[R1, #+0]
        STRB     R0,[R1, #+3]
        MOVS     R0,#+45
        BL       enable_irq
//   61   EnableInterrupts;    
        CPSIE i         
//   62 
//   63   u16 x8,x10,x12;
//   64   u16 y8,y10,y12;
//   65   u16 z8,z10,z12;
//   66   uartPrintf("\n----------X-------------------Y-------------------Z----------\n"); 
        LDR.N    R0,??main_0+0x8
        BL       uartPrintf
//   67   while(1){
//   68       x8 = Get845xX_8bit(10); x10 = Get845xX_10bit(10);x12 = Get845xX_12bit(10); 
??main_1:
        MOVS     R0,#+10
        BL       Get845xX_8bit
        MOVS     R4,R0
        MOVS     R0,#+10
        BL       Get845xX_10bit
        MOVS     R5,R0
        MOVS     R0,#+10
        BL       Get845xX_12bit
//   69       uartPrintf("%5d%6d%7d  ",x8,x10,x12);
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        MOVS     R3,R0
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        MOVS     R2,R5
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        MOVS     R1,R4
        LDR.N    R0,??main_0+0xC
        BL       uartPrintf
//   70       
//   71       y8 = Get845xY_8bit(10); y10 = Get845xY_10bit(10);y12 = Get845xY_12bit(10); 
        MOVS     R0,#+10
        BL       Get845xY_8bit
        MOVS     R4,R0
        MOVS     R0,#+10
        BL       Get845xY_10bit
        MOVS     R5,R0
        MOVS     R0,#+10
        BL       Get845xY_12bit
//   72       uartPrintf("%5d%6d%7d  ",y8,y10,y12);
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        MOVS     R3,R0
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        MOVS     R2,R5
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        MOVS     R1,R4
        LDR.N    R0,??main_0+0xC
        BL       uartPrintf
//   73       
//   74       z8 = Get845xZ_8bit(10); z10 = Get845xZ_10bit(10);z12 = Get845xZ_12bit(10); 
        MOVS     R0,#+10
        BL       Get845xZ_8bit
        MOVS     R4,R0
        MOVS     R0,#+10
        BL       Get845xZ_10bit
        MOVS     R5,R0
        MOVS     R0,#+10
        BL       Get845xZ_12bit
//   75       uartPrintf("%5d%6d%7d\n",z8,z10,z12);
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        MOVS     R3,R0
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        MOVS     R2,R5
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        MOVS     R1,R4
        LDR.N    R0,??main_0+0x10
        BL       uartPrintf
//   76       
//   77       delayms(1000);     //��ʱ1s
        MOV      R0,#+1000
        BL       delayms
        B.N      ??main_1
        Nop      
        DATA
??main_0:
        DC32     `?<Constant "\\261\\261\\276\\251\\323\\312\\265\\347\\2`
        DC32     UARTx
        DC32     `?<Constant "\\n----------X---------...">`
        DC32     `?<Constant "%5d%6d%7d  ">`
        DC32     `?<Constant "%5d%6d%7d\\n">`
//   78   }
//   79 }

        SECTION `.iar_vfe_header`:DATA:REORDER:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "\\261\\261\\276\\251\\323\\312\\265\\347\\2`:
        DATA
        DC8 "\261\261\276\251\323\312\265\347\264\363\321\247\313\331\266\310\323\353\274\244\307\351\300\375\263\314\012"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "\\n----------X---------...">`:
        DATA
        DC8 0AH, 2DH, 2DH, 2DH, 2DH, 2DH, 2DH, 2DH
        DC8 2DH, 2DH, 2DH, 58H, 2DH, 2DH, 2DH, 2DH
        DC8 2DH, 2DH, 2DH, 2DH, 2DH, 2DH, 2DH, 2DH
        DC8 2DH, 2DH, 2DH, 2DH, 2DH, 2DH, 2DH, 59H
        DC8 2DH, 2DH, 2DH, 2DH, 2DH, 2DH, 2DH, 2DH
        DC8 2DH, 2DH, 2DH, 2DH, 2DH, 2DH, 2DH, 2DH
        DC8 2DH, 2DH, 2DH, 5AH, 2DH, 2DH, 2DH, 2DH
        DC8 2DH, 2DH, 2DH, 2DH, 2DH, 2DH, 0AH, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "%5d%6d%7d  ">`:
        DATA
        DC8 "%5d%6d%7d  "

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "%5d%6d%7d\\n">`:
        DATA
        DC8 "%5d%6d%7d\012"
        DC8 0

        END
//   80 
//   81 #endif
//   82 
//   83 
//   84 
//   85 
// 
// 116 bytes in section .rodata
// 220 bytes in section .text
// 
// 220 bytes of CODE  memory
// 116 bytes of CONST memory
//
//Errors: none
//Warnings: none
