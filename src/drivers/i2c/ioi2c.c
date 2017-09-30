/*
************************************************************************
*                飞思卡尔智能车程序  直立行走例程                                       
* 文件名 :[ioi2c.c] 
* 描  述 ：模拟IIC
* 设  计 ：snowwolf
*  Email ：snowwolf2012@qq.com
* 说  明 ：
***********************************************************************
*/



#include "ioi2c.h"

#ifdef IOIIC

//内部数据定义
unsigned char IIC_ad_main; //器件从地址	    
unsigned char IIC_ad_sub;  //器件子地址	   
unsigned char *IIC_buf;    //发送|接收数据缓冲区	    
unsigned char IIC_num;     //发送|接收数据个数	


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
//送停止位 SDA=0->1
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
//主应答(包含ack:SDA=0和no_ack:SDA=0)
void IIC_ack_main(byte ack_main){
	SCL=0;
	if(ack_main)SDA=0; //ack主应答
	else SDA=1; //no_ack无需应答
	ioi2cnops();
	SCL=1;
	ioi2cnops();
	SCL=0;
}
//*************************************************
//字节发送程序
//发送c(可以是数据也可是地址)，送完后接收从应答
//不考虑从应答位

void send_byte(unsigned char c){
	unsigned char i;
 //unsigned char ack; //因为没有看到他的用途，所以就注释掉了，下面也一样
	for(i=0;i<8;i++)
        {
            SCL=0;
            if((c<<i) & 0x80)SDA=1; //判断发送位
            else SDA=0;
            ioi2cnops();
            SCL=1;
            ioi2cnops();
            SCL=0;
	}
        
        SDADDR=IIC_IN;    //输入
	ioi2cnops();
	SDA=1; //发送完8bit，释放总线准备接收应答位
	ioi2cnops();
	SCL=1; //
        ioi2cnops(); //sda上数据即是从应答位 
        //while(!SDA);//为确认信息做准备
       /* while(!SDA)//因为调试的时候从没有出现“未收到应答”，但为确保准确，还要加一个信号
        {
	ioi2cnops(); //sda上数据即是从应答位 
        uartPrintf("未收到应答\n");
        }
        uartPrintf("收到从应答\n");
        */
        //外部循环是自己加，不知道读取端口是不是这样
   //ack = IIC_OUT;   //因为没有看到他的用途，所以就注释掉了，同上一体
        
        SCL=0; //不考虑从应答位|但要控制好时序
        
        SDADDR=IIC_OUT;
        ioi2cnops();
}
//**************************************************
//字节接收程序
//接收器件传来的数据，此程序应配合|主应答函数|IIC_ack_main()使用
//return: uchar型1字节
//读取字节要是错误的话，那就是ioi2cnops时钟设置不对，但经过测试没有问题
unsigned char read_byte(void)
{
        unsigned char i;
        unsigned char c;
	c=0;
	SCL=0;
	ioi2cnops();
	SDA=1; //置数据线为输入方式
	SDADDR=IIC_IN;
        ioi2cnops();
	for(i=0;i<8;i++)
        {
            SCL=1; //置时钟线为高，使数据线上数据有效
            ioi2cnops();
            c<<=1;
            if(SDA_IN)c+=1; //读数据位，将接收的数据存c
            SCL=0; //置时钟线为低，准备接收数据位
            ioi2cnops();
	}
	SCL=0;
	SDADDR=IIC_OUT;
	return c;
}
//***************************************************
//向无子地址器件发送单字节数据
void send_to_byte(unsigned char ad_main,unsigned char c){
	IIC_start();
	send_byte(ad_main); //发送器件地址
	send_byte(c); //发送数据c
	IIC_stop();
}
//***************************************************
//向有子地址器件发送多字节数据
void send_to_nbyte(unsigned char ad_main,unsigned char ad_sub,unsigned char *buf,unsigned char num){
	unsigned char i;
	IIC_start();
	send_byte(ad_main); //发送器件地址
	send_byte(ad_sub); //发送器件子地址
	for(i=0;i<num;i++){
		send_byte(*buf); //发送数据*buf
		buf++;
	}
	IIC_stop();
}
//***************************************************
//从无子地址器件读单字节数据
//function:器件地址，所读数据存在接收缓冲区当前字节
void read_from_byte(unsigned char ad_main,unsigned char *buf){
	IIC_start();
	send_byte(ad_main); //发送器件地址
	*buf=read_byte();
	IIC_ack_main(no_ack); //无需应答<no_ack=0>
	IIC_stop();
}
//***************************************************
//从有子地址器件读多个字节数据
//function:
void read_from_nbyte(unsigned char ad_main,unsigned char ad_sub,unsigned char *buf,unsigned char num){
	unsigned char i;
	IIC_start();
	send_byte(ad_main);
	send_byte(ad_sub);
	for(i=0;i<num-1;i++){
		*buf=read_byte();
		IIC_ack_main(ack); //主应答<ack=1>
		buf++;
	}
	*buf=read_byte();
	buf++; //本次指针调整无意义，目的是操作后buf指向下一地址
	IIC_ack_main(no_ack); //无需应答<no_ack=0>
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
  SCCB_Wait();   //时钟高电平下，数据从0-》1
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