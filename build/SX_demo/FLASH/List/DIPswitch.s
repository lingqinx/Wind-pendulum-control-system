///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.30.1.53127/W32 for ARM    22/Dec/2013  00:47:27 /
// Copyright 1999-2011 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  C:\Users\Administrator\Desktop\杨向军的K60模板_只有基本 /
//                    IO操作\src\drivers\DIPswitch\DIPswitch.c                /
//    Command line =  C:\Users\Administrator\Desktop\杨向军的K60模板_只有基本 /
//                    IO操作\src\drivers\DIPswitch\DIPswitch.c -lCN           /
//                    C:\Users\Administrator\Desktop\杨向军的K60模板_只有基本 /
//                    IO操作\build\SX_demo\FLASH\List\ -lB                    /
//                    C:\Users\Administrator\Desktop\杨向军的K60模板_只有基本 /
//                    IO操作\build\SX_demo\FLASH\List\ -o                     /
//                    C:\Users\Administrator\Desktop\杨向军的K60模板_只有基本 /
//                    IO操作\build\SX_demo\FLASH\Obj\ --no_cse --no_unroll    /
//                    --no_inline --no_code_motion --no_tbaa --no_clustering  /
//                    --no_scheduling --debug --endian=little                 /
//                    --cpu=Cortex-M4 -e --fpu=None --dlib_config             /
//                    "E:\Program Files (x86)\IAR Systems\Embedded Workbench  /
//                    6.0\arm\INC\c\DLib_Config_Normal.h" -I                  /
//                    C:\Users\Administrator\Desktop\杨向军的K60模板_只有基本 /
//                    IO操作\build\SX_demo\..\ -I                             /
//                    C:\Users\Administrator\Desktop\杨向军的K60模板_只有基本 /
//                    IO操作\build\SX_demo\..\..\src\common\ -I               /
//                    C:\Users\Administrator\Desktop\杨向军的K60模板_只有基本 /
//                    IO操作\build\SX_demo\..\..\src\cpu\ -I                  /
//                    C:\Users\Administrator\Desktop\杨向军的K60模板_只有基本 /
//                    IO操作\build\SX_demo\..\..\src\drivers\ -I              /
//                    C:\Users\Administrator\Desktop\杨向军的K60模板_只有基本 /
//                    IO操作\build\SX_demo\..\..\src\drivers\gpio\ -I         /
//                    C:\Users\Administrator\Desktop\杨向军的K60模板_只有基本 /
//                    IO操作\build\SX_demo\..\..\src\drivers\wdog\ -I         /
//                    C:\Users\Administrator\Desktop\杨向军的K60模板_只有基本 /
//                    IO操作\build\SX_demo\..\..\src\drivers\mcg\ -I          /
//                    C:\Users\Administrator\Desktop\杨向军的K60模板_只有基本 /
//                    IO操作\build\SX_demo\..\..\src\drivers\uart\ -I         /
//                    C:\Users\Administrator\Desktop\杨向军的K60模板_只有基本 /
//                    IO操作\build\SX_demo\..\..\src\drivers\lptmr\ -I        /
//                    C:\Users\Administrator\Desktop\杨向军的K60模板_只有基本 /
//                    IO操作\build\SX_demo\..\..\src\drivers\LED\ -I          /
//                    C:\Users\Administrator\Desktop\杨向军的K60模板_只有基本 /
//                    IO操作\build\SX_demo\..\..\src\drivers\fun\ -I          /
//                    C:\Users\Administrator\Desktop\杨向军的K60模板_只有基本 /
//                    IO操作\build\SX_demo\..\..\src\drivers\FTM\ -I          /
//                    C:\Users\Administrator\Desktop\杨向军的K60模板_只有基本 /
//                    IO操作\build\SX_demo\..\..\src\drivers\pit\ -I          /
//                    C:\Users\Administrator\Desktop\杨向军的K60模板_只有基本 /
//                    IO操作\build\SX_demo\..\..\src\drivers\DIPswitch\ -I    /
//                    C:\Users\Administrator\Desktop\杨向军的K60模板_只有基本 /
//                    IO操作\build\SX_demo\..\..\src\drivers\steer\ -I        /
//                    C:\Users\Administrator\Desktop\杨向军的K60模板_只有基本 /
//                    IO操作\build\SX_demo\..\..\src\drivers\ccd\ -I          /
//                    C:\Users\Administrator\Desktop\杨向军的K60模板_只有基本 /
//                    IO操作\build\SX_demo\..\..\src\drivers\dma\ -I          /
//                    C:\Users\Administrator\Desktop\杨向军的K60模板_只有基本 /
//                    IO操作\build\SX_demo\..\..\src\drivers\motor\ -I        /
//                    C:\Users\Administrator\Desktop\杨向军的K60模板_只有基本 /
//                    IO操作\build\SX_demo\..\..\src\platforms\ -I            /
//                    C:\Users\Administrator\Desktop\杨向军的K60模板_只有基本 /
//                    IO操作\build\SX_demo\..\..\src\projects\ -I             /
//                    C:\Users\Administrator\Desktop\杨向军的K60模板_只有基本 /
//                    IO操作\build\SX_demo\..\..\src\projects\SX_demo\ -Ol    /
//    List file    =  C:\Users\Administrator\Desktop\杨向军的K60模板_只有基本 /
//                    IO操作\build\SX_demo\FLASH\List\DIPswitch.s             /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME DIPswitch

        #define SHT_PROGBITS 0x1

        EXTERN GPIOx
        EXTERN gpio_init
        EXTERN uart0Printf
        EXTERN uartPrintf

        PUBLIC DIPswitch_ctrl
        PUBLIC DIPswitch_init
        PUBLIC DIPswitch_val
        PUBLIC DIPswitch_valbit

// C:\Users\Administrator\Desktop\杨向军的K60模板_只有基本IO操作\src\drivers\DIPswitch\DIPswitch.c
//    1 
//    2 /*
//    3 ************************************************************************
//    4 *                北京邮电大学 K60 学习例程                                        
//    5 * 文件名 :[DIPswitch.c] 
//    6 * 描  述 ：拨码开关
//    7 *设计改进：snowwolf
//    8 *  Email ：snowwolf2012@qq.com
//    9 * 说  明 ：拨码开关 驱动程序
//   10 ***********************************************************************
//   11 */
//   12 
//   13 #include  "DIPswitch.h"
//   14 
//   15 
//   16 /*************************************************************************
//   17 *  函数名称：DIPswitch_init
//   18 *  功能说明：初始化拨码开关端口，设置IO口为输入方向
//   19 *  参数说明：无
//   20 *  函数返回：无
//   21 *  修改时间：2012-2-2   已测试
//   22 *  备    注：
//   23 *************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   24 void    DIPswitch_init(void)
//   25 {
DIPswitch_init:
        PUSH     {R7,LR}
//   26     gpio_init(DIPswitch_PORT,DIP0,GPI,0);
        MOVS     R3,#+0
        MOVS     R2,#+0
        MOVS     R1,#+14
        MOVS     R0,#+0
        BL       gpio_init
//   27     gpio_init(DIPswitch_PORT,DIP1,GPI,0);
        MOVS     R3,#+0
        MOVS     R2,#+0
        MOVS     R1,#+16
        MOVS     R0,#+0
        BL       gpio_init
//   28     gpio_init(DIPswitch_PORT,DIP2,GPI,0);
        MOVS     R3,#+0
        MOVS     R2,#+0
        MOVS     R1,#+17
        MOVS     R0,#+0
        BL       gpio_init
//   29     gpio_init(DIPswitch_PORT,DIP3,GPI,0);
        MOVS     R3,#+0
        MOVS     R2,#+0
        MOVS     R1,#+5
        MOVS     R0,#+0
        BL       gpio_init
//   30 }
        POP      {R0,PC}          ;; return
//   31 
//   32 
//   33 /*************************************************************************
//   34 *  函数名称：DIPswitch_val
//   35 *  功能说明：得到拨码开关的值
//   36 *  参数说明：无
//   37 *  函数返回：拨码开关的值
//   38 *  修改时间：2012-2-2   已测试
//   39 *  备    注：
//   40 *************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   41 u8 DIPswitch_val()
//   42 {
//   43     u8 val = 0;
DIPswitch_val:
        MOVS     R0,#+0
//   44     val |= GPIO_Get(DIPswitch_PORT,DIP3) << 3;
        LDR.N    R1,??DataTable2
        LDR      R1,[R1, #+0]
        LDR      R1,[R1, #+16]
        LSRS     R1,R1,#+2
        ANDS     R1,R1,#0x8
        ORRS     R0,R1,R0
//   45     val |= GPIO_Get(DIPswitch_PORT,DIP2) << 2;
        LDR.N    R1,??DataTable2
        LDR      R1,[R1, #+0]
        LDR      R1,[R1, #+16]
        LSRS     R1,R1,#+15
        ANDS     R1,R1,#0x4
        ORRS     R0,R1,R0
//   46     val |= GPIO_Get(DIPswitch_PORT,DIP1) << 1;
        LDR.N    R1,??DataTable2
        LDR      R1,[R1, #+0]
        LDR      R1,[R1, #+16]
        LSRS     R1,R1,#+15
        ANDS     R1,R1,#0x2
        ORRS     R0,R1,R0
//   47     val |= GPIO_Get(DIPswitch_PORT,DIP0) << 0;                     
        LDR.N    R1,??DataTable2
        LDR      R1,[R1, #+0]
        LDR      R1,[R1, #+16]
        LSRS     R1,R1,#+14
        ANDS     R1,R1,#0x1
        ORRS     R0,R1,R0
//   48 #if DIPVAL == 0                     
//   49     return val;
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BX       LR               ;; return
//   50 #else
//   51     return ((~val)&0x0F);  //取反
//   52 #endif
//   53 }
//   54 /*************************************************************************
//   55 *  函数名称：DIPswitch_valbit
//   56 *  功能说明：得到拨码开关的值某一个位的值
//   57 *  参数说明：无
//   58 *  函数返回：拨码开关的值
//   59 *  修改时间：2012-2-2   已测试
//   60 *  备    注：
//   61 *           用拨码开关可以设置不同的启动条件。如果可以设置多个档位的速度
//   62 *************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   63 u8 DIPswitch_valbit(DIPn dipn)
//   64 {
//   65 #if DIPVAL == 0    
//   66   return GPIO_Get(DIPswitch_PORT,dipn);
DIPswitch_valbit:
        LDR.N    R1,??DataTable2
        LDR      R1,[R1, #+0]
        LDR      R1,[R1, #+16]
        LSRS     R0,R1,R0
        ANDS     R0,R0,#0x1
        BX       LR               ;; return
//   67 #else
//   68   return (GPIO_Get(DIPswitch_PORT,dipn)^1);
//   69 #endif
//   70 }
//   71                     
//   72                     
//   73 /*************************************************************************
//   74 *  函数名称：DIPswitch_Ctrl
//   75 *  功能说明：拨码开关控制程序
//   76 *  参数说明：无
//   77 *  函数返回：无
//   78 *  修改时间：2012-2-2   已测试
//   79 *  备    注：如果拨码开关和你希望的值是反相，尝试把宏定义 DIPVAL 取反
//   80 *************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   81 u8 DIPswitch_ctrl(void)
//   82 {
DIPswitch_ctrl:
        PUSH     {R7,LR}
//   83    DIPswitch_init();
        BL       DIPswitch_init
//   84    //在这里添加需要启动选择设置的变量
//   85    switch(DIPswitch_val())
        BL       DIPswitch_val
        CMP      R0,#+0
        BEQ.N    ??DIPswitch_ctrl_0
        CMP      R0,#+2
        BEQ.N    ??DIPswitch_ctrl_1
        BCC.N    ??DIPswitch_ctrl_2
        CMP      R0,#+4
        BEQ.N    ??DIPswitch_ctrl_3
        BCC.N    ??DIPswitch_ctrl_4
        CMP      R0,#+6
        BEQ.N    ??DIPswitch_ctrl_5
        BCC.N    ??DIPswitch_ctrl_6
        CMP      R0,#+8
        BEQ.N    ??DIPswitch_ctrl_7
        BCC.N    ??DIPswitch_ctrl_8
        CMP      R0,#+10
        BEQ.N    ??DIPswitch_ctrl_9
        BCC.N    ??DIPswitch_ctrl_10
        CMP      R0,#+12
        BEQ.N    ??DIPswitch_ctrl_11
        BCC.N    ??DIPswitch_ctrl_12
        CMP      R0,#+14
        BEQ.N    ??DIPswitch_ctrl_13
        BCC.N    ??DIPswitch_ctrl_14
        CMP      R0,#+15
        BEQ.N    ??DIPswitch_ctrl_15
        B.N      ??DIPswitch_ctrl_16
//   86    {
//   87    case 0x00:
//   88      uart0Printf("yout choice is : 0\n");
??DIPswitch_ctrl_0:
        LDR.N    R0,??DataTable2_1
        BL       uart0Printf
//   89      break;
        B.N      ??DIPswitch_ctrl_17
//   90    case 0x01:
//   91      uart0Printf("yout choice is : 1\n");
??DIPswitch_ctrl_2:
        LDR.N    R0,??DataTable2_2
        BL       uart0Printf
//   92      break;
        B.N      ??DIPswitch_ctrl_17
//   93    case 0x02:
//   94      uart0Printf("yout choice is : 2\n");
??DIPswitch_ctrl_1:
        LDR.N    R0,??DataTable2_3
        BL       uart0Printf
//   95      break;
        B.N      ??DIPswitch_ctrl_17
//   96    case 0x03:
//   97      uart0Printf("yout choice is : 3\n");
??DIPswitch_ctrl_4:
        LDR.N    R0,??DataTable2_4
        BL       uart0Printf
//   98      break;
        B.N      ??DIPswitch_ctrl_17
//   99      
//  100    case 0x04:
//  101      uart0Printf("yout choice is : 4\n");
??DIPswitch_ctrl_3:
        LDR.N    R0,??DataTable2_5
        BL       uart0Printf
//  102      break;
        B.N      ??DIPswitch_ctrl_17
//  103    case 0x05:
//  104      uart0Printf("yout choice is : 5\n");
??DIPswitch_ctrl_6:
        LDR.N    R0,??DataTable2_6
        BL       uart0Printf
//  105      break;
        B.N      ??DIPswitch_ctrl_17
//  106    case 0x06:
//  107      uart0Printf("yout choice is : 6\n");
??DIPswitch_ctrl_5:
        LDR.N    R0,??DataTable2_7
        BL       uart0Printf
//  108      break;
        B.N      ??DIPswitch_ctrl_17
//  109    case 0x07:
//  110      uart0Printf("yout choice is : 7\n");
??DIPswitch_ctrl_8:
        LDR.N    R0,??DataTable2_8
        BL       uart0Printf
//  111      break;
        B.N      ??DIPswitch_ctrl_17
//  112      
//  113    case 0x08:
//  114      uart0Printf("yout choice is : 8\n");
??DIPswitch_ctrl_7:
        LDR.N    R0,??DataTable2_9
        BL       uart0Printf
//  115      break;
        B.N      ??DIPswitch_ctrl_17
//  116    case 0x09:
//  117      uart0Printf("yout choice is : 9\n");
??DIPswitch_ctrl_10:
        LDR.N    R0,??DataTable2_10
        BL       uart0Printf
//  118      break;
        B.N      ??DIPswitch_ctrl_17
//  119    case 0x0A:
//  120      uart0Printf("yout choice is : A\n");
??DIPswitch_ctrl_9:
        LDR.N    R0,??DataTable2_11
        BL       uart0Printf
//  121      break;
        B.N      ??DIPswitch_ctrl_17
//  122    case 0x0B:
//  123      uart0Printf("yout choice is : B\n");
??DIPswitch_ctrl_12:
        LDR.N    R0,??DataTable2_12
        BL       uart0Printf
//  124      break;
        B.N      ??DIPswitch_ctrl_17
//  125      
//  126    case 0x0C:
//  127      uart0Printf("yout choice is : C\n");
??DIPswitch_ctrl_11:
        LDR.N    R0,??DataTable2_13
        BL       uart0Printf
//  128      break;
        B.N      ??DIPswitch_ctrl_17
//  129    case 0x0D:
//  130      uart0Printf("yout choice is : D\n");
??DIPswitch_ctrl_14:
        LDR.N    R0,??DataTable2_14
        BL       uart0Printf
//  131      break;
        B.N      ??DIPswitch_ctrl_17
//  132    case 0x0E:
//  133      uart0Printf("yout choice is : E\n");
??DIPswitch_ctrl_13:
        LDR.N    R0,??DataTable2_15
        BL       uart0Printf
//  134      break;
        B.N      ??DIPswitch_ctrl_17
//  135    case 0x0F:
//  136      uart0Printf("yout choice is : F\n");
??DIPswitch_ctrl_15:
        LDR.N    R0,??DataTable2_16
        BL       uart0Printf
//  137      break;
        B.N      ??DIPswitch_ctrl_17
//  138    default:
//  139      uart0Printf("yout choice is : Other\n");
??DIPswitch_ctrl_16:
        LDR.N    R0,??DataTable2_17
        BL       uart0Printf
//  140      break;
//  141    }
//  142    
//  143    uartPrintf("如果拨码开关和你希望的值是反相，尝试把宏定义 DIPVAL 取反\n");
??DIPswitch_ctrl_17:
        LDR.N    R0,??DataTable2_18
        BL       uartPrintf
//  144    return DIPswitch_val();
        BL       DIPswitch_val
        POP      {R1,PC}          ;; return
//  145 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2:
        DC32     GPIOx

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_1:
        DC32     `?<Constant "yout choice is : 0\\n">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_2:
        DC32     `?<Constant "yout choice is : 1\\n">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_3:
        DC32     `?<Constant "yout choice is : 2\\n">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_4:
        DC32     `?<Constant "yout choice is : 3\\n">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_5:
        DC32     `?<Constant "yout choice is : 4\\n">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_6:
        DC32     `?<Constant "yout choice is : 5\\n">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_7:
        DC32     `?<Constant "yout choice is : 6\\n">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_8:
        DC32     `?<Constant "yout choice is : 7\\n">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_9:
        DC32     `?<Constant "yout choice is : 8\\n">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_10:
        DC32     `?<Constant "yout choice is : 9\\n">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_11:
        DC32     `?<Constant "yout choice is : A\\n">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_12:
        DC32     `?<Constant "yout choice is : B\\n">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_13:
        DC32     `?<Constant "yout choice is : C\\n">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_14:
        DC32     `?<Constant "yout choice is : D\\n">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_15:
        DC32     `?<Constant "yout choice is : E\\n">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_16:
        DC32     `?<Constant "yout choice is : F\\n">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_17:
        DC32     `?<Constant "yout choice is : Other\\n">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_18:
        DC32     `?<Constant "\\310\\347\\271\\373\\262\\246\\302\\353\\2`

        SECTION `.iar_vfe_header`:DATA:REORDER:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "yout choice is : 0\\n">`:
        DATA
        DC8 "yout choice is : 0\012"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "yout choice is : 1\\n">`:
        DATA
        DC8 "yout choice is : 1\012"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "yout choice is : 2\\n">`:
        DATA
        DC8 "yout choice is : 2\012"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "yout choice is : 3\\n">`:
        DATA
        DC8 "yout choice is : 3\012"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "yout choice is : 4\\n">`:
        DATA
        DC8 "yout choice is : 4\012"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "yout choice is : 5\\n">`:
        DATA
        DC8 "yout choice is : 5\012"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "yout choice is : 6\\n">`:
        DATA
        DC8 "yout choice is : 6\012"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "yout choice is : 7\\n">`:
        DATA
        DC8 "yout choice is : 7\012"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "yout choice is : 8\\n">`:
        DATA
        DC8 "yout choice is : 8\012"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "yout choice is : 9\\n">`:
        DATA
        DC8 "yout choice is : 9\012"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "yout choice is : A\\n">`:
        DATA
        DC8 "yout choice is : A\012"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "yout choice is : B\\n">`:
        DATA
        DC8 "yout choice is : B\012"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "yout choice is : C\\n">`:
        DATA
        DC8 "yout choice is : C\012"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "yout choice is : D\\n">`:
        DATA
        DC8 "yout choice is : D\012"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "yout choice is : E\\n">`:
        DATA
        DC8 "yout choice is : E\012"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "yout choice is : F\\n">`:
        DATA
        DC8 "yout choice is : F\012"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "yout choice is : Other\\n">`:
        DATA
        DC8 "yout choice is : Other\012"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "\\310\\347\\271\\373\\262\\246\\302\\353\\2`:
        DATA
        DC8 0C8H, 0E7H, 0B9H, 0FBH, 0B2H, 0A6H, 0C2H, 0EBH
        DC8 0BFH, 0AAH, 0B9H, 0D8H, 0BAH, 0CDH, 0C4H, 0E3H
        DC8 0CFH, 0A3H, 0CDH, 0FBH, 0B5H, 0C4H, 0D6H, 0B5H
        DC8 0CAH, 0C7H, 0B7H, 0B4H, 0CFH, 0E0H, 0A3H, 0ACH
        DC8 0B3H, 0A2H, 0CAH, 0D4H, 0B0H, 0D1H, 0BAH, 0EAH
        DC8 0B6H, 0A8H, 0D2H, 0E5H, 20H, 44H, 49H, 50H
        DC8 56H, 41H, 4CH, 20H, 0C8H, 0A1H, 0B7H, 0B4H
        DC8 0AH, 0
        DC8 0, 0

        END
// 
// 404 bytes in section .rodata
// 414 bytes in section .text
// 
// 414 bytes of CODE  memory
// 404 bytes of CONST memory
//
//Errors: none
//Warnings: none
