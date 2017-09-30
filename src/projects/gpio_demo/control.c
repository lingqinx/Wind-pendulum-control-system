#include "include.h"
#include "control.h"



/**********************************************************************************
*  �������ƣ�void init()
*  ����˵�������ֳ�ʼ������
*  ����˵������
*  �������أ���
*  �޸�ʱ�䣺2014-6-16  wuwenqi
*  ��    ע��
**********************************************************************************/	
void init()
{
  DisableInterrupts;
  //�򿪴����ж�
  LCD_Init();
  SD_init();
  
  
//  gpio_init(PORTA,12,GPO,0);//��������ʼ��

  uart_init(UART0,115200);
  //��ʼ��������PIT�ж�
  pit_init(PIT0,100); //pit��ʱ��10ms
    
  pit_init(PIT1,100); //pit��ʱ��10ms
 // pit_init(PIT1,1); //pit��ʱ��1s
 // PIT_IRQ_EN(PIT1);   
  
  //�����ʼ����PTC1,PTC2Ƶ�ʣ�16kHz��50%ռ�ձ�
  motor_init();
  
  //�����ʼ��
  steer_init();
  
  //��������ʼ��
  lptmr_counter_init(LPT0_ALT2,65535,2,LPT_Rising); 
  FTM_QUAD_DIR_init(FTM2);
  
  
  //�����ж����ȼ� set_irq_priority (int irq, int prio),�ʲ���,2014-3-30
  set_irq_priority (88,0); //exti_PTB������ȼ�0�����ڿ���DMA�ɼ�ͼ��
  set_irq_priority (68,1); // PIT0�ڶ����ȼ�1�������ٶȺͷ�����ƣ�
  set_irq_priority (45,2); // UART0�������ȼ���û����¶���
  //����ͷ��ʼ��
  gpio_init(PORTA,15,GPO,HIGH);         //���İ����LED����ʼ�� PTA15 ������ߵ�ƽ ,�� ��ʼ�� LED0����
  gpio_init(PORTA,4,GPO,HIGH);          //�������LED    ��ʼ�� PTA4 �� ����ߵ�ƽ ,�� ��ʼ�� LED0����
  //��������ʼ��
  gpio_init(PORTA,14,GPO,0);
  
  //���뿪�س�ʼ��
  gpio_init(PORTA,16,GPO,0);
  gpio_init(PORTA,19,GPO,0);
  gpio_init(PORTA,18,GPO,0);

  //������չܳ�ʼ��
  exti_init(PORTC,8,falling_down);
  
  
  
  cam_init();
  flash_init();
  
  
  EnableInterrupts;
  
}


/***********************************************
* ����ͷ��ʼ������
*  �������ƣ�cam_init
*  ����˵������ʼ������ͷ�����жϣ���ʼ������ͷDMA����
*  ����˵����
*  �������أ���
*  �޸�ʱ�䣺2014-3-29
*  ��    ע��
***********************************************/

void cam_init()
{
  //���׻�
    exti_init(CAM_PORTX,CAM_HR_CHn,rising_down);                //���ж�//��ʼ���ⲿ�ж����벶׽ģʽ�������ش���
    exti_init(CAM_PORTX,CAM_VS_CHn,falling_down);               //���ж�//��ʼ���ⲿ�ж����벶׽ģʽ���½��ش���// Changed to rising for test,feichashao,20140328
    Dis_CAM; 
    DMA_PORTx2BUFF_Init (CAM_DMA_CH,(void *)&PTD_BYTE0_IN,&Pic_Buffer[0][0],PLCK_CH,DMA_BYTE1,COLUMN,DMA_rising);//DMA_falling DMA_rising 
}






/**********************************************************************************
*  �������ƣ�void get_photo() 
*  ����˵�����ɼ�ͼ��
*  ����˵������
*  �������أ���
*  �޸�ʱ�䣺2014-6-17  wuwenqi
*  ��    ע��
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
        for(i = 4;i <ROW-1;i++)  //ROW  ��������ɨ 
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
*  �������ƣ�void show_photo_data() 
*  ����˵�������ͼ��ԭʼ����
*  ����˵������
*  �������أ���
*  �޸�ʱ�䣺2014-6-17  wuwenqi
*  ��    ע��
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
    uartSendChar(UART0,0xFF);  //ͼ��ͷ
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
    uartSendChar(UART0,0xFF);  //ͼ��β
    
   

}


/**********************************************************************************
*  �������ƣ�void show_photo() 
*  ����˵�����������ͼ��
*  ����˵������
*  �������أ���
*  �޸�ʱ�䣺2014-6-17  wuwenqi
*  ��    ע��
**********************************************************************************/	
void show_photo()
{
  
  //uart0Printf("��ʼ�ɼ�ͼ��");
  uartSendChar(UART0,0xFF);  //ͼ��ͷ

  for(int i=0; i<ROW; i++)
  {
    for(int j=0;j<COLUMN ;j++)
    {
      
      uartPrintf("%d ",Pic_Erosion[i][j]);
     }
    uartPrintf("\n");
  }
  uartSendChar(UART0,0xFF);  //ͼ��ͷ
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

