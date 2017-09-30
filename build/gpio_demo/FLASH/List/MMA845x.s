///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.60.1.5097/W32 for ARM     15/Aug/2015  19:53:05 /
// Copyright 1999-2013 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  C:\Users\Administrator\Desktop\MPU60508.12\src\drivers\ /
//                    MMA845x\MMA845x.c                                       /
//    Command line =  C:\Users\Administrator\Desktop\MPU60508.12\src\drivers\ /
//                    MMA845x\MMA845x.c -lCN C:\Users\Administrator\Desktop\M /
//                    PU60508.12\build\gpio_demo\FLASH\List\ -lB              /
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
//                    emo\FLASH\List\MMA845x.s                                /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN IIC_start
        EXTERN IIC_stop
        EXTERN gpio_init
        EXTERN read_byte
        EXTERN send_byte
        EXTERN uartPrintf

        PUBLIC Get845xX
        PUBLIC Get845xY
        PUBLIC Get845xZ
        PUBLIC Get845xZ_14bit
        PUBLIC MMA845x_init
        PUBLIC MMA845x_readbyte
        PUBLIC MMA845x_writebyte

// C:\Users\Administrator\Desktop\MPU60508.12\src\drivers\MMA845x\MMA845x.c
//    1 /*
//    2 ************************************************************************
//    3 *                北京邮电大学 K60 学习例程                                        
//    4 * 文件名 :[MMA845x.c] 
//    5 * 描  述 ：MMA845x函数定义
//    6 *设计改进：snowwolf
//    7 *  Email ：snowwolf2012@qq.com
//    8 * 说  明 ：MMA845x函数定义
//    9 ***********************************************************************
//   10 */
//   11 
//   12 #include "MMA845x.h"
//   13 
//   14 #ifdef K60IIC
//   15 
//   16 /*************************************************************************
//   17 *  函数名称：MMA845x_Init
//   18 *  功能说明：初始化8451
//   19 *  参数说明：无
//   20 *  函数返回：无
//   21 *  修改时间：2012-2-2   已测试
//   22 *  备    注：
//   23 *************************************************************************/
//   24 void MMA845x_Init(void)
//   25 {
//   26     char v = 0;
//   27     I2C_init(MMA845xI2C);                                 //初始化I2C0
//   28        
//   29     MMA845x_WRITE_BYTE(CTRL_REG1,ASLP_RATE_20MS+DATA_RATE_5MS);	
//   30     MMA845x_WRITE_BYTE(XYZ_DATA_CFG_REG, FULL_SCALE_2G); //2G
//   31     MMA845x_WRITE_BYTE(CTRL_REG1, ACTIVE_MASK);          //激活状态
//   32     
//   33     v= MMA845x_READ_BYTE(WHO_AM_I_REG);
//   34     if((v == MMA8451Q_ID)||(v == MMA8452Q_ID)||(v == MMA8453Q_ID)) 
//   35     {
//   36        uartPrintf("\n8451  init OK!");    
//   37     }
//   38     else
//   39     {
//   40        uartPrintf("\n8451  init Failed!");  	
//   41     }
//   42     /* //测试寄存器是否写入
//   43     //MMA845x_WRITE_BYTE(CTRL_REG1,0xBA);
//   44     v= MMA845x_READ_BYTE(CTRL_REG1);
//   45     uartPrintf("\ndata = 0x%X\n",v);  
//   46     v= MMA845x_READ_BYTE(XYZ_DATA_CFG_REG);
//   47     uartPrintf("\ndata = 0x%X\n",v);
//   48     */
//   49 }
//   50 
//   51 /*************************************************************************
//   52 *  函数名称：MMA845x_readbyte
//   53 *  功能说明：从特定地址读取一个值
//   54 *  参数说明：无
//   55 *  函数返回：无
//   56 *  修改时间：2012-2-2   已测试
//   57 *  备    注：
//   58 *************************************************************************/
//   59 unsigned char MMA845x_readbyte(unsigned char address)
//   60 {
//   61     return I2C_ReadAddr(MMA845xI2C,MMA845x_IIC_ADDRESS,address);
//   62 }
//   63 
//   64 
//   65 /*************************************************************************
//   66 *  函数名称：MMA845x_readbyte
//   67 *  功能说明：从特定地址写入一个值
//   68 *  参数说明：无
//   69 *  函数返回：无
//   70 *  修改时间：2012-2-2   已测试
//   71 *  备    注：
//   72 *************************************************************************/
//   73 void MMA845x_writebyte(unsigned char address, unsigned char thedata)
//   74 {
//   75     I2C_WriteAddr(MMA845xI2C,MMA845x_IIC_ADDRESS,address,thedata);
//   76 }
//   77 
//   78 /*************************************************************************
//   79 *  函数名称：Get845xX_xbit
//   80 *  功能说明：读取一个值
//   81 *  参数说明：u8 N  取平均的次数
//   82 *  函数返回：无
//   83 *  修改时间：2012-2-2   已测试
//   84 *  备    注：经测试读取一次的时间是0.11ms,建议每ms读取5次求平均
//   85 *************************************************************************/
//   86 u8 Get845xX_8bit(u8 N) 
//   87 {
//   88     u16 tmp = 0;
//   89     u8 i = 0;
//   90     
//   91     for(i = 0; i < N; i++)
//   92         tmp += MMA845x_READ_BYTE(OUT_X_MSB_REG); 
//   93     tmp = tmp / N;
//   94     
//   95     return (u8)tmp;
//   96 }
//   97 
//   98 u16 Get845xX_10bit(u8 N) 
//   99 {
//  100     u32 tmp = 0;
//  101     u8 i = 0;
//  102     u16 xm = 0;
//  103     u16 xl = 0;
//  104     for(i = 0; i < N; i++)
//  105     {
//  106       xm = MMA845x_READ_BYTE(OUT_X_MSB_REG); 
//  107       xl = MMA845x_READ_BYTE(OUT_X_LSB_REG);
//  108       
//  109       tmp += (   ((((xm<<8) & 0xFF00  ) |  (xl&0x00FF)) >> 6) & 0x03FF);
//  110     }
//  111     tmp = tmp / N;
//  112     return (u16)tmp;
//  113 }
//  114 
//  115 
//  116 u16 Get845xX_12bit(u8 N) 
//  117 {
//  118     u32 tmp = 0;
//  119     u8 i = 0;
//  120     u16 xm = 0;
//  121     u16 xl = 0;
//  122     for(i = 0; i < N; i++)
//  123     {
//  124       xm = MMA845x_READ_BYTE(OUT_X_MSB_REG); 
//  125       xl = MMA845x_READ_BYTE(OUT_X_LSB_REG);
//  126       
//  127       tmp += (   ((((xm<<8) & 0xFF00  ) |  (xl&0x00FF)) >> 4) & 0x0FFF);
//  128     }
//  129     tmp = tmp / N;
//  130     return (u16)tmp;
//  131 }
//  132 
//  133 u16 Get845xX_14bit(u8 N) 
//  134 {
//  135     u32 tmp = 0;
//  136     u8 i = 0;
//  137     u16 xm = 0;
//  138     u16 xl = 0;
//  139     for(i = 0; i < N; i++)
//  140     {
//  141       xm = MMA845x_READ_BYTE(OUT_X_MSB_REG); 
//  142       xl = MMA845x_READ_BYTE(OUT_X_LSB_REG);
//  143       
//  144       tmp += (   ((((xm<<8) & 0xFF00  ) |  (xl&0x00FF)) >> 2) & 0x3FFF);
//  145     }
//  146     tmp = tmp / N;
//  147     return (u16)tmp;
//  148 }
//  149 
//  150 u8 Get845xY_8bit(u8 N) 
//  151 {
//  152     u16 tmp = 0;
//  153     u8 i = 0;
//  154     
//  155     for(i = 0; i < N; i++)
//  156         tmp += MMA845x_READ_BYTE(OUT_Y_MSB_REG); 
//  157     tmp = tmp / N;
//  158     
//  159     return (u8)tmp;
//  160 }
//  161 
//  162 u16 Get845xY_10bit(u8 N) 
//  163 {
//  164     u32 tmp = 0;
//  165     u8 i = 0;
//  166     u16 ym = 0;
//  167     u16 yl = 0;
//  168     for(i = 0; i < N; i++)
//  169     {
//  170       ym = MMA845x_READ_BYTE(OUT_Y_MSB_REG); 
//  171       yl = MMA845x_READ_BYTE(OUT_Y_LSB_REG);
//  172       
//  173       tmp += (   ((((ym<<8) & 0xFF00  ) |  (yl&0x00FF)) >> 6) & 0x03FF);
//  174     }
//  175     tmp = tmp / N;
//  176     return (u16)tmp;
//  177 }
//  178 
//  179 
//  180 u16 Get845xY_12bit(u8 N) 
//  181 {
//  182     u32 tmp = 0;
//  183     u8 i = 0;
//  184     u16 ym = 0;
//  185     u16 yl = 0;
//  186     for(i = 0; i < N; i++)
//  187     {
//  188       ym = MMA845x_READ_BYTE(OUT_Y_MSB_REG); 
//  189       yl = MMA845x_READ_BYTE(OUT_Y_LSB_REG);
//  190       
//  191       tmp += (   ((((ym<<8) & 0xFF00  ) |  (yl&0x00FF)) >> 4) & 0x0FFF);
//  192     }
//  193     tmp = tmp / N;
//  194     return (u16)tmp;
//  195 }
//  196 
//  197 u16 Get845xY_14bit(u8 N) 
//  198 {
//  199     u32 tmp = 0;
//  200     u8 i = 0;
//  201     u16 ym = 0;
//  202     u16 yl = 0;
//  203     for(i = 0; i < N; i++)
//  204     {
//  205       ym = MMA845x_READ_BYTE(OUT_Y_MSB_REG); 
//  206       yl = MMA845x_READ_BYTE(OUT_Y_LSB_REG);
//  207       
//  208       tmp += (   ((((ym<<8) & 0xFF00  ) |  (yl&0x00FF)) >> 2) & 0x3FFF);
//  209     }
//  210     tmp = tmp / N;
//  211     return (u16)tmp;
//  212 }
//  213 u8 Get845xZ_8bit(u8 N) 
//  214 {
//  215     u16 tmp = 0;
//  216     u8 i = 0;
//  217     
//  218     for(i = 0; i < N; i++)
//  219         tmp += MMA845x_READ_BYTE(OUT_Z_MSB_REG); 
//  220     tmp = tmp / N;
//  221     
//  222     return (u8)tmp;
//  223 }
//  224 
//  225 u16 Get845xZ_10bit(u8 N) 
//  226 {
//  227     u32 tmp = 0;
//  228     u8 i = 0;
//  229     u16 zm = 0;
//  230     u16 zl = 0;
//  231     for(i = 0; i < N; i++)
//  232     {
//  233       zm = MMA845x_READ_BYTE(OUT_Z_MSB_REG); 
//  234       zl = MMA845x_READ_BYTE(OUT_Z_LSB_REG);
//  235       
//  236       tmp += (   ((((zm<<8) & 0xFF00  ) |  (zl&0x00FF)) >> 6) & 0x03FF);
//  237     }
//  238     tmp = tmp / N;
//  239     return (u16)tmp;
//  240 }
//  241 
//  242 
//  243 u16 Get845xZ_12bit(u8 N) 
//  244 {
//  245     u32 tmp = 0;
//  246     u8 i = 0;
//  247     u16 zm = 0;
//  248     u16 zl = 0;
//  249     for(i = 0; i < N; i++)
//  250     {
//  251       zm = MMA845x_READ_BYTE(OUT_Z_MSB_REG); 
//  252       zl = MMA845x_READ_BYTE(OUT_Z_LSB_REG);
//  253       
//  254       tmp += (   ((((zm<<8) & 0xFF00  ) |  (zl&0x00FF)) >> 4) & 0x0FFF);
//  255     }
//  256     tmp = tmp / N;
//  257     return (u16)tmp;
//  258 }
//  259 
//  260 u16 Get845xZ_14bit(u8 N) 
//  261 {
//  262     u32 tmp = 0;
//  263     u8 i = 0;
//  264     u16 zm = 0;
//  265     u16 zl = 0;
//  266     for(i = 0; i < N; i++)
//  267     {
//  268       zm = MMA845x_READ_BYTE(OUT_Z_MSB_REG); 
//  269       zl = MMA845x_READ_BYTE(OUT_Z_LSB_REG);
//  270       
//  271       tmp += (   ((((zm<<8) & 0xFF00  ) |  (zl&0x00FF)) >> 2) & 0x3FFF);
//  272     }
//  273     tmp = tmp / N;
//  274     return (u16)tmp;
//  275 }
//  276 
//  277 
//  278 #endif
//  279 
//  280 #ifdef   IOIIC            // 模拟IIC
//  281 #include "ioi2c.h"
//  282 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  283 unsigned char MMA845x_readbyte(unsigned char address)
//  284 {
MMA845x_readbyte:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
//  285         unsigned char ret = 100;
        MOVS     R5,#+100
//  286 	IIC_start();		//启动
        BL       IIC_start
//  287 	send_byte(MMA845x_IIC_ADDRESS);	//写入设备ID及写信号
        MOVS     R0,#+56
        BL       send_byte
//  288 	send_byte(address);	//X地址
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       send_byte
//  289 	IIC_start();		//重新发送开始
        BL       IIC_start
//  290 	send_byte(MMA845x_IIC_ADDRESS+1);	//写入设备ID及读信
        MOVS     R0,#+57
        BL       send_byte
//  291 	ret = read_byte();	//读取一字节
        BL       read_byte
        MOVS     R5,R0
//  292 	IIC_stop();
        BL       IIC_stop
//  293 	return ret;
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R1,R4,R5,PC}    ;; return
//  294 }
//  295 
//  296 //写入

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  297 void MMA845x_writebyte(unsigned char address, unsigned char thedata)
//  298 {
MMA845x_writebyte:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
//  299 	IIC_start();		//启动
        BL       IIC_start
//  300 	send_byte(MMA845x_IIC_ADDRESS);	//写入设备ID及写信号
        MOVS     R0,#+56
        BL       send_byte
//  301 	send_byte(address);	//X地址
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       send_byte
//  302 	send_byte(thedata);	//写入设备ID及读信
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       send_byte
//  303 	IIC_stop();
        BL       IIC_stop
//  304 }
        POP      {R0,R4,R5,PC}    ;; return
//  305 
//  306 //初始化
//  307 //初始化为指定模式

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//  308 void MMA845x_init()
//  309 {	
MMA845x_init:
        PUSH     {R7,LR}
//  310         byte v;
//  311         gpio_init(PORTB,0,GPO,1);
        MOVS     R3,#+1
        MOVS     R2,#+1
        MOVS     R1,#+0
        MOVS     R0,#+1
        BL       gpio_init
//  312         gpio_init(PORTB,1,GPO,1);
        MOVS     R3,#+1
        MOVS     R2,#+1
        MOVS     R1,#+1
        MOVS     R0,#+1
        BL       gpio_init
//  313 	
//  314 	MMA845x_writebyte(CTRL_REG1,ASLP_RATE_20MS+DATA_RATE_5MS);	
        MOVS     R1,#+16
        MOVS     R0,#+42
        BL       MMA845x_writebyte
//  315 	ioi2cnops(); ioi2cnops(); 
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
//  316 	MMA845x_writebyte(XYZ_DATA_CFG_REG, FULL_SCALE_2G); //2G
        MOVS     R1,#+0
        MOVS     R0,#+14
        BL       MMA845x_writebyte
//  317 	ioi2cnops(); ioi2cnops(); 
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
//  318 	MMA845x_writebyte(CTRL_REG1, ACTIVE_MASK);          //激活状态
        MOVS     R1,#+1
        MOVS     R0,#+42
        BL       MMA845x_writebyte
//  319 	ioi2cnops(); ioi2cnops(); 
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
//  320 	
//  321 	v= MMA845x_readbyte(WHO_AM_I_REG);
        MOVS     R0,#+13
        BL       MMA845x_readbyte
        MOVS     R1,R0
//  322         if((v == MMA8451Q_ID)||(v == MMA8452Q_ID)||(v == MMA8453Q_ID)) 
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+26
        BEQ.N    ??MMA845x_init_0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+42
        BEQ.N    ??MMA845x_init_0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+58
        BNE.N    ??MMA845x_init_1
//  323         {
//  324           uartPrintf("\nMMA845x init OK!\nv:%d\n",v);
??MMA845x_init_0:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.N    R0,??DataTable0
        BL       uartPrintf
        B.N      ??MMA845x_init_2
//  325         }
//  326         else
//  327         {
//  328           uartPrintf("\nMMA845x init Failed!\nV:%d\n",v); 
??MMA845x_init_1:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.N    R0,??DataTable0_1
        BL       uartPrintf
//  329         }
//  330 }
??MMA845x_init_2:
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable0:
        DC32     `?<Constant "\\nMMA845x init OK!\\nv:%d\\n">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable0_1:
        DC32     `?<Constant "\\nMMA845x init Failed!...">`
//  331 
//  332 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  333 unsigned char Get845xX() 
//  334 {
Get845xX:
        PUSH     {R7,LR}
//  335     return MMA845x_readbyte(OUT_X_MSB_REG); 
        MOVS     R0,#+1
        BL       MMA845x_readbyte
        POP      {R1,PC}          ;; return
//  336 }

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  337 unsigned char Get845xY() 
//  338 {
Get845xY:
        PUSH     {R7,LR}
//  339     return MMA845x_readbyte(OUT_Y_MSB_REG); 
        MOVS     R0,#+3
        BL       MMA845x_readbyte
        POP      {R1,PC}          ;; return
//  340 }

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  341 unsigned char Get845xZ() 
//  342 {
Get845xZ:
        PUSH     {R7,LR}
//  343     return MMA845x_readbyte(OUT_Z_MSB_REG); 
        MOVS     R0,#+5
        BL       MMA845x_readbyte
        POP      {R1,PC}          ;; return
//  344 }
//  345 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  346 u16 Get845xZ_14bit() 
//  347 {
Get845xZ_14bit:
        PUSH     {R4-R6,LR}
//  348     u32 tmp = 0;
        MOVS     R4,#+0
//  349   //  u8 i = 0;
//  350     u16 zm = 0;
        MOVS     R5,#+0
//  351     u16 zl = 0;
        MOVS     R6,#+0
//  352 
//  353     zm = MMA845x_readbyte(OUT_Z_MSB_REG); 
        MOVS     R0,#+5
        BL       MMA845x_readbyte
        MOVS     R5,R0
//  354     zl = MMA845x_readbyte(OUT_Z_LSB_REG);
        MOVS     R0,#+6
        BL       MMA845x_readbyte
        MOVS     R6,R0
//  355       
//  356     tmp = (  ((((zm<<8) & 0xFF00  ) |  (zl&0x00FF)) >> 2) & 0x3FFF);
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        UXTB     R0,R6            ;; ZeroExt  R0,R6,#+24,#+24
        ORRS     R0,R0,R5, LSL #+8
        ASRS     R0,R0,#+2
        LSLS     R0,R0,#+18       ;; ZeroExtS R0,R0,#+18,#+18
        LSRS     R0,R0,#+18
        MOVS     R4,R0
//  357     return (u16)tmp;
        MOVS     R0,R4
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        POP      {R4-R6,PC}       ;; return
//  358 }

        SECTION `.iar_vfe_header`:DATA:REORDER:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "\\nMMA845x init OK!\\nv:%d\\n">`:
        DATA
        DC8 "\012MMA845x init OK!\012v:%d\012"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "\\nMMA845x init Failed!...">`:
        DATA
        DC8 "\012MMA845x init Failed!\012V:%d\012"

        END
//  359 
//  360 #endif
// 
//  52 bytes in section .rodata
// 870 bytes in section .text
// 
// 870 bytes of CODE  memory
//  52 bytes of CONST memory
//
//Errors: none
//Warnings: none
