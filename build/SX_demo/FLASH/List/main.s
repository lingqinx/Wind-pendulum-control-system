///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.30.1.53127/W32 for ARM    22/Dec/2013  00:47:34 /
// Copyright 1999-2011 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  C:\Users\Administrator\Desktop\�������K60ģ��_ֻ�л��� /
//                    IO����\src\projects\SX_demo\main.c                      /
//    Command line =  C:\Users\Administrator\Desktop\�������K60ģ��_ֻ�л��� /
//                    IO����\src\projects\SX_demo\main.c -lCN                 /
//                    C:\Users\Administrator\Desktop\�������K60ģ��_ֻ�л��� /
//                    IO����\build\SX_demo\FLASH\List\ -lB                    /
//                    C:\Users\Administrator\Desktop\�������K60ģ��_ֻ�л��� /
//                    IO����\build\SX_demo\FLASH\List\ -o                     /
//                    C:\Users\Administrator\Desktop\�������K60ģ��_ֻ�л��� /
//                    IO����\build\SX_demo\FLASH\Obj\ --no_cse --no_unroll    /
//                    --no_inline --no_code_motion --no_tbaa --no_clustering  /
//                    --no_scheduling --debug --endian=little                 /
//                    --cpu=Cortex-M4 -e --fpu=None --dlib_config             /
//                    "E:\Program Files (x86)\IAR Systems\Embedded Workbench  /
//                    6.0\arm\INC\c\DLib_Config_Normal.h" -I                  /
//                    C:\Users\Administrator\Desktop\�������K60ģ��_ֻ�л��� /
//                    IO����\build\SX_demo\..\ -I                             /
//                    C:\Users\Administrator\Desktop\�������K60ģ��_ֻ�л��� /
//                    IO����\build\SX_demo\..\..\src\common\ -I               /
//                    C:\Users\Administrator\Desktop\�������K60ģ��_ֻ�л��� /
//                    IO����\build\SX_demo\..\..\src\cpu\ -I                  /
//                    C:\Users\Administrator\Desktop\�������K60ģ��_ֻ�л��� /
//                    IO����\build\SX_demo\..\..\src\drivers\ -I              /
//                    C:\Users\Administrator\Desktop\�������K60ģ��_ֻ�л��� /
//                    IO����\build\SX_demo\..\..\src\drivers\gpio\ -I         /
//                    C:\Users\Administrator\Desktop\�������K60ģ��_ֻ�л��� /
//                    IO����\build\SX_demo\..\..\src\drivers\wdog\ -I         /
//                    C:\Users\Administrator\Desktop\�������K60ģ��_ֻ�л��� /
//                    IO����\build\SX_demo\..\..\src\drivers\mcg\ -I          /
//                    C:\Users\Administrator\Desktop\�������K60ģ��_ֻ�л��� /
//                    IO����\build\SX_demo\..\..\src\drivers\uart\ -I         /
//                    C:\Users\Administrator\Desktop\�������K60ģ��_ֻ�л��� /
//                    IO����\build\SX_demo\..\..\src\drivers\lptmr\ -I        /
//                    C:\Users\Administrator\Desktop\�������K60ģ��_ֻ�л��� /
//                    IO����\build\SX_demo\..\..\src\drivers\LED\ -I          /
//                    C:\Users\Administrator\Desktop\�������K60ģ��_ֻ�л��� /
//                    IO����\build\SX_demo\..\..\src\drivers\fun\ -I          /
//                    C:\Users\Administrator\Desktop\�������K60ģ��_ֻ�л��� /
//                    IO����\build\SX_demo\..\..\src\drivers\FTM\ -I          /
//                    C:\Users\Administrator\Desktop\�������K60ģ��_ֻ�л��� /
//                    IO����\build\SX_demo\..\..\src\drivers\pit\ -I          /
//                    C:\Users\Administrator\Desktop\�������K60ģ��_ֻ�л��� /
//                    IO����\build\SX_demo\..\..\src\drivers\DIPswitch\ -I    /
//                    C:\Users\Administrator\Desktop\�������K60ģ��_ֻ�л��� /
//                    IO����\build\SX_demo\..\..\src\drivers\steer\ -I        /
//                    C:\Users\Administrator\Desktop\�������K60ģ��_ֻ�л��� /
//                    IO����\build\SX_demo\..\..\src\drivers\ccd\ -I          /
//                    C:\Users\Administrator\Desktop\�������K60ģ��_ֻ�л��� /
//                    IO����\build\SX_demo\..\..\src\drivers\dma\ -I          /
//                    C:\Users\Administrator\Desktop\�������K60ģ��_ֻ�л��� /
//                    IO����\build\SX_demo\..\..\src\drivers\motor\ -I        /
//                    C:\Users\Administrator\Desktop\�������K60ģ��_ֻ�л��� /
//                    IO����\build\SX_demo\..\..\src\platforms\ -I            /
//                    C:\Users\Administrator\Desktop\�������K60ģ��_ֻ�л��� /
//                    IO����\build\SX_demo\..\..\src\projects\ -I             /
//                    C:\Users\Administrator\Desktop\�������K60ģ��_ֻ�л��� /
//                    IO����\build\SX_demo\..\..\src\projects\SX_demo\ -Ol    /
//    List file    =  C:\Users\Administrator\Desktop\�������K60ģ��_ֻ�л��� /
//                    IO����\build\SX_demo\FLASH\List\main.s                  /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME main

        #define SHT_PROGBITS 0x1

        EXTERN CCD_init
        EXTERN DIPswitch_ctrl
        EXTERN GetBlackLine
        EXTERN GetPhoto
        EXTERN ShowPhoto
        EXTERN UARTx
        EXTERN bus_clk_khz
        EXTERN delayms
        EXTERN enable_irq
        EXTERN gpio_init
        EXTERN lptmr_counter_init
        EXTERN motor_init
        EXTERN picLineSum
        EXTERN pit_init
        EXTERN showChoice
        EXTERN steer_init
        EXTERN uartPrintf
        EXTERN water_lights

        PUBLIC main

// C:\Users\Administrator\Desktop\�������K60ģ��_ֻ�л���IO����\src\projects\SX_demo\main.c
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
//   20           ���뿪�أ�PA14    PA16    PA17   PA5
//   21           ���    ��PA12    PA13
//   22           ���    ��PC1     PC2     PC3     PC4
//   23           ���ж�  ��PB18
//   24           ���ж�  ��PB19
//   25           Y0-Y7   : PD0-PD7  (��������ͷor�ⲿAD������)
//   26           PLCK    ��PB9    (��Ҫ��DMA�Ĳ�Ҫ����һ���źţ�PLCK����4��Ƶ���PB9)
//   27                     ������HD74LS161AP���ķ�Ƶ��·
//   28           ����    ��PB16  PB17  ������ 115200  �ղ����źſ��԰��շ���תһ��
//   29           ������  ��PC5
//   30 ��Ҫ�޸���Ƶ�ĵ� k60_bupt.h���޸�  ʹ��DMA���鵽200M�ں� 100Mbus
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
//   43   
//   44   gpio_init  (PORTA,15,GPO,HIGH);         //���İ����LED����ʼ�� PTA15 ������ߵ�ƽ ,�� ��ʼ�� LED0����
        MOVS     R3,#+1
        MOVS     R2,#+1
        MOVS     R1,#+15
        MOVS     R0,#+0
        BL       gpio_init
//   45   gpio_init  (PORTA,4,GPO,HIGH);          //�������LED    ��ʼ�� PTA4 �� ����ߵ�ƽ ,�� ��ʼ�� LED0����
        MOVS     R3,#+1
        MOVS     R2,#+1
        MOVS     R1,#+4
        MOVS     R0,#+0
        BL       gpio_init
//   46   
//   47   
//   48   //��ʼ�����뿪��
//   49   DIPswitch_ctrl();
        BL       DIPswitch_ctrl
//   50   //��ʼ�����
//   51   steer_init();
        BL       steer_init
//   52   //�����ʼ��
//   53   motor_init();
        BL       motor_init
//   54   //����ͷ��ʼ��
//   55   CCD_init();
        BL       CCD_init
//   56   
//   57   //��ʼ��PIT   100Hz  
//   58   pit_init(PIT0,100); 
        MOVS     R1,#+100
        MOVS     R0,#+0
        BL       pit_init
//   59   //ʹ��PIT  ����ʱ�ر�  ������������ʱʹ��
//   60   //��ʵ�������ⶼ��Ҫ�ر�ʹ��
//   61   //PIT_IRQ_EN(PIT0);
//   62   //gpio_init(PORTD,0,GPO,0);   //���ڲ���PIT
//   63   
//   64   //��ʼ���ⲿ����  ��PC5   �ڶ���������65535 ���������ǰ���� ����һ��16λ������
//   65   lptmr_counter_init(LPT0_ALT2,65535,2,LPT_Rising);   
        MOVS     R3,#+0
        MOVS     R2,#+2
        MOVW     R1,#+65535
        MOVS     R0,#+2
        BL       lptmr_counter_init
//   66   //�򿪴����ж�
//   67   UART_IRQ_EN(UART0); 
        LDR.N    R0,??main_0+0x4
        LDR      R0,[R0, #+0]
        LDRB     R0,[R0, #+3]
        ORRS     R0,R0,#0x20
        LDR.N    R1,??main_0+0x4
        LDR      R1,[R1, #+0]
        STRB     R0,[R1, #+3]
        MOVS     R0,#+45
        BL       enable_irq
//   68   EnableInterrupts;    
        CPSIE i         
//   69   while(1)
//   70   {
//   71 //���� ��1����ʾ�򿪵�ǰ���Գ��򣬡�0��ʾ�رա�
//   72 //ʵ��0
//   73 #if 0           //��������     ���Խ���� �ɹ�
//   74                 //���İ�������ϸ���һ��LED��˸��Ƶ��1Hz
//   75                 GPIO_TURN(PORTA,15);
//   76                 GPIO_TURN(PORTA,4);
//   77                 delayms(500);
//   78 //ʵ��һ
//   79 #elif 0           //���Բ��뿪��     ���Խ���� �ɹ�
//   80                 //������ PA14    PA15    PA16    PA17 ���ڲ��뿪�ص�·�ϣ�����������ƺõľ����⼸�����ţ�
//   81                 uartPrintf("�л����뿪�عۿ�Ч��\n");
//   82                 DIPswitch_ctrl();
//   83                 delayms(1000);
//   84 //ʵ���
//   85 #elif 0         //���Զ��        ���Խ���� �ɹ�
//   86                 //����  ��PA12    PA13 ����ʾ�����ϣ�������  Ŀǰ���Ҽ�����200 - 5000 ��1% -- 50%
//   87                 //100Hz
//   88                 u32 i = 0;
//   89                 
//   90                 //�� i = 0 �� i = 5500 ʱ���ڰ�ȫ��Χ��Ӧ�ò���Ӧ
//   91                 //ռ�ձ�ÿһ���5%
//   92                 for(i = 0;i<10500;i+=100)
//   93                 {
//   94                   uartPrintf("��ǰռ�ձ� %d %%\n",i*100/FTM_PRECISON);
//   95                   PWMSetSteer(i) ; 
//   96 #if STEER_DOUBLE
//   97                   PWMSetSteer1(i) ;
//   98 #endif
//   99                   delayms(2000);
//  100                 }
//  101                 
//  102 //ʵ����
//  103 #elif 0         //���Ե��        ���Խ�����ɹ�
//  104                 //����  �� PC1     PC2     PC3     PC4 ����ʾ�����ϣ�������
//  105                 int i = 0;
//  106                 //ռ�ձ�ÿһ���5%
//  107                 //��Χ 0%-100%
//  108                 //С�� 0 �� PC2 PC4���в��� PC1 PC3Ϊ0��ƽ
//  109                 //���� 0 �� PC1 PC3���в��� PC2 PC4Ϊ0��ƽ
//  110                 for(i = -5000;i<5000;i+=500)
//  111                 {
//  112                   uartPrintf("��ǰռ�ձ� %d %%\n",abs(i)*100/FTM_PRECISON);
//  113 #if MOTOR_DOUBLE
//  114                   PWMSetMotor2(i,i);  
//  115 #else
//  116                   PWMSetMotor(i);  
//  117 #endif            
//  118                   delayms(2000);
//  119                 }
//  120 //ʵ����
//  121 #elif 0         //�����жϷ�ȡͼ��  ���Խ��
//  122 #ifdef CCD_DMA
//  123       #error "�������жϷ��ɼ�ͼ����ע�͵� CCD_DMA!"            
//  124 #endif
//  125                 
//  126 
//  127                 while(1)
//  128                 {
//  129                 uint32 tick0 = 0,tick1 = 0;	
//  130                 uartPrintf("\n���� s  ��ʼ�ɼ�һ��ͼ��\n");   
//  131                 if( (showChoice & 0x01) )
//  132                  {
//  133                     uartPrintf("\n��ʼ�ɼ�һ��ͼ��\n");   
//  134                 
//  135                     PIT_RELOAD(PIT0,100); 
//  136                     tick0 = GET_PITCNTus(PIT0);
//  137                     WritePicTest();WritePicTest();
//  138                     WritePicTest();WritePicTest();
//  139                     WritePicTest();WritePicTest();
//  140                     WritePicTest();WritePicTest();
//  141                     WritePicTest();WritePicTest();
//  142                     
//  143                     tick1 = GET_PITCNTus(PIT0);        
//  144                     uartPrintf("\nͼ�����ݱ���10�� ��ʱ��%d us\n",tick0 - tick1);
//  145                    
//  146                     PIT_RELOAD(PIT0,1); 
//  147                     tick0 = GET_PITCNTus(PIT0);
//  148                     GetPhoto();    //����������п��жϲ���
//  149                     tick1 = GET_PITCNTus(PIT0);        
//  150                     uartPrintf("\n�ɼ���һ��ͼ�� ��ʱ��%d us\n",tick0 - tick1);
//  151                     
//  152                     PIT_RELOAD(PIT0,100); 
//  153                     tick0 = GET_PITCNTus(PIT0);
//  154                     GetBlackLine() ;
//  155                     tick1 = GET_PITCNTus(PIT0);  
//  156                     uartPrintf("\n����һ��ͼ�� ��ʱ��%d us\n",tick0 - tick1);
//  157                     
//  158                     ShowPhoto();
//  159                     
//  160                     
//  161                     WritePicBlack();
//  162                     
//  163                     //SendCenterLine3(Line_Center_L, Line_Center, Line_Center_R);
//  164                     
//  165                     showChoice &= 0xFE;//�ɼ�����
//  166                     delayms(1000);
//  167                 }//end of if
//  168                  water_lights();
//  169                 delayms(1000);
//  170                 }
//  171                 
//  172 //ʵ����
//  173 #elif 1         //����DMA��ȡͼ��  ���Խ��                
//  174 #ifndef CCD_DMA
//  175       #error "������DMA���ɼ�ͼ���붨�� CCD_DMA!"            
//  176 #endif
//  177 extern u32 picLineSum;
//  178                 while(1)
//  179                 {
//  180                 uint32 tick0 = 0,tick1 = 0;	
??main_1:
        MOVS     R4,#+0
        MOVS     R5,#+0
//  181                 uartPrintf("\n���� s  ��ʼ�ɼ�һ��ͼ��\n");   
        LDR.N    R0,??main_0+0x8
        BL       uartPrintf
//  182                 if( (showChoice & 0x01) )
        LDR.N    R0,??main_0+0xC
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+31
        BPL.N    ??main_2
//  183                  {
//  184                     uartPrintf("\n��ʼ�ɼ�һ��ͼ��\n");   
        LDR.N    R0,??main_0+0x10
        BL       uartPrintf
//  185                 /*
//  186                     PIT_RELOAD(PIT0,100); 
//  187                     tick0 = GET_PITCNTus(PIT0);
//  188                     WritePicTest();WritePicTest();
//  189                     WritePicTest();WritePicTest();
//  190                     WritePicTest();WritePicTest();
//  191                     WritePicTest();WritePicTest();
//  192                     WritePicTest();WritePicTest();
//  193                     
//  194                     tick1 = GET_PITCNTus(PIT0);        
//  195                     uartPrintf("\nͼ�����ݱ���10�� ��ʱ��%d us\n",tick0 - tick1);
//  196                  */  
//  197                     PIT_RELOAD(PIT0,1); 
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
        MOVS     R1,#+1
        UDIV     R0,R0,R1
        SUBS     R0,R0,#+1
        LDR.N    R1,??main_0+0x1C  ;; 0x40037100
        STR      R0,[R1, #+0]
        LDR.N    R0,??main_0+0x14  ;; 0x40037108
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR.N    R1,??main_0+0x14  ;; 0x40037108
        STR      R0,[R1, #+0]
//  198                     tick0 = GET_PITCNTus(PIT0);
        LDR.N    R0,??main_0+0x18
        LDR      R0,[R0, #+0]
        MOV      R1,#+1000
        UDIV     R0,R0,R1
        LDR.N    R1,??main_0+0x20  ;; 0x40037104
        LDR      R1,[R1, #+0]
        UDIV     R4,R1,R0
//  199                     GetPhoto();    //����������п��жϲ���
        BL       GetPhoto
//  200                     tick1 = GET_PITCNTus(PIT0);        
        LDR.N    R0,??main_0+0x18
        LDR      R0,[R0, #+0]
        MOV      R1,#+1000
        UDIV     R0,R0,R1
        LDR.N    R1,??main_0+0x20  ;; 0x40037104
        LDR      R1,[R1, #+0]
        UDIV     R5,R1,R0
//  201                     uartPrintf("\n�ɼ���һ��ͼ�� ��ʱ��%d us\n",tick0 - tick1);
        SUBS     R1,R4,R5
        LDR.N    R0,??main_0+0x24
        BL       uartPrintf
//  202                     
//  203                     PIT_RELOAD(PIT0,100); 
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
//  204                     tick0 = GET_PITCNTus(PIT0);
        LDR.N    R0,??main_0+0x18
        LDR      R0,[R0, #+0]
        MOV      R1,#+1000
        UDIV     R0,R0,R1
        LDR.N    R1,??main_0+0x20  ;; 0x40037104
        LDR      R1,[R1, #+0]
        UDIV     R4,R1,R0
//  205                     GetBlackLine() ;
        BL       GetBlackLine
//  206                     tick1 = GET_PITCNTus(PIT0);  
        LDR.N    R0,??main_0+0x18
        LDR      R0,[R0, #+0]
        MOV      R1,#+1000
        UDIV     R0,R0,R1
        LDR.N    R1,??main_0+0x20  ;; 0x40037104
        LDR      R1,[R1, #+0]
        UDIV     R5,R1,R0
//  207                     uartPrintf("\n����һ��ͼ�� ��ʱ��%d us\n",tick0 - tick1);
        SUBS     R1,R4,R5
        LDR.N    R0,??main_0+0x28
        BL       uartPrintf
//  208                     
//  209                     uartPrintf("\n�У�%d \n",picLineSum); 
        LDR.N    R0,??main_0+0x2C
        LDR      R1,[R0, #+0]
        LDR.N    R0,??main_0+0x30
        BL       uartPrintf
//  210                     ShowPhoto();
        BL       ShowPhoto
//  211                     
//  212                     //WritePicBlack();
//  213                     
//  214                     //SendCenterLine3(Line_Center_L, Line_Center, Line_Center_R);
//  215                     
//  216                     showChoice &= 0xFE;//�ɼ�����
        LDR.N    R0,??main_0+0xC
        LDRB     R0,[R0, #+0]
        ANDS     R0,R0,#0xFE
        LDR.N    R1,??main_0+0xC
        STRB     R0,[R1, #+0]
//  217                     delayms(1000);
        MOV      R0,#+1000
        BL       delayms
//  218                 }//end of if
//  219                  water_lights();
??main_2:
        BL       water_lights
//  220                 
//  221                 delayms(1000);
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
        DC32     `?<Constant "\\n\\262\\311\\274\\257\\265\\275\\322\\273`
        DC32     `?<Constant "\\n\\264\\246\\300\\355\\322\\273\\267\\371`
        DC32     picLineSum
        DC32     `?<Constant "\\n\\320\\320\\243\\272%d \\n">`
//  222                 }
//  223                 
//  224 //ʵ����
//  225 #elif 0         //����PIT       ���Խ���� �ɹ�  
//  226                   // ���� :�ӳ�ʼ�����ִ��ж�
//  227                          //����PD0������Կ�����һ��650Hz�ķ��� ˵��PIT1300Hz����
//  228                          
//  229                 
//  230 //ʵ����               
//  231 #elif 0         //�����ⲿ����   ���Խ��:  �ɹ�
//  232                 //�ӳ�ʼ�����ִ��ж�
//  233                 //�� PWM ģ�������  �� PC1 ��PC5�̽�
//  234                 int i = 0;  
//  235                 for(i = 1;i<60;i+=4)
//  236                 {
//  237                   FTM_PWM_freq(MOTOR_FTMN,i*1000) ;
//  238                   FTM_PWM_Duty(MOTOR_FTMN,MOTOR_FTMCH0, 5000);
//  239                   delayms(1000); 
//  240                   uartPrintf("��ǰPWM��Ƶ��%7dHz ",i*1000); 
//  241                   uartPrintf("10ms��ȡ����(�ٶ�):%4d��\n",trueSpeed); 
//  242              
//  243                 }
//  244 //ʵ���
//  245 #elif 0         //�жϷ�����������  ���Խ�� 
//  246                 //ֱ�����뿴Ч��
//  247 #endif    
//  248     
//  249   }
//  250 }

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
`?<Constant "\\n\\262\\311\\274\\257\\265\\275\\322\\273`:
        DATA
        DC8 "\012\262\311\274\257\265\275\322\273\267\371\315\274\317\361 \323\303\312\261\243\272%d us\012"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "\\n\\264\\246\\300\\355\\322\\273\\267\\371`:
        DATA
        DC8 "\012\264\246\300\355\322\273\267\371\315\274\317\361 \323\303\312\261\243\272%d us\012"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "\\n\\320\\320\\243\\272%d \\n">`:
        DATA
        DC8 "\012\320\320\243\272%d \012"
        DC8 0, 0

        END
// 
// 148 bytes in section .rodata
// 416 bytes in section .text
// 
// 416 bytes of CODE  memory
// 148 bytes of CONST memory
//
//Errors: none
//Warnings: none
