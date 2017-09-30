///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.60.1.5097/W32 for ARM     15/Aug/2015  19:53:00 /
// Copyright 1999-2013 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  C:\Users\Administrator\Desktop\MPU60508.12\src\projects /
//                    \gpio_demo\control.c                                    /
//    Command line =  C:\Users\Administrator\Desktop\MPU60508.12\src\projects /
//                    \gpio_demo\control.c -lCN C:\Users\Administrator\Deskto /
//                    p\MPU60508.12\build\gpio_demo\FLASH\List\ -lB           /
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
//                    emo\FLASH\List\control.s                                /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN DMA_PORTx2BUFF_Init
        EXTERN FTM_QUAD_DIR_init
        EXTERN LCD_Init
        EXTERN Pic_Buffer
        EXTERN Pic_Erosion
        EXTERN SD_init
        EXTERN __aeabi_memclr4
        EXTERN exti_init
        EXTERN exti_irq_DIS
        EXTERN flash_init
        EXTERN gpio_init
        EXTERN lptmr_counter_init
        EXTERN motor_init
        EXTERN pit_init
        EXTERN ruihua_yuzhi
        EXTERN set_irq_priority
        EXTERN steer_init
        EXTERN uart0Printf
        EXTERN uartPrintf
        EXTERN uartSendChar
        EXTERN uart_init

        PUBLIC Erosion
        PUBLIC cam_init
        PUBLIC get_photo
        PUBLIC init
        PUBLIC show_photo
        PUBLIC show_photo_data
        PUBLIC show_photo_data_2

// C:\Users\Administrator\Desktop\MPU60508.12\src\projects\gpio_demo\control.c
//    1 #include "include.h"
//    2 #include "control.h"
//    3 
//    4 
//    5 
//    6 /**********************************************************************************
//    7 *  函数名称：void init()
//    8 *  功能说明：各种初始化函数
//    9 *  参数说明：无
//   10 *  函数返回：无
//   11 *  修改时间：2014-6-16  wuwenqi
//   12 *  备    注：
//   13 **********************************************************************************/	

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//   14 void init()
//   15 {
init:
        PUSH     {R7,LR}
//   16   DisableInterrupts;
        CPSID i
//   17   //打开串口中断
//   18   LCD_Init();
        BL       LCD_Init
//   19   SD_init();
        BL       SD_init
//   20   
//   21   
//   22 //  gpio_init(PORTA,12,GPO,0);//蜂鸣器初始化
//   23 
//   24   uart_init(UART0,115200);
        MOVS     R1,#+115200
        MOVS     R0,#+0
        BL       uart_init
//   25   //初始化并开启PIT中断
//   26   pit_init(PIT0,100); //pit定时，10ms
        MOVS     R1,#+100
        MOVS     R0,#+0
        BL       pit_init
//   27     
//   28   pit_init(PIT1,100); //pit定时，10ms
        MOVS     R1,#+100
        MOVS     R0,#+1
        BL       pit_init
//   29  // pit_init(PIT1,1); //pit定时，1s
//   30  // PIT_IRQ_EN(PIT1);   
//   31   
//   32   //电机初始化，PTC1,PTC2频率：16kHz，50%占空比
//   33   motor_init();
        BL       motor_init
//   34   
//   35   //舵机初始化
//   36   steer_init();
        BL       steer_init
//   37   
//   38   //编码器初始化
//   39   lptmr_counter_init(LPT0_ALT2,65535,2,LPT_Rising); 
        MOVS     R3,#+0
        MOVS     R2,#+2
        MOVW     R1,#+65535
        MOVS     R0,#+2
        BL       lptmr_counter_init
//   40   FTM_QUAD_DIR_init(FTM2);
        MOVS     R0,#+2
        BL       FTM_QUAD_DIR_init
//   41   
//   42   
//   43   //调整中断优先级 set_irq_priority (int irq, int prio),肥叉烧,2014-3-30
//   44   set_irq_priority (88,0); //exti_PTB最高优先级0，用于控制DMA采集图像；
        MOVS     R1,#+0
        MOVS     R0,#+88
        BL       set_irq_priority
//   45   set_irq_priority (68,1); // PIT0第二优先级1，用于速度和方向控制；
        MOVS     R1,#+1
        MOVS     R0,#+68
        BL       set_irq_priority
//   46   set_irq_priority (45,2); // UART0第三优先级，没你的事儿。
        MOVS     R1,#+2
        MOVS     R0,#+45
        BL       set_irq_priority
//   47   //摄像头初始化
//   48   gpio_init(PORTA,15,GPO,HIGH);         //核心板测试LED，初始化 PTA15 ：输出高电平 ,即 初始化 LED0，灭
        MOVS     R3,#+1
        MOVS     R2,#+1
        MOVS     R1,#+15
        MOVS     R0,#+0
        BL       gpio_init
//   49   gpio_init(PORTA,4,GPO,HIGH);          //主板测试LED    初始化 PTA4 ： 输出高电平 ,即 初始化 LED0，灭
        MOVS     R3,#+1
        MOVS     R2,#+1
        MOVS     R1,#+4
        MOVS     R0,#+0
        BL       gpio_init
//   50   //蜂鸣器初始化
//   51   gpio_init(PORTA,14,GPO,0);
        MOVS     R3,#+0
        MOVS     R2,#+1
        MOVS     R1,#+14
        MOVS     R0,#+0
        BL       gpio_init
//   52   
//   53   //拨码开关初始化
//   54   gpio_init(PORTA,16,GPO,0);
        MOVS     R3,#+0
        MOVS     R2,#+1
        MOVS     R1,#+16
        MOVS     R0,#+0
        BL       gpio_init
//   55   gpio_init(PORTA,19,GPO,0);
        MOVS     R3,#+0
        MOVS     R2,#+1
        MOVS     R1,#+19
        MOVS     R0,#+0
        BL       gpio_init
//   56   gpio_init(PORTA,18,GPO,0);
        MOVS     R3,#+0
        MOVS     R2,#+1
        MOVS     R1,#+18
        MOVS     R0,#+0
        BL       gpio_init
//   57 
//   58   //红外接收管初始化
//   59   exti_init(PORTC,8,falling_down);
        MOVS     R2,#+10
        MOVS     R1,#+8
        MOVS     R0,#+2
        BL       exti_init
//   60   
//   61   
//   62   
//   63   cam_init();
        BL       cam_init
//   64   flash_init();
        BL       flash_init
//   65   
//   66   
//   67   EnableInterrupts;
        CPSIE i
//   68   
//   69 }
        POP      {R0,PC}          ;; return
//   70 
//   71 
//   72 /***********************************************
//   73 * 摄像头初始化函数
//   74 *  函数名称：cam_init
//   75 *  功能说明：初始化摄像头场行中断，初始化摄像头DMA传输
//   76 *  参数说明：
//   77 *  函数返回：无
//   78 *  修改时间：2014-3-29
//   79 *  备    注：
//   80 ***********************************************/
//   81 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   82 void cam_init()
//   83 {
cam_init:
        PUSH     {R5-R7,LR}
//   84   //胡兆华
//   85     exti_init(CAM_PORTX,CAM_HR_CHn,rising_down);                //行中断//初始化外部中断输入捕捉模式，上升沿触发
        MOVS     R2,#+9
        MOVS     R1,#+1
        MOVS     R0,#+1
        BL       exti_init
//   86     exti_init(CAM_PORTX,CAM_VS_CHn,falling_down);               //场中断//初始化外部中断输入捕捉模式，下降沿触发// Changed to rising for test,feichashao,20140328
        MOVS     R2,#+10
        MOVS     R1,#+3
        MOVS     R0,#+1
        BL       exti_init
//   87     Dis_CAM; 
        MOVS     R1,#+3
        MOVS     R0,#+1
        BL       exti_irq_DIS
        MOVS     R1,#+1
        MOVS     R0,#+1
        BL       exti_irq_DIS
//   88     DMA_PORTx2BUFF_Init (CAM_DMA_CH,(void *)&PTD_BYTE0_IN,&Pic_Buffer[0][0],PLCK_CH,DMA_BYTE1,COLUMN,DMA_rising);//DMA_falling DMA_rising 
        MOVS     R0,#+1
        STR      R0,[SP, #+8]
        MOVS     R0,#+115
        STR      R0,[SP, #+4]
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
        MOVS     R3,#+41
        LDR.N    R2,??DataTable4_2
        LDR.N    R1,??DataTable4_3  ;; 0x400ff0d0
        MOVS     R0,#+0
        BL       DMA_PORTx2BUFF_Init
//   89 }
        POP      {R0-R2,PC}       ;; return
//   90 
//   91 
//   92 
//   93 
//   94 
//   95 
//   96 /**********************************************************************************
//   97 *  函数名称：void get_photo() 
//   98 *  功能说明：采集图像
//   99 *  参数说明：无
//  100 *  函数返回：无
//  101 *  修改时间：2014-6-17  wuwenqi
//  102 *  备    注：
//  103 **********************************************************************************/	

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  104 void get_photo()
//  105 {
//  106 
//  107   
//  108            
//  109     
//  110     
//  111 }
get_photo:
        BX       LR               ;; return
//  112   
//  113 
//  114 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  115 void Erosion(unsigned char* inputData,unsigned char* outputData)  
//  116 {  
Erosion:
        PUSH     {R4-R6,LR}
        SUB      SP,SP,#+232
        MOVS     R4,R0
        MOVS     R5,R1
//  117  int i, j; 
//  118  long x,y;
//  119      
//  120  unsigned char source[COLUMN]={0};
        ADD      R0,SP,#+116
        MOVS     R1,#+116
        BL       __aeabi_memclr4
//  121  unsigned char distinition[COLUMN]={0};
        ADD      R0,SP,#+0
        MOVS     R1,#+116
        BL       __aeabi_memclr4
//  122           for(j=10;j<COLUMN;j++)
        MOVS     R0,#+10
        B.N      ??Erosion_0
//  123            {distinition[j]=inputData[j];}
??Erosion_1:
        LDRB     R1,[R0, R4]
        ADD      R2,SP,#+0
        STRB     R1,[R0, R2]
        ADDS     R0,R0,#+1
??Erosion_0:
        CMP      R0,#+115
        BLT.N    ??Erosion_1
//  124         for(i = 4;i <ROW-1;i++)  //ROW  从右往左扫 
        MOVS     R1,#+4
        B.N      ??Erosion_2
//  125         {
//  126 			//printp("%2d:",i);
//  127 	        for(j=10;j<COLUMN;j++)
//  128 	        {
//  129 	         source[j]=inputData[i*COLUMN+j];
//  130 	        }
//  131 			  for(j =10;j <COLUMN-1;j++)  //COLUMN
//  132 			  { 
//  133 			        x=distinition[j+1]+2*source[j+1]+inputData[(i+1)*COLUMN+j+1]-
//  134 			        (distinition[j-1]+2*source[j-1]+inputData[(i+1)*COLUMN+j-1]);
//  135 
//  136  
//  137 
//  138 			         
//  139 			        y=distinition[j-1]+2*distinition[j]+distinition[j+1]-
//  140 			        (
//  141 			         inputData[(i+1)*COLUMN+j-1]+2*inputData[(i+1)*COLUMN+j]+inputData[(i+1)*COLUMN+j+1]);
//  142 			         if(x*x+y*y<ruihua_yuzhi)//100*100
//  143 			          {
//  144 			         outputData[i*COLUMN+j]=1;
//  145 			          //printp(" ");
//  146 			          }
//  147 			         else  
//  148 			         {
//  149 			           outputData[i*COLUMN+j]=0;  
//  150 			           //printp("%d*",j);                         
//  151 			           }   
//  152 			  }
//  153 			  //printp("\n") ;   
//  154 			  for(j=10;j<COLUMN;j++)
//  155 			        {
//  156 			            distinition[j]=source[j];
??Erosion_3:
        ADD      R2,SP,#+0
        ADD      R3,SP,#+116
        LDRB     R3,[R0, R3]
        STRB     R3,[R0, R2]
//  157 			        }    
        ADDS     R0,R0,#+1
??Erosion_4:
        CMP      R0,#+115
        BLT.N    ??Erosion_3
        ADDS     R1,R1,#+1
??Erosion_2:
        CMP      R1,#+119
        BGE.N    ??Erosion_5
        MOVS     R0,#+10
        B.N      ??Erosion_6
??Erosion_7:
        MOVS     R2,#+115
        MLA      R2,R2,R1,R0
        LDRB     R2,[R2, R4]
        ADD      R3,SP,#+116
        STRB     R2,[R0, R3]
        ADDS     R0,R0,#+1
??Erosion_6:
        CMP      R0,#+115
        BLT.N    ??Erosion_7
        MOVS     R0,#+10
        B.N      ??Erosion_8
??Erosion_9:
        MOVS     R2,#+115
        MLA      R2,R2,R1,R0
        MOVS     R3,#+0
        STRB     R3,[R2, R5]
??Erosion_10:
        ADDS     R0,R0,#+1
??Erosion_8:
        CMP      R0,#+114
        BGE.N    ??Erosion_11
        ADD      R2,SP,#+0
        ADDS     R2,R0,R2
        LDRB     R2,[R2, #+1]
        ADD      R3,SP,#+116
        ADDS     R3,R0,R3
        LDRB     R3,[R3, #+1]
        LSLS     R3,R3,#+1
        UXTAB    R2,R3,R2
        MOVS     R3,#+115
        MLA      R3,R3,R1,R0
        ADDS     R3,R3,R4
        LDRB     R3,[R3, #+116]
        UXTAB    R2,R2,R3
        ADD      R3,SP,#+0
        ADDS     R3,R0,R3
        LDRB     R3,[R3, #-1]
        SUBS     R2,R2,R3
        ADD      R3,SP,#+116
        ADDS     R3,R0,R3
        LDRB     R3,[R3, #-1]
        SUBS     R2,R2,R3, LSL #+1
        MOVS     R3,#+115
        MLA      R3,R3,R1,R0
        ADDS     R3,R3,R4
        LDRB     R3,[R3, #+114]
        SUBS     R2,R2,R3
        ADD      R3,SP,#+0
        ADDS     R3,R0,R3
        LDRB     R3,[R3, #-1]
        ADD      R6,SP,#+0
        LDRB     R6,[R0, R6]
        LSLS     R6,R6,#+1
        UXTAB    R3,R6,R3
        ADD      R6,SP,#+0
        ADDS     R6,R0,R6
        LDRB     R6,[R6, #+1]
        UXTAB    R3,R3,R6
        MOVS     R6,#+115
        MLA      R6,R6,R1,R0
        ADDS     R6,R6,R4
        LDRB     R6,[R6, #+114]
        SUBS     R3,R3,R6
        MOVS     R6,#+115
        MLA      R6,R6,R1,R0
        ADDS     R6,R6,R4
        LDRB     R6,[R6, #+115]
        SUBS     R3,R3,R6, LSL #+1
        MOVS     R6,#+115
        MLA      R6,R6,R1,R0
        ADDS     R6,R6,R4
        LDRB     R6,[R6, #+116]
        SUBS     R3,R3,R6
        MULS     R3,R3,R3
        MLA      R2,R2,R2,R3
        LDR.N    R3,??DataTable4_4
        LDR      R3,[R3, #+0]
        CMP      R2,R3
        BGE.N    ??Erosion_9
        MOVS     R2,#+115
        MLA      R2,R2,R1,R0
        MOVS     R3,#+1
        STRB     R3,[R2, R5]
        B.N      ??Erosion_10
??Erosion_11:
        MOVS     R0,#+10
        B.N      ??Erosion_4
//  158     		}
//  159 }
??Erosion_5:
        ADD      SP,SP,#+232
        POP      {R4-R6,PC}       ;; return
//  160 
//  161 
//  162     
//  163 
//  164 /**********************************************************************************
//  165 *  函数名称：void show_photo_data() 
//  166 *  功能说明：输出图像原始数据
//  167 *  参数说明：无
//  168 *  函数返回：无
//  169 *  修改时间：2014-6-17  wuwenqi
//  170 *  备    注：
//  171 **********************************************************************************/	

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  172 void show_photo_data()
//  173 {
show_photo_data:
        PUSH     {R3-R5,LR}
//  174     u16 i,j;
//  175     for(i=0;i<ROW;i++) 
        MOVS     R4,#+0
        B.N      ??show_photo_data_0
//  176       {                                  
//  177         for(j=0;j<COLUMN;j++)
//  178         {
//  179          // if(Pic_roberts[i][j]>80)
//  180              uart0Printf("%d ",Pic_Buffer[i][j]);
??show_photo_data_1:
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        MOVS     R0,#+115
        LDR.N    R1,??DataTable4_2
        MLA      R0,R0,R4,R1
        LDRB     R1,[R5, R0]
        ADR.N    R0,??DataTable4  ;; "%d "
        BL       uart0Printf
//  181            //uartPrintf("255 ");
//  182          // else uartPrintf("0 ");
//  183              if(j != COLUMN -1)
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+114
        BNE.N    ??show_photo_data_2
//  184              {
//  185                  //uart0Printf(",");
//  186              }else{
//  187                uart0Printf("\n");
        ADR.N    R0,??DataTable4_1  ;; "\n"
        BL       uart0Printf
//  188              }
//  189         }
??show_photo_data_2:
        ADDS     R5,R5,#+1
??show_photo_data_3:
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+115
        BLT.N    ??show_photo_data_1
        ADDS     R4,R4,#+1
??show_photo_data_0:
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R4,#+120
        BGE.N    ??show_photo_data_4
        MOVS     R5,#+0
        B.N      ??show_photo_data_3
//  190       }
//  191 }
??show_photo_data_4:
        POP      {R0,R4,R5,PC}    ;; return
//  192 
//  193 
//  194 
//  195 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  196 void show_photo_data_2()
//  197 {
show_photo_data_2:
        PUSH     {R3-R5,LR}
//  198     u16 i,j;
//  199     uartSendChar(UART0,0xFF);  //图像头
        MOVS     R1,#+255
        MOVS     R0,#+0
        BL       uartSendChar
//  200     //uartSendChar (UART0,0xff);
//  201     
//  202     for(i=0;i<ROW-1;i++) 
        MOVS     R4,#+0
        B.N      ??show_photo_data_2_0
//  203       {                                  
//  204         for(j=0;j<COLUMN;j++)
//  205         {
//  206          
//  207           //if(Pic_Buffer[i][j]==0xff)Pic_Buffer[i][j]=Pic_Buffer[i][j]-1;
//  208           uart0Printf("%d ",Pic_Buffer[i][j]);
??show_photo_data_2_1:
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        MOVS     R0,#+115
        LDR.N    R1,??DataTable4_2
        MLA      R0,R0,R4,R1
        LDRB     R1,[R5, R0]
        ADR.N    R0,??DataTable4  ;; "%d "
        BL       uart0Printf
//  209         
//  210         }
        ADDS     R5,R5,#+1
??show_photo_data_2_2:
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+115
        BLT.N    ??show_photo_data_2_1
//  211         uart0Printf("\n");
        ADR.N    R0,??DataTable4_1  ;; "\n"
        BL       uart0Printf
        ADDS     R4,R4,#+1
??show_photo_data_2_0:
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R4,#+119
        BGE.N    ??show_photo_data_2_3
        MOVS     R5,#+0
        B.N      ??show_photo_data_2_2
//  212          
//  213       }
//  214     uartSendChar(UART0,0xFF);  //图像尾
??show_photo_data_2_3:
        MOVS     R1,#+255
        MOVS     R0,#+0
        BL       uartSendChar
//  215     
//  216    
//  217 
//  218 }
        POP      {R0,R4,R5,PC}    ;; return
//  219 
//  220 
//  221 /**********************************************************************************
//  222 *  函数名称：void show_photo() 
//  223 *  功能说明：连续输出图像
//  224 *  参数说明：无
//  225 *  函数返回：无
//  226 *  修改时间：2014-6-17  wuwenqi
//  227 *  备    注：
//  228 **********************************************************************************/	

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  229 void show_photo()
//  230 {
show_photo:
        PUSH     {R3-R5,LR}
//  231   
//  232   //uart0Printf("开始采集图像！");
//  233   uartSendChar(UART0,0xFF);  //图像头
        MOVS     R1,#+255
        MOVS     R0,#+0
        BL       uartSendChar
//  234 
//  235   for(int i=0; i<ROW; i++)
        MOVS     R4,#+0
        B.N      ??show_photo_0
//  236   {
//  237     for(int j=0;j<COLUMN ;j++)
//  238     {
//  239       
//  240       uartPrintf("%d ",Pic_Erosion[i][j]);
??show_photo_1:
        MOVS     R0,#+115
        LDR.N    R1,??DataTable4_5
        MLA      R0,R0,R4,R1
        LDRB     R1,[R5, R0]
        ADR.N    R0,??DataTable4  ;; "%d "
        BL       uartPrintf
//  241      }
        ADDS     R5,R5,#+1
??show_photo_2:
        CMP      R5,#+115
        BLT.N    ??show_photo_1
//  242     uartPrintf("\n");
        ADR.N    R0,??DataTable4_1  ;; "\n"
        BL       uartPrintf
        ADDS     R4,R4,#+1
??show_photo_0:
        CMP      R4,#+120
        BGE.N    ??show_photo_3
        MOVS     R5,#+0
        B.N      ??show_photo_2
//  243   }
//  244   uartSendChar(UART0,0xFF);  //图像头
??show_photo_3:
        MOVS     R1,#+255
        MOVS     R0,#+0
        BL       uartSendChar
//  245   /*
//  246   for(int i=0; i<ROW; i++)
//  247   {
//  248     for(int j = 0;j < COLUMN; j++)
//  249      {
//  250       if(j == left_line[i]){
//  251       uartSendChar(UART0,0);
//  252       }else if(j == center_line[i]){
//  253         uartSendChar(UART0,0);
//  254       }else if(j == right_line[i]){
//  255         uartSendChar(UART0,0);
//  256       }else{
//  257          uartSendChar(UART0,244);
//  258       }     
//  259      }  
//  260   }
//  261   */
//  262 }
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4:
        DC8      "%d "

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_1:
        DC8      "\n",0x0,0x0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_2:
        DC32     Pic_Buffer

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_3:
        DC32     0x400ff0d0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_4:
        DC32     ruihua_yuzhi

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_5:
        DC32     Pic_Erosion

        SECTION `.iar_vfe_header`:DATA:REORDER:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
        DC8 "%d "

        SECTION `.rodata`:CONST:REORDER:NOROOT(1)
        DATA
        DC8 "\012"

        END
//  263 
// 
// 238 bytes in section .rodata
// 748 bytes in section .text
// 
// 748 bytes of CODE  memory
// 238 bytes of CONST memory
//
//Errors: none
//Warnings: none
