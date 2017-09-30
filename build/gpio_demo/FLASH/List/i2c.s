///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.60.1.5097/W32 for ARM     15/Aug/2015  12:46:26 /
// Copyright 1999-2013 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  C:\Users\Administrator\Desktop\MPU60508.12\src\drivers\ /
//                    i2c\i2c.c                                               /
//    Command line =  C:\Users\Administrator\Desktop\MPU60508.12\src\drivers\ /
//                    i2c\i2c.c -lCN C:\Users\Administrator\Desktop\MPU60508. /
//                    12\build\gpio_demo\FLASH\List\ -lB                      /
//                    C:\Users\Administrator\Desktop\MPU60508.12\build\gpio_d /
//                    emo\FLASH\List\ -o C:\Users\Administrator\Desktop\MPU60 /
//                    508.12\build\gpio_demo\FLASH\Obj\ --no_cse --no_unroll  /
//                    --no_inline --no_code_motion --no_tbaa --no_clustering  /
//                    --no_scheduling --debug --endian=little                 /
//                    --cpu=Cortex-M4 -e --fpu=None --dlib_config "D:\IAR     /
//                    Systems\Embedded Workbench                              /
//                    6.5\arm\INC\c\DLib_Config_Normal.h" -I                  /
//                    C:\Users\Administrator\Desktop\MPU60508.12\build\gpio_d /
//                    emo\..\ -I C:\Users\Administrator\Desktop\MPU60508.12\b /
//                    uild\gpio_demo\..\..\src\common\ -I                     /
//                    C:\Users\Administrator\Desktop\MPU60508.12\build\gpio_d /
//                    emo\..\..\src\cpu\ -I C:\Users\Administrator\Desktop\MP /
//                    U60508.12\build\gpio_demo\..\..\src\drivers\ -I         /
//                    C:\Users\Administrator\Desktop\MPU60508.12\build\gpio_d /
//                    emo\..\..\src\drivers\gpio\ -I                          /
//                    C:\Users\Administrator\Desktop\MPU60508.12\build\gpio_d /
//                    emo\..\..\src\drivers\flash\ -I                         /
//                    C:\Users\Administrator\Desktop\MPU60508.12\build\gpio_d /
//                    emo\..\..\src\drivers\olcd\ -I                          /
//                    C:\Users\Administrator\Desktop\MPU60508.12\build\gpio_d /
//                    emo\..\..\src\drivers\diskio\ -I                        /
//                    C:\Users\Administrator\Desktop\MPU60508.12\build\gpio_d /
//                    emo\..\..\src\drivers\iospi\ -I                         /
//                    C:\Users\Administrator\Desktop\MPU60508.12\build\gpio_d /
//                    emo\..\..\src\drivers\wdog\ -I                          /
//                    C:\Users\Administrator\Desktop\MPU60508.12\build\gpio_d /
//                    emo\..\..\src\drivers\mcg\ -I                           /
//                    C:\Users\Administrator\Desktop\MPU60508.12\build\gpio_d /
//                    emo\..\..\src\drivers\flash\ -I                         /
//                    C:\Users\Administrator\Desktop\MPU60508.12\build\gpio_d /
//                    emo\..\..\src\drivers\uart\ -I                          /
//                    C:\Users\Administrator\Desktop\MPU60508.12\build\gpio_d /
//                    emo\..\..\src\drivers\lptmr\ -I                         /
//                    C:\Users\Administrator\Desktop\MPU60508.12\build\gpio_d /
//                    emo\..\..\src\drivers\LED\ -I                           /
//                    C:\Users\Administrator\Desktop\MPU60508.12\build\gpio_d /
//                    emo\..\..\src\drivers\fun\ -I                           /
//                    C:\Users\Administrator\Desktop\MPU60508.12\build\gpio_d /
//                    emo\..\..\src\drivers\FTM\ -I                           /
//                    C:\Users\Administrator\Desktop\MPU60508.12\build\gpio_d /
//                    emo\..\..\src\drivers\pit\ -I                           /
//                    C:\Users\Administrator\Desktop\MPU60508.12\build\gpio_d /
//                    emo\..\..\src\drivers\DIPswitch\ -I                     /
//                    C:\Users\Administrator\Desktop\MPU60508.12\build\gpio_d /
//                    emo\..\..\src\drivers\steer\ -I                         /
//                    C:\Users\Administrator\Desktop\MPU60508.12\build\gpio_d /
//                    emo\..\..\src\drivers\motor\ -I                         /
//                    C:\Users\Administrator\Desktop\MPU60508.12\build\gpio_d /
//                    emo\..\..\src\drivers\laser\ -I                         /
//                    C:\Users\Administrator\Desktop\MPU60508.12\build\gpio_d /
//                    emo\..\..\src\drivers\i2c\ -I                           /
//                    C:\Users\Administrator\Desktop\MPU60508.12\build\gpio_d /
//                    emo\..\..\src\drivers\ADdevice\ -I                      /
//                    C:\Users\Administrator\Desktop\MPU60508.12\build\gpio_d /
//                    emo\..\..\src\drivers\adc\ -I                           /
//                    C:\Users\Administrator\Desktop\MPU60508.12\build\gpio_d /
//                    emo\..\..\src\drivers\serial_digtal_scope\ -I           /
//                    C:\Users\Administrator\Desktop\MPU60508.12\build\gpio_d /
//                    emo\..\..\src\drivers\MMA845x\ -I                       /
//                    C:\Users\Administrator\Desktop\MPU60508.12\build\gpio_d /
//                    emo\..\..\src\drivers\exti\ -I                          /
//                    C:\Users\Administrator\Desktop\MPU60508.12\build\gpio_d /
//                    emo\..\..\src\drivers\dma\ -I                           /
//                    C:\Users\Administrator\Desktop\MPU60508.12\build\gpio_d /
//                    emo\..\..\src\platforms\ -I                             /
//                    C:\Users\Administrator\Desktop\MPU60508.12\build\gpio_d /
//                    emo\..\..\src\projects\ -I                              /
//                    C:\Users\Administrator\Desktop\MPU60508.12\build\gpio_d /
//                    emo\..\..\src\projects\gpio_demo\ -I                    /
//                    C:\Users\Administrator\Desktop\MPU60508.12\build\gpio_d /
//                    emo\..\..\src\drivers\MPU6050\ -I                       /
//                    C:\Users\Administrator\Desktop\MPU60508.12\build\gpio_d /
//                    emo\..\..\src\drivers\steer\ -Ol                        /
//    List file    =  C:\Users\Administrator\Desktop\MPU60508.12\build\gpio_d /
//                    emo\FLASH\List\i2c.s                                    /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        PUBLIC I2Cx
        PUBLIC LPLD_I2C_WaitAck
        PUBLIC i2c_init
        PUBLIC i2c_pause
        PUBLIC i2c_readaddr
        PUBLIC i2c_writeaddr

// C:\Users\Administrator\Desktop\MPU60508.12\src\drivers\i2c\i2c.c
//    1 #include "common.h"
//    2 #include "i2c.h"
//    3 

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//    4 volatile struct I2C_MemMap *I2Cx[2] = {I2C0_BASE_PTR, I2C1_BASE_PTR}; //定义两个指针数组保存 I2Cx 的地址
I2Cx:
        DATA
        DC32 40066000H, 40067000H
//    5 void i2c_pause(void);
//    6 //I2C0_C1 |= ( I2C_C1_TX_MASK);
//    7 
//    8 /*
//    9  * i2c_init
//   10  * I2C通用初始化函数
//   11  * 
//   12  * 参数:
//   13  *    IICx--选择I2C模块的通道
//   14  *      |__0 I2C0
//   15  *      |__1 I2C1
//   16  *    scl_frq=0,则根据mult（I2C_F_MULT）和scl_dev（I2C_F_ICR）计算,
//   17  *      |       选值请参考K60Pin144 Sub-Family Reference Manual P1468
//   18  *      |       Table 50-41. I2C Divider and Hold Values
//   19  *      |       scl_frq<>0,则根据下表选频率
//   20  *      |__0--根据mult和scl_dev计算
//   21  *      |__1--50khz=(50Mhz/1*1024=48.828125KHz)
//   22  *      |__2--100khz=(50Mhz/1*512=97.65625KHz)
//   23  *      |__3--150khz=(50Mhz/1*320=156.25KHz)
//   24  *      |__4--200khz=(50Mhz/1*256=195.3215KHz)
//   25  *      |__5--250khz=(50Mhz/1*192=260.4167KHz)
//   26  *      |__6--300khz=(50Mhz/1*160=312.5KHz)
//   27  *      |__7--400khz=(50Mhz/1*128=390.625KHz)
//   28  * 输出:
//   29  *    0--配置错误
//   30  *    1--配置成功
//   31  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   32 uint8 i2c_init(I2Cn i2cn,uint8 mult,uint8 scl_dev,uint8 scl_frq)
//   33 {
i2c_init:
        PUSH     {R4-R6}
//   34   uint8 PS;
//   35   if(scl_frq==0)
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        CMP      R3,#+0
        BEQ.N    ??i2c_init_0
//   36   {}
//   37     else if(scl_frq==1)
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        CMP      R3,#+1
        BNE.N    ??i2c_init_1
//   38     {
//   39       PS=0x33;
        MOVS     R4,#+51
//   40     }
//   41     else if(scl_frq==2)
//   42     {
//   43       PS=0x2B;
//   44     }
//   45     else if(scl_frq==3)
//   46     {
//   47       PS=0x28;
//   48     }
//   49     else if(scl_frq==4)
//   50     {
//   51       PS=0x23;
//   52     }
//   53     else if(scl_frq==5)
//   54     {
//   55       PS=0x21;
//   56     }
//   57     else if(scl_frq==6)
//   58     {
//   59       PS=0x20;
//   60     }
//   61     else if(scl_frq==7)
//   62     {
//   63       PS=0x17;
//   64     }
//   65   else  return 0;
//   66 
//   67     if(i2cn == I2C0)
??i2c_init_0:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BNE.N    ??i2c_init_2
//   68     {
//   69         /* 开启时钟 */
//   70         SIM_SCGC4 |= SIM_SCGC4_I2C0_MASK;         //开启 I2C0时钟
        LDR.N    R5,??DataTable3  ;; 0x40048034
        LDR      R5,[R5, #+0]
        ORRS     R5,R5,#0x40
        LDR.N    R6,??DataTable3  ;; 0x40048034
        STR      R5,[R6, #+0]
//   71 
//   72         /* 配置 I2C0功能的 GPIO 接口 */
//   73         if(I2C0_SCL == PTB0)
//   74             PORTB_PCR0 = PORT_PCR_MUX(2);
        LDR.N    R5,??DataTable3_1  ;; 0x4004a000
        MOV      R6,#+512
        STR      R6,[R5, #+0]
//   75         else if(I2C0_SCL == PTB2)
//   76             PORTB_PCR2 = PORT_PCR_MUX(2);
//   77         else if(I2C0_SCL == PTD8)
//   78             PORTD_PCR8 = PORT_PCR_MUX(2);
//   79         else
//   80         {
//   81             assert_failed(__FILE__, __LINE__);                   //设置管脚有误？
//   82             return 0;
//   83         }
//   84 
//   85         if(I2C0_SDA == PTB1)
//   86             PORTB_PCR1 = PORT_PCR_MUX(2);
        LDR.N    R5,??DataTable3_2  ;; 0x4004a004
        MOV      R6,#+512
        STR      R6,[R5, #+0]
//   87         else if(I2C0_SDA == PTB3)
//   88             PORTB_PCR3 = PORT_PCR_MUX(2);
//   89         else if(I2C0_SDA == PTD9)
//   90             PORTD_PCR9 = PORT_PCR_MUX(2);
//   91         else
//   92         {
//   93             assert_failed(__FILE__, __LINE__);                   //设置管脚有误？
//   94             return 0;
//   95         }
//   96         //设置I2C波特率
//   97         if(scl_frq==0)
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        CMP      R3,#+0
        BNE.N    ??i2c_init_3
//   98             I2C_F_REG(I2Cx[i2cn])  = I2C_F_MULT(mult) | I2C_F_ICR(scl_dev) ;  // I2C Frequency Divider register (I2Cx_F)
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R3,??DataTable3_3
        LDR      R0,[R3, R0, LSL #+2]
        ANDS     R2,R2,#0x3F
        ORRS     R1,R2,R1, LSL #+6
        STRB     R1,[R0, #+1]
        B.N      ??i2c_init_4
??i2c_init_1:
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        CMP      R3,#+2
        BNE.N    ??i2c_init_5
        MOVS     R4,#+43
        B.N      ??i2c_init_0
??i2c_init_5:
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        CMP      R3,#+3
        BNE.N    ??i2c_init_6
        MOVS     R4,#+40
        B.N      ??i2c_init_0
??i2c_init_6:
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        CMP      R3,#+4
        BNE.N    ??i2c_init_7
        MOVS     R4,#+35
        B.N      ??i2c_init_0
??i2c_init_7:
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        CMP      R3,#+5
        BNE.N    ??i2c_init_8
        MOVS     R4,#+33
        B.N      ??i2c_init_0
??i2c_init_8:
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        CMP      R3,#+6
        BNE.N    ??i2c_init_9
        MOVS     R4,#+32
        B.N      ??i2c_init_0
??i2c_init_9:
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        CMP      R3,#+7
        BNE.N    ??i2c_init_10
        MOVS     R4,#+23
        B.N      ??i2c_init_0
??i2c_init_10:
        MOVS     R0,#+0
        B.N      ??i2c_init_11
//   99         else
//  100             I2C_F_REG(I2Cx[i2cn])  = I2C_F_MULT(0x00) | I2C_F_ICR(PS) ;  // I2C Frequency Divider register (I2Cx_F)
??i2c_init_3:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R1,??DataTable3_3
        LDR      R0,[R1, R0, LSL #+2]
        ANDS     R1,R4,#0x3F
        STRB     R1,[R0, #+1]
//  101         
//  102         //使能I2C0，不发送应答信号
//  103 	I2C0_C1 = I2C_C1_IICEN_MASK | I2C_C1_TXAK_MASK;
??i2c_init_4:
        LDR.N    R0,??DataTable3_4  ;; 0x40066002
        MOVS     R1,#+136
        STRB     R1,[R0, #+0]
//  104         //I2C_C1_REG(I2Cx[i2cn]) = I2C_C1_IICEN_MASK;
//  105     return 1;
        MOVS     R0,#+1
        B.N      ??i2c_init_11
//  106     }
//  107     else
//  108     {
//  109         /* 开启时钟 */
//  110         SIM_SCGC4 |= SIM_SCGC4_I2C1_MASK;         //开启 I2C1时钟
??i2c_init_2:
        LDR.N    R5,??DataTable3  ;; 0x40048034
        LDR      R5,[R5, #+0]
        ORRS     R5,R5,#0x80
        LDR.N    R6,??DataTable3  ;; 0x40048034
        STR      R5,[R6, #+0]
//  111 
//  112         /* 配置 I2C1功能的 GPIO 接口 */
//  113         if(I2C1_SCL == PTE1)
//  114             PORTE_PCR1 = PORT_PCR_MUX(6);
//  115         else if(I2C1_SCL == PTC10)
//  116             PORTC_PCR10 = PORT_PCR_MUX(2);
        LDR.N    R5,??DataTable3_5  ;; 0x4004b028
        MOV      R6,#+512
        STR      R6,[R5, #+0]
//  117         else
//  118         {
//  119             assert_failed(__FILE__, __LINE__);                   //设置管脚有误？
//  120             return 0;
//  121         }
//  122 
//  123         if(I2C1_SDA == PTE0)
//  124             PORTE_PCR0 = PORT_PCR_MUX(6);
//  125         else if (I2C1_SDA == PTC11)
//  126             PORTC_PCR11 = PORT_PCR_MUX(2);
        LDR.N    R5,??DataTable3_6  ;; 0x4004b02c
        MOV      R6,#+512
        STR      R6,[R5, #+0]
//  127         else
//  128         {
//  129             assert_failed(__FILE__, __LINE__);                   //设置管脚有误？
//  130             return 0;
//  131         }
//  132         //设置I2C波特率
//  133         if(scl_frq==0)
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        CMP      R3,#+0
        BNE.N    ??i2c_init_12
//  134             I2C_F_REG(I2Cx[i2cn])  = I2C_F_MULT(mult) | I2C_F_ICR(scl_dev) ;  // I2C Frequency Divider register (I2Cx_F)
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R3,??DataTable3_3
        LDR      R0,[R3, R0, LSL #+2]
        ANDS     R2,R2,#0x3F
        ORRS     R1,R2,R1, LSL #+6
        STRB     R1,[R0, #+1]
        B.N      ??i2c_init_13
//  135         else
//  136             I2C_F_REG(I2Cx[i2cn])  = I2C_F_MULT(0x00) | I2C_F_ICR(PS) ;  // I2C Frequency Divider register (I2Cx_F)
??i2c_init_12:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R1,??DataTable3_3
        LDR      R0,[R1, R0, LSL #+2]
        ANDS     R1,R4,#0x3F
        STRB     R1,[R0, #+1]
//  137         
//  138         //使能I2C1，不发送应答信号
//  139 	I2C1_C1 = I2C_C1_IICEN_MASK | I2C_C1_TXAK_MASK;
??i2c_init_13:
        LDR.N    R0,??DataTable3_7  ;; 0x40067002
        MOVS     R1,#+136
        STRB     R1,[R0, #+0]
//  140         //I2C_C1_REG(I2Cx[i2cn]) = I2C_C1_IICEN_MASK;
//  141         
//  142     return 1;
        MOVS     R0,#+1
??i2c_init_11:
        POP      {R4-R6}
        BX       LR               ;; return
//  143     }
//  144     //I2C_F_REG(I2Cx)  = I2C_F_MULT(mult) | I2C_F_ICR(17) ;  // I2C Frequency Divider register (I2Cx_F)
//  145     //I2C分频寄存器   I2C最大波特率为 400k
//  146     // MULT=00  即  mul = 1
//  147     // ICR    SCL Divider   SDA Hold Value    SCL Hold (Start) Value    SCL Hold (Stop) Value
//  148     //  17       128              21                   58                         65
//  149     // I2C baud rate = bus speed (Hz)/(mul × SCL divider)  即这里 50MHz/(1 ×128)=390.625kHz
//  150     // SDA hold time = bus period (s) × mul × SDA hold value
//  151     // SCL start hold time = bus period (s) × mul × SCL start hold value
//  152     // SCL stop hold time = bus period (s) × mul × SCL stop hold value
//  153 }
//  154 /*
//  155 //============================================================================
//  156 //函数名称：hw_wait                                                        
//  157 //功能概要： 在时限内,循环检测接收应答标志位,或传送完成标志位,判断MCU         
//  158 //          是否接收到应答信号或一个字节是否已在总线上传送完毕                                            
//  159 //参数说明：         MoudleNum:模块号       
//  160 //             x:x = 1(Ack),等待应答;x = 0(Transmission),等待一个字节        
//  161 //                 数据传输完成                   
//  162 //函数返回：0:收到应答信号或一个字节传送完毕;
//  163 //         1:未收到应答信号或一个 字节没传送完                                                                                                                            
//  164 //============================================================================
//  165 
//  166 uint8 i2c_waitmode(I2Cn i2cn,uint8 isack)
//  167 {
//  168   uint16 ErrTime, i;
//  169   ErrTime = 255*10;            //定义查询超时时限
//  170     
//  171   for (i = 0;i < ErrTime;i++)
//  172   {
//  173     if (isack == 1)           //等待应答信号
//  174     {
//  175       if(( I2C_S_REG(I2Cx[i2cn])  & I2C_S_RXAK_MASK)==0)
//  176       return 0;      //传送完一个字节后,收到了从机的应答信号               
//  177     }
//  178     else if (isack == 0)      //等待传送完成一个字节信号
//  179     {
//  180       if ((I2C_S_REG(I2Cx[i2cn]) & I2C_S_IICIF_MASK) != 0)    
//  181       {
//  182         (I2C_S_REG(I2Cx[i2cn]) |=(0 | I2C_S_IICIF_MASK));  //清IICIF标志位
//  183         return 0;       //成功发送完一个字节
//  184       }
//  185      else return 1;//配置参数出错
//  186     }
//  187   }
//  188   if (i >= ErrTime) 
//  189   {
//  190     return 1;               //超时,没有收到应答信号或发送完一个字节
//  191   }
//  192   return 1;//???????????????????
//  193 }
//  194 */
//  195 /*
//  196 uint8 hw_iic_read1(I2Cn i2cn,uint8 DeviceAddr, uint8 AccessAddr, uint8 *Data)
//  197 {      
//  198   I2C_C1_REG(I2Cx[I2Cn])     |= 0x10;           //TX = 1,MCU设置为发送模式
//  199   i2c_start(I2Cn);               //发送开始信号 
//  200   I2C_D_REG(I2Cx[I2Cn])  = DeviceAddr & 0xfe;   //发送设备地址,并通知从机接收数据
//  201   if (hw_wait('T',MoudleNum))                  //等待一个字节数据传送完成  
//  202   {      
//  203     return 1;                         //没有传送成功,读一个字节失败   
//  204   }
//  205   i2c_waitmode(i2cn,0);
//  206   if (hw_wait('A',MoudleNum))                 //等待从机应答信号 
//  207   {
//  208     return 1;                         //没有等到应答信号,读一个字节失败 
//  209   }
//  210   I2C_D_REG(I2Cx[I2Cn])  = AccessAddr;        //发送访问地址    
//  211   if (hw_wait('T',MoudleNum))                //等待一个字节数据传送完成 
//  212   {
//  213     return 1;                        //没有传送成功,读一个字节失败
//  214   }
//  215   if (hw_wait('A',MoudleNum))                //等待从机应答信号   
//  216   {
//  217     return 1;                        //没有等到应答信号,读一个字节失败  
//  218   }
//  219   I2C_C1_REG(I2Cx[I2Cn]) |= 0x04;//当MCU在主机模 式下，向该位写1将产生一个重新开始信号  
//  220   I2C_D_REG(I2Cx[I2Cn]) = DeviceAddr | 0x01; //通知从机改为发送数据    
//  221   if (hw_wait('T',MoudleNum))               //等待一个字节数据传送完成  
//  222   {
//  223     return 1;                       //没有传送成功,读一个字节失败 
//  224   }
//  225   if (hw_wait('A',MoudleNum))               //等待从机应答信号  
//  226   {
//  227     return 1;                      //没有等到应答信号,读一个字节失败
//  228   }
//  229   I2C_C1_REG(I2Cx[I2Cn]) &= 0xef;           //TX = 0,MCU设置为接收模式    
//  230   *Data = I2C_D_REG(I2Cx[I2Cn]);            //读出IIC1D,准备接收数据   
//  231   if (hw_wait('T',MoudleNum))              //等待一个字节数据传送完成  
//  232   {  
//  233     return 1;                      //没有传送成功,读一个字节失败  
//  234   }
//  235   hw_send_signal('O',MoudleNum);           //发送停止信号    
//  236   *Data = I2C_D_REG(I2Cx[I2Cn]);            //读出接收到的一个数据    
//  237 
//  238   return 0;                          //正确接收到一个字节数据
//  239 }
//  240 */
//  241 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  242 uint8 i2c_readaddr(I2Cn i2cn, uint8 SlaveID, uint8 Addr)
//  243 {
i2c_readaddr:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
//  244     uint8 result;
//  245     /* send start signal */
//  246     i2c_start(i2cn);
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.N    R0,??DataTable3_3
        LDR      R0,[R0, R4, LSL #+2]
        LDRB     R0,[R0, #+2]
        ORRS     R0,R0,#0x10
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.N    R1,??DataTable3_3
        LDR      R1,[R1, R4, LSL #+2]
        STRB     R0,[R1, #+2]
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.N    R0,??DataTable3_3
        LDR      R0,[R0, R4, LSL #+2]
        LDRB     R0,[R0, #+2]
        ORRS     R0,R0,#0x20
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.N    R1,??DataTable3_3
        LDR      R1,[R1, R4, LSL #+2]
        STRB     R0,[R1, #+2]
//  247     /* send ID with W/R bit */
//  248     //i2c_set_tx(i2cn);//设置为主机写从机读模式
//  249     i2c_write(i2cn, ( SlaveID << 1 ) | I2C_MWSR);
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.N    R0,??DataTable3_3
        LDR      R0,[R0, R4, LSL #+2]
        LSLS     R1,R5,#+1
        STRB     R1,[R0, #+4]
//  250     LPLD_I2C_WaitAck(i2cn,1);
        MOVS     R1,#+1
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LPLD_I2C_WaitAck
//  251 
//  252     /* Write Register Address */
//  253     //i2c_set_tx(i2cn);//设置为主机写从机读模式
//  254     i2c_write(i2cn, Addr);
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.N    R0,??DataTable3_3
        LDR      R0,[R0, R4, LSL #+2]
        STRB     R6,[R0, #+4]
//  255     LPLD_I2C_WaitAck(i2cn,1);
        MOVS     R1,#+1
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LPLD_I2C_WaitAck
//  256     
//  257     /* Do a repeated start */
//  258     i2c_restart(i2cn);
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.N    R0,??DataTable3_3
        LDR      R0,[R0, R4, LSL #+2]
        LDRB     R0,[R0, #+2]
        ORRS     R0,R0,#0x4
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.N    R1,??DataTable3_3
        LDR      R1,[R1, R4, LSL #+2]
        STRB     R0,[R1, #+2]
//  259 
//  260     /* Send Slave Address */
//  261     //i2c_set_tx(i2cn);//设置为主机写从机读模式
//  262     i2c_write(i2cn, ( SlaveID << 1) | I2C_MRSW );
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.N    R0,??DataTable3_3
        LDR      R0,[R0, R4, LSL #+2]
        LSLS     R1,R5,#+1
        ORRS     R1,R1,#0x1
        STRB     R1,[R0, #+4]
//  263     LPLD_I2C_WaitAck(i2cn,1);
        MOVS     R1,#+1
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LPLD_I2C_WaitAck
//  264     
//  265     /* Put in Rx Mode */
//  266     i2c_set_rx(i2cn);//设置为主机读从机写模式
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.N    R0,??DataTable3_3
        LDR      R0,[R0, R4, LSL #+2]
        LDRB     R0,[R0, #+2]
        ANDS     R0,R0,#0xEF
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.N    R1,??DataTable3_3
        LDR      R1,[R1, R4, LSL #+2]
        STRB     R0,[R1, #+2]
//  267     LPLD_I2C_WaitAck(i2cn,0);
        MOVS     R1,#+0
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LPLD_I2C_WaitAck
//  268 
//  269     /* Turn off ACK since this is second to last byte being read*/
//  270     //i2c_dis_ack(i2cn); //不应答
//  271 
//  272     /* Dummy read 虚假读取*/
//  273     result = I2C_D_REG(I2Cx[i2cn]);
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.N    R0,??DataTable3_3
        LDR      R0,[R0, R4, LSL #+2]
        LDRB     R5,[R0, #+4]
//  274     LPLD_I2C_WaitAck(i2cn,1);
        MOVS     R1,#+1
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LPLD_I2C_WaitAck
//  275     
//  276     /* Send stop since about to read last byte */
//  277     i2c_stop(i2cn);
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.N    R0,??DataTable3_3
        LDR      R0,[R0, R4, LSL #+2]
        LDRB     R0,[R0, #+2]
        ANDS     R0,R0,#0xDF
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.N    R1,??DataTable3_3
        LDR      R1,[R1, R4, LSL #+2]
        STRB     R0,[R1, #+2]
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.N    R0,??DataTable3_3
        LDR      R0,[R0, R4, LSL #+2]
        LDRB     R0,[R0, #+2]
        ANDS     R0,R0,#0xEF
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.N    R1,??DataTable3_3
        LDR      R1,[R1, R4, LSL #+2]
        STRB     R0,[R1, #+2]
//  278 
//  279     /* Read byte */
//  280     result = I2C_D_REG(I2Cx[i2cn]);
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.N    R0,??DataTable3_3
        LDR      R0,[R0, R4, LSL #+2]
        LDRB     R0,[R0, #+4]
        MOVS     R5,R0
//  281 
//  282     return (uint8)result;
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R4-R6,PC}       ;; return
//  283 }
//  284 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  285 void i2c_writeaddr(I2Cn i2cn, uint8 SlaveID, uint8 Addr, uint8 Data)
//  286 {
i2c_writeaddr:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R2
        MOVS     R6,R3
//  287     
//  288     
//  289     /* send start signal */
//  290     i2c_start(i2cn);
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.N    R0,??DataTable3_3
        LDR      R0,[R0, R4, LSL #+2]
        LDRB     R0,[R0, #+2]
        ORRS     R0,R0,#0x10
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.N    R2,??DataTable3_3
        LDR      R2,[R2, R4, LSL #+2]
        STRB     R0,[R2, #+2]
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.N    R0,??DataTable3_3
        LDR      R0,[R0, R4, LSL #+2]
        LDRB     R0,[R0, #+2]
        ORRS     R0,R0,#0x20
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.N    R2,??DataTable3_3
        LDR      R2,[R2, R4, LSL #+2]
        STRB     R0,[R2, #+2]
//  291     /* send ID with W/R bit */
//  292     //i2c_set_tx(i2cn);//设置为主机写从机读模式
//  293     i2c_write(i2cn, ( SlaveID << 1 ) | I2C_MWSR);
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.N    R0,??DataTable3_3
        LDR      R0,[R0, R4, LSL #+2]
        LSLS     R1,R1,#+1
        STRB     R1,[R0, #+4]
//  294     LPLD_I2C_WaitAck(i2cn,1);                        //等待应答信号
        MOVS     R1,#+1
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LPLD_I2C_WaitAck
//  295     
//  296     //i2c_set_tx(i2cn);//设置为主机写从机读模式
//  297     i2c_write(i2cn,Addr);                       //写访问地址
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.N    R0,??DataTable3_3
        LDR      R0,[R0, R4, LSL #+2]
        STRB     R5,[R0, #+4]
//  298     LPLD_I2C_WaitAck(i2cn,1);                        //等待应答信号
        MOVS     R1,#+1
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LPLD_I2C_WaitAck
//  299 
//  300     //i2c_set_tx(i2cn);//设置为主机写从机读模式
//  301     i2c_write(i2cn,Data);                       //写数据
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.N    R0,??DataTable3_3
        LDR      R0,[R0, R4, LSL #+2]
        STRB     R6,[R0, #+4]
//  302     LPLD_I2C_WaitAck(i2cn,1);
        MOVS     R1,#+1
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LPLD_I2C_WaitAck
//  303 
//  304     i2c_stop(i2cn);
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.N    R0,??DataTable3_3
        LDR      R0,[R0, R4, LSL #+2]
        LDRB     R0,[R0, #+2]
        ANDS     R0,R0,#0xDF
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.N    R1,??DataTable3_3
        LDR      R1,[R1, R4, LSL #+2]
        STRB     R0,[R1, #+2]
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.N    R0,??DataTable3_3
        LDR      R0,[R0, R4, LSL #+2]
        LDRB     R0,[R0, #+2]
        ANDS     R0,R0,#0xEF
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.N    R1,??DataTable3_3
        LDR      R1,[R1, R4, LSL #+2]
        STRB     R0,[R1, #+2]
//  305 
//  306     i2c_pause();                                        //延时太短的话，可能写出错
        BL       i2c_pause
//  307 }
        POP      {R4-R6,PC}       ;; return
//  308 
//  309 /*************************************************************************
//  310 *                             野火嵌入式开发工作室
//  311 *
//  312 *  函数名称：i2c_pause
//  313 *  功能说明：延时，I2C读写后，需要延时一下
//  314 *  参数说明：无
//  315 *  函数返回：无
//  316 *  修改时间：2012-1-20
//  317 *  备    注：在官方基础上增大延时数
//  318 *************************************************************************/

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//  319 void i2c_pause(void)
//  320 {
//  321     uint16 n;
//  322     for(n = 1; n < 25000; n++)      //注意，这个数据太小，会导致读取错误。
i2c_pause:
        MOVS     R0,#+1
        B.N      ??i2c_pause_0
//  323     {
//  324         asm("nop");
??i2c_pause_1:
        nop
//  325     }
        ADDS     R0,R0,#+1
??i2c_pause_0:
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        MOVW     R1,#+25000
        CMP      R0,R1
        BLT.N    ??i2c_pause_1
//  326 }
        BX       LR               ;; return
//  327 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  328 void LPLD_I2C_WaitAck(I2Cn i2cn,uint8_t is_wait)
//  329 {
//  330   uint16_t time_out;
//  331   if(is_wait)
LPLD_I2C_WaitAck:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+0
        BNE.N    ??LPLD_I2C_WaitAck_0
//  332   {
//  333       while(!(I2C_S_REG(I2Cx[i2cn]) & I2C_S_IICIF_MASK))
//  334       {
//  335         if(time_out>60000) //如果等待超时，强行退出
//  336           break;
//  337         else time_out++;
//  338       }
//  339       I2C_S_REG(I2Cx[i2cn]) |= I2C_S_IICIF_MASK;
//  340   }
//  341   else
//  342   {
//  343     //关闭I2C的ACK
//  344     I2C_C1_REG(I2Cx[i2cn]) |= I2C_C1_TXAK_MASK; 
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R1,??DataTable3_3
        LDR      R1,[R1, R0, LSL #+2]
        LDRB     R1,[R1, #+2]
        ORRS     R1,R1,#0x8
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R2,??DataTable3_3
        LDR      R0,[R2, R0, LSL #+2]
        STRB     R1,[R0, #+2]
//  345   }
//  346 }
??LPLD_I2C_WaitAck_1:
        BX       LR               ;; return
??LPLD_I2C_WaitAck_2:
        ADDS     R2,R2,#+1
??LPLD_I2C_WaitAck_0:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R1,??DataTable3_3
        LDR      R1,[R1, R0, LSL #+2]
        LDRB     R1,[R1, #+3]
        LSLS     R1,R1,#+30
        BMI.N    ??LPLD_I2C_WaitAck_3
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        MOVW     R1,#+60001
        CMP      R2,R1
        BLT.N    ??LPLD_I2C_WaitAck_2
??LPLD_I2C_WaitAck_3:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R1,??DataTable3_3
        LDR      R1,[R1, R0, LSL #+2]
        LDRB     R1,[R1, #+3]
        ORRS     R1,R1,#0x2
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R2,??DataTable3_3
        LDR      R0,[R2, R0, LSL #+2]
        STRB     R1,[R0, #+3]
        B.N      ??LPLD_I2C_WaitAck_1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3:
        DC32     0x40048034

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_1:
        DC32     0x4004a000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_2:
        DC32     0x4004a004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_3:
        DC32     I2Cx

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_4:
        DC32     0x40066002

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_5:
        DC32     0x4004b028

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_6:
        DC32     0x4004b02c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_7:
        DC32     0x40067002

        SECTION `.iar_vfe_header`:DATA:REORDER:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
// 
//   8 bytes in section .data
// 820 bytes in section .text
// 
// 820 bytes of CODE memory
//   8 bytes of DATA memory
//
//Errors: none
//Warnings: none
