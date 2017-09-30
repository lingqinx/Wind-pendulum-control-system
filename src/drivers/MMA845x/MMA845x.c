/*
************************************************************************
*                北京邮电大学 K60 学习例程                                        
* 文件名 :[MMA845x.c] 
* 描  述 ：MMA845x函数定义
*设计改进：snowwolf
*  Email ：snowwolf2012@qq.com
* 说  明 ：MMA845x函数定义
***********************************************************************
*/

#include "MMA845x.h"

#ifdef K60IIC

/*************************************************************************
*  函数名称：MMA845x_Init
*  功能说明：初始化8451
*  参数说明：无
*  函数返回：无
*  修改时间：2012-2-2   已测试
*  备    注：
*************************************************************************/
void MMA845x_Init(void)
{
    char v = 0;
    I2C_init(MMA845xI2C);                                 //初始化I2C0
       
    MMA845x_WRITE_BYTE(CTRL_REG1,ASLP_RATE_20MS+DATA_RATE_5MS);	
    MMA845x_WRITE_BYTE(XYZ_DATA_CFG_REG, FULL_SCALE_2G); //2G
    MMA845x_WRITE_BYTE(CTRL_REG1, ACTIVE_MASK);          //激活状态
    
    v= MMA845x_READ_BYTE(WHO_AM_I_REG);
    if((v == MMA8451Q_ID)||(v == MMA8452Q_ID)||(v == MMA8453Q_ID)) 
    {
       uartPrintf("\n8451  init OK!");    
    }
    else
    {
       uartPrintf("\n8451  init Failed!");  	
    }
    /* //测试寄存器是否写入
    //MMA845x_WRITE_BYTE(CTRL_REG1,0xBA);
    v= MMA845x_READ_BYTE(CTRL_REG1);
    uartPrintf("\ndata = 0x%X\n",v);  
    v= MMA845x_READ_BYTE(XYZ_DATA_CFG_REG);
    uartPrintf("\ndata = 0x%X\n",v);
    */
}

/*************************************************************************
*  函数名称：MMA845x_readbyte
*  功能说明：从特定地址读取一个值
*  参数说明：无
*  函数返回：无
*  修改时间：2012-2-2   已测试
*  备    注：
*************************************************************************/
unsigned char MMA845x_readbyte(unsigned char address)
{
    return I2C_ReadAddr(MMA845xI2C,MMA845x_IIC_ADDRESS,address);
}


/*************************************************************************
*  函数名称：MMA845x_readbyte
*  功能说明：从特定地址写入一个值
*  参数说明：无
*  函数返回：无
*  修改时间：2012-2-2   已测试
*  备    注：
*************************************************************************/
void MMA845x_writebyte(unsigned char address, unsigned char thedata)
{
    I2C_WriteAddr(MMA845xI2C,MMA845x_IIC_ADDRESS,address,thedata);
}

/*************************************************************************
*  函数名称：Get845xX_xbit
*  功能说明：读取一个值
*  参数说明：u8 N  取平均的次数
*  函数返回：无
*  修改时间：2012-2-2   已测试
*  备    注：经测试读取一次的时间是0.11ms,建议每ms读取5次求平均
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

#ifdef   IOIIC            // 模拟IIC
#include "ioi2c.h"

unsigned char MMA845x_readbyte(unsigned char address)
{
        unsigned char ret = 100;
	IIC_start();		//启动
	send_byte(MMA845x_IIC_ADDRESS);	//写入设备ID及写信号
	send_byte(address);	//X地址
	IIC_start();		//重新发送开始
	send_byte(MMA845x_IIC_ADDRESS+1);	//写入设备ID及读信
	ret = read_byte();	//读取一字节
	IIC_stop();
	return ret;
}

//写入
void MMA845x_writebyte(unsigned char address, unsigned char thedata)
{
	IIC_start();		//启动
	send_byte(MMA845x_IIC_ADDRESS);	//写入设备ID及写信号
	send_byte(address);	//X地址
	send_byte(thedata);	//写入设备ID及读信
	IIC_stop();
}

//初始化
//初始化为指定模式
void MMA845x_init()
{	
        byte v;
        gpio_init(PORTB,0,GPO,1);
        gpio_init(PORTB,1,GPO,1);
	
	MMA845x_writebyte(CTRL_REG1,ASLP_RATE_20MS+DATA_RATE_5MS);	
	ioi2cnops(); ioi2cnops(); 
	MMA845x_writebyte(XYZ_DATA_CFG_REG, FULL_SCALE_2G); //2G
	ioi2cnops(); ioi2cnops(); 
	MMA845x_writebyte(CTRL_REG1, ACTIVE_MASK);          //激活状态
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