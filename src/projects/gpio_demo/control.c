#include "include.h"
#include "control.h"



/**********************************************************************************
*  函数名称：void init()
*  功能说明：各种初始化函数
*  参数说明：无
*  函数返回：无
*  修改时间：2014-6-16  wuwenqi
*  备    注：
**********************************************************************************/	
void init()
{
  DisableInterrupts;
  //打开串口中断
  LCD_Init();
  SD_init();
  
  
//  gpio_init(PORTA,12,GPO,0);//蜂鸣器初始化

  uart_init(UART0,115200);
  //初始化并开启PIT中断
  pit_init(PIT0,100); //pit定时，10ms
    
  pit_init(PIT1,100); //pit定时，10ms
 // pit_init(PIT1,1); //pit定时，1s
 // PIT_IRQ_EN(PIT1);   
  
  //电机初始化，PTC1,PTC2频率：16kHz，50%占空比
  motor_init();
  
  //舵机初始化
  steer_init();
  
  //编码器初始化
  lptmr_counter_init(LPT0_ALT2,65535,2,LPT_Rising); 
  FTM_QUAD_DIR_init(FTM2);
  
  
  //调整中断优先级 set_irq_priority (int irq, int prio),肥叉烧,2014-3-30
  set_irq_priority (88,0); //exti_PTB最高优先级0，用于控制DMA采集图像；
  set_irq_priority (68,1); // PIT0第二优先级1，用于速度和方向控制；
  set_irq_priority (45,2); // UART0第三优先级，没你的事儿。
  //摄像头初始化
  gpio_init(PORTA,15,GPO,HIGH);         //核心板测试LED，初始化 PTA15 ：输出高电平 ,即 初始化 LED0，灭
  gpio_init(PORTA,4,GPO,HIGH);          //主板测试LED    初始化 PTA4 ： 输出高电平 ,即 初始化 LED0，灭
  //蜂鸣器初始化
  gpio_init(PORTA,14,GPO,0);
  
  //拨码开关初始化
  gpio_init(PORTA,16,GPO,0);
  gpio_init(PORTA,19,GPO,0);
  gpio_init(PORTA,18,GPO,0);

  //红外接收管初始化
  exti_init(PORTC,8,falling_down);
  
  
  
  cam_init();
  flash_init();
  
  
  EnableInterrupts;
  
}


/***********************************************
* 摄像头初始化函数
*  函数名称：cam_init
*  功能说明：初始化摄像头场行中断，初始化摄像头DMA传输
*  参数说明：
*  函数返回：无
*  修改时间：2014-3-29
*  备    注：
***********************************************/

void cam_init()
{
  //胡兆华
    exti_init(CAM_PORTX,CAM_HR_CHn,rising_down);                //行中断//初始化外部中断输入捕捉模式，上升沿触发
    exti_init(CAM_PORTX,CAM_VS_CHn,falling_down);               //场中断//初始化外部中断输入捕捉模式，下降沿触发// Changed to rising for test,feichashao,20140328
    Dis_CAM; 
    DMA_PORTx2BUFF_Init (CAM_DMA_CH,(void *)&PTD_BYTE0_IN,&Pic_Buffer[0][0],PLCK_CH,DMA_BYTE1,COLUMN,DMA_rising);//DMA_falling DMA_rising 
}






/**********************************************************************************
*  函数名称：void get_photo() 
*  功能说明：采集图像
*  参数说明：无
*  函数返回：无
*  修改时间：2014-6-17  wuwenqi
*  备    注：
**********************************************************************************/	
void get_photo()
{

  
           
    
    
}
  


void Erosion(unsigned char* inputData,unsigned char* outputData)  
{  
 int i, j; 
 long x,y;
     
 unsigned char source[COLUMN]={0};
 unsigned char distinition[COLUMN]={0};
          for(j=10;j<COLUMN;j++)
           {distinition[j]=inputData[j];}
        for(i = 4;i <ROW-1;i++)  //ROW  从右往左扫 
        {
			//printp("%2d:",i);
	        for(j=10;j<COLUMN;j++)
	        {
	         source[j]=inputData[i*COLUMN+j];
	        }
			  for(j =10;j <COLUMN-1;j++)  //COLUMN
			  { 
			        x=distinition[j+1]+2*source[j+1]+inputData[(i+1)*COLUMN+j+1]-
			        (distinition[j-1]+2*source[j-1]+inputData[(i+1)*COLUMN+j-1]);

 

			         
			        y=distinition[j-1]+2*distinition[j]+distinition[j+1]-
			        (
			         inputData[(i+1)*COLUMN+j-1]+2*inputData[(i+1)*COLUMN+j]+inputData[(i+1)*COLUMN+j+1]);
			         if(x*x+y*y<ruihua_yuzhi)//100*100
			          {
			         outputData[i*COLUMN+j]=1;
			          //printp(" ");
			          }
			         else  
			         {
			           outputData[i*COLUMN+j]=0;  
			           //printp("%d*",j);                         
			           }   
			  }
			  //printp("\n") ;   
			  for(j=10;j<COLUMN;j++)
			        {
			            distinition[j]=source[j];
			        }    
    		}
}


    

/**********************************************************************************
*  函数名称：void show_photo_data() 
*  功能说明：输出图像原始数据
*  参数说明：无
*  函数返回：无
*  修改时间：2014-6-17  wuwenqi
*  备    注：
**********************************************************************************/	
void show_photo_data()
{
    u16 i,j;
    for(i=0;i<ROW;i++) 
      {                                  
        for(j=0;j<COLUMN;j++)
        {
         // if(Pic_roberts[i][j]>80)
             uart0Printf("%d ",Pic_Buffer[i][j]);
           //uartPrintf("255 ");
         // else uartPrintf("0 ");
             if(j != COLUMN -1)
             {
                 //uart0Printf(",");
             }else{
               uart0Printf("\n");
             }
        }
      }
}




void show_photo_data_2()
{
    u16 i,j;
    uartSendChar(UART0,0xFF);  //图像头
    //uartSendChar (UART0,0xff);
    
    for(i=0;i<ROW-1;i++) 
      {                                  
        for(j=0;j<COLUMN;j++)
        {
         
          //if(Pic_Buffer[i][j]==0xff)Pic_Buffer[i][j]=Pic_Buffer[i][j]-1;
          uart0Printf("%d ",Pic_Buffer[i][j]);
        
        }
        uart0Printf("\n");
         
      }
    uartSendChar(UART0,0xFF);  //图像尾
    
   

}


/**********************************************************************************
*  函数名称：void show_photo() 
*  功能说明：连续输出图像
*  参数说明：无
*  函数返回：无
*  修改时间：2014-6-17  wuwenqi
*  备    注：
**********************************************************************************/	
void show_photo()
{
  
  //uart0Printf("开始采集图像！");
  uartSendChar(UART0,0xFF);  //图像头

  for(int i=0; i<ROW; i++)
  {
    for(int j=0;j<COLUMN ;j++)
    {
      
      uartPrintf("%d ",Pic_Erosion[i][j]);
     }
    uartPrintf("\n");
  }
  uartSendChar(UART0,0xFF);  //图像头
  /*
  for(int i=0; i<ROW; i++)
  {
    for(int j = 0;j < COLUMN; j++)
     {
      if(j == left_line[i]){
      uartSendChar(UART0,0);
      }else if(j == center_line[i]){
        uartSendChar(UART0,0);
      }else if(j == right_line[i]){
        uartSendChar(UART0,0);
      }else{
         uartSendChar(UART0,244);
      }     
     }  
  }
  */
}

