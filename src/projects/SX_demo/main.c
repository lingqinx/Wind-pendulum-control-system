/*******************************************************************************
                              北京邮电大学 K60 学习例程
【例程名称】北京邮电大学摄像头组例程
【Designed】snowwolf
【E-mail  】snowwolf2012@qq.com
【软件版本】V1.0
【最后更新】2012年3月24日
------------------------------------------------
【dev.env.】IAR 6.3
【Target  】K60X256
【Crystal 】50.000Mhz
【busclock】48.000MHz
【pllclock】96.000MHz   
【 说  明 】仅做内部学习使用，请勿外传
【 参  考 】野火嵌入式开发工作室
            龙丘开发例程
            苏州大学《嵌入式系统原理与实践》

接口说明：
          拨码开关：PA14    PA16    PA17   PA5
          舵机    ：PA12    PA13
          电机    ：PC1     PC2     PC3     PC4
          行中断  ：PB18
          场中断  ：PB19
          Y0-Y7   : PD0-PD7  (数字摄像头or外部AD数据线)
          PLCK    ：PB9    (需要用DMA的才要接这一个信号，PLCK经过4分频后接PB9)
                    我是用HD74LS161AP做的分频电路
          串口    ：PB16  PB17  波特率 115200  收不到信号可以把收发反转一个
          编码器  ：PC5
需要修改主频的到 k60_bupt.h里修改  使用DMA建议到200M内核 100Mbus
********************************************************************************/	


#include "common.h"
#include "include.h"


void main()
{
  DisableInterrupts;  
  
  uartPrintf("北京邮电大学摄像头组例程\n");
  
  gpio_init  (PORTA,15,GPO,HIGH);         //核心板测试LED，初始化 PTA15 ：输出高电平 ,即 初始化 LED0，灭
  gpio_init  (PORTA,4,GPO,HIGH);          //主板测试LED    初始化 PTA4 ： 输出高电平 ,即 初始化 LED0，灭
  
  
  //初始化拨码开关
  DIPswitch_ctrl();
  //初始化舵机
  steer_init();
  //电机初始化
  motor_init();
  //摄像头初始化
  CCD_init();
  
  //初始化PIT   100Hz  
  pit_init(PIT0,100); 
  //使能PIT  测试时关闭  程序正常运行时使能
  //除实验六七外都需要关闭使能
  //PIT_IRQ_EN(PIT0);
  //gpio_init(PORTD,0,GPO,0);   //用于测试PIT
  
  //初始化外部测速  接PC5   第二个参数用65535 否则计数提前清零 这是一个16位计数器
  lptmr_counter_init(LPT0_ALT2,65535,2,LPT_Rising);   
  //打开串口中断
  UART_IRQ_EN(UART0); 
  EnableInterrupts;    
  while(1)
  {
//以下 “1”表示打开当前测试程序，“0表示关闭”
//实验0
#if 0           //测试主板     测试结果： 成功
                //核心板和主板上各有一个LED闪烁，频率1Hz
                GPIO_TURN(PORTA,15);
                GPIO_TURN(PORTA,4);
                delayms(500);
//实验一
#elif 0           //测试拨码开关     测试结果： 成功
                //操作把 PA14    PA15    PA16    PA17 接在拨码开关电路上（主板上是设计好的就是这几个引脚）
                uartPrintf("切换拔码开关观看效果\n");
                DIPswitch_ctrl();
                delayms(1000);
//实验二
#elif 0         //测试舵机        测试结果： 成功
                //操作  将PA12    PA13 接在示波器上，看波型  目前左右极限是200 - 5000 即1% -- 50%
                //100Hz
                u32 i = 0;
                
                //在 i = 0 和 i = 5500 时不在安全范围内应该不反应
                //占空比每一秒加5%
                for(i = 0;i<10500;i+=100)
                {
                  uartPrintf("当前占空比 %d %%\n",i*100/FTM_PRECISON);
                  PWMSetSteer(i) ; 
#if STEER_DOUBLE
                  PWMSetSteer1(i) ;
#endif
                  delayms(2000);
                }
                
//实验三
#elif 0         //测试电机        测试结果：成功
                //操作  将 PC1     PC2     PC3     PC4 接在示波器上，看波型
                int i = 0;
                //占空比每一秒加5%
                //范围 0%-100%
                //小于 0 是 PC2 PC4是有波型 PC1 PC3为0电平
                //大于 0 是 PC1 PC3是有波型 PC2 PC4为0电平
                for(i = -5000;i<5000;i+=500)
                {
                  uartPrintf("当前占空比 %d %%\n",abs(i)*100/FTM_PRECISON);
#if MOTOR_DOUBLE
                  PWMSetMotor2(i,i);  
#else
                  PWMSetMotor(i);  
#endif            
                  delayms(2000);
                }
//实验四
#elif 0         //测试中断法取图像  测试结果
#ifdef CCD_DMA
      #error "这里是中断法采集图像，请注释掉 CCD_DMA!"            
#endif
                

                while(1)
                {
                uint32 tick0 = 0,tick1 = 0;	
                uartPrintf("\n输入 s  开始采集一幅图像\n");   
                if( (showChoice & 0x01) )
                 {
                    uartPrintf("\n开始采集一幅图像\n");   
                
                    PIT_RELOAD(PIT0,100); 
                    tick0 = GET_PITCNTus(PIT0);
                    WritePicTest();WritePicTest();
                    WritePicTest();WritePicTest();
                    WritePicTest();WritePicTest();
                    WritePicTest();WritePicTest();
                    WritePicTest();WritePicTest();
                    
                    tick1 = GET_PITCNTus(PIT0);        
                    uartPrintf("\n图像数据遍历10遍 用时：%d us\n",tick0 - tick1);
                   
                    PIT_RELOAD(PIT0,1); 
                    tick0 = GET_PITCNTus(PIT0);
                    GetPhoto();    //这个函数里有开中断操作
                    tick1 = GET_PITCNTus(PIT0);        
                    uartPrintf("\n采集到一幅图像 用时：%d us\n",tick0 - tick1);
                    
                    PIT_RELOAD(PIT0,100); 
                    tick0 = GET_PITCNTus(PIT0);
                    GetBlackLine() ;
                    tick1 = GET_PITCNTus(PIT0);  
                    uartPrintf("\n处理一幅图像 用时：%d us\n",tick0 - tick1);
                    
                    ShowPhoto();
                    
                    
                    WritePicBlack();
                    
                    //SendCenterLine3(Line_Center_L, Line_Center, Line_Center_R);
                    
                    showChoice &= 0xFE;//采集结束
                    delayms(1000);
                }//end of if
                 water_lights();
                delayms(1000);
                }
                
//实验五
#elif 1         //测试DMA法取图像  测试结果                
#ifndef CCD_DMA
      #error "这里是DMA法采集图像，请定义 CCD_DMA!"            
#endif
extern u32 picLineSum;
                while(1)
                {
                uint32 tick0 = 0,tick1 = 0;	
                uartPrintf("\n输入 s  开始采集一幅图像\n");   
                if( (showChoice & 0x01) )
                 {
                    uartPrintf("\n开始采集一幅图像\n");   
                /*
                    PIT_RELOAD(PIT0,100); 
                    tick0 = GET_PITCNTus(PIT0);
                    WritePicTest();WritePicTest();
                    WritePicTest();WritePicTest();
                    WritePicTest();WritePicTest();
                    WritePicTest();WritePicTest();
                    WritePicTest();WritePicTest();
                    
                    tick1 = GET_PITCNTus(PIT0);        
                    uartPrintf("\n图像数据遍历10遍 用时：%d us\n",tick0 - tick1);
                 */  
                    PIT_RELOAD(PIT0,1); 
                    tick0 = GET_PITCNTus(PIT0);
                    GetPhoto();    //这个函数里有开中断操作
                    tick1 = GET_PITCNTus(PIT0);        
                    uartPrintf("\n采集到一幅图像 用时：%d us\n",tick0 - tick1);
                    
                    PIT_RELOAD(PIT0,100); 
                    tick0 = GET_PITCNTus(PIT0);
                    GetBlackLine() ;
                    tick1 = GET_PITCNTus(PIT0);  
                    uartPrintf("\n处理一幅图像 用时：%d us\n",tick0 - tick1);
                    
                    uartPrintf("\n行：%d \n",picLineSum); 
                    ShowPhoto();
                    
                    //WritePicBlack();
                    
                    //SendCenterLine3(Line_Center_L, Line_Center, Line_Center_R);
                    
                    showChoice &= 0xFE;//采集结束
                    delayms(1000);
                }//end of if
                 water_lights();
                
                delayms(1000);
                }
                
//实验六
#elif 0         //测试PIT       测试结果： 成功  
                  // 操作 :从初始化部分打开中断
                         //设置PD0输出可以看到有一个650Hz的方波 说明PIT1300Hz正常
                         
                
//实验七               
#elif 0         //测试外部测速   测试结果:  成功
                //从初始化部分打开中断
                //用 PWM 模拟编码器  将 PC1 与PC5短接
                int i = 0;  
                for(i = 1;i<60;i+=4)
                {
                  FTM_PWM_freq(MOTOR_FTMN,i*1000) ;
                  FTM_PWM_Duty(MOTOR_FTMN,MOTOR_FTMCH0, 5000);
                  delayms(1000); 
                  uartPrintf("当前PWM波频率%7dHz ",i*1000); 
                  uartPrintf("10ms读取脉冲(速度):%4d个\n",trueSpeed); 
             
                }
//实验八
#elif 0         //中断法读串口数据  测试结果 
                //直接输入看效果
#endif    
    
  }
}