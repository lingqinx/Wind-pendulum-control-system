///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.30.1.53127/W32 for ARM    22/Dec/2013  00:47:29 /
// Copyright 1999-2011 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  C:\Users\Administrator\Desktop\�������K60ģ��_ֻ�л��� /
//                    IO����\src\cpu\vectors.c                                /
//    Command line =  C:\Users\Administrator\Desktop\�������K60ģ��_ֻ�л��� /
//                    IO����\src\cpu\vectors.c -lCN                           /
//                    C:\Users\Administrator\Desktop\�������K60ģ��_ֻ�л��� /
//                    IO����\build\SX_demo\FLASH\List\ -lB                    /
//                    C:\Users\Administrator\Desktop\�������K60ģ��_ֻ�л��� /
//                    IO����\build\SX_demo\FLASH\List\ -o                     /
//                    C:\Users\Administrator\Desktop\�������K60ģ��_ֻ�л��� /
//                    IO����\build\SX_demo\FLASH\Obj\ --no_cse --no_unroll    /
//                    --no_inline --no_code_motion --no_tbaa --no_clustering  /
//                    --no_scheduling --debug --endian=little                 /
//                    --cpu=Cortex-M4 -e --fpu=None --dlib_config             /
//                    "E:\Program Files (x86)\IAR Systems\Embedded Workbench  /
//                    6.0\arm\INC\c\DLib_Config_Normal.h" -I                  /
//                    C:\Users\Administrator\Desktop\�������K60ģ��_ֻ�л��� /
//                    IO����\build\SX_demo\..\ -I                             /
//                    C:\Users\Administrator\Desktop\�������K60ģ��_ֻ�л��� /
//                    IO����\build\SX_demo\..\..\src\common\ -I               /
//                    C:\Users\Administrator\Desktop\�������K60ģ��_ֻ�л��� /
//                    IO����\build\SX_demo\..\..\src\cpu\ -I                  /
//                    C:\Users\Administrator\Desktop\�������K60ģ��_ֻ�л��� /
//                    IO����\build\SX_demo\..\..\src\drivers\ -I              /
//                    C:\Users\Administrator\Desktop\�������K60ģ��_ֻ�л��� /
//                    IO����\build\SX_demo\..\..\src\drivers\gpio\ -I         /
//                    C:\Users\Administrator\Desktop\�������K60ģ��_ֻ�л��� /
//                    IO����\build\SX_demo\..\..\src\drivers\wdog\ -I         /
//                    C:\Users\Administrator\Desktop\�������K60ģ��_ֻ�л��� /
//                    IO����\build\SX_demo\..\..\src\drivers\mcg\ -I          /
//                    C:\Users\Administrator\Desktop\�������K60ģ��_ֻ�л��� /
//                    IO����\build\SX_demo\..\..\src\drivers\uart\ -I         /
//                    C:\Users\Administrator\Desktop\�������K60ģ��_ֻ�л��� /
//                    IO����\build\SX_demo\..\..\src\drivers\lptmr\ -I        /
//                    C:\Users\Administrator\Desktop\�������K60ģ��_ֻ�л��� /
//                    IO����\build\SX_demo\..\..\src\drivers\LED\ -I          /
//                    C:\Users\Administrator\Desktop\�������K60ģ��_ֻ�л��� /
//                    IO����\build\SX_demo\..\..\src\drivers\fun\ -I          /
//                    C:\Users\Administrator\Desktop\�������K60ģ��_ֻ�л��� /
//                    IO����\build\SX_demo\..\..\src\drivers\FTM\ -I          /
//                    C:\Users\Administrator\Desktop\�������K60ģ��_ֻ�л��� /
//                    IO����\build\SX_demo\..\..\src\drivers\pit\ -I          /
//                    C:\Users\Administrator\Desktop\�������K60ģ��_ֻ�л��� /
//                    IO����\build\SX_demo\..\..\src\drivers\DIPswitch\ -I    /
//                    C:\Users\Administrator\Desktop\�������K60ģ��_ֻ�л��� /
//                    IO����\build\SX_demo\..\..\src\drivers\steer\ -I        /
//                    C:\Users\Administrator\Desktop\�������K60ģ��_ֻ�л��� /
//                    IO����\build\SX_demo\..\..\src\drivers\ccd\ -I          /
//                    C:\Users\Administrator\Desktop\�������K60ģ��_ֻ�л��� /
//                    IO����\build\SX_demo\..\..\src\drivers\dma\ -I          /
//                    C:\Users\Administrator\Desktop\�������K60ģ��_ֻ�л��� /
//                    IO����\build\SX_demo\..\..\src\drivers\motor\ -I        /
//                    C:\Users\Administrator\Desktop\�������K60ģ��_ֻ�л��� /
//                    IO����\build\SX_demo\..\..\src\platforms\ -I            /
//                    C:\Users\Administrator\Desktop\�������K60ģ��_ֻ�л��� /
//                    IO����\build\SX_demo\..\..\src\projects\ -I             /
//                    C:\Users\Administrator\Desktop\�������K60ģ��_ֻ�л��� /
//                    IO����\build\SX_demo\..\..\src\projects\SX_demo\ -Ol    /
//    List file    =  C:\Users\Administrator\Desktop\�������K60ģ��_ֻ�л��� /
//                    IO����\build\SX_demo\FLASH\List\vectors.s               /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME vectors

        #define SHT_PROGBITS 0x1

        EXTERN FTM2_IRQHandler
        EXTERN PIT0_IRQHandler
        EXTERN Reset_Handler
        EXTERN UART0_IRQHandler
        EXTERN __BOOT_STACK_ADDRESS
        EXTERN uart0Printf

        PUBLIC __vector_table
        PUBLIC default_isr

// C:\Users\Administrator\Desktop\�������K60ģ��_ֻ�л���IO����\src\cpu\vectors.c
//    1 /******************************************************************************
//    2 * File:    vectors.c
//    3 *
//    4 * Purpose: Configure interrupt vector table for Kinetis.
//    5 ******************************************************************************/
//    6 
//    7 #include "vectors.h"
//    8 #include "isr.h"
//    9 #include "common.h"
//   10 #include "uart.h"
//   11 
//   12 /******************************************************************************
//   13 * Vector Table
//   14 ******************************************************************************/
//   15 typedef void (*vector_entry)(void);
//   16 
//   17 #if defined(IAR)
//   18   #pragma location = ".intvec"

        SECTION `.intvec`:CONST:REORDER:NOROOT(2)
//   19   const vector_entry  __vector_table[] = //@ ".intvec" =
__vector_table:
        DATA
        DC32 __BOOT_STACK_ADDRESS, Reset_Handler, default_isr, default_isr
        DC32 default_isr, default_isr, default_isr, default_isr, default_isr
        DC32 default_isr, default_isr, default_isr, default_isr, default_isr
        DC32 default_isr, default_isr, default_isr, default_isr, default_isr
        DC32 default_isr, default_isr, default_isr, default_isr, default_isr
        DC32 default_isr, default_isr, default_isr, default_isr, default_isr
        DC32 default_isr, default_isr, default_isr, default_isr, default_isr
        DC32 default_isr, default_isr, default_isr, default_isr, default_isr
        DC32 default_isr, default_isr, default_isr, default_isr, default_isr
        DC32 default_isr, default_isr, default_isr, default_isr, default_isr
        DC32 default_isr, default_isr, default_isr, default_isr, default_isr
        DC32 default_isr, default_isr, default_isr, default_isr, default_isr
        DC32 default_isr, default_isr, UART0_IRQHandler, default_isr
        DC32 default_isr, default_isr, default_isr, default_isr, default_isr
        DC32 default_isr, default_isr, default_isr, default_isr, default_isr
        DC32 default_isr, default_isr, default_isr, default_isr, default_isr
        DC32 default_isr, default_isr, FTM2_IRQHandler, default_isr
        DC32 default_isr, default_isr, PIT0_IRQHandler, default_isr
        DC32 default_isr, default_isr, default_isr, default_isr, default_isr
        DC32 default_isr, default_isr, default_isr, default_isr, default_isr
        DC32 default_isr, default_isr, default_isr, default_isr, default_isr
        DC32 default_isr, default_isr, default_isr, default_isr, default_isr
        DC32 default_isr, default_isr, default_isr, default_isr, default_isr
        DC32 default_isr, default_isr, default_isr, default_isr, default_isr
        DC32 default_isr, default_isr, default_isr, default_isr, default_isr
        DC32 default_isr, default_isr, default_isr, default_isr, default_isr
        DC32 default_isr, default_isr, default_isr, default_isr, default_isr
        DC32 default_isr, default_isr, default_isr, default_isr, default_isr
        DC32 default_isr, default_isr, default_isr, default_isr, default_isr
        DC32 default_isr, default_isr, default_isr, default_isr, default_isr
        DC32 default_isr, default_isr, default_isr, default_isr, default_isr
        DC32 default_isr, default_isr, default_isr, default_isr, default_isr
        DC32 default_isr, default_isr, default_isr, default_isr, default_isr
        DC32 default_isr, default_isr, default_isr, default_isr, default_isr
        DC32 default_isr, default_isr, default_isr, default_isr, default_isr
        DC32 default_isr, default_isr, default_isr, default_isr, default_isr
        DC32 default_isr, default_isr, default_isr, default_isr, default_isr
        DC32 default_isr, default_isr, default_isr, default_isr, default_isr
        DC32 default_isr, default_isr, default_isr, default_isr, default_isr
        DC32 default_isr, default_isr, default_isr, default_isr, default_isr
        DC32 default_isr, default_isr, default_isr, default_isr, default_isr
        DC32 default_isr, default_isr, default_isr, default_isr, default_isr
        DC32 default_isr, default_isr, default_isr, default_isr, default_isr
        DC32 default_isr, default_isr, default_isr, default_isr, default_isr
        DC32 default_isr, default_isr, default_isr, default_isr, default_isr
        DC32 default_isr, default_isr, default_isr, default_isr, default_isr
        DC32 default_isr, default_isr, default_isr, default_isr, default_isr
        DC32 default_isr, default_isr, default_isr, default_isr, default_isr
        DC32 default_isr, default_isr, default_isr, default_isr, default_isr
        DC32 default_isr, default_isr, default_isr, default_isr, default_isr
        DC32 default_isr, default_isr, default_isr, default_isr, default_isr
        DC32 default_isr, default_isr, default_isr, default_isr, default_isr
        DC32 0FFFFFFFFH, 0FFFFFFFFH, 0FFFFFFFFH, 0FFFFFFFEH
//   20 #elif defined(CW)
//   21   #pragma define_section vectortable ".vectortable" ".vectortable" ".vectortable" far_abs R
//   22   #define VECTOR __declspec(vectortable)
//   23   const VECTOR vector_entry  __vector_table[] = //@ ".intvec" =
//   24 #endif
//   25 
//   26 {
//   27    VECTOR_000,           /* Initial SP           */
//   28    VECTOR_001,           /* Initial PC           */
//   29    VECTOR_002,
//   30    VECTOR_003,
//   31    VECTOR_004,
//   32    VECTOR_005,
//   33    VECTOR_006,
//   34    VECTOR_007,
//   35    VECTOR_008,
//   36    VECTOR_009,
//   37    VECTOR_010,
//   38    VECTOR_011,
//   39    VECTOR_012,
//   40    VECTOR_013,
//   41    VECTOR_014,
//   42    VECTOR_015,
//   43    VECTOR_016,
//   44    VECTOR_017,
//   45    VECTOR_018,
//   46    VECTOR_019,
//   47    VECTOR_020,
//   48    VECTOR_021,
//   49    VECTOR_022,
//   50    VECTOR_023,
//   51    VECTOR_024,
//   52    VECTOR_025,
//   53    VECTOR_026,
//   54    VECTOR_027,
//   55    VECTOR_028,
//   56    VECTOR_029,
//   57    VECTOR_030,
//   58    VECTOR_031,
//   59    VECTOR_032,
//   60    VECTOR_033,
//   61    VECTOR_034,
//   62    VECTOR_035,
//   63    VECTOR_036,
//   64    VECTOR_037,
//   65    VECTOR_038,
//   66    VECTOR_039,
//   67    VECTOR_040,
//   68    VECTOR_041,
//   69    VECTOR_042,
//   70    VECTOR_043,
//   71    VECTOR_044,
//   72    VECTOR_045,
//   73    VECTOR_046,
//   74    VECTOR_047,
//   75    VECTOR_048,
//   76    VECTOR_049,
//   77    VECTOR_050,
//   78    VECTOR_051,
//   79    VECTOR_052,
//   80    VECTOR_053,
//   81    VECTOR_054,
//   82    VECTOR_055,
//   83    VECTOR_056,
//   84    VECTOR_057,
//   85    VECTOR_058,
//   86    VECTOR_059,
//   87    VECTOR_060,
//   88    VECTOR_061,
//   89    VECTOR_062,
//   90    VECTOR_063,
//   91    VECTOR_064,
//   92    VECTOR_065,
//   93    VECTOR_066,
//   94    VECTOR_067,
//   95    VECTOR_068,
//   96    VECTOR_069,
//   97    VECTOR_070,
//   98    VECTOR_071,
//   99    VECTOR_072,
//  100    VECTOR_073,
//  101    VECTOR_074,
//  102    VECTOR_075,
//  103    VECTOR_076,
//  104    VECTOR_077,
//  105    VECTOR_078,
//  106    VECTOR_079,
//  107    VECTOR_080,
//  108    VECTOR_081,
//  109    VECTOR_082,
//  110    VECTOR_083,
//  111    VECTOR_084,
//  112    VECTOR_085,
//  113    VECTOR_086,
//  114    VECTOR_087,
//  115    VECTOR_088,
//  116    VECTOR_089,
//  117    VECTOR_090,
//  118    VECTOR_091,
//  119    VECTOR_092,
//  120    VECTOR_093,
//  121    VECTOR_094,
//  122    VECTOR_095,
//  123    VECTOR_096,
//  124    VECTOR_097,
//  125    VECTOR_098,
//  126    VECTOR_099,
//  127    VECTOR_100,
//  128    VECTOR_101,
//  129    VECTOR_102,
//  130    VECTOR_103,
//  131    VECTOR_104,
//  132    VECTOR_105,
//  133    VECTOR_106,
//  134    VECTOR_107,
//  135    VECTOR_108,
//  136    VECTOR_109,
//  137    VECTOR_110,
//  138    VECTOR_111,
//  139    VECTOR_112,
//  140    VECTOR_113,
//  141    VECTOR_114,
//  142    VECTOR_115,
//  143    VECTOR_116,
//  144    VECTOR_117,
//  145    VECTOR_118,
//  146    VECTOR_119,
//  147    VECTOR_120,
//  148    VECTOR_121,
//  149    VECTOR_122,
//  150    VECTOR_123,
//  151    VECTOR_124,
//  152    VECTOR_125,
//  153    VECTOR_126,
//  154    VECTOR_127,
//  155    VECTOR_128,
//  156    VECTOR_129,
//  157    VECTOR_130,
//  158    VECTOR_131,
//  159    VECTOR_132,
//  160    VECTOR_133,
//  161    VECTOR_134,
//  162    VECTOR_135,
//  163    VECTOR_136,
//  164    VECTOR_137,
//  165    VECTOR_138,
//  166    VECTOR_139,
//  167    VECTOR_140,
//  168    VECTOR_141,
//  169    VECTOR_142,
//  170    VECTOR_143,
//  171    VECTOR_144,
//  172    VECTOR_145,
//  173    VECTOR_146,
//  174    VECTOR_147,
//  175    VECTOR_148,
//  176    VECTOR_149,
//  177    VECTOR_150,
//  178    VECTOR_151,
//  179    VECTOR_152,
//  180    VECTOR_153,
//  181    VECTOR_154,
//  182    VECTOR_155,
//  183    VECTOR_156,
//  184    VECTOR_157,
//  185    VECTOR_158,
//  186    VECTOR_159,
//  187    VECTOR_160,
//  188    VECTOR_161,
//  189    VECTOR_162,
//  190    VECTOR_163,
//  191    VECTOR_164,
//  192    VECTOR_165,
//  193    VECTOR_166,
//  194    VECTOR_167,
//  195    VECTOR_168,
//  196    VECTOR_169,
//  197    VECTOR_170,
//  198    VECTOR_171,
//  199    VECTOR_172,
//  200    VECTOR_173,
//  201    VECTOR_174,
//  202    VECTOR_175,
//  203    VECTOR_176,
//  204    VECTOR_177,
//  205    VECTOR_178,
//  206    VECTOR_179,
//  207    VECTOR_180,
//  208    VECTOR_181,
//  209    VECTOR_182,
//  210    VECTOR_183,
//  211    VECTOR_184,
//  212    VECTOR_185,
//  213    VECTOR_186,
//  214    VECTOR_187,
//  215    VECTOR_188,
//  216    VECTOR_189,
//  217    VECTOR_190,
//  218    VECTOR_191,
//  219    VECTOR_192,
//  220    VECTOR_193,
//  221    VECTOR_194,
//  222    VECTOR_195,
//  223    VECTOR_196,
//  224    VECTOR_197,
//  225    VECTOR_198,
//  226    VECTOR_199,
//  227    VECTOR_200,
//  228    VECTOR_201,
//  229    VECTOR_202,
//  230    VECTOR_203,
//  231    VECTOR_204,
//  232    VECTOR_205,
//  233    VECTOR_206,
//  234    VECTOR_207,
//  235    VECTOR_208,
//  236    VECTOR_209,
//  237    VECTOR_210,
//  238    VECTOR_211,
//  239    VECTOR_212,
//  240    VECTOR_213,
//  241    VECTOR_214,
//  242    VECTOR_215,
//  243    VECTOR_216,
//  244    VECTOR_217,
//  245    VECTOR_218,
//  246    VECTOR_219,
//  247    VECTOR_220,
//  248    VECTOR_221,
//  249    VECTOR_222,
//  250    VECTOR_223,
//  251    VECTOR_224,
//  252    VECTOR_225,
//  253    VECTOR_226,
//  254    VECTOR_227,
//  255    VECTOR_228,
//  256    VECTOR_229,
//  257    VECTOR_230,
//  258    VECTOR_231,
//  259    VECTOR_232,
//  260    VECTOR_233,
//  261    VECTOR_234,
//  262    VECTOR_235,
//  263    VECTOR_236,
//  264    VECTOR_237,
//  265    VECTOR_238,
//  266    VECTOR_239,
//  267    VECTOR_240,
//  268    VECTOR_241,
//  269    VECTOR_242,
//  270    VECTOR_243,
//  271    VECTOR_244,
//  272    VECTOR_245,
//  273    VECTOR_246,
//  274    VECTOR_247,
//  275    VECTOR_248,
//  276    VECTOR_249,
//  277    VECTOR_250,
//  278    VECTOR_251,
//  279    VECTOR_252,
//  280    VECTOR_253,
//  281    VECTOR_254,
//  282    VECTOR_255,
//  283    CONFIG_1,        /* Flash configuration field values */
//  284    CONFIG_2,        /* Flash configuration field values */
//  285    CONFIG_3,        /* Flash configuration field values */
//  286    CONFIG_4,        /* Flash configuration field values */
//  287 
//  288 };
//  289 // VECTOR_TABLE end
//  290 /******************************************************************************
//  291 * default_isr(void)
//  292 *
//  293 * Default ISR definition.
//  294 *
//  295 * In:  n/a
//  296 * Out: n/a
//  297 ******************************************************************************/

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//  298 void default_isr(void)
//  299 {
default_isr:
        PUSH     {R7,LR}
//  300    #define VECTORNUM                     (*(volatile uint8_t*)(0xE000ED04))
//  301 
//  302    //LED_init();
//  303    //water_lights();                         //����ˮ����ָʾ�������״̬
//  304 
//  305    uart0Printf("\n****default_isr entered on vector %d*****\r\n\n",VECTORNUM);
        LDR.N    R0,??default_isr_0  ;; 0xe000ed04
        LDRB     R1,[R0, #+0]
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.N    R0,??default_isr_0+0x4
        BL       uart0Printf
//  306    
//  307    return;
        POP      {R0,PC}          ;; return
        DATA
??default_isr_0:
        DC32     0xe000ed04
        DC32     `?<Constant "\\n****default_isr ente...">`
//  308 }

        SECTION `.iar_vfe_header`:DATA:REORDER:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "\\n****default_isr ente...">`:
        DATA
        DC8 "\012****default_isr entered on vector %d*****\015\012\012"
        DC8 0, 0

        END
//  309 /******************************************************************************/
//  310 /* End of "vectors.c" */
//  311 /*
//  312 3 Ӳ���ж� ԭ��1 ����ģ��û�п��ж�
//  313 
//  314 
//  315 */
// 
// 1 040 bytes in section .intvec
//    48 bytes in section .rodata
//    24 bytes in section .text
// 
//    24 bytes of CODE  memory
// 1 088 bytes of CONST memory
//
//Errors: none
//Warnings: none
