///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.60.1.5097/W32 for ARM     15/Aug/2015  12:46:34 /
// Copyright 1999-2013 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  C:\Users\Administrator\Desktop\MPU60508.12\src\common\s /
//                    tartup.c                                                /
//    Command line =  C:\Users\Administrator\Desktop\MPU60508.12\src\common\s /
//                    tartup.c -lCN C:\Users\Administrator\Desktop\MPU60508.1 /
//                    2\build\gpio_demo\FLASH\List\ -lB                       /
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
//                    emo\FLASH\List\startup.s                                /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

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

// C:\Users\Administrator\Desktop\MPU60508.12\src\common\startup.c
//    1 /******************** (C) COPYRIGHT 2011 Ұ��Ƕ��ʽ���������� ********************
//    2  * �ļ���       ��startup.c
//    3  * ����         ��kinetis���������룬���ж���������ʼ�����ݡ���__ramfunc�������Ӻ������Ƶ�RAM��
//    4  *          
//    5  * ʵ��ƽ̨     ��Ұ��kinetis������
//    6  * ��汾       ��
//    7  * 
//    8  * ����         ����˼������˾
//    9  * �Ա���       ��http://firestm32.taobao.com
//   10  * ����֧����̳ ��http://www.ourdev.cn/bbs/bbs_list.jsp?bbs_id=1008   
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
//   24 //�����ж���������ʼ�����ݡ���__ramfunc�������Ӻ������Ƶ�RAM��(��flash�����ĺ�����������)

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
//   47     /* ����������ĵ�ַ ��  ������Linker�ļ�����ICF�ļ� ����       */
//   48     /* ������ȫ�ֱ���������.icf�ļ�������ҵ������涨�������ǵĵ�ַ*/  
//   49     extern uint32 __VECTOR_TABLE[];
//   50     extern uint32 __VECTOR_RAM[];
//   51 
//   52     /* ����Ƿ���Ҫ �����ж�������                            */
//   53     /*������ǵ�ַ��һ��������flash�ڵ�������RAM����������*/
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
//   60     /* �� �ж��������ַ ����ָ�� RAM ��� �ж������� */
//   61     write_vtor((uint32)__VECTOR_RAM);  
??common_startup_1:
        LDR.N    R0,??common_startup_0
        BL       write_vtor
//   62     
//   63       
//   64     
//   65     /*��ȡ��ʼ�����ݵ�ַ*/
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
//   78 	/* ���Ƴ�ʼ������ */
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
//   83       /* ��ȡ .bss �εĵ�ַ (��ʼ������Ϊ0) */
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
//   93       /* �����ʼ��Ϊ0�����ݶ� */
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
//   98       /* ����__ramfunc�������Ӻ������Ƶ�RAM��	 */
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
