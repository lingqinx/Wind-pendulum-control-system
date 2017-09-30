#ifndef __I2C_H__
#define __I2C_H__
#include "common.h"
typedef enum I2Cn
{
    I2C0  = 0,
    I2C1  = 1
} I2Cn;

typedef enum MSmode
{
    I2C_MWSR =   0x00,  /* Master write  */
    I2C_MRSW =   0x01   /* Master read */
} MSmode;

#define i2c_start(I2Cn)    I2C_C1_REG(I2Cx[I2Cn]) |= I2C_C1_TX_MASK;\
                           I2C_C1_REG(I2Cx[I2Cn]) |= I2C_C1_MST_MASK//产生开始信号

#define i2c_restart(I2Cn)  I2C_C1_REG(I2Cx[I2Cn]) |= I2C_C1_RSTA_MASK//产生重新开始信号

#define i2c_stop(I2Cn)     I2C_C1_REG(I2Cx[I2Cn]) &= ~I2C_C1_MST_MASK;\
                           I2C_C1_REG(I2Cx[I2Cn]) &= ~I2C_C1_TX_MASK//产生结束信号

#define i2c_wait(I2Cn)     while(( I2C_S_REG(I2Cx[I2Cn]) & I2C_S_IICIF_MASK)==0) {} \
                           I2C_S_REG(I2Cx[I2Cn]) |= I2C_S_IICIF_MASK;//清该寄存器标志

#define i2c_dis_ack(I2Cn)  I2C_C1_REG(I2Cx[I2Cn]) |= I2C_C1_TXAK_MASK

#define i2c_rx_ack(I2Cn)   I2C_C1_REG(I2Cx[I2Cn]) &= ~I2C_C1_TX_MASK;\
                           I2C_C1_REG(I2Cx[I2Cn]) &= ~I2C_C1_TXAK_MASK//进入接收模式(应答)

#define i2c_rx_noack(I2Cn) I2C_C1_REG(I2Cx[I2Cn]) &= ~I2C_C1_TX_MASK//进入接收模式(不应答)

#define i2c_write(I2Cn,data) I2C_D_REG(I2Cx[I2Cn]) = data//写一个字节

#define i2c_set_rx(I2Cn) I2C_C1_REG(I2Cx[I2Cn]) &= (~I2C_C1_TX_MASK)
#define i2c_set_tx(I2Cn) I2C_C1_REG(I2Cx[I2Cn]) |= ( I2C_C1_TX_MASK)

//      模块通道    端口          可选范围              建议
//#define I2C0_SCL    PTD8        // PTB0、PTB2、PTD8
//#define I2C0_SDA    PTD9        // PTB1、PTB3、PTD9
#define I2C1_SCL    PTC10
#define I2C1_SDA    PTC11

uint8 i2c_readaddr(I2Cn i2cn, uint8 SlaveID, uint8 Addr);
void i2c_writeaddr(I2Cn i2cn, uint8 SlaveID, uint8 Addr, uint8 Data);
uint8 i2c_init(I2Cn i2cn,uint8 mult,uint8 scl_dev,uint8 scl_frq);
void LPLD_I2C_WaitAck(I2Cn i2cn,uint8_t is_wait);

#endif /* __HAL_I2C_H__ */
