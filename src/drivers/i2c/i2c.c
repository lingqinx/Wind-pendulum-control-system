#include "common.h"
#include "i2c.h"

volatile struct I2C_MemMap *I2Cx[2] = {I2C0_BASE_PTR, I2C1_BASE_PTR}; //定义两个指针数组保存 I2Cx 的地址
void i2c_pause(void);
//I2C0_C1 |= ( I2C_C1_TX_MASK);

/*
 * i2c_init
 * I2C通用初始化函数
 * 
 * 参数:
 *    IICx--选择I2C模块的通道
 *      |__0 I2C0
 *      |__1 I2C1
 *    scl_frq=0,则根据mult（I2C_F_MULT）和scl_dev（I2C_F_ICR）计算,
 *      |       选值请参考K60Pin144 Sub-Family Reference Manual P1468
 *      |       Table 50-41. I2C Divider and Hold Values
 *      |       scl_frq<>0,则根据下表选频率
 *      |__0--根据mult和scl_dev计算
 *      |__1--50khz=(50Mhz/1*1024=48.828125KHz)
 *      |__2--100khz=(50Mhz/1*512=97.65625KHz)
 *      |__3--150khz=(50Mhz/1*320=156.25KHz)
 *      |__4--200khz=(50Mhz/1*256=195.3215KHz)
 *      |__5--250khz=(50Mhz/1*192=260.4167KHz)
 *      |__6--300khz=(50Mhz/1*160=312.5KHz)
 *      |__7--400khz=(50Mhz/1*128=390.625KHz)
 * 输出:
 *    0--配置错误
 *    1--配置成功
 */
uint8 i2c_init(I2Cn i2cn,uint8 mult,uint8 scl_dev,uint8 scl_frq)
{
  uint8 PS;
  if(scl_frq==0)
  {}
    else if(scl_frq==1)
    {
      PS=0x33;
    }
    else if(scl_frq==2)
    {
      PS=0x2B;
    }
    else if(scl_frq==3)
    {
      PS=0x28;
    }
    else if(scl_frq==4)
    {
      PS=0x23;
    }
    else if(scl_frq==5)
    {
      PS=0x21;
    }
    else if(scl_frq==6)
    {
      PS=0x20;
    }
    else if(scl_frq==7)
    {
      PS=0x17;
    }
  else  return 0;

    if(i2cn == I2C0)
    {
        /* 开启时钟 */
        SIM_SCGC4 |= SIM_SCGC4_I2C0_MASK;         //开启 I2C0时钟

        /* 配置 I2C0功能的 GPIO 接口 */
        if(I2C0_SCL == PTB0)
            PORTB_PCR0 = PORT_PCR_MUX(2);
        else if(I2C0_SCL == PTB2)
            PORTB_PCR2 = PORT_PCR_MUX(2);
        else if(I2C0_SCL == PTD8)
            PORTD_PCR8 = PORT_PCR_MUX(2);
        else
        {
            assert_failed(__FILE__, __LINE__);                   //设置管脚有误？
            return 0;
        }

        if(I2C0_SDA == PTB1)
            PORTB_PCR1 = PORT_PCR_MUX(2);
        else if(I2C0_SDA == PTB3)
            PORTB_PCR3 = PORT_PCR_MUX(2);
        else if(I2C0_SDA == PTD9)
            PORTD_PCR9 = PORT_PCR_MUX(2);
        else
        {
            assert_failed(__FILE__, __LINE__);                   //设置管脚有误？
            return 0;
        }
        //设置I2C波特率
        if(scl_frq==0)
            I2C_F_REG(I2Cx[i2cn])  = I2C_F_MULT(mult) | I2C_F_ICR(scl_dev) ;  // I2C Frequency Divider register (I2Cx_F)
        else
            I2C_F_REG(I2Cx[i2cn])  = I2C_F_MULT(0x00) | I2C_F_ICR(PS) ;  // I2C Frequency Divider register (I2Cx_F)
        
        //使能I2C0，不发送应答信号
	I2C0_C1 = I2C_C1_IICEN_MASK | I2C_C1_TXAK_MASK;
        //I2C_C1_REG(I2Cx[i2cn]) = I2C_C1_IICEN_MASK;
    return 1;
    }
    else
    {
        /* 开启时钟 */
        SIM_SCGC4 |= SIM_SCGC4_I2C1_MASK;         //开启 I2C1时钟

        /* 配置 I2C1功能的 GPIO 接口 */
        if(I2C1_SCL == PTE1)
            PORTE_PCR1 = PORT_PCR_MUX(6);
        else if(I2C1_SCL == PTC10)
            PORTC_PCR10 = PORT_PCR_MUX(2);
        else
        {
            assert_failed(__FILE__, __LINE__);                   //设置管脚有误？
            return 0;
        }

        if(I2C1_SDA == PTE0)
            PORTE_PCR0 = PORT_PCR_MUX(6);
        else if (I2C1_SDA == PTC11)
            PORTC_PCR11 = PORT_PCR_MUX(2);
        else
        {
            assert_failed(__FILE__, __LINE__);                   //设置管脚有误？
            return 0;
        }
        //设置I2C波特率
        if(scl_frq==0)
            I2C_F_REG(I2Cx[i2cn])  = I2C_F_MULT(mult) | I2C_F_ICR(scl_dev) ;  // I2C Frequency Divider register (I2Cx_F)
        else
            I2C_F_REG(I2Cx[i2cn])  = I2C_F_MULT(0x00) | I2C_F_ICR(PS) ;  // I2C Frequency Divider register (I2Cx_F)
        
        //使能I2C1，不发送应答信号
	I2C1_C1 = I2C_C1_IICEN_MASK | I2C_C1_TXAK_MASK;
        //I2C_C1_REG(I2Cx[i2cn]) = I2C_C1_IICEN_MASK;
        
    return 1;
    }
    //I2C_F_REG(I2Cx)  = I2C_F_MULT(mult) | I2C_F_ICR(17) ;  // I2C Frequency Divider register (I2Cx_F)
    //I2C分频寄存器   I2C最大波特率为 400k
    // MULT=00  即  mul = 1
    // ICR    SCL Divider   SDA Hold Value    SCL Hold (Start) Value    SCL Hold (Stop) Value
    //  17       128              21                   58                         65
    // I2C baud rate = bus speed (Hz)/(mul × SCL divider)  即这里 50MHz/(1 ×128)=390.625kHz
    // SDA hold time = bus period (s) × mul × SDA hold value
    // SCL start hold time = bus period (s) × mul × SCL start hold value
    // SCL stop hold time = bus period (s) × mul × SCL stop hold value
}
/*
//============================================================================
//函数名称：hw_wait                                                        
//功能概要： 在时限内,循环检测接收应答标志位,或传送完成标志位,判断MCU         
//          是否接收到应答信号或一个字节是否已在总线上传送完毕                                            
//参数说明：         MoudleNum:模块号       
//             x:x = 1(Ack),等待应答;x = 0(Transmission),等待一个字节        
//                 数据传输完成                   
//函数返回：0:收到应答信号或一个字节传送完毕;
//         1:未收到应答信号或一个 字节没传送完                                                                                                                            
//============================================================================

uint8 i2c_waitmode(I2Cn i2cn,uint8 isack)
{
  uint16 ErrTime, i;
  ErrTime = 255*10;            //定义查询超时时限
    
  for (i = 0;i < ErrTime;i++)
  {
    if (isack == 1)           //等待应答信号
    {
      if(( I2C_S_REG(I2Cx[i2cn])  & I2C_S_RXAK_MASK)==0)
      return 0;      //传送完一个字节后,收到了从机的应答信号               
    }
    else if (isack == 0)      //等待传送完成一个字节信号
    {
      if ((I2C_S_REG(I2Cx[i2cn]) & I2C_S_IICIF_MASK) != 0)    
      {
        (I2C_S_REG(I2Cx[i2cn]) |=(0 | I2C_S_IICIF_MASK));  //清IICIF标志位
        return 0;       //成功发送完一个字节
      }
     else return 1;//配置参数出错
    }
  }
  if (i >= ErrTime) 
  {
    return 1;               //超时,没有收到应答信号或发送完一个字节
  }
  return 1;//???????????????????
}
*/
/*
uint8 hw_iic_read1(I2Cn i2cn,uint8 DeviceAddr, uint8 AccessAddr, uint8 *Data)
{      
  I2C_C1_REG(I2Cx[I2Cn])     |= 0x10;           //TX = 1,MCU设置为发送模式
  i2c_start(I2Cn);               //发送开始信号 
  I2C_D_REG(I2Cx[I2Cn])  = DeviceAddr & 0xfe;   //发送设备地址,并通知从机接收数据
  if (hw_wait('T',MoudleNum))                  //等待一个字节数据传送完成  
  {      
    return 1;                         //没有传送成功,读一个字节失败   
  }
  i2c_waitmode(i2cn,0);
  if (hw_wait('A',MoudleNum))                 //等待从机应答信号 
  {
    return 1;                         //没有等到应答信号,读一个字节失败 
  }
  I2C_D_REG(I2Cx[I2Cn])  = AccessAddr;        //发送访问地址    
  if (hw_wait('T',MoudleNum))                //等待一个字节数据传送完成 
  {
    return 1;                        //没有传送成功,读一个字节失败
  }
  if (hw_wait('A',MoudleNum))                //等待从机应答信号   
  {
    return 1;                        //没有等到应答信号,读一个字节失败  
  }
  I2C_C1_REG(I2Cx[I2Cn]) |= 0x04;//当MCU在主机模 式下，向该位写1将产生一个重新开始信号  
  I2C_D_REG(I2Cx[I2Cn]) = DeviceAddr | 0x01; //通知从机改为发送数据    
  if (hw_wait('T',MoudleNum))               //等待一个字节数据传送完成  
  {
    return 1;                       //没有传送成功,读一个字节失败 
  }
  if (hw_wait('A',MoudleNum))               //等待从机应答信号  
  {
    return 1;                      //没有等到应答信号,读一个字节失败
  }
  I2C_C1_REG(I2Cx[I2Cn]) &= 0xef;           //TX = 0,MCU设置为接收模式    
  *Data = I2C_D_REG(I2Cx[I2Cn]);            //读出IIC1D,准备接收数据   
  if (hw_wait('T',MoudleNum))              //等待一个字节数据传送完成  
  {  
    return 1;                      //没有传送成功,读一个字节失败  
  }
  hw_send_signal('O',MoudleNum);           //发送停止信号    
  *Data = I2C_D_REG(I2Cx[I2Cn]);            //读出接收到的一个数据    

  return 0;                          //正确接收到一个字节数据
}
*/

uint8 i2c_readaddr(I2Cn i2cn, uint8 SlaveID, uint8 Addr)
{
    uint8 result;
    /* send start signal */
    i2c_start(i2cn);
    /* send ID with W/R bit */
    //i2c_set_tx(i2cn);//设置为主机写从机读模式
    i2c_write(i2cn, ( SlaveID << 1 ) | I2C_MWSR);
    LPLD_I2C_WaitAck(i2cn,1);

    /* Write Register Address */
    //i2c_set_tx(i2cn);//设置为主机写从机读模式
    i2c_write(i2cn, Addr);
    LPLD_I2C_WaitAck(i2cn,1);
    
    /* Do a repeated start */
    i2c_restart(i2cn);

    /* Send Slave Address */
    //i2c_set_tx(i2cn);//设置为主机写从机读模式
    i2c_write(i2cn, ( SlaveID << 1) | I2C_MRSW );
    LPLD_I2C_WaitAck(i2cn,1);
    
    /* Put in Rx Mode */
    i2c_set_rx(i2cn);//设置为主机读从机写模式
    LPLD_I2C_WaitAck(i2cn,0);

    /* Turn off ACK since this is second to last byte being read*/
    //i2c_dis_ack(i2cn); //不应答

    /* Dummy read 虚假读取*/
    result = I2C_D_REG(I2Cx[i2cn]);
    LPLD_I2C_WaitAck(i2cn,1);
    
    /* Send stop since about to read last byte */
    i2c_stop(i2cn);

    /* Read byte */
    result = I2C_D_REG(I2Cx[i2cn]);

    return (uint8)result;
}

void i2c_writeaddr(I2Cn i2cn, uint8 SlaveID, uint8 Addr, uint8 Data)
{
    
    
    /* send start signal */
    i2c_start(i2cn);
    /* send ID with W/R bit */
    //i2c_set_tx(i2cn);//设置为主机写从机读模式
    i2c_write(i2cn, ( SlaveID << 1 ) | I2C_MWSR);
    LPLD_I2C_WaitAck(i2cn,1);                        //等待应答信号
    
    //i2c_set_tx(i2cn);//设置为主机写从机读模式
    i2c_write(i2cn,Addr);                       //写访问地址
    LPLD_I2C_WaitAck(i2cn,1);                        //等待应答信号

    //i2c_set_tx(i2cn);//设置为主机写从机读模式
    i2c_write(i2cn,Data);                       //写数据
    LPLD_I2C_WaitAck(i2cn,1);

    i2c_stop(i2cn);

    i2c_pause();                                        //延时太短的话，可能写出错
}

/*************************************************************************
*                             野火嵌入式开发工作室
*
*  函数名称：i2c_pause
*  功能说明：延时，I2C读写后，需要延时一下
*  参数说明：无
*  函数返回：无
*  修改时间：2012-1-20
*  备    注：在官方基础上增大延时数
*************************************************************************/
void i2c_pause(void)
{
    uint16 n;
    for(n = 1; n < 25000; n++)      //注意，这个数据太小，会导致读取错误。
    {
        asm("nop");
    }
}

void LPLD_I2C_WaitAck(I2Cn i2cn,uint8_t is_wait)
{
  uint16_t time_out;
  if(is_wait)
  {
      while(!(I2C_S_REG(I2Cx[i2cn]) & I2C_S_IICIF_MASK))
      {
        if(time_out>60000) //如果等待超时，强行退出
          break;
        else time_out++;
      }
      I2C_S_REG(I2Cx[i2cn]) |= I2C_S_IICIF_MASK;
  }
  else
  {
    //关闭I2C的ACK
    I2C_C1_REG(I2Cx[i2cn]) |= I2C_C1_TXAK_MASK; 
  }
}