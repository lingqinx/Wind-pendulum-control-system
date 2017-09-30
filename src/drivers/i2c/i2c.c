#include "common.h"
#include "i2c.h"

volatile struct I2C_MemMap *I2Cx[2] = {I2C0_BASE_PTR, I2C1_BASE_PTR}; //��������ָ�����鱣�� I2Cx �ĵ�ַ
void i2c_pause(void);
//I2C0_C1 |= ( I2C_C1_TX_MASK);

/*
 * i2c_init
 * I2Cͨ�ó�ʼ������
 * 
 * ����:
 *    IICx--ѡ��I2Cģ���ͨ��
 *      |__0 I2C0
 *      |__1 I2C1
 *    scl_frq=0,�����mult��I2C_F_MULT����scl_dev��I2C_F_ICR������,
 *      |       ѡֵ��ο�K60Pin144 Sub-Family Reference Manual P1468
 *      |       Table 50-41. I2C Divider and Hold Values
 *      |       scl_frq<>0,������±�ѡƵ��
 *      |__0--����mult��scl_dev����
 *      |__1--50khz=(50Mhz/1*1024=48.828125KHz)
 *      |__2--100khz=(50Mhz/1*512=97.65625KHz)
 *      |__3--150khz=(50Mhz/1*320=156.25KHz)
 *      |__4--200khz=(50Mhz/1*256=195.3215KHz)
 *      |__5--250khz=(50Mhz/1*192=260.4167KHz)
 *      |__6--300khz=(50Mhz/1*160=312.5KHz)
 *      |__7--400khz=(50Mhz/1*128=390.625KHz)
 * ���:
 *    0--���ô���
 *    1--���óɹ�
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
        /* ����ʱ�� */
        SIM_SCGC4 |= SIM_SCGC4_I2C0_MASK;         //���� I2C0ʱ��

        /* ���� I2C0���ܵ� GPIO �ӿ� */
        if(I2C0_SCL == PTB0)
            PORTB_PCR0 = PORT_PCR_MUX(2);
        else if(I2C0_SCL == PTB2)
            PORTB_PCR2 = PORT_PCR_MUX(2);
        else if(I2C0_SCL == PTD8)
            PORTD_PCR8 = PORT_PCR_MUX(2);
        else
        {
            assert_failed(__FILE__, __LINE__);                   //���ùܽ�����
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
            assert_failed(__FILE__, __LINE__);                   //���ùܽ�����
            return 0;
        }
        //����I2C������
        if(scl_frq==0)
            I2C_F_REG(I2Cx[i2cn])  = I2C_F_MULT(mult) | I2C_F_ICR(scl_dev) ;  // I2C Frequency Divider register (I2Cx_F)
        else
            I2C_F_REG(I2Cx[i2cn])  = I2C_F_MULT(0x00) | I2C_F_ICR(PS) ;  // I2C Frequency Divider register (I2Cx_F)
        
        //ʹ��I2C0��������Ӧ���ź�
	I2C0_C1 = I2C_C1_IICEN_MASK | I2C_C1_TXAK_MASK;
        //I2C_C1_REG(I2Cx[i2cn]) = I2C_C1_IICEN_MASK;
    return 1;
    }
    else
    {
        /* ����ʱ�� */
        SIM_SCGC4 |= SIM_SCGC4_I2C1_MASK;         //���� I2C1ʱ��

        /* ���� I2C1���ܵ� GPIO �ӿ� */
        if(I2C1_SCL == PTE1)
            PORTE_PCR1 = PORT_PCR_MUX(6);
        else if(I2C1_SCL == PTC10)
            PORTC_PCR10 = PORT_PCR_MUX(2);
        else
        {
            assert_failed(__FILE__, __LINE__);                   //���ùܽ�����
            return 0;
        }

        if(I2C1_SDA == PTE0)
            PORTE_PCR0 = PORT_PCR_MUX(6);
        else if (I2C1_SDA == PTC11)
            PORTC_PCR11 = PORT_PCR_MUX(2);
        else
        {
            assert_failed(__FILE__, __LINE__);                   //���ùܽ�����
            return 0;
        }
        //����I2C������
        if(scl_frq==0)
            I2C_F_REG(I2Cx[i2cn])  = I2C_F_MULT(mult) | I2C_F_ICR(scl_dev) ;  // I2C Frequency Divider register (I2Cx_F)
        else
            I2C_F_REG(I2Cx[i2cn])  = I2C_F_MULT(0x00) | I2C_F_ICR(PS) ;  // I2C Frequency Divider register (I2Cx_F)
        
        //ʹ��I2C1��������Ӧ���ź�
	I2C1_C1 = I2C_C1_IICEN_MASK | I2C_C1_TXAK_MASK;
        //I2C_C1_REG(I2Cx[i2cn]) = I2C_C1_IICEN_MASK;
        
    return 1;
    }
    //I2C_F_REG(I2Cx)  = I2C_F_MULT(mult) | I2C_F_ICR(17) ;  // I2C Frequency Divider register (I2Cx_F)
    //I2C��Ƶ�Ĵ���   I2C�������Ϊ 400k
    // MULT=00  ��  mul = 1
    // ICR    SCL Divider   SDA Hold Value    SCL Hold (Start) Value    SCL Hold (Stop) Value
    //  17       128              21                   58                         65
    // I2C baud rate = bus speed (Hz)/(mul �� SCL divider)  ������ 50MHz/(1 ��128)=390.625kHz
    // SDA hold time = bus period (s) �� mul �� SDA hold value
    // SCL start hold time = bus period (s) �� mul �� SCL start hold value
    // SCL stop hold time = bus period (s) �� mul �� SCL stop hold value
}
/*
//============================================================================
//�������ƣ�hw_wait                                                        
//���ܸ�Ҫ�� ��ʱ����,ѭ��������Ӧ���־λ,������ɱ�־λ,�ж�MCU         
//          �Ƿ���յ�Ӧ���źŻ�һ���ֽ��Ƿ����������ϴ������                                            
//����˵����         MoudleNum:ģ���       
//             x:x = 1(Ack),�ȴ�Ӧ��;x = 0(Transmission),�ȴ�һ���ֽ�        
//                 ���ݴ������                   
//�������أ�0:�յ�Ӧ���źŻ�һ���ֽڴ������;
//         1:δ�յ�Ӧ���źŻ�һ�� �ֽ�û������                                                                                                                            
//============================================================================

uint8 i2c_waitmode(I2Cn i2cn,uint8 isack)
{
  uint16 ErrTime, i;
  ErrTime = 255*10;            //�����ѯ��ʱʱ��
    
  for (i = 0;i < ErrTime;i++)
  {
    if (isack == 1)           //�ȴ�Ӧ���ź�
    {
      if(( I2C_S_REG(I2Cx[i2cn])  & I2C_S_RXAK_MASK)==0)
      return 0;      //������һ���ֽں�,�յ��˴ӻ���Ӧ���ź�               
    }
    else if (isack == 0)      //�ȴ��������һ���ֽ��ź�
    {
      if ((I2C_S_REG(I2Cx[i2cn]) & I2C_S_IICIF_MASK) != 0)    
      {
        (I2C_S_REG(I2Cx[i2cn]) |=(0 | I2C_S_IICIF_MASK));  //��IICIF��־λ
        return 0;       //�ɹ�������һ���ֽ�
      }
     else return 1;//���ò�������
    }
  }
  if (i >= ErrTime) 
  {
    return 1;               //��ʱ,û���յ�Ӧ���źŻ�����һ���ֽ�
  }
  return 1;//???????????????????
}
*/
/*
uint8 hw_iic_read1(I2Cn i2cn,uint8 DeviceAddr, uint8 AccessAddr, uint8 *Data)
{      
  I2C_C1_REG(I2Cx[I2Cn])     |= 0x10;           //TX = 1,MCU����Ϊ����ģʽ
  i2c_start(I2Cn);               //���Ϳ�ʼ�ź� 
  I2C_D_REG(I2Cx[I2Cn])  = DeviceAddr & 0xfe;   //�����豸��ַ,��֪ͨ�ӻ���������
  if (hw_wait('T',MoudleNum))                  //�ȴ�һ���ֽ����ݴ������  
  {      
    return 1;                         //û�д��ͳɹ�,��һ���ֽ�ʧ��   
  }
  i2c_waitmode(i2cn,0);
  if (hw_wait('A',MoudleNum))                 //�ȴ��ӻ�Ӧ���ź� 
  {
    return 1;                         //û�еȵ�Ӧ���ź�,��һ���ֽ�ʧ�� 
  }
  I2C_D_REG(I2Cx[I2Cn])  = AccessAddr;        //���ͷ��ʵ�ַ    
  if (hw_wait('T',MoudleNum))                //�ȴ�һ���ֽ����ݴ������ 
  {
    return 1;                        //û�д��ͳɹ�,��һ���ֽ�ʧ��
  }
  if (hw_wait('A',MoudleNum))                //�ȴ��ӻ�Ӧ���ź�   
  {
    return 1;                        //û�еȵ�Ӧ���ź�,��һ���ֽ�ʧ��  
  }
  I2C_C1_REG(I2Cx[I2Cn]) |= 0x04;//��MCU������ģ ʽ�£����λд1������һ�����¿�ʼ�ź�  
  I2C_D_REG(I2Cx[I2Cn]) = DeviceAddr | 0x01; //֪ͨ�ӻ���Ϊ��������    
  if (hw_wait('T',MoudleNum))               //�ȴ�һ���ֽ����ݴ������  
  {
    return 1;                       //û�д��ͳɹ�,��һ���ֽ�ʧ�� 
  }
  if (hw_wait('A',MoudleNum))               //�ȴ��ӻ�Ӧ���ź�  
  {
    return 1;                      //û�еȵ�Ӧ���ź�,��һ���ֽ�ʧ��
  }
  I2C_C1_REG(I2Cx[I2Cn]) &= 0xef;           //TX = 0,MCU����Ϊ����ģʽ    
  *Data = I2C_D_REG(I2Cx[I2Cn]);            //����IIC1D,׼����������   
  if (hw_wait('T',MoudleNum))              //�ȴ�һ���ֽ����ݴ������  
  {  
    return 1;                      //û�д��ͳɹ�,��һ���ֽ�ʧ��  
  }
  hw_send_signal('O',MoudleNum);           //����ֹͣ�ź�    
  *Data = I2C_D_REG(I2Cx[I2Cn]);            //�������յ���һ������    

  return 0;                          //��ȷ���յ�һ���ֽ�����
}
*/

uint8 i2c_readaddr(I2Cn i2cn, uint8 SlaveID, uint8 Addr)
{
    uint8 result;
    /* send start signal */
    i2c_start(i2cn);
    /* send ID with W/R bit */
    //i2c_set_tx(i2cn);//����Ϊ����д�ӻ���ģʽ
    i2c_write(i2cn, ( SlaveID << 1 ) | I2C_MWSR);
    LPLD_I2C_WaitAck(i2cn,1);

    /* Write Register Address */
    //i2c_set_tx(i2cn);//����Ϊ����д�ӻ���ģʽ
    i2c_write(i2cn, Addr);
    LPLD_I2C_WaitAck(i2cn,1);
    
    /* Do a repeated start */
    i2c_restart(i2cn);

    /* Send Slave Address */
    //i2c_set_tx(i2cn);//����Ϊ����д�ӻ���ģʽ
    i2c_write(i2cn, ( SlaveID << 1) | I2C_MRSW );
    LPLD_I2C_WaitAck(i2cn,1);
    
    /* Put in Rx Mode */
    i2c_set_rx(i2cn);//����Ϊ�������ӻ�дģʽ
    LPLD_I2C_WaitAck(i2cn,0);

    /* Turn off ACK since this is second to last byte being read*/
    //i2c_dis_ack(i2cn); //��Ӧ��

    /* Dummy read ��ٶ�ȡ*/
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
    //i2c_set_tx(i2cn);//����Ϊ����д�ӻ���ģʽ
    i2c_write(i2cn, ( SlaveID << 1 ) | I2C_MWSR);
    LPLD_I2C_WaitAck(i2cn,1);                        //�ȴ�Ӧ���ź�
    
    //i2c_set_tx(i2cn);//����Ϊ����д�ӻ���ģʽ
    i2c_write(i2cn,Addr);                       //д���ʵ�ַ
    LPLD_I2C_WaitAck(i2cn,1);                        //�ȴ�Ӧ���ź�

    //i2c_set_tx(i2cn);//����Ϊ����д�ӻ���ģʽ
    i2c_write(i2cn,Data);                       //д����
    LPLD_I2C_WaitAck(i2cn,1);

    i2c_stop(i2cn);

    i2c_pause();                                        //��ʱ̫�̵Ļ�������д����
}

/*************************************************************************
*                             Ұ��Ƕ��ʽ����������
*
*  �������ƣ�i2c_pause
*  ����˵������ʱ��I2C��д����Ҫ��ʱһ��
*  ����˵������
*  �������أ���
*  �޸�ʱ�䣺2012-1-20
*  ��    ע���ڹٷ�������������ʱ��
*************************************************************************/
void i2c_pause(void)
{
    uint16 n;
    for(n = 1; n < 25000; n++)      //ע�⣬�������̫С���ᵼ�¶�ȡ����
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
        if(time_out>60000) //����ȴ���ʱ��ǿ���˳�
          break;
        else time_out++;
      }
      I2C_S_REG(I2Cx[i2cn]) |= I2C_S_IICIF_MASK;
  }
  else
  {
    //�ر�I2C��ACK
    I2C_C1_REG(I2Cx[i2cn]) |= I2C_C1_TXAK_MASK; 
  }
}