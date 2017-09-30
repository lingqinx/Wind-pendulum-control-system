/*
************************************************************************
*                ��˼�������ܳ�����  ֱ����������                                       
* �ļ��� :[ioi2c.c] 
* ��  �� ��ģ��IIC
* ��  �� ��snowwolf
*  Email ��snowwolf2012@qq.com
* ˵  �� ��
***********************************************************************
*/



#include "ioi2c.h"

#ifdef IOIIC

//�ڲ����ݶ���
unsigned char IIC_ad_main; //�����ӵ�ַ	    
unsigned char IIC_ad_sub;  //�����ӵ�ַ	   
unsigned char *IIC_buf;    //����|�������ݻ�����	    
unsigned char IIC_num;     //����|�������ݸ���	


 void IIC_start(void)
 {
	SCL=0;
	SDA=1;
	ioi2cnops();
	SCL=1;
	ioi2cnops();
	SDA=0;
	ioi2cnops();
	SCL=0;
}
//************************************************
//��ֹͣλ SDA=0->1
void IIC_stop(void)
{
	SCL=0;
	ioi2cnops();
	SDA=0;
	ioi2cnops();
	SCL=1;
	ioi2cnops();
	SDA=1;
	ioi2cnops();
	SCL=0;
}
//************************************************
//��Ӧ��(����ack:SDA=0��no_ack:SDA=0)
void IIC_ack_main(byte ack_main){
	SCL=0;
	if(ack_main)SDA=0; //ack��Ӧ��
	else SDA=1; //no_ack����Ӧ��
	ioi2cnops();
	SCL=1;
	ioi2cnops();
	SCL=0;
}
//*************************************************
//�ֽڷ��ͳ���
//����c(����������Ҳ���ǵ�ַ)���������մ�Ӧ��
//�����Ǵ�Ӧ��λ

void send_byte(unsigned char c){
	unsigned char i;
 //unsigned char ack; //��Ϊû�п���������;�����Ծ�ע�͵��ˣ�����Ҳһ��
	for(i=0;i<8;i++)
        {
            SCL=0;
            if((c<<i) & 0x80)SDA=1; //�жϷ���λ
            else SDA=0;
            ioi2cnops();
            SCL=1;
            ioi2cnops();
            SCL=0;
	}
        
        SDADDR=IIC_IN;    //����
	ioi2cnops();
	SDA=1; //������8bit���ͷ�����׼������Ӧ��λ
	ioi2cnops();
	SCL=1; //
        ioi2cnops(); //sda�����ݼ��Ǵ�Ӧ��λ 
        //while(!SDA);//Ϊȷ����Ϣ��׼��
       /* while(!SDA)//��Ϊ���Ե�ʱ���û�г��֡�δ�յ�Ӧ�𡱣���Ϊȷ��׼ȷ����Ҫ��һ���ź�
        {
	ioi2cnops(); //sda�����ݼ��Ǵ�Ӧ��λ 
        uartPrintf("δ�յ�Ӧ��\n");
        }
        uartPrintf("�յ���Ӧ��\n");
        */
        //�ⲿѭ�����Լ��ӣ���֪����ȡ�˿��ǲ�������
   //ack = IIC_OUT;   //��Ϊû�п���������;�����Ծ�ע�͵��ˣ�ͬ��һ��
        
        SCL=0; //�����Ǵ�Ӧ��λ|��Ҫ���ƺ�ʱ��
        
        SDADDR=IIC_OUT;
        ioi2cnops();
}
//**************************************************
//�ֽڽ��ճ���
//�����������������ݣ��˳���Ӧ���|��Ӧ����|IIC_ack_main()ʹ��
//return: uchar��1�ֽ�
//��ȡ�ֽ�Ҫ�Ǵ���Ļ����Ǿ���ioi2cnopsʱ�����ò��ԣ�����������û������
unsigned char read_byte(void)
{
        unsigned char i;
        unsigned char c;
	c=0;
	SCL=0;
	ioi2cnops();
	SDA=1; //��������Ϊ���뷽ʽ
	SDADDR=IIC_IN;
        ioi2cnops();
	for(i=0;i<8;i++)
        {
            SCL=1; //��ʱ����Ϊ�ߣ�ʹ��������������Ч
            ioi2cnops();
            c<<=1;
            if(SDA_IN)c+=1; //������λ�������յ����ݴ�c
            SCL=0; //��ʱ����Ϊ�ͣ�׼����������λ
            ioi2cnops();
	}
	SCL=0;
	SDADDR=IIC_OUT;
	return c;
}
//***************************************************
//�����ӵ�ַ�������͵��ֽ�����
void send_to_byte(unsigned char ad_main,unsigned char c){
	IIC_start();
	send_byte(ad_main); //����������ַ
	send_byte(c); //��������c
	IIC_stop();
}
//***************************************************
//�����ӵ�ַ�������Ͷ��ֽ�����
void send_to_nbyte(unsigned char ad_main,unsigned char ad_sub,unsigned char *buf,unsigned char num){
	unsigned char i;
	IIC_start();
	send_byte(ad_main); //����������ַ
	send_byte(ad_sub); //���������ӵ�ַ
	for(i=0;i<num;i++){
		send_byte(*buf); //��������*buf
		buf++;
	}
	IIC_stop();
}
//***************************************************
//�����ӵ�ַ���������ֽ�����
//function:������ַ���������ݴ��ڽ��ջ�������ǰ�ֽ�
void read_from_byte(unsigned char ad_main,unsigned char *buf){
	IIC_start();
	send_byte(ad_main); //����������ַ
	*buf=read_byte();
	IIC_ack_main(no_ack); //����Ӧ��<no_ack=0>
	IIC_stop();
}
//***************************************************
//�����ӵ�ַ����������ֽ�����
//function:
void read_from_nbyte(unsigned char ad_main,unsigned char ad_sub,unsigned char *buf,unsigned char num){
	unsigned char i;
	IIC_start();
	send_byte(ad_main);
	send_byte(ad_sub);
	for(i=0;i<num-1;i++){
		*buf=read_byte();
		IIC_ack_main(ack); //��Ӧ��<ack=1>
		buf++;
	}
	*buf=read_byte();
	buf++; //����ָ����������壬Ŀ���ǲ�����bufָ����һ��ַ
	IIC_ack_main(no_ack); //����Ӧ��<no_ack=0>
	IIC_stop();
}


#endif

#ifdef SCCB
/*************************************************
Function: SCCB_Wait
Description: delay
Input: no
Output: no
More:no
*************************************************/
void SCCB_Wait(void)    
{
  unsigned int i;

  for(i=0;i<600;i++)  //20us
  {
    //asm("nop");
  }
}

/*************************************************
Function: SCCB_Start
Description: signal of start
Input: no
Output: no
More:no
*************************************************/
void SCCB_Start(void)   
{
  SDA_DR=SCCB_OUT;
  SDA = 1;
  SCL = 1;
  SCCB_Wait();
  SDA = 0;
  SCCB_Wait();
  SCL = 0;
}

/*************************************************
Function: SCCB_Stop
Description: signal of stop
Input: no
Output: no
More:no
*************************************************/
void SCCB_Stop(void)    
{
  SCL = 0;
  SDA_DR=SCCB_OUT;
  SDA = 0;
  SCCB_Wait();
  SCL = 1;
  SCCB_Wait();   //ʱ�Ӹߵ�ƽ�£����ݴ�0-��1
  SDA = 1;
  SCCB_Wait();
}

/*************************************************
Function: SCCB_SendAck
Description: send ack to slave
Input: signal of ack
Output: no
More:no
*************************************************/
void SCCB_SendAck(byte ack)  
{
  SDA_DR=SCCB_OUT;
  SDA = ack;
  SCL = 1;
  SCCB_Wait();
  SCL = 0;
}

/*************************************************
Function: SCCB_SendByte
Description: send data  to SCCB register
Input: byte of data
Output: return ack  1:receive ack  0:no ack
More:no
*************************************************/
byte SCCB_SendByte(unsigned char bytedata) 
{
  unsigned char i;
  byte ack;
  SDA_DR=SCCB_OUT;
  for(i=0;i<8;i++)
  {
    SCL = 0;
    SCCB_Wait();
    
    if(bytedata & 0x80)
      SDA = 1;
    else
      SDA = 0;

    bytedata <<= 1;
    SCCB_Wait();

    SCL = 1;
    SCCB_Wait();
    SCL = 0;
    
  }
  SCCB_Wait();
  SDA = 1;
  SDA_DR=SCCB_IN;
  SCCB_Wait();
  SCL = 1;
  SCCB_Wait();

  ack = SCCB_IN;    

  SCL = 0;
  SCCB_Wait();

  SDA_DR=SCCB_OUT;
  return ack;
}


/******************************************************
Function: SCCB_ReceiveByte
Description: receive data  from SCCB register
Input: no
Output: data 
More:no
********************************************************/
unsigned char SCCB_ReceiveByte(void)  
{
  unsigned char i;
  unsigned char bytedata = 0;
  SDA_DR=SCCB_IN;
  for(i=0;i<8;i++)
  {
    SCL = 1;
    SCCB_Wait();

    bytedata <<= 1;

    if(SDA_IN)
    {
      bytedata |= 0x01;
    }
    SCL = 0;
    SCCB_Wait();
  }
 
  SDA_DR=SCCB_OUT;
  return bytedata;
}

/******************************************************
Function: SCCB_ByteWrite
Description: write the data to the address 
Input: device  0xC0  write to  OV6620
               0XC1  read from OV6620
               0x42  write to  OV7620
               0x43  read from OV7620
Output: no
More:no
********************************************************/

void SCCB_ByteWrite(unsigned char device,unsigned char address,unsigned char bytedata)
{     
   SCCB_Start();
   
   SCCB_SendByte(device);
   
   SCCB_SendByte(address);
   
   SCCB_SendByte(bytedata);
   
   SCCB_Stop();

}


unsigned char SCCB_ByteRead(unsigned char device,unsigned char address)  
{
  unsigned char bytedata = 0;
  
  SCCB_Start();
  
  SCCB_SendByte(device);
  
  SCCB_SendByte(address);
  
  SCCB_Stop();
  
  SCCB_Start();
  
  SCCB_SendByte(device+1);
  
  bytedata = SCCB_ReceiveByte();
  
  SCCB_SendAck(1)  ;
  
  SCCB_Stop();
  
  
  return bytedata;
}
#endif