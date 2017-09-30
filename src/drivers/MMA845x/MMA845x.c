/*
************************************************************************
*                �����ʵ��ѧ K60 ѧϰ����                                        
* �ļ��� :[MMA845x.c] 
* ��  �� ��MMA845x��������
*��ƸĽ���snowwolf
*  Email ��snowwolf2012@qq.com
* ˵  �� ��MMA845x��������
***********************************************************************
*/

#include "MMA845x.h"

#ifdef K60IIC

/*************************************************************************
*  �������ƣ�MMA845x_Init
*  ����˵������ʼ��8451
*  ����˵������
*  �������أ���
*  �޸�ʱ�䣺2012-2-2   �Ѳ���
*  ��    ע��
*************************************************************************/
void MMA845x_Init(void)
{
    char v = 0;
    I2C_init(MMA845xI2C);                                 //��ʼ��I2C0
       
    MMA845x_WRITE_BYTE(CTRL_REG1,ASLP_RATE_20MS+DATA_RATE_5MS);	
    MMA845x_WRITE_BYTE(XYZ_DATA_CFG_REG, FULL_SCALE_2G); //2G
    MMA845x_WRITE_BYTE(CTRL_REG1, ACTIVE_MASK);          //����״̬
    
    v= MMA845x_READ_BYTE(WHO_AM_I_REG);
    if((v == MMA8451Q_ID)||(v == MMA8452Q_ID)||(v == MMA8453Q_ID)) 
    {
       uartPrintf("\n8451  init OK!");    
    }
    else
    {
       uartPrintf("\n8451  init Failed!");  	
    }
    /* //���ԼĴ����Ƿ�д��
    //MMA845x_WRITE_BYTE(CTRL_REG1,0xBA);
    v= MMA845x_READ_BYTE(CTRL_REG1);
    uartPrintf("\ndata = 0x%X\n",v);  
    v= MMA845x_READ_BYTE(XYZ_DATA_CFG_REG);
    uartPrintf("\ndata = 0x%X\n",v);
    */
}

/*************************************************************************
*  �������ƣ�MMA845x_readbyte
*  ����˵�������ض���ַ��ȡһ��ֵ
*  ����˵������
*  �������أ���
*  �޸�ʱ�䣺2012-2-2   �Ѳ���
*  ��    ע��
*************************************************************************/
unsigned char MMA845x_readbyte(unsigned char address)
{
    return I2C_ReadAddr(MMA845xI2C,MMA845x_IIC_ADDRESS,address);
}


/*************************************************************************
*  �������ƣ�MMA845x_readbyte
*  ����˵�������ض���ַд��һ��ֵ
*  ����˵������
*  �������أ���
*  �޸�ʱ�䣺2012-2-2   �Ѳ���
*  ��    ע��
*************************************************************************/
void MMA845x_writebyte(unsigned char address, unsigned char thedata)
{
    I2C_WriteAddr(MMA845xI2C,MMA845x_IIC_ADDRESS,address,thedata);
}

/*************************************************************************
*  �������ƣ�Get845xX_xbit
*  ����˵������ȡһ��ֵ
*  ����˵����u8 N  ȡƽ���Ĵ���
*  �������أ���
*  �޸�ʱ�䣺2012-2-2   �Ѳ���
*  ��    ע�������Զ�ȡһ�ε�ʱ����0.11ms,����ÿms��ȡ5����ƽ��
*************************************************************************/
u8 Get845xX_8bit(u8 N) 
{
    u16 tmp = 0;
    u8 i = 0;
    
    for(i = 0; i < N; i++)
        tmp += MMA845x_READ_BYTE(OUT_X_MSB_REG); 
    tmp = tmp / N;
    
    return (u8)tmp;
}

u16 Get845xX_10bit(u8 N) 
{
    u32 tmp = 0;
    u8 i = 0;
    u16 xm = 0;
    u16 xl = 0;
    for(i = 0; i < N; i++)
    {
      xm = MMA845x_READ_BYTE(OUT_X_MSB_REG); 
      xl = MMA845x_READ_BYTE(OUT_X_LSB_REG);
      
      tmp += (   ((((xm<<8) & 0xFF00  ) |  (xl&0x00FF)) >> 6) & 0x03FF);
    }
    tmp = tmp / N;
    return (u16)tmp;
}


u16 Get845xX_12bit(u8 N) 
{
    u32 tmp = 0;
    u8 i = 0;
    u16 xm = 0;
    u16 xl = 0;
    for(i = 0; i < N; i++)
    {
      xm = MMA845x_READ_BYTE(OUT_X_MSB_REG); 
      xl = MMA845x_READ_BYTE(OUT_X_LSB_REG);
      
      tmp += (   ((((xm<<8) & 0xFF00  ) |  (xl&0x00FF)) >> 4) & 0x0FFF);
    }
    tmp = tmp / N;
    return (u16)tmp;
}

u16 Get845xX_14bit(u8 N) 
{
    u32 tmp = 0;
    u8 i = 0;
    u16 xm = 0;
    u16 xl = 0;
    for(i = 0; i < N; i++)
    {
      xm = MMA845x_READ_BYTE(OUT_X_MSB_REG); 
      xl = MMA845x_READ_BYTE(OUT_X_LSB_REG);
      
      tmp += (   ((((xm<<8) & 0xFF00  ) |  (xl&0x00FF)) >> 2) & 0x3FFF);
    }
    tmp = tmp / N;
    return (u16)tmp;
}

u8 Get845xY_8bit(u8 N) 
{
    u16 tmp = 0;
    u8 i = 0;
    
    for(i = 0; i < N; i++)
        tmp += MMA845x_READ_BYTE(OUT_Y_MSB_REG); 
    tmp = tmp / N;
    
    return (u8)tmp;
}

u16 Get845xY_10bit(u8 N) 
{
    u32 tmp = 0;
    u8 i = 0;
    u16 ym = 0;
    u16 yl = 0;
    for(i = 0; i < N; i++)
    {
      ym = MMA845x_READ_BYTE(OUT_Y_MSB_REG); 
      yl = MMA845x_READ_BYTE(OUT_Y_LSB_REG);
      
      tmp += (   ((((ym<<8) & 0xFF00  ) |  (yl&0x00FF)) >> 6) & 0x03FF);
    }
    tmp = tmp / N;
    return (u16)tmp;
}


u16 Get845xY_12bit(u8 N) 
{
    u32 tmp = 0;
    u8 i = 0;
    u16 ym = 0;
    u16 yl = 0;
    for(i = 0; i < N; i++)
    {
      ym = MMA845x_READ_BYTE(OUT_Y_MSB_REG); 
      yl = MMA845x_READ_BYTE(OUT_Y_LSB_REG);
      
      tmp += (   ((((ym<<8) & 0xFF00  ) |  (yl&0x00FF)) >> 4) & 0x0FFF);
    }
    tmp = tmp / N;
    return (u16)tmp;
}

u16 Get845xY_14bit(u8 N) 
{
    u32 tmp = 0;
    u8 i = 0;
    u16 ym = 0;
    u16 yl = 0;
    for(i = 0; i < N; i++)
    {
      ym = MMA845x_READ_BYTE(OUT_Y_MSB_REG); 
      yl = MMA845x_READ_BYTE(OUT_Y_LSB_REG);
      
      tmp += (   ((((ym<<8) & 0xFF00  ) |  (yl&0x00FF)) >> 2) & 0x3FFF);
    }
    tmp = tmp / N;
    return (u16)tmp;
}
u8 Get845xZ_8bit(u8 N) 
{
    u16 tmp = 0;
    u8 i = 0;
    
    for(i = 0; i < N; i++)
        tmp += MMA845x_READ_BYTE(OUT_Z_MSB_REG); 
    tmp = tmp / N;
    
    return (u8)tmp;
}

u16 Get845xZ_10bit(u8 N) 
{
    u32 tmp = 0;
    u8 i = 0;
    u16 zm = 0;
    u16 zl = 0;
    for(i = 0; i < N; i++)
    {
      zm = MMA845x_READ_BYTE(OUT_Z_MSB_REG); 
      zl = MMA845x_READ_BYTE(OUT_Z_LSB_REG);
      
      tmp += (   ((((zm<<8) & 0xFF00  ) |  (zl&0x00FF)) >> 6) & 0x03FF);
    }
    tmp = tmp / N;
    return (u16)tmp;
}


u16 Get845xZ_12bit(u8 N) 
{
    u32 tmp = 0;
    u8 i = 0;
    u16 zm = 0;
    u16 zl = 0;
    for(i = 0; i < N; i++)
    {
      zm = MMA845x_READ_BYTE(OUT_Z_MSB_REG); 
      zl = MMA845x_READ_BYTE(OUT_Z_LSB_REG);
      
      tmp += (   ((((zm<<8) & 0xFF00  ) |  (zl&0x00FF)) >> 4) & 0x0FFF);
    }
    tmp = tmp / N;
    return (u16)tmp;
}

u16 Get845xZ_14bit(u8 N) 
{
    u32 tmp = 0;
    u8 i = 0;
    u16 zm = 0;
    u16 zl = 0;
    for(i = 0; i < N; i++)
    {
      zm = MMA845x_READ_BYTE(OUT_Z_MSB_REG); 
      zl = MMA845x_READ_BYTE(OUT_Z_LSB_REG);
      
      tmp += (   ((((zm<<8) & 0xFF00  ) |  (zl&0x00FF)) >> 2) & 0x3FFF);
    }
    tmp = tmp / N;
    return (u16)tmp;
}


#endif

#ifdef   IOIIC            // ģ��IIC
#include "ioi2c.h"

unsigned char MMA845x_readbyte(unsigned char address)
{
        unsigned char ret = 100;
	IIC_start();		//����
	send_byte(MMA845x_IIC_ADDRESS);	//д���豸ID��д�ź�
	send_byte(address);	//X��ַ
	IIC_start();		//���·��Ϳ�ʼ
	send_byte(MMA845x_IIC_ADDRESS+1);	//д���豸ID������
	ret = read_byte();	//��ȡһ�ֽ�
	IIC_stop();
	return ret;
}

//д��
void MMA845x_writebyte(unsigned char address, unsigned char thedata)
{
	IIC_start();		//����
	send_byte(MMA845x_IIC_ADDRESS);	//д���豸ID��д�ź�
	send_byte(address);	//X��ַ
	send_byte(thedata);	//д���豸ID������
	IIC_stop();
}

//��ʼ��
//��ʼ��Ϊָ��ģʽ
void MMA845x_init()
{	
        byte v;
        gpio_init(PORTB,0,GPO,1);
        gpio_init(PORTB,1,GPO,1);
	
	MMA845x_writebyte(CTRL_REG1,ASLP_RATE_20MS+DATA_RATE_5MS);	
	ioi2cnops(); ioi2cnops(); 
	MMA845x_writebyte(XYZ_DATA_CFG_REG, FULL_SCALE_2G); //2G
	ioi2cnops(); ioi2cnops(); 
	MMA845x_writebyte(CTRL_REG1, ACTIVE_MASK);          //����״̬
	ioi2cnops(); ioi2cnops(); 
	
	v= MMA845x_readbyte(WHO_AM_I_REG);
        if((v == MMA8451Q_ID)||(v == MMA8452Q_ID)||(v == MMA8453Q_ID)) 
        {
          uartPrintf("\nMMA845x init OK!\nv:%d\n",v);
        }
        else
        {
          uartPrintf("\nMMA845x init Failed!\nV:%d\n",v); 
        }
}


unsigned char Get845xX() 
{
    return MMA845x_readbyte(OUT_X_MSB_REG); 
}
unsigned char Get845xY() 
{
    return MMA845x_readbyte(OUT_Y_MSB_REG); 
}
unsigned char Get845xZ() 
{
    return MMA845x_readbyte(OUT_Z_MSB_REG); 
}

u16 Get845xZ_14bit() 
{
    u32 tmp = 0;
  //  u8 i = 0;
    u16 zm = 0;
    u16 zl = 0;

    zm = MMA845x_readbyte(OUT_Z_MSB_REG); 
    zl = MMA845x_readbyte(OUT_Z_LSB_REG);
      
    tmp = (  ((((zm<<8) & 0xFF00  ) |  (zl&0x00FF)) >> 2) & 0x3FFF);
    return (u16)tmp;
}

#endif