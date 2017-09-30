///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.30.1.53127/W32 for ARM    22/Dec/2013  00:56:38 /
// Copyright 1999-2011 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  C:\Users\Administrator\Desktop\杨向军的K60模板_只有基本 /
//                    IO操作\src\drivers\MMA845x\MMA845x.c                    /
//    Command line =  C:\Users\Administrator\Desktop\杨向军的K60模板_只有基本 /
//                    IO操作\src\drivers\MMA845x\MMA845x.c -lCN               /
//                    C:\Users\Administrator\Desktop\杨向军的K60模板_只有基本 /
//                    IO操作\build\gpio_demo\RAM\List\ -lB                    /
//                    C:\Users\Administrator\Desktop\杨向军的K60模板_只有基本 /
//                    IO操作\build\gpio_demo\RAM\List\ -o                     /
//                    C:\Users\Administrator\Desktop\杨向军的K60模板_只有基本 /
//                    IO操作\build\gpio_demo\RAM\Obj\ --no_cse --no_unroll    /
//                    --no_inline --no_code_motion --no_tbaa --no_clustering  /
//                    --no_scheduling --debug --endian=little                 /
//                    --cpu=Cortex-M4 -e --fpu=None --dlib_config             /
//                    "E:\Program Files (x86)\IAR Systems\Embedded Workbench  /
//                    6.0\arm\INC\c\DLib_Config_Normal.h" -I                  /
//                    C:\Users\Administrator\Desktop\杨向军的K60模板_只有基本 /
//                    IO操作\build\gpio_demo\..\ -I                           /
//                    C:\Users\Administrator\Desktop\杨向军的K60模板_只有基本 /
//                    IO操作\build\gpio_demo\..\..\src\common\ -I             /
//                    C:\Users\Administrator\Desktop\杨向军的K60模板_只有基本 /
//                    IO操作\build\gpio_demo\..\..\src\cpu\ -I                /
//                    C:\Users\Administrator\Desktop\杨向军的K60模板_只有基本 /
//                    IO操作\build\gpio_demo\..\..\src\drivers\ -I            /
//                    C:\Users\Administrator\Desktop\杨向军的K60模板_只有基本 /
//                    IO操作\build\gpio_demo\..\..\src\drivers\gpio\ -I       /
//                    C:\Users\Administrator\Desktop\杨向军的K60模板_只有基本 /
//                    IO操作\build\gpio_demo\..\..\src\drivers\wdog\ -I       /
//                    C:\Users\Administrator\Desktop\杨向军的K60模板_只有基本 /
//                    IO操作\build\gpio_demo\..\..\src\drivers\mcg\ -I        /
//                    C:\Users\Administrator\Desktop\杨向军的K60模板_只有基本 /
//                    IO操作\build\gpio_demo\..\..\src\drivers\uart\ -I       /
//                    C:\Users\Administrator\Desktop\杨向军的K60模板_只有基本 /
//                    IO操作\build\gpio_demo\..\..\src\drivers\lptmr\ -I      /
//                    C:\Users\Administrator\Desktop\杨向军的K60模板_只有基本 /
//                    IO操作\build\gpio_demo\..\..\src\drivers\fun\ -I        /
//                    C:\Users\Administrator\Desktop\杨向军的K60模板_只有基本 /
//                    IO操作\build\gpio_demo\..\..\src\drivers\led\ -I        /
//                    C:\Users\Administrator\Desktop\杨向军的K60模板_只有基本 /
//                    IO操作\build\gpio_demo\..\..\src\drivers\i2c\ -I        /
//                    C:\Users\Administrator\Desktop\杨向军的K60模板_只有基本 /
//                    IO操作\build\gpio_demo\..\..\src\drivers\MMA845x\ -I    /
//                    C:\Users\Administrator\Desktop\杨向军的K60模板_只有基本 /
//                    IO操作\build\gpio_demo\..\..\src\drivers\motor\ -I      /
//                    C:\Users\Administrator\Desktop\杨向军的K60模板_只有基本 /
//                    IO操作\build\gpio_demo\..\..\src\drivers\pit\ -I        /
//                    C:\Users\Administrator\Desktop\杨向军的K60模板_只有基本 /
//                    IO操作\build\gpio_demo\..\..\src\drivers\steer\ -I      /
//                    C:\Users\Administrator\Desktop\杨向军的K60模板_只有基本 /
//                    IO操作\build\gpio_demo\..\..\src\drivers\ftm\ -I        /
//                    C:\Users\Administrator\Desktop\杨向军的K60模板_只有基本 /
//                    IO操作\build\gpio_demo\..\..\src\drivers\DIPswitch\ -I  /
//                    C:\Users\Administrator\Desktop\杨向军的K60模板_只有基本 /
//                    IO操作\build\gpio_demo\..\..\src\drivers\dma\ -I        /
//                    C:\Users\Administrator\Desktop\杨向军的K60模板_只有基本 /
//                    IO操作\build\gpio_demo\..\..\src\platforms\ -I          /
//                    C:\Users\Administrator\Desktop\杨向军的K60模板_只有基本 /
//                    IO操作\build\gpio_demo\..\..\src\projects\ -I           /
//                    C:\Users\Administrator\Desktop\杨向军的K60模板_只有基本 /
//                    IO操作\build\gpio_demo\..\..\src\projects\gpio_demo\    /
//                    -Ol                                                     /
//    List file    =  C:\Users\Administrator\Desktop\杨向军的K60模板_只有基本 /
//                    IO操作\build\gpio_demo\RAM\List\MMA845x.s               /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME MMA845x

        #define SHT_PROGBITS 0x1

        EXTERN I2C_ReadAddr
        EXTERN I2C_WriteAddr
        EXTERN I2C_init
        EXTERN delayus
        EXTERN uartPrintf

        PUBLIC Get845xX_10bit
        PUBLIC Get845xX_12bit
        PUBLIC Get845xX_14bit
        PUBLIC Get845xX_8bit
        PUBLIC Get845xY_10bit
        PUBLIC Get845xY_12bit
        PUBLIC Get845xY_14bit
        PUBLIC Get845xY_8bit
        PUBLIC Get845xZ_10bit
        PUBLIC Get845xZ_12bit
        PUBLIC Get845xZ_14bit
        PUBLIC Get845xZ_8bit
        PUBLIC MMA845x_Init
        PUBLIC MMA845x_readbyte
        PUBLIC MMA845x_writebyte

// C:\Users\Administrator\Desktop\杨向军的K60模板_只有基本IO操作\src\drivers\MMA845x\MMA845x.c
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

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   24 void MMA845x_Init(void)
//   25 {
MMA845x_Init:
        PUSH     {R4,LR}
//   26     char v = 0;
        MOVS     R4,#+0
//   27     I2C_init(MMA845xI2C);                                 //初始化I2C0
        MOVS     R0,#+1
        BL       I2C_init
//   28        
//   29     MMA845x_WRITE_BYTE(CTRL_REG1,ASLP_RATE_20MS+DATA_RATE_5MS);	
        MOVS     R3,#+16
        MOVS     R2,#+42
        MOVS     R1,#+28
        MOVS     R0,#+1
        BL       I2C_WriteAddr
//   30     delayus(10);
        MOVS     R0,#+10
        BL       delayus
//   31     MMA845x_WRITE_BYTE(XYZ_DATA_CFG_REG, FULL_SCALE_2G); //2G
        MOVS     R3,#+0
        MOVS     R2,#+14
        MOVS     R1,#+28
        MOVS     R0,#+1
        BL       I2C_WriteAddr
//   32     delayus(10);
        MOVS     R0,#+10
        BL       delayus
//   33     MMA845x_WRITE_BYTE(CTRL_REG1, ACTIVE_MASK);          //激活状态
        MOVS     R3,#+1
        MOVS     R2,#+42
        MOVS     R1,#+28
        MOVS     R0,#+1
        BL       I2C_WriteAddr
//   34     delayus(10);
        MOVS     R0,#+10
        BL       delayus
//   35     v= MMA845x_READ_BYTE(WHO_AM_I_REG);
        MOVS     R2,#+13
        MOVS     R1,#+28
        MOVS     R0,#+1
        BL       I2C_ReadAddr
        MOVS     R4,R0
//   36     delayus(10);
        MOVS     R0,#+10
        BL       delayus
//   37     if((v == MMA8451Q_ID)||(v == MMA8452Q_ID)||(v == MMA8453Q_ID)) 
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+26
        BEQ.N    ??MMA845x_Init_0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+42
        BEQ.N    ??MMA845x_Init_0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+58
        BNE.N    ??MMA845x_Init_1
//   38     {
//   39        uartPrintf("\n8451  init OK!");    
??MMA845x_Init_0:
        LDR.N    R0,??DataTable0
        BL       uartPrintf
        B.N      ??MMA845x_Init_2
//   40     }
//   41     else
//   42     {
//   43        uartPrintf("\n8451  init Failed!");  	
??MMA845x_Init_1:
        LDR.N    R0,??DataTable0_1
        BL       uartPrintf
//   44     }
//   45     /* //测试寄存器是否写入
//   46     //MMA845x_WRITE_BYTE(CTRL_REG1,0xBA);
//   47     v= MMA845x_READ_BYTE(CTRL_REG1);
//   48     uartPrintf("\ndata = 0x%X\n",v);  
//   49     v= MMA845x_READ_BYTE(XYZ_DATA_CFG_REG);
//   50     uartPrintf("\ndata = 0x%X\n",v);
//   51     */
//   52 }
??MMA845x_Init_2:
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable0:
        DC32     `?<Constant "\\n8451  init OK!">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable0_1:
        DC32     `?<Constant "\\n8451  init Failed!">`
//   53 
//   54 /*************************************************************************
//   55 *  函数名称：MMA845x_readbyte
//   56 *  功能说明：从特定地址读取一个值
//   57 *  参数说明：无
//   58 *  函数返回：无
//   59 *  修改时间：2012-2-2   已测试
//   60 *  备    注：
//   61 *************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   62 unsigned char MMA845x_readbyte(unsigned char address)
//   63 {
MMA845x_readbyte:
        PUSH     {R7,LR}
//   64     return I2C_ReadAddr(MMA845xI2C,MMA845x_IIC_ADDRESS,address);
        MOVS     R2,R0
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,#+28
        MOVS     R0,#+1
        BL       I2C_ReadAddr
        POP      {R1,PC}          ;; return
//   65 }
//   66 
//   67 
//   68 /*************************************************************************
//   69 *  函数名称：MMA845x_readbyte
//   70 *  功能说明：从特定地址写入一个值
//   71 *  参数说明：无
//   72 *  函数返回：无
//   73 *  修改时间：2012-2-2   已测试
//   74 *  备    注：
//   75 *************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   76 void MMA845x_writebyte(unsigned char address, unsigned char thedata)
//   77 {
MMA845x_writebyte:
        PUSH     {R7,LR}
//   78     I2C_WriteAddr(MMA845xI2C,MMA845x_IIC_ADDRESS,address,thedata);
        MOVS     R3,R1
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        MOVS     R2,R0
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,#+28
        MOVS     R0,#+1
        BL       I2C_WriteAddr
//   79 }
        POP      {R0,PC}          ;; return
//   80 
//   81 /*************************************************************************
//   82 *  函数名称：Get845xX_xbit
//   83 *  功能说明：读取一个值
//   84 *  参数说明：u8 N  取平均的次数
//   85 *  函数返回：无
//   86 *  修改时间：2012-2-2   已测试
//   87 *  备    注：经测试读取一次的时间是0.11ms,建议每ms读取5次求平均
//   88 *************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   89 u8 Get845xX_8bit(u8 N) 
//   90 {
Get845xX_8bit:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
//   91     u16 tmp = 0;
        MOVS     R5,#+0
//   92     u8 i = 0;
        MOVS     R6,#+0
//   93     
//   94     for(i = 0; i < N; i++)
        MOVS     R0,#+0
        MOVS     R6,R0
        B.N      ??Get845xX_8bit_0
//   95         tmp += MMA845x_READ_BYTE(OUT_X_MSB_REG); 
??Get845xX_8bit_1:
        MOVS     R2,#+1
        MOVS     R1,#+28
        MOVS     R0,#+1
        BL       I2C_ReadAddr
        UXTAB    R5,R5,R0
        ADDS     R6,R6,#+1
??Get845xX_8bit_0:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R6,R4
        BCC.N    ??Get845xX_8bit_1
//   96     tmp = tmp / N;
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        SDIV     R5,R5,R4
//   97     
//   98     return (u8)tmp;
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R4-R6,PC}       ;; return
//   99 }
//  100 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  101 u16 Get845xX_10bit(u8 N) 
//  102 {
Get845xX_10bit:
        PUSH     {R3-R7,LR}
        MOVS     R4,R0
//  103     u32 tmp = 0;
        MOVS     R6,#+0
//  104     u8 i = 0;
        MOVS     R5,#+0
//  105     u16 xm = 0;
        MOVS     R7,#+0
//  106     u16 xl = 0;
        MOVS     R0,#+0
//  107     for(i = 0; i < N; i++)
        MOVS     R1,#+0
        MOVS     R5,R1
        B.N      ??Get845xX_10bit_0
//  108     {
//  109       xm = MMA845x_READ_BYTE(OUT_X_MSB_REG); 
??Get845xX_10bit_1:
        MOVS     R2,#+1
        MOVS     R1,#+28
        MOVS     R0,#+1
        BL       I2C_ReadAddr
        MOVS     R7,R0
//  110       xl = MMA845x_READ_BYTE(OUT_X_LSB_REG);
        MOVS     R2,#+2
        MOVS     R1,#+28
        MOVS     R0,#+1
        BL       I2C_ReadAddr
//  111       
//  112       tmp += (   ((((xm<<8) & 0xFF00  ) |  (xl&0x00FF)) >> 6) & 0x03FF);
        UXTH     R7,R7            ;; ZeroExt  R7,R7,#+16,#+16
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ORRS     R0,R0,R7, LSL #+8
        ASRS     R0,R0,#+6
        LSLS     R0,R0,#+22       ;; ZeroExtS R0,R0,#+22,#+22
        LSRS     R0,R0,#+22
        ADDS     R6,R0,R6
//  113     }
        ADDS     R5,R5,#+1
??Get845xX_10bit_0:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R5,R4
        BCC.N    ??Get845xX_10bit_1
//  114     tmp = tmp / N;
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        UDIV     R6,R6,R4
//  115     return (u16)tmp;
        MOVS     R0,R6
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        POP      {R1,R4-R7,PC}    ;; return
//  116 }
//  117 
//  118 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  119 u16 Get845xX_12bit(u8 N) 
//  120 {
Get845xX_12bit:
        PUSH     {R3-R7,LR}
        MOVS     R4,R0
//  121     u32 tmp = 0;
        MOVS     R6,#+0
//  122     u8 i = 0;
        MOVS     R5,#+0
//  123     u16 xm = 0;
        MOVS     R7,#+0
//  124     u16 xl = 0;
        MOVS     R0,#+0
//  125     for(i = 0; i < N; i++)
        MOVS     R1,#+0
        MOVS     R5,R1
        B.N      ??Get845xX_12bit_0
//  126     {
//  127       xm = MMA845x_READ_BYTE(OUT_X_MSB_REG); 
??Get845xX_12bit_1:
        MOVS     R2,#+1
        MOVS     R1,#+28
        MOVS     R0,#+1
        BL       I2C_ReadAddr
        MOVS     R7,R0
//  128       xl = MMA845x_READ_BYTE(OUT_X_LSB_REG);
        MOVS     R2,#+2
        MOVS     R1,#+28
        MOVS     R0,#+1
        BL       I2C_ReadAddr
//  129       
//  130       tmp += (   ((((xm<<8) & 0xFF00  ) |  (xl&0x00FF)) >> 4) & 0x0FFF);
        UXTH     R7,R7            ;; ZeroExt  R7,R7,#+16,#+16
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ORRS     R0,R0,R7, LSL #+8
        ASRS     R0,R0,#+4
        LSLS     R0,R0,#+20       ;; ZeroExtS R0,R0,#+20,#+20
        LSRS     R0,R0,#+20
        ADDS     R6,R0,R6
//  131     }
        ADDS     R5,R5,#+1
??Get845xX_12bit_0:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R5,R4
        BCC.N    ??Get845xX_12bit_1
//  132     tmp = tmp / N;
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        UDIV     R6,R6,R4
//  133     return (u16)tmp;
        MOVS     R0,R6
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        POP      {R1,R4-R7,PC}    ;; return
//  134 }
//  135 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  136 u16 Get845xX_14bit(u8 N) 
//  137 {
Get845xX_14bit:
        PUSH     {R3-R7,LR}
        MOVS     R4,R0
//  138     u32 tmp = 0;
        MOVS     R6,#+0
//  139     u8 i = 0;
        MOVS     R5,#+0
//  140     u16 xm = 0;
        MOVS     R7,#+0
//  141     u16 xl = 0;
        MOVS     R0,#+0
//  142     for(i = 0; i < N; i++)
        MOVS     R1,#+0
        MOVS     R5,R1
        B.N      ??Get845xX_14bit_0
//  143     {
//  144       xm = MMA845x_READ_BYTE(OUT_X_MSB_REG); 
??Get845xX_14bit_1:
        MOVS     R2,#+1
        MOVS     R1,#+28
        MOVS     R0,#+1
        BL       I2C_ReadAddr
        MOVS     R7,R0
//  145       xl = MMA845x_READ_BYTE(OUT_X_LSB_REG);
        MOVS     R2,#+2
        MOVS     R1,#+28
        MOVS     R0,#+1
        BL       I2C_ReadAddr
//  146       
//  147       tmp += (   ((((xm<<8) & 0xFF00  ) |  (xl&0x00FF)) >> 2) & 0x3FFF);
        UXTH     R7,R7            ;; ZeroExt  R7,R7,#+16,#+16
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ORRS     R0,R0,R7, LSL #+8
        ASRS     R0,R0,#+2
        LSLS     R0,R0,#+18       ;; ZeroExtS R0,R0,#+18,#+18
        LSRS     R0,R0,#+18
        ADDS     R6,R0,R6
//  148     }
        ADDS     R5,R5,#+1
??Get845xX_14bit_0:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R5,R4
        BCC.N    ??Get845xX_14bit_1
//  149     tmp = tmp / N;
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        UDIV     R6,R6,R4
//  150     return (u16)tmp;
        MOVS     R0,R6
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        POP      {R1,R4-R7,PC}    ;; return
//  151 }
//  152 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  153 u8 Get845xY_8bit(u8 N) 
//  154 {
Get845xY_8bit:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
//  155     u16 tmp = 0;
        MOVS     R5,#+0
//  156     u8 i = 0;
        MOVS     R6,#+0
//  157     
//  158     for(i = 0; i < N; i++)
        MOVS     R0,#+0
        MOVS     R6,R0
        B.N      ??Get845xY_8bit_0
//  159         tmp += MMA845x_READ_BYTE(OUT_Y_MSB_REG); 
??Get845xY_8bit_1:
        MOVS     R2,#+3
        MOVS     R1,#+28
        MOVS     R0,#+1
        BL       I2C_ReadAddr
        UXTAB    R5,R5,R0
        ADDS     R6,R6,#+1
??Get845xY_8bit_0:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R6,R4
        BCC.N    ??Get845xY_8bit_1
//  160     tmp = tmp / N;
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        SDIV     R5,R5,R4
//  161     
//  162     return (u8)tmp;
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R4-R6,PC}       ;; return
//  163 }
//  164 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  165 u16 Get845xY_10bit(u8 N) 
//  166 {
Get845xY_10bit:
        PUSH     {R3-R7,LR}
        MOVS     R4,R0
//  167     u32 tmp = 0;
        MOVS     R6,#+0
//  168     u8 i = 0;
        MOVS     R5,#+0
//  169     u16 ym = 0;
        MOVS     R7,#+0
//  170     u16 yl = 0;
        MOVS     R0,#+0
//  171     for(i = 0; i < N; i++)
        MOVS     R1,#+0
        MOVS     R5,R1
        B.N      ??Get845xY_10bit_0
//  172     {
//  173       ym = MMA845x_READ_BYTE(OUT_Y_MSB_REG); 
??Get845xY_10bit_1:
        MOVS     R2,#+3
        MOVS     R1,#+28
        MOVS     R0,#+1
        BL       I2C_ReadAddr
        MOVS     R7,R0
//  174       yl = MMA845x_READ_BYTE(OUT_Y_LSB_REG);
        MOVS     R2,#+4
        MOVS     R1,#+28
        MOVS     R0,#+1
        BL       I2C_ReadAddr
//  175       
//  176       tmp += (   ((((ym<<8) & 0xFF00  ) |  (yl&0x00FF)) >> 6) & 0x03FF);
        UXTH     R7,R7            ;; ZeroExt  R7,R7,#+16,#+16
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ORRS     R0,R0,R7, LSL #+8
        ASRS     R0,R0,#+6
        LSLS     R0,R0,#+22       ;; ZeroExtS R0,R0,#+22,#+22
        LSRS     R0,R0,#+22
        ADDS     R6,R0,R6
//  177     }
        ADDS     R5,R5,#+1
??Get845xY_10bit_0:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R5,R4
        BCC.N    ??Get845xY_10bit_1
//  178     tmp = tmp / N;
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        UDIV     R6,R6,R4
//  179     return (u16)tmp;
        MOVS     R0,R6
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        POP      {R1,R4-R7,PC}    ;; return
//  180 }
//  181 
//  182 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  183 u16 Get845xY_12bit(u8 N) 
//  184 {
Get845xY_12bit:
        PUSH     {R3-R7,LR}
        MOVS     R4,R0
//  185     u32 tmp = 0;
        MOVS     R6,#+0
//  186     u8 i = 0;
        MOVS     R5,#+0
//  187     u16 ym = 0;
        MOVS     R7,#+0
//  188     u16 yl = 0;
        MOVS     R0,#+0
//  189     for(i = 0; i < N; i++)
        MOVS     R1,#+0
        MOVS     R5,R1
        B.N      ??Get845xY_12bit_0
//  190     {
//  191       ym = MMA845x_READ_BYTE(OUT_Y_MSB_REG); 
??Get845xY_12bit_1:
        MOVS     R2,#+3
        MOVS     R1,#+28
        MOVS     R0,#+1
        BL       I2C_ReadAddr
        MOVS     R7,R0
//  192       yl = MMA845x_READ_BYTE(OUT_Y_LSB_REG);
        MOVS     R2,#+4
        MOVS     R1,#+28
        MOVS     R0,#+1
        BL       I2C_ReadAddr
//  193       
//  194       tmp += (   ((((ym<<8) & 0xFF00  ) |  (yl&0x00FF)) >> 4) & 0x0FFF);
        UXTH     R7,R7            ;; ZeroExt  R7,R7,#+16,#+16
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ORRS     R0,R0,R7, LSL #+8
        ASRS     R0,R0,#+4
        LSLS     R0,R0,#+20       ;; ZeroExtS R0,R0,#+20,#+20
        LSRS     R0,R0,#+20
        ADDS     R6,R0,R6
//  195     }
        ADDS     R5,R5,#+1
??Get845xY_12bit_0:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R5,R4
        BCC.N    ??Get845xY_12bit_1
//  196     tmp = tmp / N;
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        UDIV     R6,R6,R4
//  197     return (u16)tmp;
        MOVS     R0,R6
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        POP      {R1,R4-R7,PC}    ;; return
//  198 }
//  199 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  200 u16 Get845xY_14bit(u8 N) 
//  201 {
Get845xY_14bit:
        PUSH     {R3-R7,LR}
        MOVS     R4,R0
//  202     u32 tmp = 0;
        MOVS     R6,#+0
//  203     u8 i = 0;
        MOVS     R5,#+0
//  204     u16 ym = 0;
        MOVS     R7,#+0
//  205     u16 yl = 0;
        MOVS     R0,#+0
//  206     for(i = 0; i < N; i++)
        MOVS     R1,#+0
        MOVS     R5,R1
        B.N      ??Get845xY_14bit_0
//  207     {
//  208       ym = MMA845x_READ_BYTE(OUT_Y_MSB_REG); 
??Get845xY_14bit_1:
        MOVS     R2,#+3
        MOVS     R1,#+28
        MOVS     R0,#+1
        BL       I2C_ReadAddr
        MOVS     R7,R0
//  209       yl = MMA845x_READ_BYTE(OUT_Y_LSB_REG);
        MOVS     R2,#+4
        MOVS     R1,#+28
        MOVS     R0,#+1
        BL       I2C_ReadAddr
//  210       
//  211       tmp += (   ((((ym<<8) & 0xFF00  ) |  (yl&0x00FF)) >> 2) & 0x3FFF);
        UXTH     R7,R7            ;; ZeroExt  R7,R7,#+16,#+16
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ORRS     R0,R0,R7, LSL #+8
        ASRS     R0,R0,#+2
        LSLS     R0,R0,#+18       ;; ZeroExtS R0,R0,#+18,#+18
        LSRS     R0,R0,#+18
        ADDS     R6,R0,R6
//  212     }
        ADDS     R5,R5,#+1
??Get845xY_14bit_0:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R5,R4
        BCC.N    ??Get845xY_14bit_1
//  213     tmp = tmp / N;
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        UDIV     R6,R6,R4
//  214     return (u16)tmp;
        MOVS     R0,R6
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        POP      {R1,R4-R7,PC}    ;; return
//  215 }

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  216 u8 Get845xZ_8bit(u8 N) 
//  217 {
Get845xZ_8bit:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
//  218     u16 tmp = 0;
        MOVS     R5,#+0
//  219     u8 i = 0;
        MOVS     R6,#+0
//  220     
//  221     for(i = 0; i < N; i++)
        MOVS     R0,#+0
        MOVS     R6,R0
        B.N      ??Get845xZ_8bit_0
//  222         tmp += MMA845x_READ_BYTE(OUT_Z_MSB_REG); 
??Get845xZ_8bit_1:
        MOVS     R2,#+5
        MOVS     R1,#+28
        MOVS     R0,#+1
        BL       I2C_ReadAddr
        UXTAB    R5,R5,R0
        ADDS     R6,R6,#+1
??Get845xZ_8bit_0:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R6,R4
        BCC.N    ??Get845xZ_8bit_1
//  223     tmp = tmp / N;
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        SDIV     R5,R5,R4
//  224     
//  225     return (u8)tmp;
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R4-R6,PC}       ;; return
//  226 }
//  227 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  228 u16 Get845xZ_10bit(u8 N) 
//  229 {
Get845xZ_10bit:
        PUSH     {R3-R7,LR}
        MOVS     R4,R0
//  230     u32 tmp = 0;
        MOVS     R6,#+0
//  231     u8 i = 0;
        MOVS     R5,#+0
//  232     u16 zm = 0;
        MOVS     R7,#+0
//  233     u16 zl = 0;
        MOVS     R0,#+0
//  234     for(i = 0; i < N; i++)
        MOVS     R1,#+0
        MOVS     R5,R1
        B.N      ??Get845xZ_10bit_0
//  235     {
//  236       zm = MMA845x_READ_BYTE(OUT_Z_MSB_REG); 
??Get845xZ_10bit_1:
        MOVS     R2,#+5
        MOVS     R1,#+28
        MOVS     R0,#+1
        BL       I2C_ReadAddr
        MOVS     R7,R0
//  237       zl = MMA845x_READ_BYTE(OUT_Z_LSB_REG);
        MOVS     R2,#+6
        MOVS     R1,#+28
        MOVS     R0,#+1
        BL       I2C_ReadAddr
//  238       
//  239       tmp += (   ((((zm<<8) & 0xFF00  ) |  (zl&0x00FF)) >> 6) & 0x03FF);
        UXTH     R7,R7            ;; ZeroExt  R7,R7,#+16,#+16
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ORRS     R0,R0,R7, LSL #+8
        ASRS     R0,R0,#+6
        LSLS     R0,R0,#+22       ;; ZeroExtS R0,R0,#+22,#+22
        LSRS     R0,R0,#+22
        ADDS     R6,R0,R6
//  240     }
        ADDS     R5,R5,#+1
??Get845xZ_10bit_0:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R5,R4
        BCC.N    ??Get845xZ_10bit_1
//  241     tmp = tmp / N;
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        UDIV     R6,R6,R4
//  242     return (u16)tmp;
        MOVS     R0,R6
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        POP      {R1,R4-R7,PC}    ;; return
//  243 }
//  244 
//  245 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  246 u16 Get845xZ_12bit(u8 N) 
//  247 {
Get845xZ_12bit:
        PUSH     {R3-R7,LR}
        MOVS     R4,R0
//  248     u32 tmp = 0;
        MOVS     R6,#+0
//  249     u8 i = 0;
        MOVS     R5,#+0
//  250     u16 zm = 0;
        MOVS     R7,#+0
//  251     u16 zl = 0;
        MOVS     R0,#+0
//  252     for(i = 0; i < N; i++)
        MOVS     R1,#+0
        MOVS     R5,R1
        B.N      ??Get845xZ_12bit_0
//  253     {
//  254       zm = MMA845x_READ_BYTE(OUT_Z_MSB_REG); 
??Get845xZ_12bit_1:
        MOVS     R2,#+5
        MOVS     R1,#+28
        MOVS     R0,#+1
        BL       I2C_ReadAddr
        MOVS     R7,R0
//  255       zl = MMA845x_READ_BYTE(OUT_Z_LSB_REG);
        MOVS     R2,#+6
        MOVS     R1,#+28
        MOVS     R0,#+1
        BL       I2C_ReadAddr
//  256       
//  257       tmp += (   ((((zm<<8) & 0xFF00  ) |  (zl&0x00FF)) >> 4) & 0x0FFF);
        UXTH     R7,R7            ;; ZeroExt  R7,R7,#+16,#+16
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ORRS     R0,R0,R7, LSL #+8
        ASRS     R0,R0,#+4
        LSLS     R0,R0,#+20       ;; ZeroExtS R0,R0,#+20,#+20
        LSRS     R0,R0,#+20
        ADDS     R6,R0,R6
//  258     }
        ADDS     R5,R5,#+1
??Get845xZ_12bit_0:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R5,R4
        BCC.N    ??Get845xZ_12bit_1
//  259     tmp = tmp / N;
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        UDIV     R6,R6,R4
//  260     return (u16)tmp;
        MOVS     R0,R6
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        POP      {R1,R4-R7,PC}    ;; return
//  261 }
//  262 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  263 u16 Get845xZ_14bit(u8 N) 
//  264 {
Get845xZ_14bit:
        PUSH     {R3-R7,LR}
        MOVS     R4,R0
//  265     u32 tmp = 0;
        MOVS     R6,#+0
//  266     u8 i = 0;
        MOVS     R5,#+0
//  267     u16 zm = 0;
        MOVS     R7,#+0
//  268     u16 zl = 0;
        MOVS     R0,#+0
//  269     for(i = 0; i < N; i++)
        MOVS     R1,#+0
        MOVS     R5,R1
        B.N      ??Get845xZ_14bit_0
//  270     {
//  271       zm = MMA845x_READ_BYTE(OUT_Z_MSB_REG); 
??Get845xZ_14bit_1:
        MOVS     R2,#+5
        MOVS     R1,#+28
        MOVS     R0,#+1
        BL       I2C_ReadAddr
        MOVS     R7,R0
//  272       zl = MMA845x_READ_BYTE(OUT_Z_LSB_REG);
        MOVS     R2,#+6
        MOVS     R1,#+28
        MOVS     R0,#+1
        BL       I2C_ReadAddr
//  273       
//  274       tmp += (   ((((zm<<8) & 0xFF00  ) |  (zl&0x00FF)) >> 2) & 0x3FFF);
        UXTH     R7,R7            ;; ZeroExt  R7,R7,#+16,#+16
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ORRS     R0,R0,R7, LSL #+8
        ASRS     R0,R0,#+2
        LSLS     R0,R0,#+18       ;; ZeroExtS R0,R0,#+18,#+18
        LSRS     R0,R0,#+18
        ADDS     R6,R0,R6
//  275     }
        ADDS     R5,R5,#+1
??Get845xZ_14bit_0:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R5,R4
        BCC.N    ??Get845xZ_14bit_1
//  276     tmp = tmp / N;
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        UDIV     R6,R6,R4
//  277     return (u16)tmp;
        MOVS     R0,R6
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        POP      {R1,R4-R7,PC}    ;; return
//  278 }

        SECTION `.iar_vfe_header`:DATA:REORDER:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "\\n8451  init OK!">`:
        DATA
        DC8 "\0128451  init OK!"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "\\n8451  init Failed!">`:
        DATA
        DC8 "\0128451  init Failed!"

        END
//  279 
//  280 
//  281 #endif
//  282 #ifdef   IOIIC            // 模拟IIC
//  283 
//  284 unsigned char MMA845x_readbyte(unsigned char address)
//  285 {
//  286         unsigned char ret = 100;
//  287 	IIC_start();		//启动
//  288 	send_byte(MMA845x_IIC_ADDRESS);	//写入设备ID及写信号
//  289 	send_byte(address);	//X地址
//  290 	IIC_start();		//重新发送开始
//  291 	send_byte(MMA845x_IIC_ADDRESS+1);	//写入设备ID及读信
//  292 	ret = read_byte();	//读取一字节
//  293 	IIC_stop();
//  294 	return ret;
//  295 }
//  296 
//  297 //写入
//  298 void MMA845x_writebyte(unsigned char address, unsigned char thedata)
//  299 {
//  300 	IIC_start();		//启动
//  301 	send_byte(MMA845x_IIC_ADDRESS);	//写入设备ID及写信号
//  302 	send_byte(address);	//X地址
//  303 	send_byte(thedata);	//写入设备ID及读信
//  304 	IIC_stop();
//  305 }
//  306 
//  307 //初始化
//  308 //初始化为指定模式
//  309 void MMA845x_init()
//  310 {	
//  311         byte v;
//  312         gpio_init(PORTD,8,GPO,1);
//  313         gpio_init(PORTD,9,GPO,1);
//  314 	
//  315 	MMA845x_writebyte(CTRL_REG1,ASLP_RATE_20MS+DATA_RATE_5MS);	
//  316 	ioi2cnops(); ioi2cnops(); 
//  317 	MMA845x_writebyte(XYZ_DATA_CFG_REG, FULL_SCALE_2G); //2G
//  318 	ioi2cnops(); ioi2cnops(); 
//  319 	MMA845x_writebyte(CTRL_REG1, ACTIVE_MASK);          //激活状态
//  320 	ioi2cnops(); ioi2cnops(); 
//  321 	
//  322 	v= MMA845x_readbyte(WHO_AM_I_REG);
//  323         if((v == MMA8451Q_ID)||(v == MMA8452Q_ID)||(v == MMA8453Q_ID)) 
//  324         {
//  325            uartPrintf("\nMMA845x init OK!\n");
//  326         }
//  327         else
//  328         {
//  329            uartPrintf("\nMMA845x init Failed!\n"); 
//  330         }
//  331 }
//  332 
//  333 
//  334 unsigned char Get845xX() 
//  335 {
//  336     return MMA845x_readbyte(OUT_X_MSB_REG); 
//  337 }
//  338 unsigned char Get845xY() 
//  339 {
//  340     return MMA845x_readbyte(OUT_Y_MSB_REG); 
//  341 }
//  342 unsigned char Get845xZ() 
//  343 {
//  344     return MMA845x_readbyte(OUT_Z_MSB_REG); 
//  345 }
//  346 
//  347 
//  348 #endif
// 
//    36 bytes in section .rodata
// 1 036 bytes in section .text
// 
// 1 036 bytes of CODE  memory
//    36 bytes of CONST memory
//
//Errors: none
//Warnings: 1
