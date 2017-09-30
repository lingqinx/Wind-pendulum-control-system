///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.30.1.53127/W32 for ARM    05/Apr/2012  05:05:25 /
// Copyright 1999-2011 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  D:\workspace\myworkspace\SW_K60\src\projects\SX_demo\ma /
//                    in.c                                                    /
//    Command line =  D:\workspace\myworkspace\SW_K60\src\projects\SX_demo\ma /
//                    in.c -lCN D:\workspace\myworkspace\SW_K60\build\SX_demo /
//                    \RAM\List\ -lB D:\workspace\myworkspace\SW_K60\build\SX /
//                    _demo\RAM\List\ -o D:\workspace\myworkspace\SW_K60\buil /
//                    d\SX_demo\RAM\Obj\ --no_cse --no_unroll --no_inline     /
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
//                    main.s                                                  /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME main

        #define SHT_PROGBITS 0x1

        EXTERN CCD_init
        EXTERN DIPswitch_ctrl
        EXTERN GetBlackLine
        EXTERN ShowPhoto
        EXTERN UARTx
        EXTERN WritePicBlack
        EXTERN WritePicTest
        EXTERN bus_clk_khz
        EXTERN delayms
        EXTERN enable_irq
        EXTERN lptmr_counter_init
        EXTERN motor_init
        EXTERN pit_init
        EXTERN showChoice
        EXTERN steer_init
        EXTERN time_delay_ms
        EXTERN uartPrintf
        EXTERN water_lights

        PUBLIC main

// D:\workspace\myworkspace\SW_K60\src\projects\SX_demo\main.c
//    1 /*******************************************************************************
//    2                               �����ʵ��ѧ K60 ѧϰ����
//    3 ���������ơ������ʵ��ѧ����ͷ������
//    4 ��Designed��snowwolf
//    5 ��E-mail  ��snowwolf2012@qq.com
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
//   18 
//   19 �ӿ�˵����
//   20           ���뿪�أ�PA14    PA15    PA16    PA17
//   21           ���    ��PA12    PA13
//   22           ���    ��PC1     PC2     PC3     PC4
//   23           ���ж�  ��PB18
//   24           ���ж�  ��PB19
//   25           Y0-Y7   : PD0-PD7  (��������ͷor�ⲿAD������)
//   26           PLCK    ��PA29    (��Ҫ��DMA�Ĳ�Ҫ����һ���źţ�PLCK����4��Ƶ���PA19)
//   27                     ������HD74LS161AP���ķ�Ƶ��·
//   28           ����    ��PB16  PB17  ������ 115200  �ղ����źſ��԰��շ���תһ��
//   29           ������  ��PC5
//   30 ��Ҫ�޸���Ƶ�ĵ� k60_bupt.h���޸ģ��������޸ģ�
//   31 ********************************************************************************/	
//   32 
//   33 
//   34 #include "common.h"
//   35 #include "include.h"
//   36 
//   37 

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//   38 void main()
//   39 {
main:
        PUSH     {R3-R5,LR}
//   40   DisableInterrupts;  
        CPSID i         
//   41   
//   42   uartPrintf("�����ʵ��ѧ����ͷ������\n");
        LDR.N    R0,??main_0
        BL       uartPrintf
//   43   //��ʼ�����뿪��
//   44   DIPswitch_ctrl();
        BL       DIPswitch_ctrl
//   45   //��ʼ�����
//   46   steer_init();
        BL       steer_init
//   47   //�����ʼ��
//   48   motor_init();
        BL       motor_init
//   49   //����ͷ��ʼ��
//   50   CCD_init();
        BL       CCD_init
//   51   
//   52   //��ʼ��PIT   100Hz  
//   53   pit_init(PIT0,100); 
        MOVS     R1,#+100
        MOVS     R0,#+0
        BL       pit_init
//   54   //ʹ��PIT  ����ʱ�ر�  ������������ʱʹ��
//   55   //��ʵ�������ⶼ��Ҫ�ر�ʹ��
//   56   //PIT_IRQ_EN(PIT0);
//   57   //gpio_init(PORTD,0,GPO,0);   //���ڲ���PIT
//   58   
//   59   //��ʼ���ⲿ����  ��PC5   �ڶ���������65535 ���������ǰ���� ����һ��16λ������
//   60   lptmr_counter_init(LPT0_ALT2,65535,2,LPT_Rising);   
        MOVS     R3,#+0
        MOVS     R2,#+2
        MOVW     R1,#+65535
        MOVS     R0,#+2
        BL       lptmr_counter_init
//   61   //�򿪴����ж�
//   62   UART_IRQ_EN(UART0); 
        LDR.N    R0,??main_0+0x4
        LDR      R0,[R0, #+0]
        LDRB     R0,[R0, #+3]
        ORRS     R0,R0,#0x20
        LDR.N    R1,??main_0+0x4
        LDR      R1,[R1, #+0]
        STRB     R0,[R1, #+3]
        MOVS     R0,#+45
        BL       enable_irq
//   63   EnableInterrupts;    
        CPSIE i         
//   64   while(1)
//   65   {
//   66 //���� ��1����ʾ�򿪵�ǰ���Գ��򣬡�0��ʾ�رա�
//   67 //ʵ��һ
//   68 #if 0           //���Բ��뿪��     ���Խ���� �ɹ�
//   69                 //������ PA14    PA15    PA16    PA17 ���ڲ��뿪�ص�·�ϣ�����������ƺõľ����⼸�����ţ�
//   70                 uartPrintf("�л����뿪�عۿ�Ч��\n");
//   71                 DIPswitch_ctrl();
//   72                 delayms(1000);
//   73 //ʵ���
//   74 #elif 0         //���Զ��        ���Խ���� �ɹ�
//   75                 //����  ��PA12    PA13 ����ʾ�����ϣ�������  Ŀǰ���Ҽ�����200 - 5000 ��1% -- 50%
//   76                 //100Hz
//   77                 u32 i = 0;
//   78                 
//   79                 //�� i = 0 �� i = 5500 ʱ���ڰ�ȫ��Χ��Ӧ�ò���Ӧ
//   80                 //ռ�ձ�ÿһ���5%
//   81                 for(i = 0;i<10500;i+=500)
//   82                 {
//   83                   uartPrintf("��ǰռ�ձ� %d %%\n",i*100/FTM_PRECISON);
//   84                   PWMSetSteer(i) ; 
//   85 #if STEER_DOUBLE
//   86                   PWMSetSteer1(i) ;
//   87 #endif
//   88                   delayms(2000);
//   89                 }
//   90                 
//   91 //ʵ����
//   92 #elif 0         //���Ե��        ���Խ�����ɹ�
//   93                 //����  �� PC1     PC2     PC3     PC4 ����ʾ�����ϣ�������
//   94                 int i = 0;
//   95                 //ռ�ձ�ÿһ���5%
//   96                 //��Χ 0%-100%
//   97                 //С�� 0 �� PC2 PC4���в��� PC1 PC3Ϊ0��ƽ
//   98                 //���� 0 �� PC1 PC3���в��� PC2 PC4Ϊ0��ƽ
//   99                 for(i = -10000;i<10500;i+=500)
//  100                 {
//  101                   uartPrintf("��ǰռ�ձ� %d %%\n",abs(i)*100/FTM_PRECISON);
//  102 #if MOTOR_DOUBLE
//  103                   PWMSetMotor2(i,i);  
//  104 #else
//  105                   PWMSetMotor(i);  
//  106 #endif            
//  107                   delayms(2000);
//  108                 }
//  109 //ʵ����
//  110 #elif 1         //�����жϷ�ȡͼ��  ���Խ��
//  111 #ifdef CCD_DMA
//  112       #error "�������жϷ��ɼ�ͼ����ע�͵� CCD_DMA!"            
//  113 #endif
//  114                 while(1)
//  115                 {
//  116                 uint32 tick0 = 0,tick1 = 0;	
??main_1:
        MOVS     R4,#+0
        MOVS     R5,#+0
//  117                 uartPrintf("\n���� s  ��ʼ�ɼ�һ��ͼ��\n");   
        LDR.N    R0,??main_0+0x8
        BL       uartPrintf
//  118                 if( (showChoice & 0x01) )
        LDR.N    R0,??main_0+0xC
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+31
        BPL.W    ??main_2
//  119                  {
//  120                     uartPrintf("\n��ʼ�ɼ�һ��ͼ��\n");   
        LDR.N    R0,??main_0+0x10
        BL       uartPrintf
//  121                 
//  122                     PIT_RELOAD(PIT0,100); 
        LDR.N    R0,??main_0+0x14  ;; 0x40037108
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+1
        LSLS     R0,R0,#+1
        LDR.N    R1,??main_0+0x14  ;; 0x40037108
        STR      R0,[R1, #+0]
        LDR.N    R0,??main_0+0x18
        LDR      R0,[R0, #+0]
        MOV      R1,#+1000
        MULS     R0,R1,R0
        MOVS     R1,#+100
        UDIV     R0,R0,R1
        SUBS     R0,R0,#+1
        LDR.N    R1,??main_0+0x1C  ;; 0x40037100
        STR      R0,[R1, #+0]
        LDR.N    R0,??main_0+0x14  ;; 0x40037108
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR.N    R1,??main_0+0x14  ;; 0x40037108
        STR      R0,[R1, #+0]
//  123                     tick0 = GET_PITCNTus(PIT0);
        LDR.N    R0,??main_0+0x18
        LDR      R0,[R0, #+0]
        MOV      R1,#+1000
        UDIV     R0,R0,R1
        LDR.N    R1,??main_0+0x20  ;; 0x40037104
        LDR      R1,[R1, #+0]
        UDIV     R4,R1,R0
//  124                     WritePicTest();WritePicTest();
        BL       WritePicTest
        BL       WritePicTest
//  125                     WritePicTest();WritePicTest();
        BL       WritePicTest
        BL       WritePicTest
//  126                     WritePicTest();WritePicTest();
        BL       WritePicTest
        BL       WritePicTest
//  127                     WritePicTest();WritePicTest();
        BL       WritePicTest
        BL       WritePicTest
//  128                     WritePicTest();WritePicTest();
        BL       WritePicTest
        BL       WritePicTest
//  129                     
//  130                     tick1 = GET_PITCNTus(PIT0);        
        LDR.N    R0,??main_0+0x18
        LDR      R0,[R0, #+0]
        MOV      R1,#+1000
        UDIV     R0,R0,R1
        LDR.N    R1,??main_0+0x20  ;; 0x40037104
        LDR      R1,[R1, #+0]
        UDIV     R5,R1,R0
//  131                     uartPrintf("\nͼ�����ݱ���10�� ��ʱ��%d us\n",tick0 - tick1);
        SUBS     R1,R4,R5
        LDR.N    R0,??main_0+0x24
        BL       uartPrintf
//  132                    
//  133                     PIT_RELOAD(PIT0,100); 
        LDR.N    R0,??main_0+0x14  ;; 0x40037108
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+1
        LSLS     R0,R0,#+1
        LDR.N    R1,??main_0+0x14  ;; 0x40037108
        STR      R0,[R1, #+0]
        LDR.N    R0,??main_0+0x18
        LDR      R0,[R0, #+0]
        MOV      R1,#+1000
        MULS     R0,R1,R0
        MOVS     R1,#+100
        UDIV     R0,R0,R1
        SUBS     R0,R0,#+1
        LDR.N    R1,??main_0+0x1C  ;; 0x40037100
        STR      R0,[R1, #+0]
        LDR.N    R0,??main_0+0x14  ;; 0x40037108
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR.N    R1,??main_0+0x14  ;; 0x40037108
        STR      R0,[R1, #+0]
//  134                     tick0 = GET_PITCNTus(PIT0);
        LDR.N    R0,??main_0+0x18
        LDR      R0,[R0, #+0]
        MOV      R1,#+1000
        UDIV     R0,R0,R1
        LDR.N    R1,??main_0+0x20  ;; 0x40037104
        LDR      R1,[R1, #+0]
        UDIV     R4,R1,R0
//  135                     //GetPhoto();    //����������п��жϲ���
//  136                     time_delay_ms(10);
        MOVS     R0,#+10
        BL       time_delay_ms
//  137                     tick1 = GET_PITCNTus(PIT0);        
        LDR.N    R0,??main_0+0x18
        LDR      R0,[R0, #+0]
        MOV      R1,#+1000
        UDIV     R0,R0,R1
        LDR.N    R1,??main_0+0x20  ;; 0x40037104
        LDR      R1,[R1, #+0]
        UDIV     R5,R1,R0
//  138                     uartPrintf("\n�ɼ���һ��ͼ�� ��ʱ��%d us\n",tick0 - tick1);
        SUBS     R1,R4,R5
        LDR.N    R0,??main_0+0x28
        BL       uartPrintf
//  139                     
//  140                     PIT_RELOAD(PIT0,100); 
        LDR.N    R0,??main_0+0x14  ;; 0x40037108
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+1
        LSLS     R0,R0,#+1
        LDR.N    R1,??main_0+0x14  ;; 0x40037108
        STR      R0,[R1, #+0]
        LDR.N    R0,??main_0+0x18
        LDR      R0,[R0, #+0]
        MOV      R1,#+1000
        MULS     R0,R1,R0
        MOVS     R1,#+100
        UDIV     R0,R0,R1
        SUBS     R0,R0,#+1
        LDR.N    R1,??main_0+0x1C  ;; 0x40037100
        STR      R0,[R1, #+0]
        LDR.N    R0,??main_0+0x14  ;; 0x40037108
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR.N    R1,??main_0+0x14  ;; 0x40037108
        STR      R0,[R1, #+0]
//  141                     tick0 = GET_PITCNTus(PIT0);
        LDR.N    R0,??main_0+0x18
        LDR      R0,[R0, #+0]
        MOV      R1,#+1000
        UDIV     R0,R0,R1
        LDR.N    R1,??main_0+0x20  ;; 0x40037104
        LDR      R1,[R1, #+0]
        UDIV     R4,R1,R0
//  142                     GetBlackLine() ;
        BL       GetBlackLine
//  143                     tick1 = GET_PITCNTus(PIT0);  
        LDR.N    R0,??main_0+0x18
        LDR      R0,[R0, #+0]
        MOV      R1,#+1000
        UDIV     R0,R0,R1
        LDR.N    R1,??main_0+0x20  ;; 0x40037104
        LDR      R1,[R1, #+0]
        UDIV     R5,R1,R0
//  144                     uartPrintf("\n����һ��ͼ�� ��ʱ��%d us\n",tick0 - tick1);
        SUBS     R1,R4,R5
        LDR.N    R0,??main_0+0x2C
        BL       uartPrintf
//  145                     
//  146                     ShowPhoto();
        BL       ShowPhoto
//  147                     
//  148                     WritePicBlack();
        BL       WritePicBlack
//  149                     
//  150                     //SendCenterLine3(Line_Center_L, Line_Center, Line_Center_R);
//  151                     
//  152                     showChoice &= 0xFE;//�ɼ�����
        LDR.N    R0,??main_0+0xC
        LDRB     R0,[R0, #+0]
        ANDS     R0,R0,#0xFE
        LDR.N    R1,??main_0+0xC
        STRB     R0,[R1, #+0]
//  153                     delayms(1000);
        MOV      R0,#+1000
        BL       delayms
//  154                 }//end of if
//  155                  water_lights();
??main_2:
        BL       water_lights
//  156                 delayms(1000);
        MOV      R0,#+1000
        BL       delayms
        B.N      ??main_1
        DATA
??main_0:
        DC32     `?<Constant "\\261\\261\\276\\251\\323\\312\\265\\347\\2`
        DC32     UARTx
        DC32     `?<Constant "\\n\\312\\344\\310\\353 s  \\277\\252\\312`
        DC32     showChoice
        DC32     `?<Constant "\\n\\277\\252\\312\\274\\262\\311\\274\\257`
        DC32     0x40037108
        DC32     bus_clk_khz
        DC32     0x40037100
        DC32     0x40037104
        DC32     `?<Constant "\\n\\315\\274\\317\\361\\312\\375\\276\\335`
        DC32     `?<Constant "\\n\\262\\311\\274\\257\\265\\275\\322\\273`
        DC32     `?<Constant "\\n\\264\\246\\300\\355\\322\\273\\267\\371`
//  157                 }
//  158                 
//  159 //ʵ����
//  160 #elif 0         //����DMA��ȡͼ��  ���Խ��                
//  161 #ifndef CCD_DMA
//  162       #error "������DMA���ɼ�ͼ���붨�� CCD_DMA!"            
//  163 #endif
//  164                 
//  165 //ʵ����
//  166 #elif 0         //����PIT       ���Խ���� �ɹ�  
//  167                   // ���� :�ӳ�ʼ�����ִ��ж�
//  168                          //����PD0������Կ�����һ��650Hz�ķ��� ˵��PIT1300Hz����
//  169                          
//  170                 
//  171 //ʵ����               
//  172 #elif 0         //�����ⲿ����   ���Խ��:  �ɹ�
//  173                 //�ӳ�ʼ�����ִ��ж�
//  174                 //�� PWM ģ�������  �� PC1 ��PC5�̽�
//  175                 int i = 0;  
//  176                 for(i = 1;i<60;i+=4)
//  177                 {
//  178                   FTM_PWM_freq(MOTOR_FTMN,i*1000) ;
//  179                   FTM_PWM_Duty(MOTOR_FTMN,MOTOR_FTMCH0, 5000);
//  180                   delayms(1000); 
//  181                   uartPrintf("��ǰPWM��Ƶ��%7dHz ",i*1000); 
//  182                   uartPrintf("10ms��ȡ����(�ٶ�):%4d��\n",trueSpeed); 
//  183              
//  184                 }
//  185 //ʵ���
//  186 #elif 0         //�жϷ�����������  ���Խ�� 
//  187                 
//  188 #endif    
//  189     
//  190   }
//  191 }

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
        DC8 "\261\261\276\251\323\312\265\347\264\363\321\247\311\343\317\361\315\267\327\351\300\375\263\314\012"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "\\n\\312\\344\\310\\353 s  \\277\\252\\312`:
        DATA
        DC8 "\012\312\344\310\353 s  \277\252\312\274\262\311\274\257\322\273\267\371\315\274\317\361\012"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "\\n\\277\\252\\312\\274\\262\\311\\274\\257`:
        DATA
        DC8 "\012\277\252\312\274\262\311\274\257\322\273\267\371\315\274\317\361\012"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "\\n\\315\\274\\317\\361\\312\\375\\276\\335`:
        DATA
        DC8 "\012\315\274\317\361\312\375\276\335\261\351\300\37210\261\351 \323\303\312\261\243\272%d us\012"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "\\n\\262\\311\\274\\257\\265\\275\\322\\273`:
        DATA
        DC8 "\012\262\311\274\257\265\275\322\273\267\371\315\274\317\361 \323\303\312\261\243\272%d us\012"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "\\n\\264\\246\\300\\355\\322\\273\\267\\371`:
        DATA
        DC8 "\012\264\246\300\355\322\273\267\371\315\274\317\361 \323\303\312\261\243\272%d us\012"
        DC8 0

        END
// 
// 168 bytes in section .rodata
// 520 bytes in section .text
// 
// 520 bytes of CODE  memory
// 168 bytes of CONST memory
//
//Errors: none
//Warnings: none
