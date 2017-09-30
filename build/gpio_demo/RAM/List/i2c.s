///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.30.1.53127/W32 for ARM    22/Dec/2013  00:55:20 /
// Copyright 1999-2011 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  C:\Users\Administrator\Desktop\杨向军的K60模板_只有基本 /
//                    IO操作\src\drivers\i2c\i2c.c                            /
//    Command line =  C:\Users\Administrator\Desktop\杨向军的K60模板_只有基本 /
//                    IO操作\src\drivers\i2c\i2c.c -lCN                       /
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
//                    IO操作\build\gpio_demo\RAM\List\i2c.s                   /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME i2c

        #define SHT_PROGBITS 0x1

        EXTERN bus_clk_khz
        EXTERN core_clk_mhz

        PUBLIC I2C_ReadAddr
        PUBLIC I2C_StartTransmission
        PUBLIC I2C_WriteAddr
        PUBLIC I2C_init
        PUBLIC I2Cx
        PUBLIC MasterTransmission
        PUBLIC Pause
        PUBLIC SlaveID

// C:\Users\Administrator\Desktop\杨向军的K60模板_只有基本IO操作\src\drivers\i2c\i2c.c
//    1 /******************** (C) COPYRIGHT 2011 野火嵌入式开发工作室 ********************
//    2  * 文件名       ：i2c.c
//    3  * 描述         ：i2c驱动函数
//    4  * 备注         ：修改自官方例程
//    5  *
//    6  * 实验平台     ：野火kinetis开发板
//    7  * 库版本       ：
//    8  * 嵌入系统     ：
//    9  *
//   10  * 作者         ：
//   11  * 淘宝店       ：http://firestm32.taobao.com
//   12  * 技术支持论坛 ：http://www.ourdev.cn/bbs/bbs_list.jsp?bbs_id=1008
//   13 **********************************************************************************/	
//   14 
//   15 
//   16 #include "common.h"
//   17 #include "i2c.h"
//   18 
//   19 

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   20 unsigned char MasterTransmission;
MasterTransmission:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   21 unsigned char SlaveID;
SlaveID:
        DS8 1
//   22 

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   23 volatile struct I2C_MemMap *I2Cx[2]={I2C0_BASE_PTR,I2C1_BASE_PTR}; //定义两个指针数组保存 I2Cx 的地址
I2Cx:
        DATA
        DC32 40066000H, 40067000H
//   24 
//   25 
//   26 /*************************************************************************
//   27 *                             野火嵌入式开发工作室
//   28 *
//   29 *  函数名称：I2C_init
//   30 *  功能说明：I2C初始化，设置波特率和启动I2C
//   31 *  参数说明：I2Cn        模块号（I2C0、I2C1）
//   32 *  函数返回：无
//   33 *  修改时间：2012-1-20
//   34 *  备    注：
//   35 *************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   36 void I2C_init(I2Cn i2cn)
//   37 {
//   38   u8 mult;
//   39   if(bus_clk_khz<=50000)mult=0;             //bus 一分频
I2C_init:
        LDR.N    R1,??DataTable4
        LDR      R1,[R1, #+0]
        MOVW     R2,#+50001
        CMP      R1,R2
        BCS.N    ??I2C_init_0
        MOVS     R1,#+0
        B.N      ??I2C_init_1
//   40   else  if(bus_clk_khz<=100000)mult=1;      //bus 二分频
??I2C_init_0:
        LDR.N    R1,??DataTable4
        LDR      R1,[R1, #+0]
        LDR.N    R2,??DataTable4_1  ;; 0x186a1
        CMP      R1,R2
        BCS.N    ??I2C_init_2
        MOVS     R1,#+1
        B.N      ??I2C_init_1
//   41   else      mult=2;                         //bus 四分频
??I2C_init_2:
        MOVS     R1,#+2
//   42 
//   43     if(i2cn==I2C0)
??I2C_init_1:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BNE.N    ??I2C_init_3
//   44     {
//   45         /* 开启时钟 */
//   46         SIM_SCGC4 |= SIM_SCGC4_I2C0_MASK;         //开启 I2C0时钟
        LDR.N    R2,??DataTable4_2  ;; 0x40048034
        LDR      R2,[R2, #+0]
        ORRS     R2,R2,#0x40
        LDR.N    R3,??DataTable4_2  ;; 0x40048034
        STR      R2,[R3, #+0]
//   47 
//   48         /* 配置 I2C0功能的 GPIO 接口 */
//   49         if(I2C0_SCL==PTB0)
//   50             PORTB_PCR0 = PORT_PCR_MUX(2);
        LDR.N    R2,??DataTable4_3  ;; 0x4004a000
        MOV      R3,#+512
        STR      R3,[R2, #+0]
//   51          else if(I2C0_SCL==PTB2)
//   52             PORTB_PCR2 = PORT_PCR_MUX(2);
//   53 #if K60PIN == 144u
//   54          else if(I2C0_SCL==PTD8)
//   55             PORTD_PCR8 = (PORT_PCR_MUX(2)|0x03);
//   56 #endif
//   57          else
//   58             assert_failed(__FILE__, __LINE__);                   //设置管脚有误？
//   59 
//   60         if(I2C0_SDA==PTB1)
//   61             PORTB_PCR1 = PORT_PCR_MUX(2);
        LDR.N    R2,??DataTable4_4  ;; 0x4004a004
        MOV      R3,#+512
        STR      R3,[R2, #+0]
        B.N      ??I2C_init_4
//   62          else if(I2C0_SDA==PTB3)
//   63             PORTB_PCR3 = PORT_PCR_MUX(2);
//   64 #if K60PIN == 144u
//   65          else if(I2C0_SDA==PTD9)
//   66             PORTD_PCR9 = (PORT_PCR_MUX(2)|0x02);
//   67 #endif
//   68          else
//   69             assert_failed(__FILE__, __LINE__);                   //设置管脚有误？
//   70     }
//   71     else
//   72     {
//   73         /* 开启时钟 */
//   74         SIM_SCGC4 |= SIM_SCGC4_I2C1_MASK;         //开启 I2C1时钟
??I2C_init_3:
        LDR.N    R2,??DataTable4_2  ;; 0x40048034
        LDR      R2,[R2, #+0]
        ORRS     R2,R2,#0x80
        LDR.N    R3,??DataTable4_2  ;; 0x40048034
        STR      R2,[R3, #+0]
//   75 
//   76         /* 配置 I2C1功能的 GPIO 接口 */
//   77         if(I2C1_SCL==PTE1)
//   78             PORTE_PCR1 = PORT_PCR_MUX(6);
//   79         else if(I2C1_SCL==PTC10)
//   80             PORTC_PCR10 = PORT_PCR_MUX(2);
        LDR.N    R2,??DataTable4_5  ;; 0x4004b028
        MOV      R3,#+512
        STR      R3,[R2, #+0]
//   81          else
//   82             assert_failed(__FILE__, __LINE__);                   //设置管脚有误？
//   83 
//   84         if(I2C1_SDA==PTE0)
//   85             PORTE_PCR0 = PORT_PCR_MUX(6);
//   86         else if (I2C1_SDA==PTC11)
//   87             PORTC_PCR11 = PORT_PCR_MUX(2);
        LDR.N    R2,??DataTable4_6  ;; 0x4004b02c
        MOV      R3,#+512
        STR      R3,[R2, #+0]
//   88         else
//   89             assert_failed(__FILE__, __LINE__);                   //设置管脚有误？
//   90 
//   91     }
//   92 
//   93     /* 设置频率 */
//   94 #ifdef SCCB
//   95     mult = 1;
//   96     I2C_F_REG(I2Cx[i2cn])  = I2C_F_MULT(mult) | I2C_F_ICR(0x3F) ; 
//   97 #else
//   98     I2C_F_REG(I2Cx[i2cn])  = I2C_F_MULT(mult) | I2C_F_ICR(0x17) ; 
??I2C_init_4:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R2,??DataTable4_7
        LDR      R2,[R2, R0, LSL #+2]
        LSLS     R1,R1,#+6
        ORRS     R1,R1,#0x17
        STRB     R1,[R2, #+1]
//   99 #endif
//  100    // I2C_F_REG(I2Cx[i2cn])  = 0x14;  
//  101     // I2C Frequency Divider register (I2Cx_F)  I2C分频寄存器   I2C最大波特率为 400k
//  102     
//  103     // MULT=00  即  mul = 1
//  104     // ICR =14  ICR为Clock rate时钟频率
//  105     // 从《k16 reference manual.pdf》P1460 可得：
//  106     // ICR    SCL Divider   SDA Hold Value    SCL Hold (Start) Value    SCL Hold (Stop) Value
//  107     //  14        80              17                   34                         41
//  108     //  17       128              21                   58                         65
//  109     // I2C baud rate = bus speed (Hz)/(mul × SCL divider)  即这里 50MHz/(1 ×128)=390.625kHz
//  110     // SDA hold time = bus period (s) × mul × SDA hold value
//  111     // SCL start hold time = bus period (s) × mul × SCL start hold value
//  112     // SCL stop hold time = bus period (s) × mul × SCL stop hold value
//  113 
//  114     /* 使能 IIC1 */
//  115     I2C_C1_REG(I2Cx[i2cn]) = I2C_C1_IICEN_MASK;
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R1,??DataTable4_7
        LDR      R0,[R1, R0, LSL #+2]
        MOVS     R1,#+128
        STRB     R1,[R0, #+2]
//  116 }
        BX       LR               ;; return
//  117 
//  118 /*************************************************************************
//  119 *                             野火嵌入式开发工作室
//  120 *
//  121 *  函数名称：I2C_StartTransmission
//  122 *  功能说明：启动 I2C 传输
//  123 *  参数说明：I2Cn        模块号（I2C0、I2C1）
//  124 *            SlaveID     7位从机地址
//  125 *            MSmode      读写模式（ MWSR 或 MRSW ）
//  126 *  函数返回：无
//  127 *  修改时间：2012-1-20
//  128 *  备    注：
//  129 *************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  130 void I2C_StartTransmission (I2Cn i2cn,u8 SlaveID,MSmode Mode)
//  131 {
//  132 
//  133     //ASSERT(Mode == MWSR || Mode == MRSW);         //使用断言，检测 Mode 是否为 读 或 写
//  134 
//  135     SlaveID =( SlaveID << 1 ) | Mode ;             //确定写地址和读地址
I2C_StartTransmission:
        ORRS     R1,R2,R1, LSL #+1
//  136 
//  137     /* send start signal */
//  138     i2c_Start(i2cn);
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R2,??DataTable4_7
        LDR      R2,[R2, R0, LSL #+2]
        LDRB     R2,[R2, #+2]
        ORRS     R2,R2,#0x10
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R3,??DataTable4_7
        LDR      R3,[R3, R0, LSL #+2]
        STRB     R2,[R3, #+2]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R2,??DataTable4_7
        LDR      R2,[R2, R0, LSL #+2]
        LDRB     R2,[R2, #+2]
        ORRS     R2,R2,#0x20
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R3,??DataTable4_7
        LDR      R3,[R3, R0, LSL #+2]
        STRB     R2,[R3, #+2]
//  139 
//  140     /* send ID with W/R bit */
//  141     i2c_write_byte(i2cn,SlaveID);
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R2,??DataTable4_7
        LDR      R0,[R2, R0, LSL #+2]
        STRB     R1,[R0, #+4]
//  142 }
        BX       LR               ;; return
//  143 
//  144 /*************************************************************************
//  145 *                             野火嵌入式开发工作室
//  146 *
//  147 *  函数名称：Pause
//  148 *  功能说明：延时，I2C读写后，需要延时一下
//  149 *  参数说明：无
//  150 *  函数返回：无
//  151 *  修改时间：2012-1-20
//  152 *  备    注：在官方基础上增大延时数
//  153 *************************************************************************/

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//  154 void Pause(void){
//  155     u16 n;
//  156     for(n=1;n<core_clk_mhz/2;n++) {          //注意，这个数据太小，会导致读取错误。2us
Pause:
        MOVS     R0,#+1
        B.N      ??Pause_0
//  157         asm("nop");
??Pause_1:
        nop              
//  158     }
        ADDS     R0,R0,#+1
??Pause_0:
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        LDR.N    R1,??DataTable4_8
        LDR      R1,[R1, #+0]
        CMP      R0,R1, LSR #+1
        BCC.N    ??Pause_1
//  159 }
        BX       LR               ;; return
//  160 
//  161 /*************************************************************************
//  162 *                             野火嵌入式开发工作室
//  163 *
//  164 *  函数名称：I2C_ReadAddr
//  165 *  功能说明：读取I2C设备指定地址寄存器的数据
//  166 *  参数说明：I2Cn        模块号（I2C0、I2C1）
//  167 *            SlaveID     7位从机地址
//  168 *            Addr        从机的寄存器地址
//  169 *  函数返回：从机寄存器的数据
//  170 *  修改时间：2012-1-20
//  171 *  备    注：转换时大约是0.11ms
//  172 *************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  173 u8 I2C_ReadAddr(I2Cn i2cn,u8 SlaveID,u8 Addr)
//  174 {
I2C_ReadAddr:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
//  175     u8 result;
//  176 
//  177     /* Send Slave Address */
//  178     I2C_StartTransmission (i2cn,SlaveID,MWSR);
        MOVS     R2,#+0
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       I2C_StartTransmission
//  179     i2c_Wait(i2cn);
??I2C_ReadAddr_0:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.N    R0,??DataTable4_7
        LDR      R0,[R0, R4, LSL #+2]
        LDRB     R0,[R0, #+3]
        LSLS     R0,R0,#+30
        BPL.N    ??I2C_ReadAddr_0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.N    R0,??DataTable4_7
        LDR      R0,[R0, R4, LSL #+2]
        LDRB     R0,[R0, #+3]
        ORRS     R0,R0,#0x2
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.N    R1,??DataTable4_7
        LDR      R1,[R1, R4, LSL #+2]
        STRB     R0,[R1, #+3]
//  180 
//  181     /* Write Register Address */
//  182     i2c_write_byte(i2cn,Addr);
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.N    R0,??DataTable4_7
        LDR      R0,[R0, R4, LSL #+2]
        STRB     R6,[R0, #+4]
//  183     i2c_Wait(i2cn);
??I2C_ReadAddr_1:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.N    R0,??DataTable4_7
        LDR      R0,[R0, R4, LSL #+2]
        LDRB     R0,[R0, #+3]
        LSLS     R0,R0,#+30
        BPL.N    ??I2C_ReadAddr_1
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.N    R0,??DataTable4_7
        LDR      R0,[R0, R4, LSL #+2]
        LDRB     R0,[R0, #+3]
        ORRS     R0,R0,#0x2
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.N    R1,??DataTable4_7
        LDR      R1,[R1, R4, LSL #+2]
        STRB     R0,[R1, #+3]
//  184 #ifdef SCCB  //没有再次发送
//  185     I2C_StartTransmission (i2cn,SlaveID,MWSR);
//  186     i2c_Wait(i2cn);
//  187 #else
//  188     /* Do a repeated start */
//  189     i2c_RepeatedStart(i2cn);
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.N    R0,??DataTable4_7
        LDR      R0,[R0, R4, LSL #+2]
        LDRB     R0,[R0, #+2]
        ORRS     R0,R0,#0x4
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.N    R1,??DataTable4_7
        LDR      R1,[R1, R4, LSL #+2]
        STRB     R0,[R1, #+2]
//  190     //I2C0_C1 |= I2C_C1_RSTA_MASK;
//  191 #endif
//  192     /* Send Slave Address */
//  193     i2c_write_byte(i2cn,( SlaveID << 1) | MRSW );
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.N    R0,??DataTable4_7
        LDR      R0,[R0, R4, LSL #+2]
        LSLS     R1,R5,#+1
        ORRS     R1,R1,#0x1
        STRB     R1,[R0, #+4]
//  194     i2c_Wait(i2cn);
??I2C_ReadAddr_2:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.N    R0,??DataTable4_7
        LDR      R0,[R0, R4, LSL #+2]
        LDRB     R0,[R0, #+3]
        LSLS     R0,R0,#+30
        BPL.N    ??I2C_ReadAddr_2
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.N    R0,??DataTable4_7
        LDR      R0,[R0, R4, LSL #+2]
        LDRB     R0,[R0, #+3]
        ORRS     R0,R0,#0x2
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.N    R1,??DataTable4_7
        LDR      R1,[R1, R4, LSL #+2]
        STRB     R0,[R1, #+3]
//  195 
//  196     /* Put in Rx Mode */
//  197     i2c_PutinRxMode(i2cn);
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.N    R0,??DataTable4_7
        LDR      R0,[R0, R4, LSL #+2]
        LDRB     R0,[R0, #+2]
        ANDS     R0,R0,#0xEF
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.N    R1,??DataTable4_7
        LDR      R1,[R1, R4, LSL #+2]
        STRB     R0,[R1, #+2]
//  198 
//  199     /* Turn off ACK since this is second to last byte being read*/
//  200     i2c_DisableAck(i2cn); //不应答
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.N    R0,??DataTable4_7
        LDR      R0,[R0, R4, LSL #+2]
        LDRB     R0,[R0, #+2]
        ORRS     R0,R0,#0x8
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.N    R1,??DataTable4_7
        LDR      R1,[R1, R4, LSL #+2]
        STRB     R0,[R1, #+2]
//  201 
//  202     /* Dummy read 虚假读取*/
//  203     result = I2C_D_REG(I2Cx[i2cn])  ;
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.N    R0,??DataTable4_7
        LDR      R0,[R0, R4, LSL #+2]
        LDRB     R5,[R0, #+4]
//  204     i2c_Wait(i2cn);
??I2C_ReadAddr_3:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.N    R0,??DataTable4_7
        LDR      R0,[R0, R4, LSL #+2]
        LDRB     R0,[R0, #+3]
        LSLS     R0,R0,#+30
        BPL.N    ??I2C_ReadAddr_3
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.N    R0,??DataTable4_7
        LDR      R0,[R0, R4, LSL #+2]
        LDRB     R0,[R0, #+3]
        ORRS     R0,R0,#0x2
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.N    R1,??DataTable4_7
        LDR      R1,[R1, R4, LSL #+2]
        STRB     R0,[R1, #+3]
//  205 
//  206     /* Send stop since about to read last byte */
//  207     i2c_Stop(i2cn);
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.N    R0,??DataTable4_7
        LDR      R0,[R0, R4, LSL #+2]
        LDRB     R0,[R0, #+2]
        ANDS     R0,R0,#0xDF
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.N    R1,??DataTable4_7
        LDR      R1,[R1, R4, LSL #+2]
        STRB     R0,[R1, #+2]
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.N    R0,??DataTable4_7
        LDR      R0,[R0, R4, LSL #+2]
        LDRB     R0,[R0, #+2]
        ANDS     R0,R0,#0xEF
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.N    R1,??DataTable4_7
        LDR      R1,[R1, R4, LSL #+2]
        STRB     R0,[R1, #+2]
//  208 
//  209     /* Read byte */
//  210     result = I2C_D_REG(I2Cx[i2cn])  ;
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.N    R0,??DataTable4_7
        LDR      R0,[R0, R4, LSL #+2]
        LDRB     R5,[R0, #+4]
//  211     
//  212     Pause();                                        //延时太短的话，可能写出错
        BL       Pause
//  213 
//  214     return result;
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R4-R6,PC}       ;; return
//  215 }
//  216 
//  217 
//  218 /*************************************************************************
//  219 *                             野火嵌入式开发工作室
//  220 *
//  221 *  函数名称：I2C_WriteAddr
//  222 *  功能说明：写入一个字节数据到I2C设备指定寄存器地址
//  223 *  参数说明：I2Cn        模块号（I2C0、I2C1）
//  224 *            SlaveID     7位从机地址
//  225 *            Addr        从机的寄存器地址
//  226 *            Data        数据
//  227 *  函数返回：无
//  228 *  修改时间：2012-1-20
//  229 *  备    注：
//  230 *************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  231 void I2C_WriteAddr(I2Cn i2cn,u8 SlaveID,u8 Addr,u8 Data)
//  232 {
I2C_WriteAddr:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R2
        MOVS     R6,R3
//  233     /* send data to slave */
//  234     I2C_StartTransmission(i2cn,SlaveID,MWSR);      //启动传输
        MOVS     R2,#+0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       I2C_StartTransmission
//  235     i2c_Wait(i2cn);
??I2C_WriteAddr_0:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.N    R0,??DataTable4_7
        LDR      R0,[R0, R4, LSL #+2]
        LDRB     R0,[R0, #+3]
        LSLS     R0,R0,#+30
        BPL.N    ??I2C_WriteAddr_0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.N    R0,??DataTable4_7
        LDR      R0,[R0, R4, LSL #+2]
        LDRB     R0,[R0, #+3]
        ORRS     R0,R0,#0x2
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.N    R1,??DataTable4_7
        LDR      R1,[R1, R4, LSL #+2]
        STRB     R0,[R1, #+3]
//  236 
//  237     i2c_write_byte(i2cn,Addr);                     //写地址
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.N    R0,??DataTable4_7
        LDR      R0,[R0, R4, LSL #+2]
        STRB     R5,[R0, #+4]
//  238     i2c_Wait(i2cn);
??I2C_WriteAddr_1:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.N    R0,??DataTable4_7
        LDR      R0,[R0, R4, LSL #+2]
        LDRB     R0,[R0, #+3]
        LSLS     R0,R0,#+30
        BPL.N    ??I2C_WriteAddr_1
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.N    R0,??DataTable4_7
        LDR      R0,[R0, R4, LSL #+2]
        LDRB     R0,[R0, #+3]
        ORRS     R0,R0,#0x2
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.N    R1,??DataTable4_7
        LDR      R1,[R1, R4, LSL #+2]
        STRB     R0,[R1, #+3]
//  239 
//  240     i2c_write_byte(i2cn,Data);                     //写数据
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.N    R0,??DataTable4_7
        LDR      R0,[R0, R4, LSL #+2]
        STRB     R6,[R0, #+4]
//  241     i2c_Wait(i2cn);
??I2C_WriteAddr_2:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.N    R0,??DataTable4_7
        LDR      R0,[R0, R4, LSL #+2]
        LDRB     R0,[R0, #+3]
        LSLS     R0,R0,#+30
        BPL.N    ??I2C_WriteAddr_2
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.N    R0,??DataTable4_7
        LDR      R0,[R0, R4, LSL #+2]
        LDRB     R0,[R0, #+3]
        ORRS     R0,R0,#0x2
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.N    R1,??DataTable4_7
        LDR      R1,[R1, R4, LSL #+2]
        STRB     R0,[R1, #+3]
//  242 
//  243     i2c_Stop(i2cn);
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.N    R0,??DataTable4_7
        LDR      R0,[R0, R4, LSL #+2]
        LDRB     R0,[R0, #+2]
        ANDS     R0,R0,#0xDF
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.N    R1,??DataTable4_7
        LDR      R1,[R1, R4, LSL #+2]
        STRB     R0,[R1, #+2]
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.N    R0,??DataTable4_7
        LDR      R0,[R0, R4, LSL #+2]
        LDRB     R0,[R0, #+2]
        ANDS     R0,R0,#0xEF
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.N    R1,??DataTable4_7
        LDR      R1,[R1, R4, LSL #+2]
        STRB     R0,[R1, #+2]
//  244 
//  245     Pause();                                        //延时太短的话，可能写出错
        BL       Pause
//  246 }
        POP      {R4-R6,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4:
        DC32     bus_clk_khz

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_1:
        DC32     0x186a1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_2:
        DC32     0x40048034

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_3:
        DC32     0x4004a000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_4:
        DC32     0x4004a004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_5:
        DC32     0x4004b028

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_6:
        DC32     0x4004b02c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_7:
        DC32     I2Cx

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_8:
        DC32     core_clk_mhz

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
//   2 bytes in section .bss
//   8 bytes in section .data
// 806 bytes in section .text
// 
// 806 bytes of CODE memory
//  10 bytes of DATA memory
//
//Errors: none
//Warnings: none
