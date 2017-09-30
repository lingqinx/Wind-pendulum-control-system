#include "MPU6050.h"

volatile int16 MPU6050_ACCEL_XOUT_DATA=0;
volatile int16 MPU6050_ACCEL_YOUT_DATA=0;
volatile int16 MPU6050_ACCEL_ZOUT_DATA=0;
volatile int16 MPU6050_TEMP_OUT_DATA=0;
volatile int16 MPU6050_GYRO_XOUT_DATA=0;
volatile int16 MPU6050_GYRO_YOUT_DATA=0;
volatile int16 MPU6050_GYRO_ZOUT_DATA=0;

void MPU6050_Init(void)
{
  i2c_init(MPU6050_I2C_Moudle,0,0,4);
  i2c_writeaddr(MPU6050_I2C_Moudle, MPU6050_ADDRESS,MPU6050_PWR_MGMT_1, 0x00);
  i2c_writeaddr(MPU6050_I2C_Moudle, MPU6050_ADDRESS,MPU6050_PWR_MGMT_2, 0x00);
  i2c_writeaddr(MPU6050_I2C_Moudle, MPU6050_ADDRESS,MPU6050_CONFIG, 0x06);//低通滤波器带宽5Hz
  i2c_writeaddr(MPU6050_I2C_Moudle, MPU6050_ADDRESS,MPU6050_GYRO_CONFIG, 0x08);//不自检   ±500 °/s
  i2c_writeaddr(MPU6050_I2C_Moudle, MPU6050_ADDRESS,MPU6050_ACCEL_CONFIG, 0x08);//不自检  ±4g
}

int16 MPU6050_GetDoubleData(uint8 Addr)
{
  uint16 data=0x0000;
  data=i2c_readaddr(MPU6050_I2C_Moudle,MPU6050_ADDRESS, Addr);
  data=(uint16)((data<<8)&0xff00);
  data+=i2c_readaddr(MPU6050_I2C_Moudle,MPU6050_ADDRESS, Addr+1);
  //int16 data;
  //data=	((int16)i2c_readaddr(MPU6050_I2C_Moudle,MPU6050_ADDRESS, Addr)<<8)
  //      |(int16)i2c_readaddr(MPU6050_I2C_Moudle,MPU6050_ADDRESS, Addr+1);
  
  return (int16)data;//合成数据，为有符号整形数
}



void MPU6050_GetData(void)
{
  MPU6050_ACCEL_XOUT_DATA=((int16)i2c_readaddr(MPU6050_I2C_Moudle,MPU6050_ADDRESS, MPU6050_ACCEL_XOUT)<<8)
                          |(int16)i2c_readaddr(MPU6050_I2C_Moudle,MPU6050_ADDRESS, MPU6050_ACCEL_XOUT+1);
  MPU6050_ACCEL_YOUT_DATA=((int16)i2c_readaddr(MPU6050_I2C_Moudle,MPU6050_ADDRESS, MPU6050_ACCEL_YOUT)<<8)
                          |(int16)i2c_readaddr(MPU6050_I2C_Moudle,MPU6050_ADDRESS, MPU6050_ACCEL_YOUT+1);
  MPU6050_ACCEL_ZOUT_DATA=((int16)i2c_readaddr(MPU6050_I2C_Moudle,MPU6050_ADDRESS, MPU6050_ACCEL_ZOUT)<<8)
                          |(int16)i2c_readaddr(MPU6050_I2C_Moudle,MPU6050_ADDRESS, MPU6050_ACCEL_ZOUT+1);
  MPU6050_TEMP_OUT_DATA=((int16)i2c_readaddr(MPU6050_I2C_Moudle,MPU6050_ADDRESS, MPU6050_TEMP_OUT)<<8)
                          |(int16)i2c_readaddr(MPU6050_I2C_Moudle,MPU6050_ADDRESS, MPU6050_TEMP_OUT+1);
  MPU6050_GYRO_XOUT_DATA=((int16)i2c_readaddr(MPU6050_I2C_Moudle,MPU6050_ADDRESS, MPU6050_GYRO_XOUT)<<8)
                          |(int16)i2c_readaddr(MPU6050_I2C_Moudle,MPU6050_ADDRESS, MPU6050_GYRO_XOUT+1);
  MPU6050_GYRO_YOUT_DATA=((int16)i2c_readaddr(MPU6050_I2C_Moudle,MPU6050_ADDRESS, MPU6050_GYRO_YOUT)<<8)
                          |(int16)i2c_readaddr(MPU6050_I2C_Moudle,MPU6050_ADDRESS, MPU6050_GYRO_YOUT+1);
  MPU6050_GYRO_ZOUT_DATA=((int16)i2c_readaddr(MPU6050_I2C_Moudle,MPU6050_ADDRESS, MPU6050_GYRO_ZOUT)<<8)
                          |(int16)i2c_readaddr(MPU6050_I2C_Moudle,MPU6050_ADDRESS, MPU6050_GYRO_ZOUT+1);
}