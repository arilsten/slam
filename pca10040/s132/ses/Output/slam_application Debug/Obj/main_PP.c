# 1 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\main.c"
# 1 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\pca10040\\s132\\ses//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\main.c"
# 20 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\main.c"
# 1 "../../../../../../external/freertos/source/include/FreeRTOS.h" 1
# 35 "../../../../../../external/freertos/source/include/FreeRTOS.h"
# 1 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stddef.h" 1 3 4
# 47 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stddef.h" 3 4
# 1 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/__crossworks.h" 1 3 4
# 76 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/__crossworks.h" 3 4

# 76 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/__crossworks.h" 3 4
typedef __builtin_va_list __va_list;
# 126 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/__crossworks.h" 3 4
struct __mbstate_s {
  int __state;
  long __wchar;
};

typedef int (__RAL_mb_encode_t)(char *s, unsigned wc, struct __mbstate_s *codec);
typedef int (__RAL_mb_decode_t)(unsigned *pwc, const char *s, unsigned len, struct __mbstate_s *codec);

typedef struct {

  const char *decimal_point;
  const char *thousands_sep;
  const char *grouping;

  const char *int_curr_symbol;
  const char *currency_symbol;
  const char *mon_decimal_point;
  const char *mon_thousands_sep;
  const char *mon_grouping;
  const char *positive_sign;
  const char *negative_sign;

  char int_frac_digits;
  char frac_digits;
  char p_cs_precedes;
  char p_sep_by_space;
  char n_cs_precedes;
  char n_sep_by_space;
  char p_sign_posn;
  char n_sign_posn;
  char int_p_cs_precedes;
  char int_n_cs_precedes;
  char int_p_sep_by_space;
  char int_n_sep_by_space;
  char int_p_sign_posn;
  char int_n_sign_posn;




  const char *day_names;
  const char *abbrev_day_names;
  const char *month_names;
  const char *abbrev_month_names;
  const char *am_pm_indicator;
  const char *date_format;
  const char *time_format;
  const char *date_time_format;
} __RAL_locale_data_t;

enum {
  __RAL_WC_ALNUM = 1,
  __RAL_WC_ALPHA,
  __RAL_WC_CNTRL,
  __RAL_WC_DIGIT,
  __RAL_WC_GRAPH,
  __RAL_WC_LOWER,
  __RAL_WC_UPPER,
  __RAL_WC_SPACE,
  __RAL_WC_PRINT,
  __RAL_WC_PUNCT,
  __RAL_WC_BLANK,
  __RAL_WC_XDIGIT
};

enum {
  __RAL_WT_TOLOWER = 1,
  __RAL_WT_TOUPPER
};

typedef struct {

  int (*__isctype)(int, int);
  int (*__toupper)(int);
  int (*__tolower)(int);


  int (*__iswctype)(long, int);
  long (*__towupper)(long);
  long (*__towlower)(long);


  int (*__wctomb)(char *s, unsigned wc, struct __mbstate_s *state);
  int (*__mbtowc)(unsigned *pwc, const char *s, unsigned len, struct __mbstate_s *state);
} __RAL_locale_codeset_t;

typedef struct {
  const char *name;
  const __RAL_locale_data_t *data;
  const __RAL_locale_codeset_t *codeset;
} __RAL_locale_t;



typedef struct __locale_s {
  const __RAL_locale_t *__category[5];
} *__locale_t;


const __RAL_locale_t *__user_find_locale(const char *locale);
# 239 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/__crossworks.h" 3 4
const __RAL_locale_t *__RAL_find_locale(const char *locale);







const __RAL_locale_t *__RAL_global_locale_category(int __category);







const __RAL_locale_t *__RAL_locale_category(__locale_t __locale, int __category);






extern struct __locale_s __RAL_global_locale;






extern const __RAL_locale_t __RAL_c_locale;


extern const __RAL_locale_codeset_t __RAL_codeset_ascii;
extern const __RAL_locale_codeset_t __RAL_codeset_utf8;

extern const unsigned char __RAL_ascii_ctype_map[128];

extern const char __RAL_c_locale_day_names[];
extern const char __RAL_c_locale_abbrev_day_names[];
extern const char __RAL_c_locale_month_names[];
extern const char __RAL_c_locale_abbrev_month_names[];

extern const char __RAL_data_utf8_period[];
extern const char __RAL_data_utf8_comma[];
extern const char __RAL_data_utf8_space[];
extern const char __RAL_data_utf8_plus[];
extern const char __RAL_data_utf8_minus[];
extern const char __RAL_data_empty_string[];

const char *__RAL_string_list_decode(const char *str, int index);
int __RAL_string_list_encode(const char *list, const char *str);


void __RAL_init_mbstate(struct __mbstate_s *state);

int __RAL_ascii_wctomb(char *s, unsigned wc, struct __mbstate_s *state);
int __RAL_ascii_mbtowc(unsigned *pwc, const char *s, unsigned len, struct __mbstate_s *state);

int __RAL_utf8_wctomb(char *s, unsigned wc, struct __mbstate_s *state);
int __RAL_utf8_mbtowc(unsigned *pwc, const char *s, unsigned len, struct __mbstate_s *state);

int __RAL_mb_max(const struct __locale_s *loc);

struct timeval;


int __RAL_compare_locale_name(const char *str0, const char *str1);


extern int (*__user_set_time_of_day)(const struct timeval *tp);
extern int (*__user_get_time_of_day)(struct timeval *tp);


typedef struct { unsigned short min, max, map; } __RAL_unicode_map_bmp_range_t;
typedef struct { unsigned short cp, map; } __RAL_unicode_map_bmp_singleton_t;


typedef struct { unsigned short min, max; } __RAL_unicode_set_bmp_range_t;
typedef struct { long min, max; } __RAL_unicode_set_nonbmp_range_t;


int __RAL_unicode_iswctype(long ch, int ty);
long __RAL_unicode_towupper(long ch);
long __RAL_unicode_towlower(long ch);


int __RAL_unicode_map_range_search(const void *k0, const void *k1);
int __RAL_unicode_map_singleton_search(const void *k0, const void *k1);


int __RAL_unicode_set_bmp_range_search(const void *k0, const void *k1);
int __RAL_unicode_set_nonbmp_range_search(const void *k0, const void *k1);

typedef const char * (*__RAL_error_decoder_fn_t)(int error);

typedef struct __RAL_error_decoder_s
{
  __RAL_error_decoder_fn_t decode;
  struct __RAL_error_decoder_s *next;
} __RAL_error_decoder_t;

void __RAL_register_error_decoder(__RAL_error_decoder_t *decoder);

extern __RAL_error_decoder_t *__RAL_error_decoder_head;

const char *__RAL_decode_error(int num);
# 48 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stddef.h" 2 3 4







typedef unsigned size_t;






typedef int ptrdiff_t;
# 77 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stddef.h" 3 4
typedef unsigned wchar_t;
# 36 "../../../../../../external/freertos/source/include/FreeRTOS.h" 2
# 50 "../../../../../../external/freertos/source/include/FreeRTOS.h"
# 1 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stdint.h" 1 3 4
# 47 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stdint.h" 3 4
typedef signed char int8_t;
typedef unsigned char uint8_t;




typedef signed short int16_t;
typedef unsigned short uint16_t;
typedef signed int int32_t;
typedef unsigned int uint32_t;
# 68 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stdint.h" 3 4
typedef signed long long int64_t;
typedef unsigned long long uint64_t;


typedef int8_t int_least8_t;
typedef int16_t int_least16_t;
typedef int32_t int_least32_t;
typedef int64_t int_least64_t;

typedef uint8_t uint_least8_t;
typedef uint16_t uint_least16_t;
typedef uint32_t uint_least32_t;
typedef uint64_t uint_least64_t;



typedef int32_t int_fast8_t;
typedef int32_t int_fast16_t;
typedef int32_t int_fast32_t;
typedef int64_t int_fast64_t;

typedef uint32_t uint_fast8_t;
typedef uint32_t uint_fast16_t;
typedef uint32_t uint_fast32_t;
typedef uint64_t uint_fast64_t;

typedef int32_t intptr_t;
typedef uint32_t uintptr_t;
# 118 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stdint.h" 3 4
typedef int64_t intmax_t;
typedef uint64_t uintmax_t;
# 51 "../../../../../../external/freertos/source/include/FreeRTOS.h" 2






# 1 "../../../config/FreeRTOSConfig.h" 1
# 34 "../../../config/FreeRTOSConfig.h"
# 1 "../../../../../../components/softdevice/s132/headers/nrf_soc.h" 1
# 51 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
# 1 "../../../../../../modules/nrfx/mdk/nrf.h" 1
# 84 "../../../../../../modules/nrfx/mdk/nrf.h"
# 1 "../../../../../../modules/nrfx/mdk/nrf52.h" 1
# 74 "../../../../../../modules/nrfx/mdk/nrf52.h"

# 74 "../../../../../../modules/nrfx/mdk/nrf52.h"
typedef enum {

  Reset_IRQn = -15,
  NonMaskableInt_IRQn = -14,
  HardFault_IRQn = -13,
  MemoryManagement_IRQn = -12,

  BusFault_IRQn = -11,

  UsageFault_IRQn = -10,
  SVCall_IRQn = -5,
  DebugMonitor_IRQn = -4,
  PendSV_IRQn = -2,
  SysTick_IRQn = -1,

  POWER_CLOCK_IRQn = 0,
  RADIO_IRQn = 1,
  UARTE0_UART0_IRQn = 2,
  SPIM0_SPIS0_TWIM0_TWIS0_SPI0_TWI0_IRQn= 3,
  SPIM1_SPIS1_TWIM1_TWIS1_SPI1_TWI1_IRQn= 4,
  NFCT_IRQn = 5,
  GPIOTE_IRQn = 6,
  SAADC_IRQn = 7,
  TIMER0_IRQn = 8,
  TIMER1_IRQn = 9,
  TIMER2_IRQn = 10,
  RTC0_IRQn = 11,
  TEMP_IRQn = 12,
  RNG_IRQn = 13,
  ECB_IRQn = 14,
  CCM_AAR_IRQn = 15,
  WDT_IRQn = 16,
  RTC1_IRQn = 17,
  QDEC_IRQn = 18,
  COMP_LPCOMP_IRQn = 19,
  SWI0_EGU0_IRQn = 20,
  SWI1_EGU1_IRQn = 21,
  SWI2_EGU2_IRQn = 22,
  SWI3_EGU3_IRQn = 23,
  SWI4_EGU4_IRQn = 24,
  SWI5_EGU5_IRQn = 25,
  TIMER3_IRQn = 26,
  TIMER4_IRQn = 27,
  PWM0_IRQn = 28,
  PDM_IRQn = 29,
  MWU_IRQn = 32,
  PWM1_IRQn = 33,
  PWM2_IRQn = 34,
  SPIM2_SPIS2_SPI2_IRQn = 35,
  RTC2_IRQn = 36,
  I2S_IRQn = 37,
  FPU_IRQn = 38
} IRQn_Type;
# 146 "../../../../../../modules/nrfx/mdk/nrf52.h"
# 1 "../../../../../../components/toolchain/cmsis/include/core_cm4.h" 1
# 210 "../../../../../../components/toolchain/cmsis/include/core_cm4.h"
# 1 "../../../../../../components/toolchain/cmsis/include/core_cmInstr.h" 1
# 61 "../../../../../../components/toolchain/cmsis/include/core_cmInstr.h"
# 1 "../../../../../../components/toolchain/cmsis/include/cmsis_gcc.h" 1
# 40 "../../../../../../components/toolchain/cmsis/include/cmsis_gcc.h"
#pragma GCC diagnostic push
#pragma GCC diagnostic ignored "-Wsign-conversion"
#pragma GCC diagnostic ignored "-Wconversion"
#pragma GCC diagnostic ignored "-Wunused-parameter"
# 58 "../../../../../../components/toolchain/cmsis/include/cmsis_gcc.h"
__attribute__( ( always_inline ) ) static inline void __enable_irq(void)
{
  __asm volatile ("cpsie i" : : : "memory");
}







__attribute__( ( always_inline ) ) static inline void __disable_irq(void)
{
  __asm volatile ("cpsid i" : : : "memory");
}







__attribute__( ( always_inline ) ) static inline uint32_t __get_CONTROL(void)
{
  uint32_t result;

  __asm volatile ("MRS %0, control" : "=r" (result) );
  return(result);
}







__attribute__( ( always_inline ) ) static inline void __set_CONTROL(uint32_t control)
{
  __asm volatile ("MSR control, %0" : : "r" (control) : "memory");
}







__attribute__( ( always_inline ) ) static inline uint32_t __get_IPSR(void)
{
  uint32_t result;

  __asm volatile ("MRS %0, ipsr" : "=r" (result) );
  return(result);
}







__attribute__( ( always_inline ) ) static inline uint32_t __get_APSR(void)
{
  uint32_t result;

  __asm volatile ("MRS %0, apsr" : "=r" (result) );
  return(result);
}
# 134 "../../../../../../components/toolchain/cmsis/include/cmsis_gcc.h"
__attribute__( ( always_inline ) ) static inline uint32_t __get_xPSR(void)
{
  uint32_t result;

  __asm volatile ("MRS %0, xpsr" : "=r" (result) );
  return(result);
}







__attribute__( ( always_inline ) ) static inline uint32_t __get_PSP(void)
{
  register uint32_t result;

  __asm volatile ("MRS %0, psp\n" : "=r" (result) );
  return(result);
}







__attribute__( ( always_inline ) ) static inline void __set_PSP(uint32_t topOfProcStack)
{
  __asm volatile ("MSR psp, %0\n" : : "r" (topOfProcStack) : "sp");
}







__attribute__( ( always_inline ) ) static inline uint32_t __get_MSP(void)
{
  register uint32_t result;

  __asm volatile ("MRS %0, msp\n" : "=r" (result) );
  return(result);
}
# 188 "../../../../../../components/toolchain/cmsis/include/cmsis_gcc.h"
__attribute__( ( always_inline ) ) static inline void __set_MSP(uint32_t topOfMainStack)
{
  __asm volatile ("MSR msp, %0\n" : : "r" (topOfMainStack) : "sp");
}







__attribute__( ( always_inline ) ) static inline uint32_t __get_PRIMASK(void)
{
  uint32_t result;

  __asm volatile ("MRS %0, primask" : "=r" (result) );
  return(result);
}







__attribute__( ( always_inline ) ) static inline void __set_PRIMASK(uint32_t priMask)
{
  __asm volatile ("MSR primask, %0" : : "r" (priMask) : "memory");
}
# 226 "../../../../../../components/toolchain/cmsis/include/cmsis_gcc.h"
__attribute__( ( always_inline ) ) static inline void __enable_fault_irq(void)
{
  __asm volatile ("cpsie f" : : : "memory");
}







__attribute__( ( always_inline ) ) static inline void __disable_fault_irq(void)
{
  __asm volatile ("cpsid f" : : : "memory");
}







__attribute__( ( always_inline ) ) static inline uint32_t __get_BASEPRI(void)
{
  uint32_t result;

  __asm volatile ("MRS %0, basepri" : "=r" (result) );
  return(result);
}







__attribute__( ( always_inline ) ) static inline void __set_BASEPRI(uint32_t value)
{
  __asm volatile ("MSR basepri, %0" : : "r" (value) : "memory");
}
# 274 "../../../../../../components/toolchain/cmsis/include/cmsis_gcc.h"
__attribute__( ( always_inline ) ) static inline void __set_BASEPRI_MAX(uint32_t value)
{
  __asm volatile ("MSR basepri_max, %0" : : "r" (value) : "memory");
}







__attribute__( ( always_inline ) ) static inline uint32_t __get_FAULTMASK(void)
{
  uint32_t result;

  __asm volatile ("MRS %0, faultmask" : "=r" (result) );
  return(result);
}







__attribute__( ( always_inline ) ) static inline void __set_FAULTMASK(uint32_t faultMask)
{
  __asm volatile ("MSR faultmask, %0" : : "r" (faultMask) : "memory");
}
# 314 "../../../../../../components/toolchain/cmsis/include/cmsis_gcc.h"
__attribute__( ( always_inline ) ) static inline uint32_t __get_FPSCR(void)
{

  uint32_t result;


  __asm volatile ("");
  __asm volatile ("VMRS %0, fpscr" : "=r" (result) );
  __asm volatile ("");
  return(result);



}







__attribute__( ( always_inline ) ) static inline void __set_FPSCR(uint32_t fpscr)
{


  __asm volatile ("");
  __asm volatile ("VMSR fpscr, %0" : : "r" (fpscr) : "vfpcc");
  __asm volatile ("");

}
# 373 "../../../../../../components/toolchain/cmsis/include/cmsis_gcc.h"
__attribute__((always_inline)) static inline void __NOP(void)
{
  __asm volatile ("nop");
}






__attribute__((always_inline)) static inline void __WFI(void)
{
  __asm volatile ("wfi");
}







__attribute__((always_inline)) static inline void __WFE(void)
{
  __asm volatile ("wfe");
}






__attribute__((always_inline)) static inline void __SEV(void)
{
  __asm volatile ("sev");
}
# 416 "../../../../../../components/toolchain/cmsis/include/cmsis_gcc.h"
__attribute__((always_inline)) static inline void __ISB(void)
{
  __asm volatile ("isb 0xF":::"memory");
}







__attribute__((always_inline)) static inline void __DSB(void)
{
  __asm volatile ("dsb 0xF":::"memory");
}







__attribute__((always_inline)) static inline void __DMB(void)
{
  __asm volatile ("dmb 0xF":::"memory");
}
# 450 "../../../../../../components/toolchain/cmsis/include/cmsis_gcc.h"
__attribute__((always_inline)) static inline uint32_t __REV(uint32_t value)
{

  return __builtin_bswap32(value);






}
# 469 "../../../../../../components/toolchain/cmsis/include/cmsis_gcc.h"
__attribute__((always_inline)) static inline uint32_t __REV16(uint32_t value)
{
  uint32_t result;

  __asm volatile ("rev16 %0, %1" : "=r" (result) : "r" (value) );
  return(result);
}
# 484 "../../../../../../components/toolchain/cmsis/include/cmsis_gcc.h"
__attribute__((always_inline)) static inline int32_t __REVSH(int32_t value)
{

  return (short)__builtin_bswap16(value);






}
# 504 "../../../../../../components/toolchain/cmsis/include/cmsis_gcc.h"
__attribute__((always_inline)) static inline uint32_t __ROR(uint32_t op1, uint32_t op2)
{
  return (op1 >> op2) | (op1 << (32U - op2));
}
# 526 "../../../../../../components/toolchain/cmsis/include/cmsis_gcc.h"
__attribute__((always_inline)) static inline uint32_t __RBIT(uint32_t value)
{
  uint32_t result;


   __asm volatile ("rbit %0, %1" : "=r" (result) : "r" (value) );
# 544 "../../../../../../components/toolchain/cmsis/include/cmsis_gcc.h"
  return(result);
}
# 565 "../../../../../../components/toolchain/cmsis/include/cmsis_gcc.h"
__attribute__((always_inline)) static inline uint8_t __LDREXB(volatile uint8_t *addr)
{
    uint32_t result;


   __asm volatile ("ldrexb %0, %1" : "=r" (result) : "Q" (*addr) );






   return ((uint8_t) result);
}
# 587 "../../../../../../components/toolchain/cmsis/include/cmsis_gcc.h"
__attribute__((always_inline)) static inline uint16_t __LDREXH(volatile uint16_t *addr)
{
    uint32_t result;


   __asm volatile ("ldrexh %0, %1" : "=r" (result) : "Q" (*addr) );






   return ((uint16_t) result);
}
# 609 "../../../../../../components/toolchain/cmsis/include/cmsis_gcc.h"
__attribute__((always_inline)) static inline uint32_t __LDREXW(volatile uint32_t *addr)
{
    uint32_t result;

   __asm volatile ("ldrex %0, %1" : "=r" (result) : "Q" (*addr) );
   return(result);
}
# 626 "../../../../../../components/toolchain/cmsis/include/cmsis_gcc.h"
__attribute__((always_inline)) static inline uint32_t __STREXB(uint8_t value, volatile uint8_t *addr)
{
   uint32_t result;

   __asm volatile ("strexb %0, %2, %1" : "=&r" (result), "=Q" (*addr) : "r" ((uint32_t)value) );
   return(result);
}
# 643 "../../../../../../components/toolchain/cmsis/include/cmsis_gcc.h"
__attribute__((always_inline)) static inline uint32_t __STREXH(uint16_t value, volatile uint16_t *addr)
{
   uint32_t result;

   __asm volatile ("strexh %0, %2, %1" : "=&r" (result), "=Q" (*addr) : "r" ((uint32_t)value) );
   return(result);
}
# 660 "../../../../../../components/toolchain/cmsis/include/cmsis_gcc.h"
__attribute__((always_inline)) static inline uint32_t __STREXW(uint32_t value, volatile uint32_t *addr)
{
   uint32_t result;

   __asm volatile ("strex %0, %2, %1" : "=&r" (result), "=Q" (*addr) : "r" (value) );
   return(result);
}






__attribute__((always_inline)) static inline void __CLREX(void)
{
  __asm volatile ("clrex" ::: "memory");
}
# 716 "../../../../../../components/toolchain/cmsis/include/cmsis_gcc.h"
__attribute__((always_inline)) static inline uint32_t __RRX(uint32_t value)
{
  uint32_t result;

  __asm volatile ("rrx %0, %1" : "=r" (result) : "r" (value) );
  return(result);
}
# 731 "../../../../../../components/toolchain/cmsis/include/cmsis_gcc.h"
__attribute__((always_inline)) static inline uint8_t __LDRBT(volatile uint8_t *addr)
{
    uint32_t result;


   __asm volatile ("ldrbt %0, %1" : "=r" (result) : "Q" (*addr) );






   return ((uint8_t) result);
}
# 753 "../../../../../../components/toolchain/cmsis/include/cmsis_gcc.h"
__attribute__((always_inline)) static inline uint16_t __LDRHT(volatile uint16_t *addr)
{
    uint32_t result;


   __asm volatile ("ldrht %0, %1" : "=r" (result) : "Q" (*addr) );






   return ((uint16_t) result);
}
# 775 "../../../../../../components/toolchain/cmsis/include/cmsis_gcc.h"
__attribute__((always_inline)) static inline uint32_t __LDRT(volatile uint32_t *addr)
{
    uint32_t result;

   __asm volatile ("ldrt %0, %1" : "=r" (result) : "Q" (*addr) );
   return(result);
}
# 790 "../../../../../../components/toolchain/cmsis/include/cmsis_gcc.h"
__attribute__((always_inline)) static inline void __STRBT(uint8_t value, volatile uint8_t *addr)
{
   __asm volatile ("strbt %1, %0" : "=Q" (*addr) : "r" ((uint32_t)value) );
}
# 802 "../../../../../../components/toolchain/cmsis/include/cmsis_gcc.h"
__attribute__((always_inline)) static inline void __STRHT(uint16_t value, volatile uint16_t *addr)
{
   __asm volatile ("strht %1, %0" : "=Q" (*addr) : "r" ((uint32_t)value) );
}
# 814 "../../../../../../components/toolchain/cmsis/include/cmsis_gcc.h"
__attribute__((always_inline)) static inline void __STRT(uint32_t value, volatile uint32_t *addr)
{
   __asm volatile ("strt %1, %0" : "=Q" (*addr) : "r" (value) );
}
# 832 "../../../../../../components/toolchain/cmsis/include/cmsis_gcc.h"
__attribute__( ( always_inline ) ) static inline uint32_t __SADD8(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("sadd8 %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__( ( always_inline ) ) static inline uint32_t __QADD8(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("qadd8 %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__( ( always_inline ) ) static inline uint32_t __SHADD8(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("shadd8 %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__( ( always_inline ) ) static inline uint32_t __UADD8(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("uadd8 %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__( ( always_inline ) ) static inline uint32_t __UQADD8(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("uqadd8 %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__( ( always_inline ) ) static inline uint32_t __UHADD8(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("uhadd8 %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}


__attribute__( ( always_inline ) ) static inline uint32_t __SSUB8(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("ssub8 %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__( ( always_inline ) ) static inline uint32_t __QSUB8(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("qsub8 %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__( ( always_inline ) ) static inline uint32_t __SHSUB8(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("shsub8 %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__( ( always_inline ) ) static inline uint32_t __USUB8(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("usub8 %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__( ( always_inline ) ) static inline uint32_t __UQSUB8(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("uqsub8 %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__( ( always_inline ) ) static inline uint32_t __UHSUB8(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("uhsub8 %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}


__attribute__( ( always_inline ) ) static inline uint32_t __SADD16(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("sadd16 %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__( ( always_inline ) ) static inline uint32_t __QADD16(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("qadd16 %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__( ( always_inline ) ) static inline uint32_t __SHADD16(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("shadd16 %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__( ( always_inline ) ) static inline uint32_t __UADD16(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("uadd16 %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__( ( always_inline ) ) static inline uint32_t __UQADD16(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("uqadd16 %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__( ( always_inline ) ) static inline uint32_t __UHADD16(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("uhadd16 %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__( ( always_inline ) ) static inline uint32_t __SSUB16(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("ssub16 %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__( ( always_inline ) ) static inline uint32_t __QSUB16(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("qsub16 %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__( ( always_inline ) ) static inline uint32_t __SHSUB16(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("shsub16 %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__( ( always_inline ) ) static inline uint32_t __USUB16(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("usub16 %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__( ( always_inline ) ) static inline uint32_t __UQSUB16(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("uqsub16 %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__( ( always_inline ) ) static inline uint32_t __UHSUB16(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("uhsub16 %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__( ( always_inline ) ) static inline uint32_t __SASX(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("sasx %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__( ( always_inline ) ) static inline uint32_t __QASX(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("qasx %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__( ( always_inline ) ) static inline uint32_t __SHASX(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("shasx %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__( ( always_inline ) ) static inline uint32_t __UASX(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("uasx %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__( ( always_inline ) ) static inline uint32_t __UQASX(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("uqasx %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__( ( always_inline ) ) static inline uint32_t __UHASX(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("uhasx %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__( ( always_inline ) ) static inline uint32_t __SSAX(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("ssax %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__( ( always_inline ) ) static inline uint32_t __QSAX(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("qsax %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__( ( always_inline ) ) static inline uint32_t __SHSAX(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("shsax %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__( ( always_inline ) ) static inline uint32_t __USAX(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("usax %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__( ( always_inline ) ) static inline uint32_t __UQSAX(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("uqsax %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__( ( always_inline ) ) static inline uint32_t __UHSAX(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("uhsax %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__( ( always_inline ) ) static inline uint32_t __USAD8(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("usad8 %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__( ( always_inline ) ) static inline uint32_t __USADA8(uint32_t op1, uint32_t op2, uint32_t op3)
{
  uint32_t result;

  __asm volatile ("usada8 %0, %1, %2, %3" : "=r" (result) : "r" (op1), "r" (op2), "r" (op3) );
  return(result);
}
# 1152 "../../../../../../components/toolchain/cmsis/include/cmsis_gcc.h"
__attribute__( ( always_inline ) ) static inline uint32_t __UXTB16(uint32_t op1)
{
  uint32_t result;

  __asm volatile ("uxtb16 %0, %1" : "=r" (result) : "r" (op1));
  return(result);
}

__attribute__( ( always_inline ) ) static inline uint32_t __UXTAB16(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("uxtab16 %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__( ( always_inline ) ) static inline uint32_t __SXTB16(uint32_t op1)
{
  uint32_t result;

  __asm volatile ("sxtb16 %0, %1" : "=r" (result) : "r" (op1));
  return(result);
}

__attribute__( ( always_inline ) ) static inline uint32_t __SXTAB16(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("sxtab16 %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__( ( always_inline ) ) static inline uint32_t __SMUAD (uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("smuad %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__( ( always_inline ) ) static inline uint32_t __SMUADX (uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("smuadx %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__( ( always_inline ) ) static inline uint32_t __SMLAD (uint32_t op1, uint32_t op2, uint32_t op3)
{
  uint32_t result;

  __asm volatile ("smlad %0, %1, %2, %3" : "=r" (result) : "r" (op1), "r" (op2), "r" (op3) );
  return(result);
}

__attribute__( ( always_inline ) ) static inline uint32_t __SMLADX (uint32_t op1, uint32_t op2, uint32_t op3)
{
  uint32_t result;

  __asm volatile ("smladx %0, %1, %2, %3" : "=r" (result) : "r" (op1), "r" (op2), "r" (op3) );
  return(result);
}

__attribute__( ( always_inline ) ) static inline uint64_t __SMLALD (uint32_t op1, uint32_t op2, uint64_t acc)
{
  union llreg_u{
    uint32_t w32[2];
    uint64_t w64;
  } llr;
  llr.w64 = acc;


  __asm volatile ("smlald %0, %1, %2, %3" : "=r" (llr.w32[0]), "=r" (llr.w32[1]): "r" (op1), "r" (op2) , "0" (llr.w32[0]), "1" (llr.w32[1]) );




  return(llr.w64);
}

__attribute__( ( always_inline ) ) static inline uint64_t __SMLALDX (uint32_t op1, uint32_t op2, uint64_t acc)
{
  union llreg_u{
    uint32_t w32[2];
    uint64_t w64;
  } llr;
  llr.w64 = acc;


  __asm volatile ("smlaldx %0, %1, %2, %3" : "=r" (llr.w32[0]), "=r" (llr.w32[1]): "r" (op1), "r" (op2) , "0" (llr.w32[0]), "1" (llr.w32[1]) );




  return(llr.w64);
}

__attribute__( ( always_inline ) ) static inline uint32_t __SMUSD (uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("smusd %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__( ( always_inline ) ) static inline uint32_t __SMUSDX (uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("smusdx %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__( ( always_inline ) ) static inline uint32_t __SMLSD (uint32_t op1, uint32_t op2, uint32_t op3)
{
  uint32_t result;

  __asm volatile ("smlsd %0, %1, %2, %3" : "=r" (result) : "r" (op1), "r" (op2), "r" (op3) );
  return(result);
}

__attribute__( ( always_inline ) ) static inline uint32_t __SMLSDX (uint32_t op1, uint32_t op2, uint32_t op3)
{
  uint32_t result;

  __asm volatile ("smlsdx %0, %1, %2, %3" : "=r" (result) : "r" (op1), "r" (op2), "r" (op3) );
  return(result);
}

__attribute__( ( always_inline ) ) static inline uint64_t __SMLSLD (uint32_t op1, uint32_t op2, uint64_t acc)
{
  union llreg_u{
    uint32_t w32[2];
    uint64_t w64;
  } llr;
  llr.w64 = acc;


  __asm volatile ("smlsld %0, %1, %2, %3" : "=r" (llr.w32[0]), "=r" (llr.w32[1]): "r" (op1), "r" (op2) , "0" (llr.w32[0]), "1" (llr.w32[1]) );




  return(llr.w64);
}

__attribute__( ( always_inline ) ) static inline uint64_t __SMLSLDX (uint32_t op1, uint32_t op2, uint64_t acc)
{
  union llreg_u{
    uint32_t w32[2];
    uint64_t w64;
  } llr;
  llr.w64 = acc;


  __asm volatile ("smlsldx %0, %1, %2, %3" : "=r" (llr.w32[0]), "=r" (llr.w32[1]): "r" (op1), "r" (op2) , "0" (llr.w32[0]), "1" (llr.w32[1]) );




  return(llr.w64);
}

__attribute__( ( always_inline ) ) static inline uint32_t __SEL (uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("sel %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__( ( always_inline ) ) static inline int32_t __QADD( int32_t op1, int32_t op2)
{
  int32_t result;

  __asm volatile ("qadd %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__( ( always_inline ) ) static inline int32_t __QSUB( int32_t op1, int32_t op2)
{
  int32_t result;

  __asm volatile ("qsub %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}
# 1357 "../../../../../../components/toolchain/cmsis/include/cmsis_gcc.h"
__attribute__( ( always_inline ) ) static inline uint32_t __SMMLA (int32_t op1, int32_t op2, int32_t op3)
{
 int32_t result;

 __asm volatile ("smmla %0, %1, %2, %3" : "=r" (result): "r" (op1), "r" (op2), "r" (op3) );
 return(result);
}






#pragma GCC diagnostic pop
# 62 "../../../../../../components/toolchain/cmsis/include/core_cmInstr.h" 2
# 211 "../../../../../../components/toolchain/cmsis/include/core_cm4.h" 2
# 1 "../../../../../../components/toolchain/cmsis/include/core_cmFunc.h" 1
# 212 "../../../../../../components/toolchain/cmsis/include/core_cm4.h" 2
# 1 "../../../../../../components/toolchain/cmsis/include/core_cmSimd.h" 1
# 213 "../../../../../../components/toolchain/cmsis/include/core_cm4.h" 2
# 308 "../../../../../../components/toolchain/cmsis/include/core_cm4.h"
typedef union
{
  struct
  {
    uint32_t _reserved0:16;
    uint32_t GE:4;
    uint32_t _reserved1:7;
    uint32_t Q:1;
    uint32_t V:1;
    uint32_t C:1;
    uint32_t Z:1;
    uint32_t N:1;
  } b;
  uint32_t w;
} APSR_Type;
# 347 "../../../../../../components/toolchain/cmsis/include/core_cm4.h"
typedef union
{
  struct
  {
    uint32_t ISR:9;
    uint32_t _reserved0:23;
  } b;
  uint32_t w;
} IPSR_Type;
# 365 "../../../../../../components/toolchain/cmsis/include/core_cm4.h"
typedef union
{
  struct
  {
    uint32_t ISR:9;
    uint32_t _reserved0:7;
    uint32_t GE:4;
    uint32_t _reserved1:4;
    uint32_t T:1;
    uint32_t IT:2;
    uint32_t Q:1;
    uint32_t V:1;
    uint32_t C:1;
    uint32_t Z:1;
    uint32_t N:1;
  } b;
  uint32_t w;
} xPSR_Type;
# 416 "../../../../../../components/toolchain/cmsis/include/core_cm4.h"
typedef union
{
  struct
  {
    uint32_t nPRIV:1;
    uint32_t SPSEL:1;
    uint32_t FPCA:1;
    uint32_t _reserved0:29;
  } b;
  uint32_t w;
} CONTROL_Type;
# 451 "../../../../../../components/toolchain/cmsis/include/core_cm4.h"
typedef struct
{
  volatile uint32_t ISER[8U];
        uint32_t RESERVED0[24U];
  volatile uint32_t ICER[8U];
        uint32_t RSERVED1[24U];
  volatile uint32_t ISPR[8U];
        uint32_t RESERVED2[24U];
  volatile uint32_t ICPR[8U];
        uint32_t RESERVED3[24U];
  volatile uint32_t IABR[8U];
        uint32_t RESERVED4[56U];
  volatile uint8_t IP[240U];
        uint32_t RESERVED5[644U];
  volatile uint32_t STIR;
} NVIC_Type;
# 485 "../../../../../../components/toolchain/cmsis/include/core_cm4.h"
typedef struct
{
  volatile const uint32_t CPUID;
  volatile uint32_t ICSR;
  volatile uint32_t VTOR;
  volatile uint32_t AIRCR;
  volatile uint32_t SCR;
  volatile uint32_t CCR;
  volatile uint8_t SHP[12U];
  volatile uint32_t SHCSR;
  volatile uint32_t CFSR;
  volatile uint32_t HFSR;
  volatile uint32_t DFSR;
  volatile uint32_t MMFAR;
  volatile uint32_t BFAR;
  volatile uint32_t AFSR;
  volatile const uint32_t PFR[2U];
  volatile const uint32_t DFR;
  volatile const uint32_t ADR;
  volatile const uint32_t MMFR[4U];
  volatile const uint32_t ISAR[5U];
        uint32_t RESERVED0[5U];
  volatile uint32_t CPACR;
} SCB_Type;
# 704 "../../../../../../components/toolchain/cmsis/include/core_cm4.h"
typedef struct
{
        uint32_t RESERVED0[1U];
  volatile const uint32_t ICTR;
  volatile uint32_t ACTLR;
} SCnSCB_Type;
# 744 "../../../../../../components/toolchain/cmsis/include/core_cm4.h"
typedef struct
{
  volatile uint32_t CTRL;
  volatile uint32_t LOAD;
  volatile uint32_t VAL;
  volatile const uint32_t CALIB;
} SysTick_Type;
# 796 "../../../../../../components/toolchain/cmsis/include/core_cm4.h"
typedef struct
{
  volatile union
  {
    volatile uint8_t u8;
    volatile uint16_t u16;
    volatile uint32_t u32;
  } PORT [32U];
        uint32_t RESERVED0[864U];
  volatile uint32_t TER;
        uint32_t RESERVED1[15U];
  volatile uint32_t TPR;
        uint32_t RESERVED2[15U];
  volatile uint32_t TCR;
        uint32_t RESERVED3[29U];
  volatile uint32_t IWR;
  volatile const uint32_t IRR;
  volatile uint32_t IMCR;
        uint32_t RESERVED4[43U];
  volatile uint32_t LAR;
  volatile const uint32_t LSR;
        uint32_t RESERVED5[6U];
  volatile const uint32_t PID4;
  volatile const uint32_t PID5;
  volatile const uint32_t PID6;
  volatile const uint32_t PID7;
  volatile const uint32_t PID0;
  volatile const uint32_t PID1;
  volatile const uint32_t PID2;
  volatile const uint32_t PID3;
  volatile const uint32_t CID0;
  volatile const uint32_t CID1;
  volatile const uint32_t CID2;
  volatile const uint32_t CID3;
} ITM_Type;
# 899 "../../../../../../components/toolchain/cmsis/include/core_cm4.h"
typedef struct
{
  volatile uint32_t CTRL;
  volatile uint32_t CYCCNT;
  volatile uint32_t CPICNT;
  volatile uint32_t EXCCNT;
  volatile uint32_t SLEEPCNT;
  volatile uint32_t LSUCNT;
  volatile uint32_t FOLDCNT;
  volatile const uint32_t PCSR;
  volatile uint32_t COMP0;
  volatile uint32_t MASK0;
  volatile uint32_t FUNCTION0;
        uint32_t RESERVED0[1U];
  volatile uint32_t COMP1;
  volatile uint32_t MASK1;
  volatile uint32_t FUNCTION1;
        uint32_t RESERVED1[1U];
  volatile uint32_t COMP2;
  volatile uint32_t MASK2;
  volatile uint32_t FUNCTION2;
        uint32_t RESERVED2[1U];
  volatile uint32_t COMP3;
  volatile uint32_t MASK3;
  volatile uint32_t FUNCTION3;
} DWT_Type;
# 1046 "../../../../../../components/toolchain/cmsis/include/core_cm4.h"
typedef struct
{
  volatile uint32_t SSPSR;
  volatile uint32_t CSPSR;
        uint32_t RESERVED0[2U];
  volatile uint32_t ACPR;
        uint32_t RESERVED1[55U];
  volatile uint32_t SPPR;
        uint32_t RESERVED2[131U];
  volatile const uint32_t FFSR;
  volatile uint32_t FFCR;
  volatile const uint32_t FSCR;
        uint32_t RESERVED3[759U];
  volatile const uint32_t TRIGGER;
  volatile const uint32_t FIFO0;
  volatile const uint32_t ITATBCTR2;
        uint32_t RESERVED4[1U];
  volatile const uint32_t ITATBCTR0;
  volatile const uint32_t FIFO1;
  volatile uint32_t ITCTRL;
        uint32_t RESERVED5[39U];
  volatile uint32_t CLAIMSET;
  volatile uint32_t CLAIMCLR;
        uint32_t RESERVED7[8U];
  volatile const uint32_t DEVID;
  volatile const uint32_t DEVTYPE;
} TPI_Type;
# 1202 "../../../../../../components/toolchain/cmsis/include/core_cm4.h"
typedef struct
{
  volatile const uint32_t TYPE;
  volatile uint32_t CTRL;
  volatile uint32_t RNR;
  volatile uint32_t RBAR;
  volatile uint32_t RASR;
  volatile uint32_t RBAR_A1;
  volatile uint32_t RASR_A1;
  volatile uint32_t RBAR_A2;
  volatile uint32_t RASR_A2;
  volatile uint32_t RBAR_A3;
  volatile uint32_t RASR_A3;
} MPU_Type;
# 1297 "../../../../../../components/toolchain/cmsis/include/core_cm4.h"
typedef struct
{
        uint32_t RESERVED0[1U];
  volatile uint32_t FPCCR;
  volatile uint32_t FPCAR;
  volatile uint32_t FPDSCR;
  volatile const uint32_t MVFR0;
  volatile const uint32_t MVFR1;
} FPU_Type;
# 1404 "../../../../../../components/toolchain/cmsis/include/core_cm4.h"
typedef struct
{
  volatile uint32_t DHCSR;
  volatile uint32_t DCRSR;
  volatile uint32_t DCRDR;
  volatile uint32_t DEMCR;
} CoreDebug_Type;
# 1596 "../../../../../../components/toolchain/cmsis/include/core_cm4.h"
static inline void NVIC_SetPriorityGrouping(uint32_t PriorityGroup)
{
  uint32_t reg_value;
  uint32_t PriorityGroupTmp = (PriorityGroup & (uint32_t)0x07UL);

  reg_value = ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->AIRCR;
  reg_value &= ~((uint32_t)((0xFFFFUL << 16U) | (7UL << 8U)));
  reg_value = (reg_value |
                ((uint32_t)0x5FAUL << 16U) |
                (PriorityGroupTmp << 8U) );
  ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->AIRCR = reg_value;
}







static inline uint32_t NVIC_GetPriorityGrouping(void)
{
  return ((uint32_t)((((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->AIRCR & (7UL << 8U)) >> 8U));
}







static inline void NVIC_EnableIRQ(IRQn_Type IRQn)
{
  ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ISER[(((uint32_t)(int32_t)IRQn) >> 5UL)] = (uint32_t)(1UL << (((uint32_t)(int32_t)IRQn) & 0x1FUL));
}







static inline void NVIC_DisableIRQ(IRQn_Type IRQn)
{
  ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ICER[(((uint32_t)(int32_t)IRQn) >> 5UL)] = (uint32_t)(1UL << (((uint32_t)(int32_t)IRQn) & 0x1FUL));
}
# 1650 "../../../../../../components/toolchain/cmsis/include/core_cm4.h"
static inline uint32_t NVIC_GetPendingIRQ(IRQn_Type IRQn)
{
  return((uint32_t)(((((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ISPR[(((uint32_t)(int32_t)IRQn) >> 5UL)] & (1UL << (((uint32_t)(int32_t)IRQn) & 0x1FUL))) != 0UL) ? 1UL : 0UL));
}







static inline void NVIC_SetPendingIRQ(IRQn_Type IRQn)
{
  ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ISPR[(((uint32_t)(int32_t)IRQn) >> 5UL)] = (uint32_t)(1UL << (((uint32_t)(int32_t)IRQn) & 0x1FUL));
}







static inline void NVIC_ClearPendingIRQ(IRQn_Type IRQn)
{
  ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ICPR[(((uint32_t)(int32_t)IRQn) >> 5UL)] = (uint32_t)(1UL << (((uint32_t)(int32_t)IRQn) & 0x1FUL));
}
# 1685 "../../../../../../components/toolchain/cmsis/include/core_cm4.h"
static inline uint32_t NVIC_GetActive(IRQn_Type IRQn)
{
  return((uint32_t)(((((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->IABR[(((uint32_t)(int32_t)IRQn) >> 5UL)] & (1UL << (((uint32_t)(int32_t)IRQn) & 0x1FUL))) != 0UL) ? 1UL : 0UL));
}
# 1698 "../../../../../../components/toolchain/cmsis/include/core_cm4.h"
static inline void NVIC_SetPriority(IRQn_Type IRQn, uint32_t priority)
{
  if ((int32_t)(IRQn) < 0)
  {
    ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->SHP[(((uint32_t)(int32_t)IRQn) & 0xFUL)-4UL] = (uint8_t)((priority << (8U - 3)) & (uint32_t)0xFFUL);
  }
  else
  {
    ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->IP[((uint32_t)(int32_t)IRQn)] = (uint8_t)((priority << (8U - 3)) & (uint32_t)0xFFUL);
  }
}
# 1720 "../../../../../../components/toolchain/cmsis/include/core_cm4.h"
static inline uint32_t NVIC_GetPriority(IRQn_Type IRQn)
{

  if ((int32_t)(IRQn) < 0)
  {
    return(((uint32_t)((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->SHP[(((uint32_t)(int32_t)IRQn) & 0xFUL)-4UL] >> (8U - 3)));
  }
  else
  {
    return(((uint32_t)((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->IP[((uint32_t)(int32_t)IRQn)] >> (8U - 3)));
  }
}
# 1745 "../../../../../../components/toolchain/cmsis/include/core_cm4.h"
static inline uint32_t NVIC_EncodePriority (uint32_t PriorityGroup, uint32_t PreemptPriority, uint32_t SubPriority)
{
  uint32_t PriorityGroupTmp = (PriorityGroup & (uint32_t)0x07UL);
  uint32_t PreemptPriorityBits;
  uint32_t SubPriorityBits;

  PreemptPriorityBits = ((7UL - PriorityGroupTmp) > (uint32_t)(3)) ? (uint32_t)(3) : (uint32_t)(7UL - PriorityGroupTmp);
  SubPriorityBits = ((PriorityGroupTmp + (uint32_t)(3)) < (uint32_t)7UL) ? (uint32_t)0UL : (uint32_t)((PriorityGroupTmp - 7UL) + (uint32_t)(3));

  return (
           ((PreemptPriority & (uint32_t)((1UL << (PreemptPriorityBits)) - 1UL)) << SubPriorityBits) |
           ((SubPriority & (uint32_t)((1UL << (SubPriorityBits )) - 1UL)))
         );
}
# 1772 "../../../../../../components/toolchain/cmsis/include/core_cm4.h"
static inline void NVIC_DecodePriority (uint32_t Priority, uint32_t PriorityGroup, uint32_t* const pPreemptPriority, uint32_t* const pSubPriority)
{
  uint32_t PriorityGroupTmp = (PriorityGroup & (uint32_t)0x07UL);
  uint32_t PreemptPriorityBits;
  uint32_t SubPriorityBits;

  PreemptPriorityBits = ((7UL - PriorityGroupTmp) > (uint32_t)(3)) ? (uint32_t)(3) : (uint32_t)(7UL - PriorityGroupTmp);
  SubPriorityBits = ((PriorityGroupTmp + (uint32_t)(3)) < (uint32_t)7UL) ? (uint32_t)0UL : (uint32_t)((PriorityGroupTmp - 7UL) + (uint32_t)(3));

  *pPreemptPriority = (Priority >> SubPriorityBits) & (uint32_t)((1UL << (PreemptPriorityBits)) - 1UL);
  *pSubPriority = (Priority ) & (uint32_t)((1UL << (SubPriorityBits )) - 1UL);
}






static inline void NVIC_SystemReset(void)
{
  __DSB();

  ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->AIRCR = (uint32_t)((0x5FAUL << 16U) |
                           (((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->AIRCR & (7UL << 8U)) |
                            (1UL << 2U) );
  __DSB();

  for (;;)
  {
    __NOP();
  }
}
# 1830 "../../../../../../components/toolchain/cmsis/include/core_cm4.h"
static inline uint32_t SysTick_Config(uint32_t ticks)
{
  if ((ticks - 1UL) > (0xFFFFFFUL ))
  {
    return (1UL);
  }

  ((SysTick_Type *) ((0xE000E000UL) + 0x0010UL) )->LOAD = (uint32_t)(ticks - 1UL);
  NVIC_SetPriority (SysTick_IRQn, (1UL << 3) - 1UL);
  ((SysTick_Type *) ((0xE000E000UL) + 0x0010UL) )->VAL = 0UL;
  ((SysTick_Type *) ((0xE000E000UL) + 0x0010UL) )->CTRL = (1UL << 2U) |
                   (1UL << 1U) |
                   (1UL );
  return (0UL);
}
# 1860 "../../../../../../components/toolchain/cmsis/include/core_cm4.h"
extern volatile int32_t ITM_RxBuffer;
# 1872 "../../../../../../components/toolchain/cmsis/include/core_cm4.h"
static inline uint32_t ITM_SendChar (uint32_t ch)
{
  if (((((ITM_Type *) (0xE0000000UL) )->TCR & (1UL )) != 0UL) &&
      ((((ITM_Type *) (0xE0000000UL) )->TER & 1UL ) != 0UL) )
  {
    while (((ITM_Type *) (0xE0000000UL) )->PORT[0U].u32 == 0UL)
    {
      __NOP();
    }
    ((ITM_Type *) (0xE0000000UL) )->PORT[0U].u8 = (uint8_t)ch;
  }
  return (ch);
}
# 1893 "../../../../../../components/toolchain/cmsis/include/core_cm4.h"
static inline int32_t ITM_ReceiveChar (void)
{
  int32_t ch = -1;

  if (ITM_RxBuffer != 0x5AA55AA5U)
  {
    ch = ITM_RxBuffer;
    ITM_RxBuffer = 0x5AA55AA5U;
  }

  return (ch);
}
# 1913 "../../../../../../components/toolchain/cmsis/include/core_cm4.h"
static inline int32_t ITM_CheckChar (void)
{

  if (ITM_RxBuffer == 0x5AA55AA5U)
  {
    return (0);
  }
  else
  {
    return (1);
  }
}
# 147 "../../../../../../modules/nrfx/mdk/nrf52.h" 2
# 1 "../../../../../../modules/nrfx/mdk/system_nrf52.h" 1
# 33 "../../../../../../modules/nrfx/mdk/system_nrf52.h"
extern uint32_t SystemCoreClock;
# 44 "../../../../../../modules/nrfx/mdk/system_nrf52.h"
extern void SystemInit (void);
# 55 "../../../../../../modules/nrfx/mdk/system_nrf52.h"
extern void SystemCoreClockUpdate (void);
# 148 "../../../../../../modules/nrfx/mdk/nrf52.h" 2
# 177 "../../../../../../modules/nrfx/mdk/nrf52.h"
typedef struct {
  volatile const uint32_t PART;
  volatile const uint32_t VARIANT;
  volatile const uint32_t PACKAGE;
  volatile const uint32_t RAM;
  volatile const uint32_t FLASH;
  volatile uint32_t UNUSED0[3];
} FICR_INFO_Type;

typedef struct {
  volatile const uint32_t A0;
  volatile const uint32_t A1;
  volatile const uint32_t A2;
  volatile const uint32_t A3;
  volatile const uint32_t A4;
  volatile const uint32_t A5;
  volatile const uint32_t B0;
  volatile const uint32_t B1;
  volatile const uint32_t B2;
  volatile const uint32_t B3;
  volatile const uint32_t B4;
  volatile const uint32_t B5;
  volatile const uint32_t T0;
  volatile const uint32_t T1;
  volatile const uint32_t T2;
  volatile const uint32_t T3;
  volatile const uint32_t T4;
} FICR_TEMP_Type;

typedef struct {
  volatile const uint32_t TAGHEADER0;

  volatile const uint32_t TAGHEADER1;

  volatile const uint32_t TAGHEADER2;

  volatile const uint32_t TAGHEADER3;

} FICR_NFC_Type;

typedef struct {
  volatile uint32_t POWER;
  volatile uint32_t POWERSET;
  volatile uint32_t POWERCLR;
  volatile const uint32_t RESERVED0;
} POWER_RAM_Type;

typedef struct {
  volatile uint32_t RTS;
  volatile uint32_t TXD;
  volatile uint32_t CTS;
  volatile uint32_t RXD;
} UARTE_PSEL_Type;

typedef struct {
  volatile uint32_t PTR;
  volatile uint32_t MAXCNT;
  volatile const uint32_t AMOUNT;
} UARTE_RXD_Type;

typedef struct {
  volatile uint32_t PTR;
  volatile uint32_t MAXCNT;
  volatile const uint32_t AMOUNT;
} UARTE_TXD_Type;

typedef struct {
  volatile uint32_t SCK;
  volatile uint32_t MOSI;
  volatile uint32_t MISO;
} SPIM_PSEL_Type;

typedef struct {
  volatile uint32_t PTR;
  volatile uint32_t MAXCNT;
  volatile const uint32_t AMOUNT;
  volatile uint32_t LIST;
} SPIM_RXD_Type;

typedef struct {
  volatile uint32_t PTR;
  volatile uint32_t MAXCNT;
  volatile const uint32_t AMOUNT;
  volatile uint32_t LIST;
} SPIM_TXD_Type;

typedef struct {
  volatile uint32_t SCK;
  volatile uint32_t MISO;
  volatile uint32_t MOSI;
  volatile uint32_t CSN;
} SPIS_PSEL_Type;

typedef struct {
  volatile uint32_t PTR;
  volatile uint32_t MAXCNT;
  volatile const uint32_t AMOUNT;
} SPIS_RXD_Type;

typedef struct {
  volatile uint32_t PTR;
  volatile uint32_t MAXCNT;
  volatile const uint32_t AMOUNT;
} SPIS_TXD_Type;

typedef struct {
  volatile uint32_t SCL;
  volatile uint32_t SDA;
} TWIM_PSEL_Type;

typedef struct {
  volatile uint32_t PTR;
  volatile uint32_t MAXCNT;
  volatile const uint32_t AMOUNT;
  volatile uint32_t LIST;
} TWIM_RXD_Type;

typedef struct {
  volatile uint32_t PTR;
  volatile uint32_t MAXCNT;
  volatile const uint32_t AMOUNT;
  volatile uint32_t LIST;
} TWIM_TXD_Type;

typedef struct {
  volatile uint32_t SCL;
  volatile uint32_t SDA;
} TWIS_PSEL_Type;

typedef struct {
  volatile uint32_t PTR;
  volatile uint32_t MAXCNT;
  volatile const uint32_t AMOUNT;
} TWIS_RXD_Type;

typedef struct {
  volatile uint32_t PTR;
  volatile uint32_t MAXCNT;
  volatile const uint32_t AMOUNT;
} TWIS_TXD_Type;

typedef struct {
  volatile uint32_t SCK;
  volatile uint32_t MOSI;
  volatile uint32_t MISO;
} SPI_PSEL_Type;

typedef struct {
  volatile uint32_t RX;
} NFCT_FRAMESTATUS_Type;

typedef struct {
  volatile uint32_t FRAMECONFIG;
  volatile uint32_t AMOUNT;
} NFCT_TXD_Type;

typedef struct {
  volatile uint32_t FRAMECONFIG;
  volatile const uint32_t AMOUNT;
} NFCT_RXD_Type;

typedef struct {
  volatile uint32_t LIMITH;
  volatile uint32_t LIMITL;
} SAADC_EVENTS_CH_Type;

typedef struct {
  volatile uint32_t PSELP;
  volatile uint32_t PSELN;
  volatile uint32_t CONFIG;
  volatile uint32_t LIMIT;

} SAADC_CH_Type;

typedef struct {
  volatile uint32_t PTR;
  volatile uint32_t MAXCNT;
  volatile const uint32_t AMOUNT;
} SAADC_RESULT_Type;

typedef struct {
  volatile uint32_t LED;
  volatile uint32_t A;
  volatile uint32_t B;
} QDEC_PSEL_Type;

typedef struct {
  volatile uint32_t PTR;

  volatile uint32_t CNT;

  volatile uint32_t REFRESH;

  volatile uint32_t ENDDELAY;
  volatile const uint32_t RESERVED1[4];
} PWM_SEQ_Type;

typedef struct {
  volatile uint32_t OUT[4];

} PWM_PSEL_Type;

typedef struct {
  volatile uint32_t CLK;
  volatile uint32_t DIN;
} PDM_PSEL_Type;

typedef struct {
  volatile uint32_t PTR;
  volatile uint32_t MAXCNT;
} PDM_SAMPLE_Type;

typedef struct {
  volatile uint32_t EN;
  volatile uint32_t DIS;
} PPI_TASKS_CHG_Type;

typedef struct {
  volatile uint32_t EEP;
  volatile uint32_t TEP;
} PPI_CH_Type;

typedef struct {
  volatile uint32_t TEP;
} PPI_FORK_Type;

typedef struct {
  volatile uint32_t WA;
  volatile uint32_t RA;
} MWU_EVENTS_REGION_Type;

typedef struct {
  volatile uint32_t WA;

  volatile uint32_t RA;
} MWU_EVENTS_PREGION_Type;

typedef struct {
  volatile uint32_t SUBSTATWA;


  volatile uint32_t SUBSTATRA;


} MWU_PERREGION_Type;

typedef struct {
  volatile uint32_t START;
  volatile uint32_t END;
  volatile const uint32_t RESERVED2[2];
} MWU_REGION_Type;

typedef struct {
  volatile const uint32_t START;
  volatile const uint32_t END;
  volatile uint32_t SUBS;
  volatile const uint32_t RESERVED3;
} MWU_PREGION_Type;

typedef struct {
  volatile uint32_t MODE;
  volatile uint32_t RXEN;
  volatile uint32_t TXEN;
  volatile uint32_t MCKEN;
  volatile uint32_t MCKFREQ;
  volatile uint32_t RATIO;
  volatile uint32_t SWIDTH;
  volatile uint32_t ALIGN;
  volatile uint32_t FORMAT;
  volatile uint32_t CHANNELS;
} I2S_CONFIG_Type;

typedef struct {
  volatile uint32_t PTR;
} I2S_RXD_Type;

typedef struct {
  volatile uint32_t PTR;
} I2S_TXD_Type;

typedef struct {
  volatile uint32_t MAXCNT;
} I2S_RXTXD_Type;

typedef struct {
  volatile uint32_t MCK;
  volatile uint32_t SCK;
  volatile uint32_t LRCK;
  volatile uint32_t SDIN;
  volatile uint32_t SDOUT;
} I2S_PSEL_Type;
# 479 "../../../../../../modules/nrfx/mdk/nrf52.h"
typedef struct {
  volatile const uint32_t RESERVED0[4];
  volatile const uint32_t CODEPAGESIZE;
  volatile const uint32_t CODESIZE;
  volatile const uint32_t RESERVED1[18];
  volatile const uint32_t DEVICEID[2];
  volatile const uint32_t RESERVED2[6];
  volatile const uint32_t ER[4];
  volatile const uint32_t IR[4];
  volatile const uint32_t DEVICEADDRTYPE;
  volatile const uint32_t DEVICEADDR[2];
  volatile const uint32_t RESERVED3[21];
  FICR_INFO_Type INFO;
  volatile const uint32_t RESERVED4[185];
  FICR_TEMP_Type TEMP;
  volatile const uint32_t RESERVED5[2];
  FICR_NFC_Type NFC;
} NRF_FICR_Type;
# 508 "../../../../../../modules/nrfx/mdk/nrf52.h"
typedef struct {
  volatile uint32_t UNUSED0;
  volatile uint32_t UNUSED1;
  volatile uint32_t UNUSED2;
  volatile const uint32_t RESERVED0;
  volatile uint32_t UNUSED3;
  volatile uint32_t NRFFW[15];
  volatile uint32_t NRFHW[12];
  volatile uint32_t CUSTOMER[32];
  volatile const uint32_t RESERVED1[64];
  volatile uint32_t PSELRESET[2];

  volatile uint32_t APPROTECT;
  volatile uint32_t NFCPINS;

} NRF_UICR_Type;
# 535 "../../../../../../modules/nrfx/mdk/nrf52.h"
typedef struct {
  volatile const uint32_t RESERVED0[384];
  volatile uint32_t CONFIG0;
  volatile uint32_t CONFIG1;
  volatile uint32_t DISABLEINDEBUG;
  volatile uint32_t UNUSED0;
  volatile uint32_t CONFIG2;
  volatile uint32_t CONFIG3;
} NRF_BPROT_Type;
# 555 "../../../../../../modules/nrfx/mdk/nrf52.h"
typedef struct {
  volatile const uint32_t RESERVED0[30];
  volatile uint32_t TASKS_CONSTLAT;
  volatile uint32_t TASKS_LOWPWR;
  volatile const uint32_t RESERVED1[34];
  volatile uint32_t EVENTS_POFWARN;
  volatile const uint32_t RESERVED2[2];
  volatile uint32_t EVENTS_SLEEPENTER;
  volatile uint32_t EVENTS_SLEEPEXIT;
  volatile const uint32_t RESERVED3[122];
  volatile uint32_t INTENSET;
  volatile uint32_t INTENCLR;
  volatile const uint32_t RESERVED4[61];
  volatile uint32_t RESETREAS;
  volatile const uint32_t RESERVED5[9];
  volatile const uint32_t RAMSTATUS;
  volatile const uint32_t RESERVED6[53];
  volatile uint32_t SYSTEMOFF;
  volatile const uint32_t RESERVED7[3];
  volatile uint32_t POFCON;
  volatile const uint32_t RESERVED8[2];
  volatile uint32_t GPREGRET;
  volatile uint32_t GPREGRET2;
  volatile uint32_t RAMON;

  volatile const uint32_t RESERVED9[11];
  volatile uint32_t RAMONB;

  volatile const uint32_t RESERVED10[8];
  volatile uint32_t DCDCEN;
  volatile const uint32_t RESERVED11[225];
  POWER_RAM_Type RAM[8];
} NRF_POWER_Type;
# 599 "../../../../../../modules/nrfx/mdk/nrf52.h"
typedef struct {
  volatile uint32_t TASKS_HFCLKSTART;
  volatile uint32_t TASKS_HFCLKSTOP;
  volatile uint32_t TASKS_LFCLKSTART;
  volatile uint32_t TASKS_LFCLKSTOP;
  volatile uint32_t TASKS_CAL;
  volatile uint32_t TASKS_CTSTART;
  volatile uint32_t TASKS_CTSTOP;
  volatile const uint32_t RESERVED0[57];
  volatile uint32_t EVENTS_HFCLKSTARTED;
  volatile uint32_t EVENTS_LFCLKSTARTED;
  volatile const uint32_t RESERVED1;
  volatile uint32_t EVENTS_DONE;
  volatile uint32_t EVENTS_CTTO;
  volatile const uint32_t RESERVED2[124];
  volatile uint32_t INTENSET;
  volatile uint32_t INTENCLR;
  volatile const uint32_t RESERVED3[63];
  volatile const uint32_t HFCLKRUN;
  volatile const uint32_t HFCLKSTAT;
  volatile const uint32_t RESERVED4;
  volatile const uint32_t LFCLKRUN;
  volatile const uint32_t LFCLKSTAT;
  volatile const uint32_t LFCLKSRCCOPY;
  volatile const uint32_t RESERVED5[62];
  volatile uint32_t LFCLKSRC;
  volatile const uint32_t RESERVED6[7];
  volatile uint32_t CTIV;
  volatile const uint32_t RESERVED7[8];
  volatile uint32_t TRACECONFIG;
} NRF_CLOCK_Type;
# 641 "../../../../../../modules/nrfx/mdk/nrf52.h"
typedef struct {
  volatile uint32_t TASKS_TXEN;
  volatile uint32_t TASKS_RXEN;
  volatile uint32_t TASKS_START;
  volatile uint32_t TASKS_STOP;
  volatile uint32_t TASKS_DISABLE;
  volatile uint32_t TASKS_RSSISTART;

  volatile uint32_t TASKS_RSSISTOP;
  volatile uint32_t TASKS_BCSTART;
  volatile uint32_t TASKS_BCSTOP;
  volatile const uint32_t RESERVED0[55];
  volatile uint32_t EVENTS_READY;
  volatile uint32_t EVENTS_ADDRESS;
  volatile uint32_t EVENTS_PAYLOAD;
  volatile uint32_t EVENTS_END;
  volatile uint32_t EVENTS_DISABLED;
  volatile uint32_t EVENTS_DEVMATCH;
  volatile uint32_t EVENTS_DEVMISS;
  volatile uint32_t EVENTS_RSSIEND;
  volatile const uint32_t RESERVED1[2];
  volatile uint32_t EVENTS_BCMATCH;
  volatile const uint32_t RESERVED2;
  volatile uint32_t EVENTS_CRCOK;
  volatile uint32_t EVENTS_CRCERROR;
  volatile const uint32_t RESERVED3[50];
  volatile uint32_t SHORTS;
  volatile const uint32_t RESERVED4[64];
  volatile uint32_t INTENSET;
  volatile uint32_t INTENCLR;
  volatile const uint32_t RESERVED5[61];
  volatile const uint32_t CRCSTATUS;
  volatile const uint32_t RESERVED6;
  volatile const uint32_t RXMATCH;
  volatile const uint32_t RXCRC;
  volatile const uint32_t DAI;
  volatile const uint32_t RESERVED7[60];
  volatile uint32_t PACKETPTR;
  volatile uint32_t FREQUENCY;
  volatile uint32_t TXPOWER;
  volatile uint32_t MODE;
  volatile uint32_t PCNF0;
  volatile uint32_t PCNF1;
  volatile uint32_t BASE0;
  volatile uint32_t BASE1;
  volatile uint32_t PREFIX0;
  volatile uint32_t PREFIX1;
  volatile uint32_t TXADDRESS;
  volatile uint32_t RXADDRESSES;
  volatile uint32_t CRCCNF;
  volatile uint32_t CRCPOLY;
  volatile uint32_t CRCINIT;
  volatile uint32_t UNUSED0;
  volatile uint32_t TIFS;
  volatile const uint32_t RSSISAMPLE;
  volatile const uint32_t RESERVED8;
  volatile const uint32_t STATE;
  volatile uint32_t DATAWHITEIV;
  volatile const uint32_t RESERVED9[2];
  volatile uint32_t BCC;
  volatile const uint32_t RESERVED10[39];
  volatile uint32_t DAB[8];
  volatile uint32_t DAP[8];
  volatile uint32_t DACNF;
  volatile const uint32_t RESERVED11[3];
  volatile uint32_t MODECNF0;
  volatile const uint32_t RESERVED12[618];
  volatile uint32_t POWER;
} NRF_RADIO_Type;
# 721 "../../../../../../modules/nrfx/mdk/nrf52.h"
typedef struct {
  volatile uint32_t TASKS_STARTRX;
  volatile uint32_t TASKS_STOPRX;
  volatile uint32_t TASKS_STARTTX;
  volatile uint32_t TASKS_STOPTX;
  volatile const uint32_t RESERVED0[7];
  volatile uint32_t TASKS_FLUSHRX;
  volatile const uint32_t RESERVED1[52];
  volatile uint32_t EVENTS_CTS;
  volatile uint32_t EVENTS_NCTS;
  volatile uint32_t EVENTS_RXDRDY;

  volatile const uint32_t RESERVED2;
  volatile uint32_t EVENTS_ENDRX;
  volatile const uint32_t RESERVED3[2];
  volatile uint32_t EVENTS_TXDRDY;
  volatile uint32_t EVENTS_ENDTX;
  volatile uint32_t EVENTS_ERROR;
  volatile const uint32_t RESERVED4[7];
  volatile uint32_t EVENTS_RXTO;
  volatile const uint32_t RESERVED5;
  volatile uint32_t EVENTS_RXSTARTED;
  volatile uint32_t EVENTS_TXSTARTED;
  volatile const uint32_t RESERVED6;
  volatile uint32_t EVENTS_TXSTOPPED;
  volatile const uint32_t RESERVED7[41];
  volatile uint32_t SHORTS;
  volatile const uint32_t RESERVED8[63];
  volatile uint32_t INTEN;
  volatile uint32_t INTENSET;
  volatile uint32_t INTENCLR;
  volatile const uint32_t RESERVED9[93];
  volatile uint32_t ERRORSRC;
  volatile const uint32_t RESERVED10[31];
  volatile uint32_t ENABLE;
  volatile const uint32_t RESERVED11;
  UARTE_PSEL_Type PSEL;
  volatile const uint32_t RESERVED12[3];
  volatile uint32_t BAUDRATE;
  volatile const uint32_t RESERVED13[3];
  UARTE_RXD_Type RXD;
  volatile const uint32_t RESERVED14;
  UARTE_TXD_Type TXD;
  volatile const uint32_t RESERVED15[7];
  volatile uint32_t CONFIG;
} NRF_UARTE_Type;
# 778 "../../../../../../modules/nrfx/mdk/nrf52.h"
typedef struct {
  volatile uint32_t TASKS_STARTRX;
  volatile uint32_t TASKS_STOPRX;
  volatile uint32_t TASKS_STARTTX;
  volatile uint32_t TASKS_STOPTX;
  volatile const uint32_t RESERVED0[3];
  volatile uint32_t TASKS_SUSPEND;
  volatile const uint32_t RESERVED1[56];
  volatile uint32_t EVENTS_CTS;
  volatile uint32_t EVENTS_NCTS;
  volatile uint32_t EVENTS_RXDRDY;
  volatile const uint32_t RESERVED2[4];
  volatile uint32_t EVENTS_TXDRDY;
  volatile const uint32_t RESERVED3;
  volatile uint32_t EVENTS_ERROR;
  volatile const uint32_t RESERVED4[7];
  volatile uint32_t EVENTS_RXTO;
  volatile const uint32_t RESERVED5[46];
  volatile uint32_t SHORTS;
  volatile const uint32_t RESERVED6[64];
  volatile uint32_t INTENSET;
  volatile uint32_t INTENCLR;
  volatile const uint32_t RESERVED7[93];
  volatile uint32_t ERRORSRC;
  volatile const uint32_t RESERVED8[31];
  volatile uint32_t ENABLE;
  volatile const uint32_t RESERVED9;
  volatile uint32_t PSELRTS;
  volatile uint32_t PSELTXD;
  volatile uint32_t PSELCTS;
  volatile uint32_t PSELRXD;
  volatile const uint32_t RXD;
  volatile uint32_t TXD;
  volatile const uint32_t RESERVED10;
  volatile uint32_t BAUDRATE;
  volatile const uint32_t RESERVED11[17];
  volatile uint32_t CONFIG;
} NRF_UART_Type;
# 827 "../../../../../../modules/nrfx/mdk/nrf52.h"
typedef struct {
  volatile const uint32_t RESERVED0[4];
  volatile uint32_t TASKS_START;
  volatile uint32_t TASKS_STOP;
  volatile const uint32_t RESERVED1;
  volatile uint32_t TASKS_SUSPEND;
  volatile uint32_t TASKS_RESUME;
  volatile const uint32_t RESERVED2[56];
  volatile uint32_t EVENTS_STOPPED;
  volatile const uint32_t RESERVED3[2];
  volatile uint32_t EVENTS_ENDRX;
  volatile const uint32_t RESERVED4;
  volatile uint32_t EVENTS_END;
  volatile const uint32_t RESERVED5;
  volatile uint32_t EVENTS_ENDTX;
  volatile const uint32_t RESERVED6[10];
  volatile uint32_t EVENTS_STARTED;
  volatile const uint32_t RESERVED7[44];
  volatile uint32_t SHORTS;
  volatile const uint32_t RESERVED8[64];
  volatile uint32_t INTENSET;
  volatile uint32_t INTENCLR;
  volatile const uint32_t RESERVED9[125];
  volatile uint32_t ENABLE;
  volatile const uint32_t RESERVED10;
  SPIM_PSEL_Type PSEL;
  volatile const uint32_t RESERVED11[4];
  volatile uint32_t FREQUENCY;
  volatile const uint32_t RESERVED12[3];
  SPIM_RXD_Type RXD;
  SPIM_TXD_Type TXD;
  volatile uint32_t CONFIG;
  volatile const uint32_t RESERVED13[26];
  volatile uint32_t ORC;

} NRF_SPIM_Type;
# 874 "../../../../../../modules/nrfx/mdk/nrf52.h"
typedef struct {
  volatile const uint32_t RESERVED0[9];
  volatile uint32_t TASKS_ACQUIRE;
  volatile uint32_t TASKS_RELEASE;
  volatile const uint32_t RESERVED1[54];
  volatile uint32_t EVENTS_END;
  volatile const uint32_t RESERVED2[2];
  volatile uint32_t EVENTS_ENDRX;
  volatile const uint32_t RESERVED3[5];
  volatile uint32_t EVENTS_ACQUIRED;
  volatile const uint32_t RESERVED4[53];
  volatile uint32_t SHORTS;
  volatile const uint32_t RESERVED5[64];
  volatile uint32_t INTENSET;
  volatile uint32_t INTENCLR;
  volatile const uint32_t RESERVED6[61];
  volatile const uint32_t SEMSTAT;
  volatile const uint32_t RESERVED7[15];
  volatile uint32_t STATUS;
  volatile const uint32_t RESERVED8[47];
  volatile uint32_t ENABLE;
  volatile const uint32_t RESERVED9;
  SPIS_PSEL_Type PSEL;
  volatile const uint32_t RESERVED10[7];
  SPIS_RXD_Type RXD;
  volatile const uint32_t RESERVED11;
  SPIS_TXD_Type TXD;
  volatile const uint32_t RESERVED12;
  volatile uint32_t CONFIG;
  volatile const uint32_t RESERVED13;
  volatile uint32_t DEF;

  volatile const uint32_t RESERVED14[24];
  volatile uint32_t ORC;
} NRF_SPIS_Type;
# 920 "../../../../../../modules/nrfx/mdk/nrf52.h"
typedef struct {
  volatile uint32_t TASKS_STARTRX;
  volatile const uint32_t RESERVED0;
  volatile uint32_t TASKS_STARTTX;
  volatile const uint32_t RESERVED1[2];
  volatile uint32_t TASKS_STOP;

  volatile const uint32_t RESERVED2;
  volatile uint32_t TASKS_SUSPEND;
  volatile uint32_t TASKS_RESUME;
  volatile const uint32_t RESERVED3[56];
  volatile uint32_t EVENTS_STOPPED;
  volatile const uint32_t RESERVED4[7];
  volatile uint32_t EVENTS_ERROR;
  volatile const uint32_t RESERVED5[8];
  volatile uint32_t EVENTS_SUSPENDED;

  volatile uint32_t EVENTS_RXSTARTED;
  volatile uint32_t EVENTS_TXSTARTED;
  volatile const uint32_t RESERVED6[2];
  volatile uint32_t EVENTS_LASTRX;
  volatile uint32_t EVENTS_LASTTX;
  volatile const uint32_t RESERVED7[39];
  volatile uint32_t SHORTS;
  volatile const uint32_t RESERVED8[63];
  volatile uint32_t INTEN;
  volatile uint32_t INTENSET;
  volatile uint32_t INTENCLR;
  volatile const uint32_t RESERVED9[110];
  volatile uint32_t ERRORSRC;
  volatile const uint32_t RESERVED10[14];
  volatile uint32_t ENABLE;
  volatile const uint32_t RESERVED11;
  TWIM_PSEL_Type PSEL;
  volatile const uint32_t RESERVED12[5];
  volatile uint32_t FREQUENCY;
  volatile const uint32_t RESERVED13[3];
  TWIM_RXD_Type RXD;
  TWIM_TXD_Type TXD;
  volatile const uint32_t RESERVED14[13];
  volatile uint32_t ADDRESS;
} NRF_TWIM_Type;
# 973 "../../../../../../modules/nrfx/mdk/nrf52.h"
typedef struct {
  volatile const uint32_t RESERVED0[5];
  volatile uint32_t TASKS_STOP;
  volatile const uint32_t RESERVED1;
  volatile uint32_t TASKS_SUSPEND;
  volatile uint32_t TASKS_RESUME;
  volatile const uint32_t RESERVED2[3];
  volatile uint32_t TASKS_PREPARERX;
  volatile uint32_t TASKS_PREPARETX;
  volatile const uint32_t RESERVED3[51];
  volatile uint32_t EVENTS_STOPPED;
  volatile const uint32_t RESERVED4[7];
  volatile uint32_t EVENTS_ERROR;
  volatile const uint32_t RESERVED5[9];
  volatile uint32_t EVENTS_RXSTARTED;
  volatile uint32_t EVENTS_TXSTARTED;
  volatile const uint32_t RESERVED6[4];
  volatile uint32_t EVENTS_WRITE;
  volatile uint32_t EVENTS_READ;
  volatile const uint32_t RESERVED7[37];
  volatile uint32_t SHORTS;
  volatile const uint32_t RESERVED8[63];
  volatile uint32_t INTEN;
  volatile uint32_t INTENSET;
  volatile uint32_t INTENCLR;
  volatile const uint32_t RESERVED9[113];
  volatile uint32_t ERRORSRC;
  volatile const uint32_t MATCH;
  volatile const uint32_t RESERVED10[10];
  volatile uint32_t ENABLE;
  volatile const uint32_t RESERVED11;
  TWIS_PSEL_Type PSEL;
  volatile const uint32_t RESERVED12[9];
  TWIS_RXD_Type RXD;
  volatile const uint32_t RESERVED13;
  TWIS_TXD_Type TXD;
  volatile const uint32_t RESERVED14[14];
  volatile uint32_t ADDRESS[2];
  volatile const uint32_t RESERVED15;
  volatile uint32_t CONFIG;
  volatile const uint32_t RESERVED16[10];
  volatile uint32_t ORC;

} NRF_TWIS_Type;
# 1028 "../../../../../../modules/nrfx/mdk/nrf52.h"
typedef struct {
  volatile const uint32_t RESERVED0[66];
  volatile uint32_t EVENTS_READY;
  volatile const uint32_t RESERVED1[126];
  volatile uint32_t INTENSET;
  volatile uint32_t INTENCLR;
  volatile const uint32_t RESERVED2[125];
  volatile uint32_t ENABLE;
  volatile const uint32_t RESERVED3;
  SPI_PSEL_Type PSEL;
  volatile const uint32_t RESERVED4;
  volatile const uint32_t RXD;
  volatile uint32_t TXD;
  volatile const uint32_t RESERVED5;
  volatile uint32_t FREQUENCY;
  volatile const uint32_t RESERVED6[11];
  volatile uint32_t CONFIG;
} NRF_SPI_Type;
# 1057 "../../../../../../modules/nrfx/mdk/nrf52.h"
typedef struct {
  volatile uint32_t TASKS_STARTRX;
  volatile const uint32_t RESERVED0;
  volatile uint32_t TASKS_STARTTX;
  volatile const uint32_t RESERVED1[2];
  volatile uint32_t TASKS_STOP;
  volatile const uint32_t RESERVED2;
  volatile uint32_t TASKS_SUSPEND;
  volatile uint32_t TASKS_RESUME;
  volatile const uint32_t RESERVED3[56];
  volatile uint32_t EVENTS_STOPPED;
  volatile uint32_t EVENTS_RXDREADY;
  volatile const uint32_t RESERVED4[4];
  volatile uint32_t EVENTS_TXDSENT;
  volatile const uint32_t RESERVED5;
  volatile uint32_t EVENTS_ERROR;
  volatile const uint32_t RESERVED6[4];
  volatile uint32_t EVENTS_BB;

  volatile const uint32_t RESERVED7[3];
  volatile uint32_t EVENTS_SUSPENDED;
  volatile const uint32_t RESERVED8[45];
  volatile uint32_t SHORTS;
  volatile const uint32_t RESERVED9[64];
  volatile uint32_t INTENSET;
  volatile uint32_t INTENCLR;
  volatile const uint32_t RESERVED10[110];
  volatile uint32_t ERRORSRC;
  volatile const uint32_t RESERVED11[14];
  volatile uint32_t ENABLE;
  volatile const uint32_t RESERVED12;
  volatile uint32_t PSELSCL;
  volatile uint32_t PSELSDA;
  volatile const uint32_t RESERVED13[2];
  volatile const uint32_t RXD;
  volatile uint32_t TXD;
  volatile const uint32_t RESERVED14;
  volatile uint32_t FREQUENCY;
  volatile const uint32_t RESERVED15[24];
  volatile uint32_t ADDRESS;
} NRF_TWI_Type;
# 1109 "../../../../../../modules/nrfx/mdk/nrf52.h"
typedef struct {
  volatile uint32_t TASKS_ACTIVATE;

  volatile uint32_t TASKS_DISABLE;
  volatile uint32_t TASKS_SENSE;
  volatile uint32_t TASKS_STARTTX;
  volatile const uint32_t RESERVED0[3];
  volatile uint32_t TASKS_ENABLERXDATA;
  volatile const uint32_t RESERVED1;
  volatile uint32_t TASKS_GOIDLE;
  volatile uint32_t TASKS_GOSLEEP;
  volatile const uint32_t RESERVED2[53];
  volatile uint32_t EVENTS_READY;
  volatile uint32_t EVENTS_FIELDDETECTED;
  volatile uint32_t EVENTS_FIELDLOST;
  volatile uint32_t EVENTS_TXFRAMESTART;
  volatile uint32_t EVENTS_TXFRAMEEND;
  volatile uint32_t EVENTS_RXFRAMESTART;
  volatile uint32_t EVENTS_RXFRAMEEND;

  volatile uint32_t EVENTS_ERROR;

  volatile const uint32_t RESERVED3[2];
  volatile uint32_t EVENTS_RXERROR;

  volatile uint32_t EVENTS_ENDRX;
  volatile uint32_t EVENTS_ENDTX;

  volatile const uint32_t RESERVED4;
  volatile uint32_t EVENTS_AUTOCOLRESSTARTED;
  volatile const uint32_t RESERVED5[3];
  volatile uint32_t EVENTS_COLLISION;
  volatile uint32_t EVENTS_SELECTED;
  volatile uint32_t EVENTS_STARTED;
  volatile const uint32_t RESERVED6[43];
  volatile uint32_t SHORTS;
  volatile const uint32_t RESERVED7[63];
  volatile uint32_t INTEN;
  volatile uint32_t INTENSET;
  volatile uint32_t INTENCLR;
  volatile const uint32_t RESERVED8[62];
  volatile uint32_t ERRORSTATUS;
  volatile const uint32_t RESERVED9;
  NFCT_FRAMESTATUS_Type FRAMESTATUS;
  volatile const uint32_t RESERVED10[8];
  volatile const uint32_t CURRENTLOADCTRL;
  volatile const uint32_t RESERVED11[2];
  volatile const uint32_t FIELDPRESENT;
  volatile const uint32_t RESERVED12[49];
  volatile uint32_t FRAMEDELAYMIN;
  volatile uint32_t FRAMEDELAYMAX;
  volatile uint32_t FRAMEDELAYMODE;
  volatile uint32_t PACKETPTR;
  volatile uint32_t MAXLEN;

  NFCT_TXD_Type TXD;
  NFCT_RXD_Type RXD;
  volatile const uint32_t RESERVED13[26];
  volatile uint32_t NFCID1_LAST;
  volatile uint32_t NFCID1_2ND_LAST;
  volatile uint32_t NFCID1_3RD_LAST;
  volatile const uint32_t RESERVED14;
  volatile uint32_t SENSRES;
  volatile uint32_t SELRES;
} NRF_NFCT_Type;
# 1185 "../../../../../../modules/nrfx/mdk/nrf52.h"
typedef struct {
  volatile uint32_t TASKS_OUT[8];

  volatile const uint32_t RESERVED0[4];
  volatile uint32_t TASKS_SET[8];

  volatile const uint32_t RESERVED1[4];
  volatile uint32_t TASKS_CLR[8];

  volatile const uint32_t RESERVED2[32];
  volatile uint32_t EVENTS_IN[8];

  volatile const uint32_t RESERVED3[23];
  volatile uint32_t EVENTS_PORT;

  volatile const uint32_t RESERVED4[97];
  volatile uint32_t INTENSET;
  volatile uint32_t INTENCLR;
  volatile const uint32_t RESERVED5[129];
  volatile uint32_t CONFIG[8];

} NRF_GPIOTE_Type;
# 1218 "../../../../../../modules/nrfx/mdk/nrf52.h"
typedef struct {
  volatile uint32_t TASKS_START;
  volatile uint32_t TASKS_SAMPLE;
  volatile uint32_t TASKS_STOP;
  volatile uint32_t TASKS_CALIBRATEOFFSET;
  volatile const uint32_t RESERVED0[60];
  volatile uint32_t EVENTS_STARTED;
  volatile uint32_t EVENTS_END;
  volatile uint32_t EVENTS_DONE;


  volatile uint32_t EVENTS_RESULTDONE;
  volatile uint32_t EVENTS_CALIBRATEDONE;
  volatile uint32_t EVENTS_STOPPED;
  SAADC_EVENTS_CH_Type EVENTS_CH[8];
  volatile const uint32_t RESERVED1[106];
  volatile uint32_t INTEN;
  volatile uint32_t INTENSET;
  volatile uint32_t INTENCLR;
  volatile const uint32_t RESERVED2[61];
  volatile const uint32_t STATUS;
  volatile const uint32_t RESERVED3[63];
  volatile uint32_t ENABLE;
  volatile const uint32_t RESERVED4[3];
  SAADC_CH_Type CH[8];
  volatile const uint32_t RESERVED5[24];
  volatile uint32_t RESOLUTION;
  volatile uint32_t OVERSAMPLE;


  volatile uint32_t SAMPLERATE;
  volatile const uint32_t RESERVED6[12];
  SAADC_RESULT_Type RESULT;
} NRF_SAADC_Type;
# 1263 "../../../../../../modules/nrfx/mdk/nrf52.h"
typedef struct {
  volatile uint32_t TASKS_START;
  volatile uint32_t TASKS_STOP;
  volatile uint32_t TASKS_COUNT;
  volatile uint32_t TASKS_CLEAR;
  volatile uint32_t TASKS_SHUTDOWN;
  volatile const uint32_t RESERVED0[11];
  volatile uint32_t TASKS_CAPTURE[6];
  volatile const uint32_t RESERVED1[58];
  volatile uint32_t EVENTS_COMPARE[6];
  volatile const uint32_t RESERVED2[42];
  volatile uint32_t SHORTS;
  volatile const uint32_t RESERVED3[64];
  volatile uint32_t INTENSET;
  volatile uint32_t INTENCLR;
  volatile const uint32_t RESERVED4[126];
  volatile uint32_t MODE;
  volatile uint32_t BITMODE;
  volatile const uint32_t RESERVED5;
  volatile uint32_t PRESCALER;
  volatile const uint32_t RESERVED6[11];
  volatile uint32_t CC[6];
} NRF_TIMER_Type;
# 1297 "../../../../../../modules/nrfx/mdk/nrf52.h"
typedef struct {
  volatile uint32_t TASKS_START;
  volatile uint32_t TASKS_STOP;
  volatile uint32_t TASKS_CLEAR;
  volatile uint32_t TASKS_TRIGOVRFLW;
  volatile const uint32_t RESERVED0[60];
  volatile uint32_t EVENTS_TICK;
  volatile uint32_t EVENTS_OVRFLW;
  volatile const uint32_t RESERVED1[14];
  volatile uint32_t EVENTS_COMPARE[4];
  volatile const uint32_t RESERVED2[109];
  volatile uint32_t INTENSET;
  volatile uint32_t INTENCLR;
  volatile const uint32_t RESERVED3[13];
  volatile uint32_t EVTEN;
  volatile uint32_t EVTENSET;
  volatile uint32_t EVTENCLR;
  volatile const uint32_t RESERVED4[110];
  volatile const uint32_t COUNTER;
  volatile uint32_t PRESCALER;

  volatile const uint32_t RESERVED5[13];
  volatile uint32_t CC[4];
} NRF_RTC_Type;
# 1332 "../../../../../../modules/nrfx/mdk/nrf52.h"
typedef struct {
  volatile uint32_t TASKS_START;
  volatile uint32_t TASKS_STOP;
  volatile const uint32_t RESERVED0[62];
  volatile uint32_t EVENTS_DATARDY;
  volatile const uint32_t RESERVED1[128];
  volatile uint32_t INTENSET;
  volatile uint32_t INTENCLR;
  volatile const uint32_t RESERVED2[127];
  volatile const int32_t TEMP;
  volatile const uint32_t RESERVED3[5];
  volatile uint32_t A0;
  volatile uint32_t A1;
  volatile uint32_t A2;
  volatile uint32_t A3;
  volatile uint32_t A4;
  volatile uint32_t A5;
  volatile const uint32_t RESERVED4[2];
  volatile uint32_t B0;
  volatile uint32_t B1;
  volatile uint32_t B2;
  volatile uint32_t B3;
  volatile uint32_t B4;
  volatile uint32_t B5;
  volatile const uint32_t RESERVED5[2];
  volatile uint32_t T0;
  volatile uint32_t T1;
  volatile uint32_t T2;
  volatile uint32_t T3;
  volatile uint32_t T4;
} NRF_TEMP_Type;
# 1374 "../../../../../../modules/nrfx/mdk/nrf52.h"
typedef struct {
  volatile uint32_t TASKS_START;
  volatile uint32_t TASKS_STOP;
  volatile const uint32_t RESERVED0[62];
  volatile uint32_t EVENTS_VALRDY;

  volatile const uint32_t RESERVED1[63];
  volatile uint32_t SHORTS;
  volatile const uint32_t RESERVED2[64];
  volatile uint32_t INTENSET;
  volatile uint32_t INTENCLR;
  volatile const uint32_t RESERVED3[126];
  volatile uint32_t CONFIG;
  volatile const uint32_t VALUE;
} NRF_RNG_Type;
# 1400 "../../../../../../modules/nrfx/mdk/nrf52.h"
typedef struct {
  volatile uint32_t TASKS_STARTECB;
  volatile uint32_t TASKS_STOPECB;
  volatile const uint32_t RESERVED0[62];
  volatile uint32_t EVENTS_ENDECB;
  volatile uint32_t EVENTS_ERRORECB;

  volatile const uint32_t RESERVED1[127];
  volatile uint32_t INTENSET;
  volatile uint32_t INTENCLR;
  volatile const uint32_t RESERVED2[126];
  volatile uint32_t ECBDATAPTR;
} NRF_ECB_Type;
# 1424 "../../../../../../modules/nrfx/mdk/nrf52.h"
typedef struct {
  volatile uint32_t TASKS_KSGEN;

  volatile uint32_t TASKS_CRYPT;

  volatile uint32_t TASKS_STOP;
  volatile const uint32_t RESERVED0[61];
  volatile uint32_t EVENTS_ENDKSGEN;
  volatile uint32_t EVENTS_ENDCRYPT;
  volatile uint32_t EVENTS_ERROR;
  volatile const uint32_t RESERVED1[61];
  volatile uint32_t SHORTS;
  volatile const uint32_t RESERVED2[64];
  volatile uint32_t INTENSET;
  volatile uint32_t INTENCLR;
  volatile const uint32_t RESERVED3[61];
  volatile const uint32_t MICSTATUS;
  volatile const uint32_t RESERVED4[63];
  volatile uint32_t ENABLE;
  volatile uint32_t MODE;
  volatile uint32_t CNFPTR;
  volatile uint32_t INPTR;
  volatile uint32_t OUTPTR;
  volatile uint32_t SCRATCHPTR;
} NRF_CCM_Type;
# 1460 "../../../../../../modules/nrfx/mdk/nrf52.h"
typedef struct {
  volatile uint32_t TASKS_START;

  volatile const uint32_t RESERVED0;
  volatile uint32_t TASKS_STOP;
  volatile const uint32_t RESERVED1[61];
  volatile uint32_t EVENTS_END;
  volatile uint32_t EVENTS_RESOLVED;
  volatile uint32_t EVENTS_NOTRESOLVED;
  volatile const uint32_t RESERVED2[126];
  volatile uint32_t INTENSET;
  volatile uint32_t INTENCLR;
  volatile const uint32_t RESERVED3[61];
  volatile const uint32_t STATUS;
  volatile const uint32_t RESERVED4[63];
  volatile uint32_t ENABLE;
  volatile uint32_t NIRK;
  volatile uint32_t IRKPTR;
  volatile const uint32_t RESERVED5;
  volatile uint32_t ADDRPTR;
  volatile uint32_t SCRATCHPTR;
} NRF_AAR_Type;
# 1493 "../../../../../../modules/nrfx/mdk/nrf52.h"
typedef struct {
  volatile uint32_t TASKS_START;
  volatile const uint32_t RESERVED0[63];
  volatile uint32_t EVENTS_TIMEOUT;
  volatile const uint32_t RESERVED1[128];
  volatile uint32_t INTENSET;
  volatile uint32_t INTENCLR;
  volatile const uint32_t RESERVED2[61];
  volatile const uint32_t RUNSTATUS;
  volatile const uint32_t REQSTATUS;
  volatile const uint32_t RESERVED3[63];
  volatile uint32_t CRV;
  volatile uint32_t RREN;
  volatile uint32_t CONFIG;
  volatile const uint32_t RESERVED4[60];
  volatile uint32_t RR[8];
} NRF_WDT_Type;
# 1521 "../../../../../../modules/nrfx/mdk/nrf52.h"
typedef struct {
  volatile uint32_t TASKS_START;
  volatile uint32_t TASKS_STOP;
  volatile uint32_t TASKS_READCLRACC;
  volatile uint32_t TASKS_RDCLRACC;
  volatile uint32_t TASKS_RDCLRDBL;
  volatile const uint32_t RESERVED0[59];
  volatile uint32_t EVENTS_SAMPLERDY;

  volatile uint32_t EVENTS_REPORTRDY;
  volatile uint32_t EVENTS_ACCOF;
  volatile uint32_t EVENTS_DBLRDY;
  volatile uint32_t EVENTS_STOPPED;
  volatile const uint32_t RESERVED1[59];
  volatile uint32_t SHORTS;
  volatile const uint32_t RESERVED2[64];
  volatile uint32_t INTENSET;
  volatile uint32_t INTENCLR;
  volatile const uint32_t RESERVED3[125];
  volatile uint32_t ENABLE;
  volatile uint32_t LEDPOL;
  volatile uint32_t SAMPLEPER;
  volatile const int32_t SAMPLE;
  volatile uint32_t REPORTPER;

  volatile const int32_t ACC;
  volatile const int32_t ACCREAD;

  QDEC_PSEL_Type PSEL;
  volatile uint32_t DBFEN;
  volatile const uint32_t RESERVED4[5];
  volatile uint32_t LEDPRE;
  volatile const uint32_t ACCDBL;
  volatile const uint32_t ACCDBLREAD;

} NRF_QDEC_Type;
# 1568 "../../../../../../modules/nrfx/mdk/nrf52.h"
typedef struct {
  volatile uint32_t TASKS_START;
  volatile uint32_t TASKS_STOP;
  volatile uint32_t TASKS_SAMPLE;
  volatile const uint32_t RESERVED0[61];
  volatile uint32_t EVENTS_READY;
  volatile uint32_t EVENTS_DOWN;
  volatile uint32_t EVENTS_UP;
  volatile uint32_t EVENTS_CROSS;
  volatile const uint32_t RESERVED1[60];
  volatile uint32_t SHORTS;
  volatile const uint32_t RESERVED2[63];
  volatile uint32_t INTEN;
  volatile uint32_t INTENSET;
  volatile uint32_t INTENCLR;
  volatile const uint32_t RESERVED3[61];
  volatile const uint32_t RESULT;
  volatile const uint32_t RESERVED4[63];
  volatile uint32_t ENABLE;
  volatile uint32_t PSEL;
  volatile uint32_t REFSEL;
  volatile uint32_t EXTREFSEL;
  volatile const uint32_t RESERVED5[8];
  volatile uint32_t TH;
  volatile uint32_t MODE;
  volatile uint32_t HYST;
  volatile uint32_t ISOURCE;
} NRF_COMP_Type;
# 1607 "../../../../../../modules/nrfx/mdk/nrf52.h"
typedef struct {
  volatile uint32_t TASKS_START;
  volatile uint32_t TASKS_STOP;
  volatile uint32_t TASKS_SAMPLE;
  volatile const uint32_t RESERVED0[61];
  volatile uint32_t EVENTS_READY;
  volatile uint32_t EVENTS_DOWN;
  volatile uint32_t EVENTS_UP;
  volatile uint32_t EVENTS_CROSS;
  volatile const uint32_t RESERVED1[60];
  volatile uint32_t SHORTS;
  volatile const uint32_t RESERVED2[64];
  volatile uint32_t INTENSET;
  volatile uint32_t INTENCLR;
  volatile const uint32_t RESERVED3[61];
  volatile const uint32_t RESULT;
  volatile const uint32_t RESERVED4[63];
  volatile uint32_t ENABLE;
  volatile uint32_t PSEL;
  volatile uint32_t REFSEL;
  volatile uint32_t EXTREFSEL;
  volatile const uint32_t RESERVED5[4];
  volatile uint32_t ANADETECT;
  volatile const uint32_t RESERVED6[5];
  volatile uint32_t HYST;
} NRF_LPCOMP_Type;
# 1644 "../../../../../../modules/nrfx/mdk/nrf52.h"
typedef struct {
  volatile const uint32_t UNUSED;
} NRF_SWI_Type;
# 1658 "../../../../../../modules/nrfx/mdk/nrf52.h"
typedef struct {
  volatile uint32_t TASKS_TRIGGER[16];

  volatile const uint32_t RESERVED0[48];
  volatile uint32_t EVENTS_TRIGGERED[16];

  volatile const uint32_t RESERVED1[112];
  volatile uint32_t INTEN;
  volatile uint32_t INTENSET;
  volatile uint32_t INTENCLR;
} NRF_EGU_Type;
# 1680 "../../../../../../modules/nrfx/mdk/nrf52.h"
typedef struct {
  volatile const uint32_t RESERVED0;
  volatile uint32_t TASKS_STOP;

  volatile uint32_t TASKS_SEQSTART[2];



  volatile uint32_t TASKS_NEXTSTEP;


  volatile const uint32_t RESERVED1[60];
  volatile uint32_t EVENTS_STOPPED;

  volatile uint32_t EVENTS_SEQSTARTED[2];

  volatile uint32_t EVENTS_SEQEND[2];

  volatile uint32_t EVENTS_PWMPERIODEND;
  volatile uint32_t EVENTS_LOOPSDONE;

  volatile const uint32_t RESERVED2[56];
  volatile uint32_t SHORTS;
  volatile const uint32_t RESERVED3[63];
  volatile uint32_t INTEN;
  volatile uint32_t INTENSET;
  volatile uint32_t INTENCLR;
  volatile const uint32_t RESERVED4[125];
  volatile uint32_t ENABLE;
  volatile uint32_t MODE;
  volatile uint32_t COUNTERTOP;
  volatile uint32_t PRESCALER;
  volatile uint32_t DECODER;
  volatile uint32_t LOOP;
  volatile const uint32_t RESERVED5[2];
  PWM_SEQ_Type SEQ[2];
  PWM_PSEL_Type PSEL;
} NRF_PWM_Type;
# 1729 "../../../../../../modules/nrfx/mdk/nrf52.h"
typedef struct {
  volatile uint32_t TASKS_START;
  volatile uint32_t TASKS_STOP;
  volatile const uint32_t RESERVED0[62];
  volatile uint32_t EVENTS_STARTED;
  volatile uint32_t EVENTS_STOPPED;
  volatile uint32_t EVENTS_END;


  volatile const uint32_t RESERVED1[125];
  volatile uint32_t INTEN;
  volatile uint32_t INTENSET;
  volatile uint32_t INTENCLR;
  volatile const uint32_t RESERVED2[125];
  volatile uint32_t ENABLE;
  volatile uint32_t PDMCLKCTRL;
  volatile uint32_t MODE;
  volatile const uint32_t RESERVED3[3];
  volatile uint32_t GAINL;
  volatile uint32_t GAINR;
  volatile const uint32_t RESERVED4[8];
  PDM_PSEL_Type PSEL;
  volatile const uint32_t RESERVED5[6];
  PDM_SAMPLE_Type SAMPLE;
} NRF_PDM_Type;
# 1765 "../../../../../../modules/nrfx/mdk/nrf52.h"
typedef struct {
  volatile const uint32_t RESERVED0[256];
  volatile const uint32_t READY;
  volatile const uint32_t RESERVED1[64];
  volatile uint32_t CONFIG;

  union {
    volatile uint32_t ERASEPCR1;

    volatile uint32_t ERASEPAGE;
  };
  volatile uint32_t ERASEALL;
  volatile uint32_t ERASEPCR0;

  volatile uint32_t ERASEUICR;
  volatile const uint32_t RESERVED2[10];
  volatile uint32_t ICACHECNF;
  volatile const uint32_t RESERVED3;
  volatile uint32_t IHIT;
  volatile uint32_t IMISS;
} NRF_NVMC_Type;
# 1797 "../../../../../../modules/nrfx/mdk/nrf52.h"
typedef struct {
  PPI_TASKS_CHG_Type TASKS_CHG[6];
  volatile const uint32_t RESERVED0[308];
  volatile uint32_t CHEN;
  volatile uint32_t CHENSET;
  volatile uint32_t CHENCLR;
  volatile const uint32_t RESERVED1;
  PPI_CH_Type CH[20];
  volatile const uint32_t RESERVED2[148];
  volatile uint32_t CHG[6];
  volatile const uint32_t RESERVED3[62];
  PPI_FORK_Type FORK[32];
} NRF_PPI_Type;
# 1821 "../../../../../../modules/nrfx/mdk/nrf52.h"
typedef struct {
  volatile const uint32_t RESERVED0[64];
  MWU_EVENTS_REGION_Type EVENTS_REGION[4];
  volatile const uint32_t RESERVED1[16];
  MWU_EVENTS_PREGION_Type EVENTS_PREGION[2];
  volatile const uint32_t RESERVED2[100];
  volatile uint32_t INTEN;
  volatile uint32_t INTENSET;
  volatile uint32_t INTENCLR;
  volatile const uint32_t RESERVED3[5];
  volatile uint32_t NMIEN;
  volatile uint32_t NMIENSET;
  volatile uint32_t NMIENCLR;
  volatile const uint32_t RESERVED4[53];
  MWU_PERREGION_Type PERREGION[2];
  volatile const uint32_t RESERVED5[64];
  volatile uint32_t REGIONEN;
  volatile uint32_t REGIONENSET;
  volatile uint32_t REGIONENCLR;
  volatile const uint32_t RESERVED6[57];
  MWU_REGION_Type REGION[4];
  volatile const uint32_t RESERVED7[32];
  MWU_PREGION_Type PREGION[2];
} NRF_MWU_Type;
# 1856 "../../../../../../modules/nrfx/mdk/nrf52.h"
typedef struct {
  volatile uint32_t TASKS_START;

  volatile uint32_t TASKS_STOP;

  volatile const uint32_t RESERVED0[63];
  volatile uint32_t EVENTS_RXPTRUPD;



  volatile uint32_t EVENTS_STOPPED;
  volatile const uint32_t RESERVED1[2];
  volatile uint32_t EVENTS_TXPTRUPD;



  volatile const uint32_t RESERVED2[122];
  volatile uint32_t INTEN;
  volatile uint32_t INTENSET;
  volatile uint32_t INTENCLR;
  volatile const uint32_t RESERVED3[125];
  volatile uint32_t ENABLE;
  I2S_CONFIG_Type CONFIG;
  volatile const uint32_t RESERVED4[3];
  I2S_RXD_Type RXD;
  volatile const uint32_t RESERVED5;
  I2S_TXD_Type TXD;
  volatile const uint32_t RESERVED6[3];
  I2S_RXTXD_Type RXTXD;
  volatile const uint32_t RESERVED7[3];
  I2S_PSEL_Type PSEL;
} NRF_I2S_Type;
# 1899 "../../../../../../modules/nrfx/mdk/nrf52.h"
typedef struct {
  volatile const uint32_t UNUSED;
} NRF_FPU_Type;
# 1913 "../../../../../../modules/nrfx/mdk/nrf52.h"
typedef struct {
  volatile const uint32_t RESERVED0[321];
  volatile uint32_t OUT;
  volatile uint32_t OUTSET;
  volatile uint32_t OUTCLR;
  volatile const uint32_t IN;
  volatile uint32_t DIR;
  volatile uint32_t DIRSET;
  volatile uint32_t DIRCLR;
  volatile uint32_t LATCH;

  volatile uint32_t DETECTMODE;
  volatile const uint32_t RESERVED1[118];
  volatile uint32_t PIN_CNF[32];
} NRF_GPIO_Type;
# 85 "../../../../../../modules/nrfx/mdk/nrf.h" 2
# 1 "../../../../../../modules/nrfx/mdk/nrf52_bitfields.h" 1
# 86 "../../../../../../modules/nrfx/mdk/nrf.h" 2
# 1 "../../../../../../modules/nrfx/mdk/nrf51_to_nrf52.h" 1
# 87 "../../../../../../modules/nrfx/mdk/nrf.h" 2
# 1 "../../../../../../modules/nrfx/mdk/nrf52_name_change.h" 1
# 88 "../../../../../../modules/nrfx/mdk/nrf.h" 2
# 97 "../../../../../../modules/nrfx/mdk/nrf.h"
# 1 "../../../../../../modules/nrfx/mdk/compiler_abstraction.h" 1
# 120 "../../../../../../modules/nrfx/mdk/compiler_abstraction.h"
    static inline unsigned int gcc_current_sp(void)
    {
        register unsigned sp __asm("sp");
        return sp;
    }
# 98 "../../../../../../modules/nrfx/mdk/nrf.h" 2
# 52 "../../../../../../components/softdevice/s132/headers/nrf_soc.h" 2
# 1 "../../../../../../components/softdevice/s132/headers/nrf_svc.h" 1
# 53 "../../../../../../components/softdevice/s132/headers/nrf_soc.h" 2
# 1 "../../../../../../components/softdevice/s132/headers/nrf_error.h" 1
# 54 "../../../../../../components/softdevice/s132/headers/nrf_soc.h" 2
# 1 "../../../../../../components/softdevice/s132/headers/nrf_error_soc.h" 1
# 55 "../../../../../../components/softdevice/s132/headers/nrf_soc.h" 2
# 104 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
enum NRF_SOC_SVCS
{
  SD_PPI_CHANNEL_ENABLE_GET = (0x20),
  SD_PPI_CHANNEL_ENABLE_SET = (0x20) + 1,
  SD_PPI_CHANNEL_ENABLE_CLR = (0x20) + 2,
  SD_PPI_CHANNEL_ASSIGN = (0x20) + 3,
  SD_PPI_GROUP_TASK_ENABLE = (0x20) + 4,
  SD_PPI_GROUP_TASK_DISABLE = (0x20) + 5,
  SD_PPI_GROUP_ASSIGN = (0x20) + 6,
  SD_PPI_GROUP_GET = (0x20) + 7,
  SD_FLASH_PAGE_ERASE = (0x20) + 8,
  SD_FLASH_WRITE = (0x20) + 9,
  SD_FLASH_PROTECT = (0x20) + 10,
  SD_PROTECTED_REGISTER_WRITE = (0x20) + 11,
  SD_MUTEX_NEW = (0x2C),
  SD_MUTEX_ACQUIRE = (0x2C) + 1,
  SD_MUTEX_RELEASE = (0x2C) + 2,
  SD_RAND_APPLICATION_POOL_CAPACITY_GET = (0x2C) + 3,
  SD_RAND_APPLICATION_BYTES_AVAILABLE_GET = (0x2C) + 4,
  SD_RAND_APPLICATION_VECTOR_GET = (0x2C) + 5,
  SD_POWER_MODE_SET = (0x2C) + 6,
  SD_POWER_SYSTEM_OFF = (0x2C) + 7,
  SD_POWER_RESET_REASON_GET = (0x2C) + 8,
  SD_POWER_RESET_REASON_CLR = (0x2C) + 9,
  SD_POWER_POF_ENABLE = (0x2C) + 10,
  SD_POWER_POF_THRESHOLD_SET = (0x2C) + 11,
  SD_POWER_RAM_POWER_SET = (0x2C) + 13,
  SD_POWER_RAM_POWER_CLR = (0x2C) + 14,
  SD_POWER_RAM_POWER_GET = (0x2C) + 15,
  SD_POWER_GPREGRET_SET = (0x2C) + 16,
  SD_POWER_GPREGRET_CLR = (0x2C) + 17,
  SD_POWER_GPREGRET_GET = (0x2C) + 18,
  SD_POWER_DCDC_MODE_SET = (0x2C) + 19,
  SD_APP_EVT_WAIT = (0x2C) + 21,
  SD_CLOCK_HFCLK_REQUEST = (0x2C) + 22,
  SD_CLOCK_HFCLK_RELEASE = (0x2C) + 23,
  SD_CLOCK_HFCLK_IS_RUNNING = (0x2C) + 24,
  SD_RADIO_NOTIFICATION_CFG_SET = (0x2C) + 25,
  SD_ECB_BLOCK_ENCRYPT = (0x2C) + 26,
  SD_ECB_BLOCKS_ENCRYPT = (0x2C) + 27,
  SD_RADIO_SESSION_OPEN = (0x2C) + 28,
  SD_RADIO_SESSION_CLOSE = (0x2C) + 29,
  SD_RADIO_REQUEST = (0x2C) + 30,
  SD_EVT_GET = (0x2C) + 31,
  SD_TEMP_GET = (0x2C) + 32,
  SVC_SOC_LAST = (0x2C) + 37
};


enum NRF_MUTEX_VALUES
{
  NRF_MUTEX_FREE,
  NRF_MUTEX_TAKEN
};


enum NRF_POWER_MODES
{
  NRF_POWER_MODE_CONSTLAT,
  NRF_POWER_MODE_LOWPWR
};



enum NRF_POWER_THRESHOLDS
{
  NRF_POWER_THRESHOLD_V17 = 4UL,
  NRF_POWER_THRESHOLD_V18,
  NRF_POWER_THRESHOLD_V19,
  NRF_POWER_THRESHOLD_V20,
  NRF_POWER_THRESHOLD_V21,
  NRF_POWER_THRESHOLD_V22,
  NRF_POWER_THRESHOLD_V23,
  NRF_POWER_THRESHOLD_V24,
  NRF_POWER_THRESHOLD_V25,
  NRF_POWER_THRESHOLD_V26,
  NRF_POWER_THRESHOLD_V27,
  NRF_POWER_THRESHOLD_V28
};




enum NRF_POWER_DCDC_MODES
{
  NRF_POWER_DCDC_DISABLE,
  NRF_POWER_DCDC_ENABLE
};


enum NRF_RADIO_NOTIFICATION_DISTANCES
{
  NRF_RADIO_NOTIFICATION_DISTANCE_NONE = 0,
  NRF_RADIO_NOTIFICATION_DISTANCE_800US,
  NRF_RADIO_NOTIFICATION_DISTANCE_1740US,
  NRF_RADIO_NOTIFICATION_DISTANCE_2680US,
  NRF_RADIO_NOTIFICATION_DISTANCE_3620US,
  NRF_RADIO_NOTIFICATION_DISTANCE_4560US,
  NRF_RADIO_NOTIFICATION_DISTANCE_5500US
};



enum NRF_RADIO_NOTIFICATION_TYPES
{
  NRF_RADIO_NOTIFICATION_TYPE_NONE = 0,
  NRF_RADIO_NOTIFICATION_TYPE_INT_ON_ACTIVE,
  NRF_RADIO_NOTIFICATION_TYPE_INT_ON_INACTIVE,
  NRF_RADIO_NOTIFICATION_TYPE_INT_ON_BOTH,
};


enum NRF_RADIO_CALLBACK_SIGNAL_TYPE
{
  NRF_RADIO_CALLBACK_SIGNAL_TYPE_START,
  NRF_RADIO_CALLBACK_SIGNAL_TYPE_TIMER0,
  NRF_RADIO_CALLBACK_SIGNAL_TYPE_RADIO,
  NRF_RADIO_CALLBACK_SIGNAL_TYPE_EXTEND_FAILED,
  NRF_RADIO_CALLBACK_SIGNAL_TYPE_EXTEND_SUCCEEDED
};






enum NRF_RADIO_SIGNAL_CALLBACK_ACTION
{
  NRF_RADIO_SIGNAL_CALLBACK_ACTION_NONE,
  NRF_RADIO_SIGNAL_CALLBACK_ACTION_EXTEND,





  NRF_RADIO_SIGNAL_CALLBACK_ACTION_END,
  NRF_RADIO_SIGNAL_CALLBACK_ACTION_REQUEST_AND_END
};


enum NRF_RADIO_HFCLK_CFG
{
  NRF_RADIO_HFCLK_CFG_XTAL_GUARANTEED,






  NRF_RADIO_HFCLK_CFG_NO_GUARANTEE




};


enum NRF_RADIO_PRIORITY
{
  NRF_RADIO_PRIORITY_HIGH,
  NRF_RADIO_PRIORITY_NORMAL,
};


enum NRF_RADIO_REQUEST_TYPE
{
  NRF_RADIO_REQ_TYPE_EARLIEST,
  NRF_RADIO_REQ_TYPE_NORMAL
};


enum NRF_SOC_EVTS
{
  NRF_EVT_HFCLKSTARTED,
  NRF_EVT_POWER_FAILURE_WARNING,
  NRF_EVT_FLASH_OPERATION_SUCCESS,
  NRF_EVT_FLASH_OPERATION_ERROR,
  NRF_EVT_RADIO_BLOCKED,
  NRF_EVT_RADIO_CANCELED,
  NRF_EVT_RADIO_SIGNAL_CALLBACK_INVALID_RETURN,
  NRF_EVT_RADIO_SESSION_IDLE,
  NRF_EVT_RADIO_SESSION_CLOSED,
  NRF_EVT_NUMBER_OF_EVTS
};
# 298 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
typedef volatile uint8_t nrf_mutex_t;


typedef struct
{
  uint8_t hfclk;
  uint8_t priority;
  uint32_t length_us;
  uint32_t timeout_us;
} nrf_radio_request_earliest_t;


typedef struct
{
  uint8_t hfclk;
  uint8_t priority;
  uint32_t distance_us;
  uint32_t length_us;
} nrf_radio_request_normal_t;


typedef struct
{
  uint8_t request_type;
  union
  {
    nrf_radio_request_earliest_t earliest;
    nrf_radio_request_normal_t normal;
  } params;
} nrf_radio_request_t;


typedef struct
{
  uint8_t callback_action;
  union
  {
    struct
    {
      nrf_radio_request_t * p_next;
    } request;
    struct
    {
      uint32_t length_us;
    } extend;
  } params;
} nrf_radio_signal_callback_return_param_t;
# 358 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
typedef nrf_radio_signal_callback_return_param_t * (*nrf_radio_signal_callback_t) (uint8_t signal_type);


typedef uint8_t soc_ecb_key_t[(16)];
typedef uint8_t soc_ecb_cleartext_t[(16)];
typedef uint8_t soc_ecb_ciphertext_t[((16))];


typedef struct
{
  soc_ecb_key_t key;
  soc_ecb_cleartext_t cleartext;
  soc_ecb_ciphertext_t ciphertext;
} nrf_ecb_hal_data_t;



typedef struct
{
  soc_ecb_key_t const * p_key;
  soc_ecb_cleartext_t const * p_cleartext;
  soc_ecb_ciphertext_t * p_ciphertext;
} nrf_ecb_hal_data_block_t;
# 393 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"

# 393 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic push
# 393 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"

# 393 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic ignored "-Wreturn-type"
# 393 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
 __attribute__((naked)) __attribute__((unused)) static uint32_t sd_mutex_new(nrf_mutex_t * p_mutex) { __asm( "svc %0\n" "bx r14" : : "I" ( SD_MUTEX_NEW) : "r0" ); }
# 393 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic pop
# 393 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
 ;
# 402 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"

# 402 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic push
# 402 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"

# 402 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic ignored "-Wreturn-type"
# 402 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
 __attribute__((naked)) __attribute__((unused)) static uint32_t sd_mutex_acquire(nrf_mutex_t * p_mutex) { __asm( "svc %0\n" "bx r14" : : "I" ( SD_MUTEX_ACQUIRE) : "r0" ); }
# 402 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic pop
# 402 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
 ;








# 410 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic push
# 410 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"

# 410 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic ignored "-Wreturn-type"
# 410 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
 __attribute__((naked)) __attribute__((unused)) static uint32_t sd_mutex_release(nrf_mutex_t * p_mutex) { __asm( "svc %0\n" "bx r14" : : "I" ( SD_MUTEX_RELEASE) : "r0" ); }
# 410 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic pop
# 410 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
 ;








# 418 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic push
# 418 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"

# 418 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic ignored "-Wreturn-type"
# 418 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
 __attribute__((naked)) __attribute__((unused)) static uint32_t sd_rand_application_pool_capacity_get(uint8_t * p_pool_capacity) { __asm( "svc %0\n" "bx r14" : : "I" ( SD_RAND_APPLICATION_POOL_CAPACITY_GET) : "r0" ); }
# 418 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic pop
# 418 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
 ;








# 426 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic push
# 426 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"

# 426 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic ignored "-Wreturn-type"
# 426 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
 __attribute__((naked)) __attribute__((unused)) static uint32_t sd_rand_application_bytes_available_get(uint8_t * p_bytes_available) { __asm( "svc %0\n" "bx r14" : : "I" ( SD_RAND_APPLICATION_BYTES_AVAILABLE_GET) : "r0" ); }
# 426 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic pop
# 426 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
 ;
# 436 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"

# 436 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic push
# 436 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"

# 436 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic ignored "-Wreturn-type"
# 436 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
 __attribute__((naked)) __attribute__((unused)) static uint32_t sd_rand_application_vector_get(uint8_t * p_buff, uint8_t length) { __asm( "svc %0\n" "bx r14" : : "I" ( SD_RAND_APPLICATION_VECTOR_GET) : "r0" ); }
# 436 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic pop
# 436 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
 ;








# 444 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic push
# 444 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"

# 444 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic ignored "-Wreturn-type"
# 444 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
 __attribute__((naked)) __attribute__((unused)) static uint32_t sd_power_reset_reason_get(uint32_t * p_reset_reason) { __asm( "svc %0\n" "bx r14" : : "I" ( SD_POWER_RESET_REASON_GET) : "r0" ); }
# 444 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic pop
# 444 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
 ;








# 452 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic push
# 452 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"

# 452 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic ignored "-Wreturn-type"
# 452 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
 __attribute__((naked)) __attribute__((unused)) static uint32_t sd_power_reset_reason_clr(uint32_t reset_reason_clr_msk) { __asm( "svc %0\n" "bx r14" : : "I" ( SD_POWER_RESET_REASON_CLR) : "r0" ); }
# 452 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic pop
# 452 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
 ;
# 461 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"

# 461 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic push
# 461 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"

# 461 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic ignored "-Wreturn-type"
# 461 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
 __attribute__((naked)) __attribute__((unused)) static uint32_t sd_power_mode_set(uint8_t power_mode) { __asm( "svc %0\n" "bx r14" : : "I" ( SD_POWER_MODE_SET) : "r0" ); }
# 461 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic pop
# 461 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
 ;






# 467 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic push
# 467 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"

# 467 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic ignored "-Wreturn-type"
# 467 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
 __attribute__((naked)) __attribute__((unused)) static uint32_t sd_power_system_off(void) { __asm( "svc %0\n" "bx r14" : : "I" ( SD_POWER_SYSTEM_OFF) : "r0" ); }
# 467 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic pop
# 467 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
 ;
# 478 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"

# 478 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic push
# 478 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"

# 478 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic ignored "-Wreturn-type"
# 478 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
 __attribute__((naked)) __attribute__((unused)) static uint32_t sd_power_pof_enable(uint8_t pof_enable) { __asm( "svc %0\n" "bx r14" : : "I" ( SD_POWER_POF_ENABLE) : "r0" ); }
# 478 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic pop
# 478 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
 ;
# 489 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"

# 489 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic push
# 489 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"

# 489 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic ignored "-Wreturn-type"
# 489 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
 __attribute__((naked)) __attribute__((unused)) static uint32_t sd_power_pof_threshold_set(uint8_t threshold) { __asm( "svc %0\n" "bx r14" : : "I" ( SD_POWER_POF_THRESHOLD_SET) : "r0" ); }
# 489 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic pop
# 489 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
 ;
# 499 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"

# 499 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic push
# 499 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"

# 499 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic ignored "-Wreturn-type"
# 499 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
 __attribute__((naked)) __attribute__((unused)) static uint32_t sd_power_ram_power_set(uint8_t index, uint32_t ram_powerset) { __asm( "svc %0\n" "bx r14" : : "I" ( SD_POWER_RAM_POWER_SET) : "r0" ); }
# 499 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic pop
# 499 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
 ;
# 508 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"

# 508 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic push
# 508 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"

# 508 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic ignored "-Wreturn-type"
# 508 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
 __attribute__((naked)) __attribute__((unused)) static uint32_t sd_power_ram_power_clr(uint8_t index, uint32_t ram_powerclr) { __asm( "svc %0\n" "bx r14" : : "I" ( SD_POWER_RAM_POWER_CLR) : "r0" ); }
# 508 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic pop
# 508 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
 ;
# 517 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"

# 517 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic push
# 517 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"

# 517 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic ignored "-Wreturn-type"
# 517 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
 __attribute__((naked)) __attribute__((unused)) static uint32_t sd_power_ram_power_get(uint8_t index, uint32_t * p_ram_power) { __asm( "svc %0\n" "bx r14" : : "I" ( SD_POWER_RAM_POWER_GET) : "r0" ); }
# 517 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic pop
# 517 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
 ;
# 526 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"

# 526 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic push
# 526 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"

# 526 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic ignored "-Wreturn-type"
# 526 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
 __attribute__((naked)) __attribute__((unused)) static uint32_t sd_power_gpregret_set(uint32_t gpregret_id, uint32_t gpregret_msk) { __asm( "svc %0\n" "bx r14" : : "I" ( SD_POWER_GPREGRET_SET) : "r0" ); }
# 526 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic pop
# 526 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
 ;
# 535 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"

# 535 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic push
# 535 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"

# 535 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic ignored "-Wreturn-type"
# 535 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
 __attribute__((naked)) __attribute__((unused)) static uint32_t sd_power_gpregret_clr(uint32_t gpregret_id, uint32_t gpregret_msk) { __asm( "svc %0\n" "bx r14" : : "I" ( SD_POWER_GPREGRET_CLR) : "r0" ); }
# 535 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic pop
# 535 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
 ;
# 544 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"

# 544 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic push
# 544 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"

# 544 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic ignored "-Wreturn-type"
# 544 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
 __attribute__((naked)) __attribute__((unused)) static uint32_t sd_power_gpregret_get(uint32_t gpregret_id, uint32_t *p_gpregret) { __asm( "svc %0\n" "bx r14" : : "I" ( SD_POWER_GPREGRET_GET) : "r0" ); }
# 544 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic pop
# 544 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
 ;
# 553 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"

# 553 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic push
# 553 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"

# 553 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic ignored "-Wreturn-type"
# 553 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
 __attribute__((naked)) __attribute__((unused)) static uint32_t sd_power_dcdc_mode_set(uint8_t dcdc_mode) { __asm( "svc %0\n" "bx r14" : : "I" ( SD_POWER_DCDC_MODE_SET) : "r0" ); }
# 553 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic pop
# 553 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
 ;
# 566 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"

# 566 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic push
# 566 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"

# 566 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic ignored "-Wreturn-type"
# 566 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
 __attribute__((naked)) __attribute__((unused)) static uint32_t sd_clock_hfclk_request(void) { __asm( "svc %0\n" "bx r14" : : "I" ( SD_CLOCK_HFCLK_REQUEST) : "r0" ); }
# 566 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic pop
# 566 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
 ;
# 577 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"

# 577 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic push
# 577 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"

# 577 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic ignored "-Wreturn-type"
# 577 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
 __attribute__((naked)) __attribute__((unused)) static uint32_t sd_clock_hfclk_release(void) { __asm( "svc %0\n" "bx r14" : : "I" ( SD_CLOCK_HFCLK_RELEASE) : "r0" ); }
# 577 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic pop
# 577 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
 ;
# 588 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"

# 588 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic push
# 588 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"

# 588 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic ignored "-Wreturn-type"
# 588 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
 __attribute__((naked)) __attribute__((unused)) static uint32_t sd_clock_hfclk_is_running(uint32_t * p_is_running) { __asm( "svc %0\n" "bx r14" : : "I" ( SD_CLOCK_HFCLK_IS_RUNNING) : "r0" ); }
# 588 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic pop
# 588 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
 ;
# 616 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"

# 616 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic push
# 616 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"

# 616 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic ignored "-Wreturn-type"
# 616 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
 __attribute__((naked)) __attribute__((unused)) static uint32_t sd_app_evt_wait(void) { __asm( "svc %0\n" "bx r14" : : "I" ( SD_APP_EVT_WAIT) : "r0" ); }
# 616 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic pop
# 616 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
 ;








# 624 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic push
# 624 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"

# 624 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic ignored "-Wreturn-type"
# 624 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
 __attribute__((naked)) __attribute__((unused)) static uint32_t sd_ppi_channel_enable_get(uint32_t * p_channel_enable) { __asm( "svc %0\n" "bx r14" : : "I" ( SD_PPI_CHANNEL_ENABLE_GET) : "r0" ); }
# 624 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic pop
# 624 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
 ;








# 632 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic push
# 632 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"

# 632 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic ignored "-Wreturn-type"
# 632 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
 __attribute__((naked)) __attribute__((unused)) static uint32_t sd_ppi_channel_enable_set(uint32_t channel_enable_set_msk) { __asm( "svc %0\n" "bx r14" : : "I" ( SD_PPI_CHANNEL_ENABLE_SET) : "r0" ); }
# 632 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic pop
# 632 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
 ;








# 640 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic push
# 640 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"

# 640 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic ignored "-Wreturn-type"
# 640 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
 __attribute__((naked)) __attribute__((unused)) static uint32_t sd_ppi_channel_enable_clr(uint32_t channel_enable_clr_msk) { __asm( "svc %0\n" "bx r14" : : "I" ( SD_PPI_CHANNEL_ENABLE_CLR) : "r0" ); }
# 640 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic pop
# 640 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
 ;
# 651 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"

# 651 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic push
# 651 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"

# 651 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic ignored "-Wreturn-type"
# 651 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
 __attribute__((naked)) __attribute__((unused)) static uint32_t sd_ppi_channel_assign(uint8_t channel_num, const volatile void * evt_endpoint, const volatile void * task_endpoint) { __asm( "svc %0\n" "bx r14" : : "I" ( SD_PPI_CHANNEL_ASSIGN) : "r0" ); }
# 651 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic pop
# 651 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
 ;
# 660 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"

# 660 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic push
# 660 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"

# 660 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic ignored "-Wreturn-type"
# 660 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
 __attribute__((naked)) __attribute__((unused)) static uint32_t sd_ppi_group_task_enable(uint8_t group_num) { __asm( "svc %0\n" "bx r14" : : "I" ( SD_PPI_GROUP_TASK_ENABLE) : "r0" ); }
# 660 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic pop
# 660 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
 ;
# 669 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"

# 669 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic push
# 669 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"

# 669 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic ignored "-Wreturn-type"
# 669 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
 __attribute__((naked)) __attribute__((unused)) static uint32_t sd_ppi_group_task_disable(uint8_t group_num) { __asm( "svc %0\n" "bx r14" : : "I" ( SD_PPI_GROUP_TASK_DISABLE) : "r0" ); }
# 669 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic pop
# 669 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
 ;
# 679 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"

# 679 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic push
# 679 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"

# 679 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic ignored "-Wreturn-type"
# 679 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
 __attribute__((naked)) __attribute__((unused)) static uint32_t sd_ppi_group_assign(uint8_t group_num, uint32_t channel_msk) { __asm( "svc %0\n" "bx r14" : : "I" ( SD_PPI_GROUP_ASSIGN) : "r0" ); }
# 679 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic pop
# 679 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
 ;
# 689 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"

# 689 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic push
# 689 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"

# 689 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic ignored "-Wreturn-type"
# 689 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
 __attribute__((naked)) __attribute__((unused)) static uint32_t sd_ppi_group_get(uint8_t group_num, uint32_t * p_channel_msk) { __asm( "svc %0\n" "bx r14" : : "I" ( SD_PPI_GROUP_GET) : "r0" ); }
# 689 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic pop
# 689 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
 ;
# 720 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"

# 720 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic push
# 720 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"

# 720 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic ignored "-Wreturn-type"
# 720 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
 __attribute__((naked)) __attribute__((unused)) static uint32_t sd_radio_notification_cfg_set(uint8_t type, uint8_t distance) { __asm( "svc %0\n" "bx r14" : : "I" ( SD_RADIO_NOTIFICATION_CFG_SET) : "r0" ); }
# 720 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic pop
# 720 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
 ;
# 736 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"

# 736 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic push
# 736 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"

# 736 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic ignored "-Wreturn-type"
# 736 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
 __attribute__((naked)) __attribute__((unused)) static uint32_t sd_ecb_block_encrypt(nrf_ecb_hal_data_t * p_ecb_data) { __asm( "svc %0\n" "bx r14" : : "I" ( SD_ECB_BLOCK_ENCRYPT) : "r0" ); }
# 736 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic pop
# 736 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
 ;
# 753 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"

# 753 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic push
# 753 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"

# 753 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic ignored "-Wreturn-type"
# 753 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
 __attribute__((naked)) __attribute__((unused)) static uint32_t sd_ecb_blocks_encrypt(uint8_t block_count, nrf_ecb_hal_data_block_t * p_data_blocks) { __asm( "svc %0\n" "bx r14" : : "I" ( SD_ECB_BLOCKS_ENCRYPT) : "r0" ); }
# 753 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic pop
# 753 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
 ;
# 764 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"

# 764 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic push
# 764 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"

# 764 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic ignored "-Wreturn-type"
# 764 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
 __attribute__((naked)) __attribute__((unused)) static uint32_t sd_evt_get(uint32_t * p_evt_id) { __asm( "svc %0\n" "bx r14" : : "I" ( SD_EVT_GET) : "r0" ); }
# 764 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic pop
# 764 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
 ;
# 775 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"

# 775 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic push
# 775 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"

# 775 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic ignored "-Wreturn-type"
# 775 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
 __attribute__((naked)) __attribute__((unused)) static uint32_t sd_temp_get(int32_t * p_temp) { __asm( "svc %0\n" "bx r14" : : "I" ( SD_TEMP_GET) : "r0" ); }
# 775 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic pop
# 775 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
 ;
# 812 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"

# 812 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic push
# 812 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"

# 812 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic ignored "-Wreturn-type"
# 812 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
 __attribute__((naked)) __attribute__((unused)) static uint32_t sd_flash_write(uint32_t * p_dst, uint32_t const * p_src, uint32_t size) { __asm( "svc %0\n" "bx r14" : : "I" ( SD_FLASH_WRITE) : "r0" ); }
# 812 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic pop
# 812 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
 ;
# 844 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"

# 844 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic push
# 844 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"

# 844 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic ignored "-Wreturn-type"
# 844 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
 __attribute__((naked)) __attribute__((unused)) static uint32_t sd_flash_page_erase(uint32_t page_number) { __asm( "svc %0\n" "bx r14" : : "I" ( SD_FLASH_PAGE_ERASE) : "r0" ); }
# 844 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic pop
# 844 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
 ;
# 867 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"

# 867 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic push
# 867 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"

# 867 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic ignored "-Wreturn-type"
# 867 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
 __attribute__((naked)) __attribute__((unused)) static uint32_t sd_flash_protect(uint32_t block_cfg0, uint32_t block_cfg1, uint32_t block_cfg2, uint32_t block_cfg3) { __asm( "svc %0\n" "bx r14" : : "I" ( SD_FLASH_PROTECT) : "r0" ); }
# 867 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic pop
# 867 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
 ;
# 889 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"

# 889 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic push
# 889 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"

# 889 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic ignored "-Wreturn-type"
# 889 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
 __attribute__((naked)) __attribute__((unused)) static uint32_t sd_radio_session_open(nrf_radio_signal_callback_t p_radio_signal_callback) { __asm( "svc %0\n" "bx r14" : : "I" ( SD_RADIO_SESSION_OPEN) : "r0" ); }
# 889 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic pop
# 889 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
 ;
# 902 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"

# 902 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic push
# 902 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"

# 902 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic ignored "-Wreturn-type"
# 902 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
 __attribute__((naked)) __attribute__((unused)) static uint32_t sd_radio_session_close(void) { __asm( "svc %0\n" "bx r14" : : "I" ( SD_RADIO_SESSION_CLOSE) : "r0" ); }
# 902 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic pop
# 902 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
 ;
# 934 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"

# 934 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic push
# 934 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"

# 934 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic ignored "-Wreturn-type"
# 934 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
 __attribute__((naked)) __attribute__((unused)) static uint32_t sd_radio_request(nrf_radio_request_t const * p_request) { __asm( "svc %0\n" "bx r14" : : "I" ( SD_RADIO_REQUEST) : "r0" ); }
# 934 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic pop
# 934 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
 ;
# 955 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"

# 955 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic push
# 955 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"

# 955 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic ignored "-Wreturn-type"
# 955 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
 __attribute__((naked)) __attribute__((unused)) static uint32_t sd_protected_register_write(volatile uint32_t * p_register, uint32_t value) { __asm( "svc %0\n" "bx r14" : : "I" ( SD_PROTECTED_REGISTER_WRITE) : "r0" ); }
# 955 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic pop
# 955 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
 ;
# 35 "../../../config/FreeRTOSConfig.h" 2

# 1 "../../../../../../components/libraries/util/app_util_platform.h" 1
# 53 "../../../../../../components/libraries/util/app_util_platform.h"
# 1 "../../../../../../modules/nrfx/mdk/compiler_abstraction.h" 1
# 54 "../../../../../../components/libraries/util/app_util_platform.h" 2



# 1 "../../../../../../components/softdevice/s132/headers/nrf_nvic.h" 1
# 109 "../../../../../../components/softdevice/s132/headers/nrf_nvic.h"
typedef struct
{
  uint32_t volatile __irq_masks[(2)];
  uint32_t volatile __cr_flag;
} nrf_nvic_state_t;



extern nrf_nvic_state_t nrf_nvic_state;
# 128 "../../../../../../components/softdevice/s132/headers/nrf_nvic.h"
static inline int __sd_nvic_irq_disable(void);



static inline void __sd_nvic_irq_enable(void);






static inline uint32_t __sd_nvic_app_accessible_irq(IRQn_Type IRQn);






static inline uint32_t __sd_nvic_is_app_accessible_priority(uint32_t priority);
# 164 "../../../../../../components/softdevice/s132/headers/nrf_nvic.h"
static inline uint32_t sd_nvic_EnableIRQ(IRQn_Type IRQn);
# 176 "../../../../../../components/softdevice/s132/headers/nrf_nvic.h"
static inline uint32_t sd_nvic_DisableIRQ(IRQn_Type IRQn);
# 189 "../../../../../../components/softdevice/s132/headers/nrf_nvic.h"
static inline uint32_t sd_nvic_GetPendingIRQ(IRQn_Type IRQn, uint32_t * p_pending_irq);
# 201 "../../../../../../components/softdevice/s132/headers/nrf_nvic.h"
static inline uint32_t sd_nvic_SetPendingIRQ(IRQn_Type IRQn);
# 213 "../../../../../../components/softdevice/s132/headers/nrf_nvic.h"
static inline uint32_t sd_nvic_ClearPendingIRQ(IRQn_Type IRQn);
# 228 "../../../../../../components/softdevice/s132/headers/nrf_nvic.h"
static inline uint32_t sd_nvic_SetPriority(IRQn_Type IRQn, uint32_t priority);
# 241 "../../../../../../components/softdevice/s132/headers/nrf_nvic.h"
static inline uint32_t sd_nvic_GetPriority(IRQn_Type IRQn, uint32_t * p_priority);






static inline uint32_t sd_nvic_SystemReset(void);
# 261 "../../../../../../components/softdevice/s132/headers/nrf_nvic.h"
static inline uint32_t sd_nvic_critical_region_enter(uint8_t * p_is_nested_critical_region);
# 272 "../../../../../../components/softdevice/s132/headers/nrf_nvic.h"
static inline uint32_t sd_nvic_critical_region_exit(uint8_t is_nested_critical_region);





static inline int __sd_nvic_irq_disable(void)
{
  int pm = __get_PRIMASK();
  __disable_irq();
  return pm;
}

static inline void __sd_nvic_irq_enable(void)
{
  __enable_irq();
}

static inline uint32_t __sd_nvic_app_accessible_irq(IRQn_Type IRQn)
{
  if (IRQn < 32)
  {
    return ((1UL<<IRQn) & (~((uint32_t)( (1U << POWER_CLOCK_IRQn) | (1U << RADIO_IRQn) | (1U << RTC0_IRQn) | (1U << TIMER0_IRQn) | (1U << RNG_IRQn) | (1U << ECB_IRQn) | (1U << CCM_AAR_IRQn) | (1U << TEMP_IRQn) | (1U << (30)) | (1U << (uint32_t)SWI5_EGU5_IRQn) )))) != 0;
  }
  else if (IRQn < 64)
  {
    return ((1UL<<(IRQn-32)) & (~((uint32_t)0))) != 0;
  }
  else
  {
    return 1;
  }
}

static inline uint32_t __sd_nvic_is_app_accessible_priority(uint32_t priority)
{
  if(priority >= (1 << 3))
  {
    return 0;
  }
  if( priority == 0
     || priority == 1
     || priority == 4
     )
  {
    return 0;
  }
  return 1;
}


static inline uint32_t sd_nvic_EnableIRQ(IRQn_Type IRQn)
{
  if (!__sd_nvic_app_accessible_irq(IRQn))
  {
    return ((0x2000) + 1);
  }
  if (!__sd_nvic_is_app_accessible_priority(NVIC_GetPriority(IRQn)))
  {
    return ((0x2000) + 2);
  }

  if (nrf_nvic_state.__cr_flag)
  {
    nrf_nvic_state.__irq_masks[(uint32_t)((int32_t)IRQn) >> 5] |= (uint32_t)(1 << ((uint32_t)((int32_t)IRQn) & (uint32_t)0x1F));
  }
  else
  {
    NVIC_EnableIRQ(IRQn);
  }
  return ((0x0) + 0);
}

static inline uint32_t sd_nvic_DisableIRQ(IRQn_Type IRQn)
{
  if (!__sd_nvic_app_accessible_irq(IRQn))
  {
    return ((0x2000) + 1);
  }

  if (nrf_nvic_state.__cr_flag)
  {
    nrf_nvic_state.__irq_masks[(uint32_t)((int32_t)IRQn) >> 5] &= ~(1UL << ((uint32_t)(IRQn) & 0x1F));
  }
  else
  {
    NVIC_DisableIRQ(IRQn);
  }

  return ((0x0) + 0);
}

static inline uint32_t sd_nvic_GetPendingIRQ(IRQn_Type IRQn, uint32_t * p_pending_irq)
{
  if (__sd_nvic_app_accessible_irq(IRQn))
  {
    *p_pending_irq = NVIC_GetPendingIRQ(IRQn);
    return ((0x0) + 0);
  }
  else
  {
    return ((0x2000) + 1);
  }
}

static inline uint32_t sd_nvic_SetPendingIRQ(IRQn_Type IRQn)
{
  if (__sd_nvic_app_accessible_irq(IRQn))
  {
    NVIC_SetPendingIRQ(IRQn);
    return ((0x0) + 0);
  }
  else
  {
    return ((0x2000) + 1);
  }
}

static inline uint32_t sd_nvic_ClearPendingIRQ(IRQn_Type IRQn)
{
  if (__sd_nvic_app_accessible_irq(IRQn))
  {
    NVIC_ClearPendingIRQ(IRQn);
    return ((0x0) + 0);
  }
  else
  {
    return ((0x2000) + 1);
  }
}

static inline uint32_t sd_nvic_SetPriority(IRQn_Type IRQn, uint32_t priority)
{
  if (!__sd_nvic_app_accessible_irq(IRQn))
  {
    return ((0x2000) + 1);
  }

  if (!__sd_nvic_is_app_accessible_priority(priority))
  {
    return ((0x2000) + 2);
  }

  NVIC_SetPriority(IRQn, (uint32_t)priority);
  return ((0x0) + 0);
}

static inline uint32_t sd_nvic_GetPriority(IRQn_Type IRQn, uint32_t * p_priority)
{
  if (__sd_nvic_app_accessible_irq(IRQn))
  {
    *p_priority = (NVIC_GetPriority(IRQn) & 0xFF);
    return ((0x0) + 0);
  }
  else
  {
    return ((0x2000) + 1);
  }
}

static inline uint32_t sd_nvic_SystemReset(void)
{
  NVIC_SystemReset();
  return ((0x2000) + 3);
}

static inline uint32_t sd_nvic_critical_region_enter(uint8_t * p_is_nested_critical_region)
{
  int was_masked = __sd_nvic_irq_disable();
  if (!nrf_nvic_state.__cr_flag)
  {
    nrf_nvic_state.__cr_flag = 1;
    nrf_nvic_state.__irq_masks[0] = ( ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ICER[0] & (~((uint32_t)( (1U << POWER_CLOCK_IRQn) | (1U << RADIO_IRQn) | (1U << RTC0_IRQn) | (1U << TIMER0_IRQn) | (1U << RNG_IRQn) | (1U << ECB_IRQn) | (1U << CCM_AAR_IRQn) | (1U << TEMP_IRQn) | (1U << (30)) | (1U << (uint32_t)SWI5_EGU5_IRQn) ))) );
    ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ICER[0] = (~((uint32_t)( (1U << POWER_CLOCK_IRQn) | (1U << RADIO_IRQn) | (1U << RTC0_IRQn) | (1U << TIMER0_IRQn) | (1U << RNG_IRQn) | (1U << ECB_IRQn) | (1U << CCM_AAR_IRQn) | (1U << TEMP_IRQn) | (1U << (30)) | (1U << (uint32_t)SWI5_EGU5_IRQn) )));
    nrf_nvic_state.__irq_masks[1] = ( ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ICER[1] & (~((uint32_t)0)) );
    ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ICER[1] = (~((uint32_t)0));
    *p_is_nested_critical_region = 0;
  }
  else
  {
    *p_is_nested_critical_region = 1;
  }
  if (!was_masked)
  {
    __sd_nvic_irq_enable();
  }
  return ((0x0) + 0);
}

static inline uint32_t sd_nvic_critical_region_exit(uint8_t is_nested_critical_region)
{
  if (nrf_nvic_state.__cr_flag && (is_nested_critical_region == 0))
  {
    int was_masked = __sd_nvic_irq_disable();
    ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ISER[0] = nrf_nvic_state.__irq_masks[0];
    ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ISER[1] = nrf_nvic_state.__irq_masks[1];
    nrf_nvic_state.__cr_flag = 0;
    if (!was_masked)
    {
      __sd_nvic_irq_enable();
    }
  }

  return ((0x0) + 0);
}
# 58 "../../../../../../components/libraries/util/app_util_platform.h" 2

# 1 "../../../../../../components/libraries/util/nrf_assert.h" 1
# 75 "../../../../../../components/libraries/util/nrf_assert.h"
void assert_nrf_callback(uint16_t line_num, const uint8_t *file_name);
# 60 "../../../../../../components/libraries/util/app_util_platform.h" 2
# 1 "../../../../../../components/libraries/util/app_error.h" 1
# 54 "../../../../../../components/libraries/util/app_error.h"
# 1 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stdio.h" 1 3 4
# 78 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stdio.h" 3 4

# 78 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stdio.h" 3 4
int putchar(int __c);
# 87 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stdio.h" 3 4
int getchar(void);
# 99 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stdio.h" 3 4
int puts(const char *__s);
# 116 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stdio.h" 3 4
char *gets(char *__s);
# 135 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stdio.h" 3 4
int sprintf(char *__s, const char *__format, ...);
# 163 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stdio.h" 3 4
int snprintf(char *__s, size_t __n, const char *__format, ...);
# 199 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stdio.h" 3 4
int vsnprintf(char *__s, size_t __n, const char *__format, __va_list __arg);
# 445 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stdio.h" 3 4
int printf(const char *__format, ...);
# 465 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stdio.h" 3 4
int vprintf(const char *__format, __va_list __arg);
# 494 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stdio.h" 3 4
int vsprintf(char *__s, const char *__format, __va_list __arg);
# 695 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stdio.h" 3 4
int scanf(const char *__format, ...);
# 715 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stdio.h" 3 4
int sscanf(const char *__s, const char *__format, ...);
# 741 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stdio.h" 3 4
int vscanf(const char *__format, __va_list __arg);
# 765 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stdio.h" 3 4
int vsscanf(const char *__s, const char *__format, __va_list __arg);





typedef struct __printf_tag *__printf_tag_ptr;

int __putchar(int, __printf_tag_ptr);
# 791 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stdio.h" 3 4
typedef struct __RAL_FILE FILE;


typedef long fpos_t;
extern FILE *stdin;
extern FILE *stdout;
extern FILE *stderr;
void clearerr(FILE *);
int fclose(FILE *);
int feof(FILE *);
int ferror(FILE *);
int fflush(FILE *);
int fgetc(FILE *);
int fgetpos(FILE *, fpos_t *);
char *fgets(char *, int, FILE *);
int fileno(FILE *);
FILE *fopen(const char *, const char *);
int fprintf(FILE *, const char *, ...);
int fputc(int, FILE *);
int fputs(const char *, FILE *);
size_t fread(void *, size_t, size_t, FILE *);
FILE *freopen(const char *, const char *, FILE *);
int fscanf(FILE *, const char *, ...);
int fseek(FILE *, long, int);
int fsetpos(FILE *, const fpos_t *);
long ftell(FILE *);
size_t fwrite(const void *, size_t, size_t, FILE *);
int getc(FILE *);
void perror(const char *);
int putc(int, FILE *);
int remove(const char *);
int rename(const char *, const char *);
void rewind(FILE *);
void setbuf(FILE *, char *);
int setvbuf(FILE *, char *, int, size_t);
FILE *tmpfile(void);
char *tmpnam(char *);
int ungetc(int, FILE *);
int vfprintf(FILE *, const char *, __va_list);
int vfscanf(FILE *, const char *, __va_list);
# 55 "../../../../../../components/libraries/util/app_error.h" 2
# 1 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stdbool.h" 1 3 4
# 56 "../../../../../../components/libraries/util/app_error.h" 2

# 1 "../../../../../../components/libraries/util/sdk_errors.h" 1
# 73 "../../../../../../components/libraries/util/sdk_errors.h"
# 1 "../../../../../../components/softdevice/s132/headers/nrf_error.h" 1
# 74 "../../../../../../components/libraries/util/sdk_errors.h" 2
# 158 "../../../../../../components/libraries/util/sdk_errors.h"

# 158 "../../../../../../components/libraries/util/sdk_errors.h"
typedef uint32_t ret_code_t;
# 58 "../../../../../../components/libraries/util/app_error.h" 2
# 1 "../../../../../../components/libraries/util/nordic_common.h" 1
# 59 "../../../../../../components/libraries/util/app_error.h" 2
# 1 "../../../../../../components/libraries/util/app_error_weak.h" 1
# 77 "../../../../../../components/libraries/util/app_error_weak.h"
void app_error_fault_handler(uint32_t id, uint32_t pc, uint32_t info);
# 60 "../../../../../../components/libraries/util/app_error.h" 2
# 80 "../../../../../../components/libraries/util/app_error.h"
typedef struct
{
    uint32_t line_num;
    uint8_t const * p_file_name;
    uint32_t err_code;
} error_info_t;



typedef struct
{
    uint16_t line_num;
    uint8_t const * p_file_name;
} assert_info_t;
# 111 "../../../../../../components/libraries/util/app_error.h"
void app_error_handler(uint32_t error_code, uint32_t line_num, const uint8_t * p_file_name);





void app_error_handler_bare(ret_code_t error_code);
# 127 "../../../../../../components/libraries/util/app_error.h"
void app_error_save_and_stop(uint32_t id, uint32_t pc, uint32_t info);
# 137 "../../../../../../components/libraries/util/app_error.h"
void app_error_log_handle(uint32_t id, uint32_t pc, uint32_t info);
# 61 "../../../../../../components/libraries/util/app_util_platform.h" 2
# 91 "../../../../../../components/libraries/util/app_util_platform.h"
typedef enum
{



    APP_IRQ_PRIORITY_HIGHEST = 2,

    APP_IRQ_PRIORITY_HIGH = 2,



    APP_IRQ_PRIORITY_MID = 3,

    APP_IRQ_PRIORITY_LOW = 6,
    APP_IRQ_PRIORITY_LOWEST = 7,
    APP_IRQ_PRIORITY_THREAD = 15
} app_irq_priority_t;




typedef enum
{
    APP_LEVEL_UNPRIVILEGED,
    APP_LEVEL_PRIVILEGED
} app_level_t;
# 172 "../../../../../../components/libraries/util/app_util_platform.h"
void app_util_critical_region_enter (uint8_t *p_nested);
void app_util_critical_region_exit (uint8_t nested);
# 261 "../../../../../../components/libraries/util/app_util_platform.h"
uint8_t current_int_priority_get(void);
# 270 "../../../../../../components/libraries/util/app_util_platform.h"
uint8_t privilege_level_get(void);
# 37 "../../../config/FreeRTOSConfig.h" 2
# 177 "../../../config/FreeRTOSConfig.h"
# 1 "../../../../../../components/libraries/util/nrf_assert.h" 1
# 178 "../../../config/FreeRTOSConfig.h" 2
# 214 "../../../config/FreeRTOSConfig.h"
# 1 "../../../systemView/SEGGER_SYSVIEW_FreeRTOS.h" 1
# 71 "../../../systemView/SEGGER_SYSVIEW_FreeRTOS.h"
# 1 "../../../systemView/SEGGER_SYSVIEW.h" 1
# 74 "../../../systemView/SEGGER_SYSVIEW.h"
# 1 "../../../systemView/SEGGER.h" 1
# 67 "../../../systemView/SEGGER.h"
# 1 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stdarg.h" 1 3 4
# 69 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stdarg.h" 3 4

# 69 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stdarg.h" 3 4
typedef __va_list va_list;
# 68 "../../../systemView/SEGGER.h" 2
# 1 "../../../systemView/Global.h" 1
# 69 "../../../systemView/SEGGER.h" 2
# 149 "../../../systemView/SEGGER.h"

# 149 "../../../systemView/SEGGER.h"
typedef struct {
  char* pBuffer;
  int BufferSize;
  int Cnt;
} SEGGER_BUFFER_DESC;

typedef struct {
  unsigned int CacheLineSize;
  void (*pfDMB) (void);
  void (*pfClean) (void *p, unsigned NumBytes);
  void (*pfInvalidate)(void *p, unsigned NumBytes);
} SEGGER_CACHE_CONFIG;

typedef struct SEGGER_SNPRINTF_CONTEXT_struct SEGGER_SNPRINTF_CONTEXT;

struct SEGGER_SNPRINTF_CONTEXT_struct {
  void* pContext;
  SEGGER_BUFFER_DESC* pBufferDesc;
  void (*pfFlush)(SEGGER_SNPRINTF_CONTEXT* pContext);
};

typedef struct {
  void (*pfStoreChar) (SEGGER_BUFFER_DESC* pBufferDesc, SEGGER_SNPRINTF_CONTEXT* pContext, char c);
  int (*pfPrintUnsigned) (SEGGER_BUFFER_DESC* pBufferDesc, SEGGER_SNPRINTF_CONTEXT* pContext, unsigned long v, unsigned Base, char Flags, int Width, int Precision);
  int (*pfPrintInt) (SEGGER_BUFFER_DESC* pBufferDesc, SEGGER_SNPRINTF_CONTEXT* pContext, signed long v, unsigned Base, char Flags, int Width, int Precision);
} SEGGER_PRINTF_API;

typedef void (*SEGGER_pFormatter)(SEGGER_BUFFER_DESC* pBufferDesc, SEGGER_SNPRINTF_CONTEXT* pContext, const SEGGER_PRINTF_API* pApi, va_list* pParamList, char Lead, int Width, int Precision);

typedef struct SEGGER_PRINTF_FORMATTER {
  struct SEGGER_PRINTF_FORMATTER* pNext;
  SEGGER_pFormatter pfFormatter;
  char Specifier;
} SEGGER_PRINTF_FORMATTER;
# 194 "../../../systemView/SEGGER.h"
void SEGGER_ARM_memcpy(void* pDest, const void* pSrc, int NumBytes);
void SEGGER_memcpy (void* pDest, const void* pSrc, unsigned NumBytes);
void SEGGER_memxor (void* pDest, const void* pSrc, unsigned NumBytes);




int SEGGER_atoi (const char* s);
int SEGGER_isalnum (int c);
int SEGGER_isalpha (int c);
unsigned SEGGER_strlen (const char* s);
int SEGGER_tolower (int c);
int SEGGER_strcasecmp(const char* sText1, const char* sText2);




void SEGGER_StoreChar (SEGGER_BUFFER_DESC* pBufferDesc, char c);
void SEGGER_PrintUnsigned(SEGGER_BUFFER_DESC* pBufferDesc, unsigned long v, unsigned Base, int Precision);
void SEGGER_PrintInt (SEGGER_BUFFER_DESC* pBufferDesc, signed long v, unsigned Base, int Precision);
int SEGGER_snprintf (char* pBuffer, int BufferSize, const char* sFormat, ...);
int SEGGER_vsnprintf (char* pBuffer, int BufferSize, const char* sFormat, va_list ParamList);
int SEGGER_vsnprintfEx (SEGGER_SNPRINTF_CONTEXT* pContext, const char* sFormat, va_list ParamList);

int SEGGER_PRINTF_AddFormatter (SEGGER_PRINTF_FORMATTER* pFormatter, SEGGER_pFormatter pfFormatter, char c);
void SEGGER_PRINTF_AddDoubleFormatter(void);
void SEGGER_PRINTF_AddIPFormatter (void);
void SEGGER_PRINTF_AddHTMLFormatter (void);
# 75 "../../../systemView/SEGGER_SYSVIEW.h" 2
# 189 "../../../systemView/SEGGER_SYSVIEW.h"
typedef struct {
  unsigned long TaskID;
  const char* sName;
  unsigned long Prio;
  unsigned long StackBase;
  unsigned long StackSize;
} SEGGER_SYSVIEW_TASKINFO;

typedef struct SEGGER_SYSVIEW_MODULE_STRUCT SEGGER_SYSVIEW_MODULE;

struct SEGGER_SYSVIEW_MODULE_STRUCT {
  const char* sModule;
        unsigned long NumEvents;
        unsigned long EventOffset;
        void (*pfSendModuleDesc)(void);
        SEGGER_SYSVIEW_MODULE* pNext;
};

typedef void (SEGGER_SYSVIEW_SEND_SYS_DESC_FUNC)(void);
# 216 "../../../systemView/SEGGER_SYSVIEW.h"
typedef struct {
  unsigned long long (*pfGetTime) (void);
  void (*pfSendTaskList) (void);
} SEGGER_SYSVIEW_OS_API;





void SEGGER_SYSVIEW_Init (unsigned long SysFreq, unsigned long CPUFreq, const SEGGER_SYSVIEW_OS_API *pOSAPI, SEGGER_SYSVIEW_SEND_SYS_DESC_FUNC pfSendSysDesc);
void SEGGER_SYSVIEW_SetRAMBase (unsigned long RAMBaseAddress);
void SEGGER_SYSVIEW_Start (void);
void SEGGER_SYSVIEW_Stop (void);
void SEGGER_SYSVIEW_GetSysDesc (void);
void SEGGER_SYSVIEW_SendTaskList (void);
void SEGGER_SYSVIEW_SendTaskInfo (const SEGGER_SYSVIEW_TASKINFO* pInfo);
void SEGGER_SYSVIEW_SendSysDesc (const char* sSysDesc);
int SEGGER_SYSVIEW_IsStarted (void);





void SEGGER_SYSVIEW_RecordVoid (unsigned int EventId);
void SEGGER_SYSVIEW_RecordU32 (unsigned int EventId, unsigned long Para0);
void SEGGER_SYSVIEW_RecordU32x2 (unsigned int EventId, unsigned long Para0, unsigned long Para1);
void SEGGER_SYSVIEW_RecordU32x3 (unsigned int EventId, unsigned long Para0, unsigned long Para1, unsigned long Para2);
void SEGGER_SYSVIEW_RecordU32x4 (unsigned int EventId, unsigned long Para0, unsigned long Para1, unsigned long Para2, unsigned long Para3);
void SEGGER_SYSVIEW_RecordU32x5 (unsigned int EventId, unsigned long Para0, unsigned long Para1, unsigned long Para2, unsigned long Para3, unsigned long Para4);
void SEGGER_SYSVIEW_RecordU32x6 (unsigned int EventId, unsigned long Para0, unsigned long Para1, unsigned long Para2, unsigned long Para3, unsigned long Para4, unsigned long Para5);
void SEGGER_SYSVIEW_RecordU32x7 (unsigned int EventId, unsigned long Para0, unsigned long Para1, unsigned long Para2, unsigned long Para3, unsigned long Para4, unsigned long Para5, unsigned long Para6);
void SEGGER_SYSVIEW_RecordU32x8 (unsigned int EventId, unsigned long Para0, unsigned long Para1, unsigned long Para2, unsigned long Para3, unsigned long Para4, unsigned long Para5, unsigned long Para6, unsigned long Para7);
void SEGGER_SYSVIEW_RecordU32x9 (unsigned int EventId, unsigned long Para0, unsigned long Para1, unsigned long Para2, unsigned long Para3, unsigned long Para4, unsigned long Para5, unsigned long Para6, unsigned long Para7, unsigned long Para8);
void SEGGER_SYSVIEW_RecordU32x10 (unsigned int EventId, unsigned long Para0, unsigned long Para1, unsigned long Para2, unsigned long Para3, unsigned long Para4, unsigned long Para5, unsigned long Para6, unsigned long Para7, unsigned long Para8, unsigned long Para9);
void SEGGER_SYSVIEW_RecordString (unsigned int EventId, const char* pString);
void SEGGER_SYSVIEW_RecordSystime (void);
void SEGGER_SYSVIEW_RecordEnterISR (void);
void SEGGER_SYSVIEW_RecordExitISR (void);
void SEGGER_SYSVIEW_RecordExitISRToScheduler (void);
void SEGGER_SYSVIEW_RecordEnterTimer (unsigned long TimerId);
void SEGGER_SYSVIEW_RecordExitTimer (void);
void SEGGER_SYSVIEW_RecordEndCall (unsigned int EventID);
void SEGGER_SYSVIEW_RecordEndCallU32 (unsigned int EventID, unsigned long Para0);

void SEGGER_SYSVIEW_OnIdle (void);
void SEGGER_SYSVIEW_OnTaskCreate (unsigned long TaskId);
void SEGGER_SYSVIEW_OnTaskTerminate (unsigned long TaskId);
void SEGGER_SYSVIEW_OnTaskStartExec (unsigned long TaskId);
void SEGGER_SYSVIEW_OnTaskStopExec (void);
void SEGGER_SYSVIEW_OnTaskStartReady (unsigned long TaskId);
void SEGGER_SYSVIEW_OnTaskStopReady (unsigned long TaskId, unsigned int Cause);
void SEGGER_SYSVIEW_OnUserStart (unsigned int UserId);
void SEGGER_SYSVIEW_OnUserStop (unsigned int UserId);

void SEGGER_SYSVIEW_NameResource (unsigned long ResourceId, const char* sName);

int SEGGER_SYSVIEW_SendPacket (unsigned char* pPacket, unsigned char* pPayloadEnd, unsigned int EventId);





unsigned char* SEGGER_SYSVIEW_EncodeU32 (unsigned char* pPayload, unsigned long Value);
unsigned char* SEGGER_SYSVIEW_EncodeData (unsigned char* pPayload, const char* pSrc, unsigned int Len);
unsigned char* SEGGER_SYSVIEW_EncodeString (unsigned char* pPayload, const char* s, unsigned int MaxLen);
unsigned char* SEGGER_SYSVIEW_EncodeId (unsigned char* pPayload, unsigned long Id);
unsigned long SEGGER_SYSVIEW_ShrinkId (unsigned long Id);






void SEGGER_SYSVIEW_RegisterModule (SEGGER_SYSVIEW_MODULE* pModule);
void SEGGER_SYSVIEW_RecordModuleDescription (const SEGGER_SYSVIEW_MODULE* pModule, const char* sDescription);
void SEGGER_SYSVIEW_SendModule (unsigned char ModuleId);
void SEGGER_SYSVIEW_SendModuleDescription (void);
void SEGGER_SYSVIEW_SendNumModules (void);






void SEGGER_SYSVIEW_PrintfHostEx (const char* s, unsigned long Options, ...);
void SEGGER_SYSVIEW_PrintfTargetEx (const char* s, unsigned long Options, ...);
void SEGGER_SYSVIEW_PrintfHost (const char* s, ...);
void SEGGER_SYSVIEW_PrintfTarget (const char* s, ...);
void SEGGER_SYSVIEW_WarnfHost (const char* s, ...);
void SEGGER_SYSVIEW_WarnfTarget (const char* s, ...);
void SEGGER_SYSVIEW_ErrorfHost (const char* s, ...);
void SEGGER_SYSVIEW_ErrorfTarget (const char* s, ...);


void SEGGER_SYSVIEW_Print (const char* s);
void SEGGER_SYSVIEW_Warn (const char* s);
void SEGGER_SYSVIEW_Error (const char* s);





void SEGGER_SYSVIEW_EnableEvents (unsigned long EnableMask);
void SEGGER_SYSVIEW_DisableEvents (unsigned long DisableMask);





void SEGGER_SYSVIEW_Conf (void);
unsigned long SEGGER_SYSVIEW_X_GetTimestamp (void);
unsigned long SEGGER_SYSVIEW_X_GetInterruptId (void);
# 72 "../../../systemView/SEGGER_SYSVIEW_FreeRTOS.h" 2
# 329 "../../../systemView/SEGGER_SYSVIEW_FreeRTOS.h"
void SYSVIEW_AddTask (unsigned long xHandle, const char* pcTaskName, unsigned uxCurrentPriority, unsigned long pxStack, unsigned uStackHighWaterMark);
void SYSVIEW_UpdateTask (unsigned long xHandle, const char* pcTaskName, unsigned uxCurrentPriority, unsigned long pxStack, unsigned uStackHighWaterMark);
void SYSVIEW_DeleteTask (unsigned long xHandle);
void SYSVIEW_SendTaskInfo (unsigned long TaskID, const char* sName, unsigned Prio, unsigned long StackBase, unsigned StackSize);
# 215 "../../../config/FreeRTOSConfig.h" 2
# 58 "../../../../../../external/freertos/source/include/FreeRTOS.h" 2


# 1 "../../../../../../external/freertos/source/include/projdefs.h" 1
# 36 "../../../../../../external/freertos/source/include/projdefs.h"
typedef void (*TaskFunction_t)( void * );
# 61 "../../../../../../external/freertos/source/include/FreeRTOS.h" 2


# 1 "../../../../../../external/freertos/source/include/portable.h" 1
# 46 "../../../../../../external/freertos/source/include/portable.h"
# 1 "../../../../../../external/freertos/source/include/deprecated_definitions.h" 1
# 47 "../../../../../../external/freertos/source/include/portable.h" 2






# 1 "../../../../../../external/freertos/portable/GCC/nrf52/portmacro.h" 1
# 33 "../../../../../../external/freertos/portable/GCC/nrf52/portmacro.h"
# 1 "../../../../../../external/freertos/portable/CMSIS/nrf52/portmacro_cmsis.h" 1
# 31 "../../../../../../external/freertos/portable/CMSIS/nrf52/portmacro_cmsis.h"
# 1 "../../../../../../components/libraries/util/app_util.h" 1
# 83 "../../../../../../components/libraries/util/app_util.h"
extern uint32_t __StackTop;
extern uint32_t __StackLimit;
# 114 "../../../../../../components/libraries/util/app_util.h"
extern uint32_t * _vectors;
extern uint32_t __FLASH_segment_used_end__;
# 132 "../../../../../../components/libraries/util/app_util.h"
enum
{
    UNIT_0_625_MS = 625,
    UNIT_1_25_MS = 1250,
    UNIT_10_MS = 10000
};
# 302 "../../../../../../components/libraries/util/app_util.h"
typedef uint8_t uint16_le_t[2];


typedef uint8_t uint32_le_t[4];


typedef struct
{
    uint16_t size;
    uint8_t * p_data;
} uint8_array_t;
# 902 "../../../../../../components/libraries/util/app_util.h"
static inline uint64_t value_rescale(uint32_t value, uint32_t old_unit_reversal, uint16_t new_unit_reversal)
{
    return (uint64_t)((((uint64_t)value * new_unit_reversal) + ((old_unit_reversal) / 2)) / (old_unit_reversal));
}
# 914 "../../../../../../components/libraries/util/app_util.h"
static inline uint8_t uint16_encode(uint16_t value, uint8_t * p_encoded_data)
{
    p_encoded_data[0] = (uint8_t) ((value & 0x00FF) >> 0);
    p_encoded_data[1] = (uint8_t) ((value & 0xFF00) >> 8);
    return sizeof(uint16_t);
}
# 928 "../../../../../../components/libraries/util/app_util.h"
static inline uint8_t uint24_encode(uint32_t value, uint8_t * p_encoded_data)
{
    p_encoded_data[0] = (uint8_t) ((value & 0x000000FF) >> 0);
    p_encoded_data[1] = (uint8_t) ((value & 0x0000FF00) >> 8);
    p_encoded_data[2] = (uint8_t) ((value & 0x00FF0000) >> 16);
    return 3;
}
# 943 "../../../../../../components/libraries/util/app_util.h"
static inline uint8_t uint32_encode(uint32_t value, uint8_t * p_encoded_data)
{
    p_encoded_data[0] = (uint8_t) ((value & 0x000000FF) >> 0);
    p_encoded_data[1] = (uint8_t) ((value & 0x0000FF00) >> 8);
    p_encoded_data[2] = (uint8_t) ((value & 0x00FF0000) >> 16);
    p_encoded_data[3] = (uint8_t) ((value & 0xFF000000) >> 24);
    return sizeof(uint32_t);
}
# 959 "../../../../../../components/libraries/util/app_util.h"
static inline uint8_t uint40_encode(uint64_t value, uint8_t * p_encoded_data)
{
    p_encoded_data[0] = (uint8_t) ((value & 0x00000000FF) >> 0);
    p_encoded_data[1] = (uint8_t) ((value & 0x000000FF00) >> 8);
    p_encoded_data[2] = (uint8_t) ((value & 0x0000FF0000) >> 16);
    p_encoded_data[3] = (uint8_t) ((value & 0x00FF000000) >> 24);
    p_encoded_data[4] = (uint8_t) ((value & 0xFF00000000) >> 32);
    return 5;
}
# 976 "../../../../../../components/libraries/util/app_util.h"
static inline uint8_t uint48_encode(uint64_t value, uint8_t * p_encoded_data)
{
    p_encoded_data[0] = (uint8_t) ((value & 0x0000000000FF) >> 0);
    p_encoded_data[1] = (uint8_t) ((value & 0x00000000FF00) >> 8);
    p_encoded_data[2] = (uint8_t) ((value & 0x000000FF0000) >> 16);
    p_encoded_data[3] = (uint8_t) ((value & 0x0000FF000000) >> 24);
    p_encoded_data[4] = (uint8_t) ((value & 0x00FF00000000) >> 32);
    p_encoded_data[5] = (uint8_t) ((value & 0xFF0000000000) >> 40);
    return 6;
}







static inline uint16_t uint16_decode(const uint8_t * p_encoded_data)
{
        return ( (((uint16_t)((uint8_t *)p_encoded_data)[0])) |
                 (((uint16_t)((uint8_t *)p_encoded_data)[1]) << 8 ));
}







static inline uint16_t uint16_big_decode(const uint8_t * p_encoded_data)
{
        return ( (((uint16_t)((uint8_t *)p_encoded_data)[0]) << 8 ) |
                 (((uint16_t)((uint8_t *)p_encoded_data)[1])) );
}







static inline uint32_t uint24_decode(const uint8_t * p_encoded_data)
{
    return ( (((uint32_t)((uint8_t *)p_encoded_data)[0]) << 0) |
             (((uint32_t)((uint8_t *)p_encoded_data)[1]) << 8) |
             (((uint32_t)((uint8_t *)p_encoded_data)[2]) << 16));
}







static inline uint32_t uint32_decode(const uint8_t * p_encoded_data)
{
    return ( (((uint32_t)((uint8_t *)p_encoded_data)[0]) << 0) |
             (((uint32_t)((uint8_t *)p_encoded_data)[1]) << 8) |
             (((uint32_t)((uint8_t *)p_encoded_data)[2]) << 16) |
             (((uint32_t)((uint8_t *)p_encoded_data)[3]) << 24 ));
}







static inline uint32_t uint32_big_decode(const uint8_t * p_encoded_data)
{
    return ( (((uint32_t)((uint8_t *)p_encoded_data)[0]) << 24) |
             (((uint32_t)((uint8_t *)p_encoded_data)[1]) << 16) |
             (((uint32_t)((uint8_t *)p_encoded_data)[2]) << 8) |
             (((uint32_t)((uint8_t *)p_encoded_data)[3]) << 0) );
}
# 1060 "../../../../../../components/libraries/util/app_util.h"
static inline uint8_t uint16_big_encode(uint16_t value, uint8_t * p_encoded_data)
{
    p_encoded_data[0] = (uint8_t) (value >> 8);
    p_encoded_data[1] = (uint8_t) (value & 0xFF);

    return sizeof(uint16_t);
}
# 1077 "../../../../../../components/libraries/util/app_util.h"
static inline uint8_t uint32_big_encode(uint32_t value, uint8_t * p_encoded_data)
{
    *(uint32_t *)p_encoded_data = __REV(value);
    return sizeof(uint32_t);
}







static inline uint64_t uint40_decode(const uint8_t * p_encoded_data)
{
    return ( (((uint64_t)((uint8_t *)p_encoded_data)[0]) << 0) |
             (((uint64_t)((uint8_t *)p_encoded_data)[1]) << 8) |
             (((uint64_t)((uint8_t *)p_encoded_data)[2]) << 16) |
             (((uint64_t)((uint8_t *)p_encoded_data)[3]) << 24) |
             (((uint64_t)((uint8_t *)p_encoded_data)[4]) << 32 ));
}







static inline uint64_t uint48_decode(const uint8_t * p_encoded_data)
{
    return ( (((uint64_t)((uint8_t *)p_encoded_data)[0]) << 0) |
             (((uint64_t)((uint8_t *)p_encoded_data)[1]) << 8) |
             (((uint64_t)((uint8_t *)p_encoded_data)[2]) << 16) |
             (((uint64_t)((uint8_t *)p_encoded_data)[3]) << 24) |
             (((uint64_t)((uint8_t *)p_encoded_data)[4]) << 32) |
             (((uint64_t)((uint8_t *)p_encoded_data)[5]) << 40 ));
}
# 1134 "../../../../../../components/libraries/util/app_util.h"
static inline uint8_t battery_level_in_percent(const uint16_t mvolts)
{
    uint8_t battery_level;

    if (mvolts >= 3000)
    {
        battery_level = 100;
    }
    else if (mvolts > 2900)
    {
        battery_level = 100 - ((3000 - mvolts) * 58) / 100;
    }
    else if (mvolts > 2740)
    {
        battery_level = 42 - ((2900 - mvolts) * 24) / 160;
    }
    else if (mvolts > 2440)
    {
        battery_level = 18 - ((2740 - mvolts) * 12) / 300;
    }
    else if (mvolts > 2100)
    {
        battery_level = 6 - ((2440 - mvolts) * 6) / 340;
    }
    else
    {
        battery_level = 0;
    }

    return battery_level;
}







static inline 
# 1172 "../../../../../../components/libraries/util/app_util.h" 3 4
               _Bool 
# 1172 "../../../../../../components/libraries/util/app_util.h"
                    is_word_aligned(void const* p)
{
    return (((uintptr_t)p & 0x03) == 0);
}
# 1185 "../../../../../../components/libraries/util/app_util.h"
static inline 
# 1185 "../../../../../../components/libraries/util/app_util.h" 3 4
               _Bool 
# 1185 "../../../../../../components/libraries/util/app_util.h"
                    is_address_from_stack(void * ptr)
{
    if (((uint32_t)ptr >= (uint32_t)&__StackLimit) &&
        ((uint32_t)ptr < (uint32_t)&__StackTop) )
    {
        return 
# 1190 "../../../../../../components/libraries/util/app_util.h" 3 4
              1
# 1190 "../../../../../../components/libraries/util/app_util.h"
                  ;
    }
    else
    {
        return 
# 1194 "../../../../../../components/libraries/util/app_util.h" 3 4
              0
# 1194 "../../../../../../components/libraries/util/app_util.h"
                   ;
    }
}
# 32 "../../../../../../external/freertos/portable/CMSIS/nrf52/portmacro_cmsis.h" 2
# 56 "../../../../../../external/freertos/portable/CMSIS/nrf52/portmacro_cmsis.h"
typedef uint32_t StackType_t;
typedef long BaseType_t;
typedef unsigned long UBaseType_t;





    typedef uint32_t TickType_t;
# 105 "../../../../../../external/freertos/portable/CMSIS/nrf52/portmacro_cmsis.h"
extern void vPortEnterCritical( void );
extern void vPortExitCritical( void );
# 125 "../../../../../../external/freertos/portable/CMSIS/nrf52/portmacro_cmsis.h"
    extern void vPortSuppressTicksAndSleep( TickType_t xExpectedIdleTime );
# 158 "../../../../../../external/freertos/portable/CMSIS/nrf52/portmacro_cmsis.h"
    void vPortValidateInterruptPriority( void );
# 172 "../../../../../../external/freertos/portable/CMSIS/nrf52/portmacro_cmsis.h"
static inline uint32_t ulPortRaiseBASEPRI( void )
{
    uint32_t ulOriginalBASEPRI = __get_BASEPRI();
    __set_BASEPRI(2 << (8 - 3));
    return ulOriginalBASEPRI;
}
# 34 "../../../../../../external/freertos/portable/GCC/nrf52/portmacro.h" 2
# 54 "../../../../../../external/freertos/source/include/portable.h" 2
# 92 "../../../../../../external/freertos/source/include/portable.h"
# 1 "../../../../../../external/freertos/source/include/mpu_wrappers.h" 1
# 93 "../../../../../../external/freertos/source/include/portable.h" 2
# 103 "../../../../../../external/freertos/source/include/portable.h"
 StackType_t *pxPortInitialiseStack( StackType_t *pxTopOfStack, TaskFunction_t pxCode, void *pvParameters ) ;



typedef struct HeapRegion
{
 uint8_t *pucStartAddress;
 size_t xSizeInBytes;
} HeapRegion_t;
# 124 "../../../../../../external/freertos/source/include/portable.h"
void vPortDefineHeapRegions( const HeapRegion_t * const pxHeapRegions ) ;





void *pvPortMalloc( size_t xSize ) ;
void vPortFree( void *pv ) ;
void vPortInitialiseBlocks( void ) ;
size_t xPortGetFreeHeapSize( void ) ;
size_t xPortGetMinimumEverFreeHeapSize( void ) ;





BaseType_t xPortStartScheduler( void ) ;






void vPortEndScheduler( void ) ;
# 64 "../../../../../../external/freertos/source/include/FreeRTOS.h" 2
# 949 "../../../../../../external/freertos/source/include/FreeRTOS.h"
struct xSTATIC_LIST_ITEM
{
 TickType_t xDummy1;
 void *pvDummy2[ 4 ];
};
typedef struct xSTATIC_LIST_ITEM StaticListItem_t;


struct xSTATIC_MINI_LIST_ITEM
{
 TickType_t xDummy1;
 void *pvDummy2[ 2 ];
};
typedef struct xSTATIC_MINI_LIST_ITEM StaticMiniListItem_t;


typedef struct xSTATIC_LIST
{
 UBaseType_t uxDummy1;
 void *pvDummy2;
 StaticMiniListItem_t xDummy3;
} StaticList_t;
# 985 "../../../../../../external/freertos/source/include/FreeRTOS.h"
typedef struct xSTATIC_TCB
{
 void *pxDummy1;



 StaticListItem_t xDummy3[ 2 ];
 UBaseType_t uxDummy5;
 void *pxDummy6;
 uint8_t ucDummy7[ ( 6 ) ];







  UBaseType_t uxDummy10[ 2 ];


  UBaseType_t uxDummy12[ 2 ];
# 1020 "../../../../../../external/freertos/source/include/FreeRTOS.h"
  uint32_t ulDummy18;
  uint8_t ucDummy19;
# 1031 "../../../../../../external/freertos/source/include/FreeRTOS.h"
} StaticTask_t;
# 1047 "../../../../../../external/freertos/source/include/FreeRTOS.h"
typedef struct xSTATIC_QUEUE
{
 void *pvDummy1[ 3 ];

 union
 {
  void *pvDummy2;
  UBaseType_t uxDummy2;
 } u;

 StaticList_t xDummy3[ 2 ];
 UBaseType_t uxDummy4[ 3 ];
 uint8_t ucDummy5[ 2 ];
# 1070 "../../../../../../external/freertos/source/include/FreeRTOS.h"
  UBaseType_t uxDummy8;
  uint8_t ucDummy9;


} StaticQueue_t;
typedef StaticQueue_t StaticSemaphore_t;
# 1091 "../../../../../../external/freertos/source/include/FreeRTOS.h"
typedef struct xSTATIC_EVENT_GROUP
{
 TickType_t xDummy1;
 StaticList_t xDummy2;


  UBaseType_t uxDummy3;






} StaticEventGroup_t;
# 1120 "../../../../../../external/freertos/source/include/FreeRTOS.h"
typedef struct xSTATIC_TIMER
{
 void *pvDummy1;
 StaticListItem_t xDummy2;
 TickType_t xDummy3;
 UBaseType_t uxDummy4;
 void *pvDummy5[ 2 ];

  UBaseType_t uxDummy6;






} StaticTimer_t;
# 1151 "../../../../../../external/freertos/source/include/FreeRTOS.h"
typedef struct xSTATIC_STREAM_BUFFER
{
 size_t uxDummy1[ 4 ];
 void * pvDummy2[ 3 ];
 uint8_t ucDummy3;

  UBaseType_t uxDummy4;

} StaticStreamBuffer_t;


typedef StaticStreamBuffer_t StaticMessageBuffer_t;
# 21 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\main.c" 2
# 1 "../../../../../../components/libraries/util/app_error.h" 1
# 22 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\main.c" 2
# 1 "../../../../../../components/libraries/timer/app_timer.h" 1
# 69 "../../../../../../components/libraries/timer/app_timer.h"
# 1 "../config/sdk_config.h" 1
# 70 "../../../../../../components/libraries/timer/app_timer.h" 2



# 1 "../../../../../../components/libraries/util/nordic_common.h" 1
# 74 "../../../../../../components/libraries/timer/app_timer.h" 2
# 131 "../../../../../../components/libraries/timer/app_timer.h"
typedef void (*app_timer_timeout_handler_t)(void * p_context);
# 166 "../../../../../../components/libraries/timer/app_timer.h"
typedef struct app_timer_t { uint32_t data[(((32) + (sizeof(uint32_t)) - 1) / (sizeof(uint32_t)))]; } app_timer_t;



typedef app_timer_t * app_timer_id_t;
# 180 "../../../../../../components/libraries/timer/app_timer.h"
typedef struct
{
    app_timer_timeout_handler_t timeout_handler;
    void * p_context;
} app_timer_event_t;


typedef enum
{
    APP_TIMER_MODE_SINGLE_SHOT,
    APP_TIMER_MODE_REPEATED
} app_timer_mode_t;





ret_code_t app_timer_init(void);
# 218 "../../../../../../components/libraries/timer/app_timer.h"
ret_code_t app_timer_create(app_timer_id_t const * p_timer_id,
                            app_timer_mode_t mode,
                            app_timer_timeout_handler_t timeout_handler);
# 242 "../../../../../../components/libraries/timer/app_timer.h"
ret_code_t app_timer_start(app_timer_id_t timer_id, uint32_t timeout_ticks, void * p_context);
# 254 "../../../../../../components/libraries/timer/app_timer.h"
ret_code_t app_timer_stop(app_timer_id_t timer_id);







ret_code_t app_timer_stop_all(void);





uint32_t app_timer_cnt_get(void);
# 277 "../../../../../../components/libraries/timer/app_timer.h"
uint32_t app_timer_cnt_diff_compute(uint32_t ticks_to,
                                    uint32_t ticks_from);
# 289 "../../../../../../components/libraries/timer/app_timer.h"
uint8_t app_timer_op_queue_utilization_get(void);







void app_timer_pause(void);







void app_timer_resume(void);
# 23 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\main.c" 2
# 1 "../../../../../../components/libraries/fds/fds.h" 1
# 58 "../../../../../../components/libraries/fds/fds.h"
# 1 "../../../../../../components/libraries/util/sdk_errors.h" 1
# 59 "../../../../../../components/libraries/fds/fds.h" 2
# 83 "../../../../../../components/libraries/fds/fds.h"
enum
{
    FDS_SUCCESS = ((0x0) + 0),
    FDS_ERR_OPERATION_TIMEOUT,
    FDS_ERR_NOT_INITIALIZED,
    FDS_ERR_UNALIGNED_ADDR,
    FDS_ERR_INVALID_ARG,
    FDS_ERR_NULL_ARG,
    FDS_ERR_NO_OPEN_RECORDS,
    FDS_ERR_NO_SPACE_IN_FLASH,
    FDS_ERR_NO_SPACE_IN_QUEUES,
    FDS_ERR_RECORD_TOO_LARGE,
    FDS_ERR_NOT_FOUND,
    FDS_ERR_NO_PAGES,
    FDS_ERR_USER_LIMIT_REACHED,
    FDS_ERR_CRC_CHECK_FAILED,
    FDS_ERR_BUSY,
    FDS_ERR_INTERNAL,
};





typedef struct
{
    uint16_t record_key;
    uint16_t length_words;
    uint16_t file_id;
    uint16_t crc16;



    uint32_t record_id;
} fds_header_t;
# 127 "../../../../../../components/libraries/fds/fds.h"
typedef struct
{
    uint32_t record_id;
    uint32_t const * p_record;
    uint16_t gc_run_count;
    
# 132 "../../../../../../components/libraries/fds/fds.h" 3 4
   _Bool 
# 132 "../../../../../../components/libraries/fds/fds.h"
                    record_is_open;
} fds_record_desc_t;







typedef struct
{
    fds_header_t const * p_header;
    void const * p_data;
} fds_flash_record_t;



typedef struct
{
    uint16_t file_id;
    uint16_t key;
    struct
    {
        void const * p_data;
        uint32_t length_words;
    } data;
} fds_record_t;







typedef struct
{
    uint16_t page;
    uint16_t length_words;
} fds_reserve_token_t;
# 179 "../../../../../../components/libraries/fds/fds.h"
typedef struct
{
    uint32_t const * p_addr;
    uint16_t page;
} fds_find_token_t;




typedef enum
{
    FDS_EVT_INIT,
    FDS_EVT_WRITE,
    FDS_EVT_UPDATE,
    FDS_EVT_DEL_RECORD,
    FDS_EVT_DEL_FILE,
    FDS_EVT_GC
} fds_evt_id_t;


struct semicolon_swallower;


typedef struct
{
    fds_evt_id_t id;
    ret_code_t result;
    union
    {
        struct
        {
            uint32_t record_id;
            uint16_t file_id;
            uint16_t record_key;
            
# 213 "../../../../../../components/libraries/fds/fds.h" 3 4
           _Bool 
# 213 "../../../../../../components/libraries/fds/fds.h"
                    is_record_updated;
        } write;
        struct
        {
            uint32_t record_id;
            uint16_t file_id;
            uint16_t record_key;
        } del;
    };
} fds_evt_t;

struct semicolon_swallower;



typedef struct
{
    uint16_t pages_available;
    uint16_t open_records;
    uint16_t valid_records;
    uint16_t dirty_records;
    uint16_t words_reserved;


    uint16_t words_used;






    uint16_t largest_contig;






    uint16_t freeable_words;
# 260 "../../../../../../components/libraries/fds/fds.h"
    
# 260 "../../../../../../components/libraries/fds/fds.h" 3 4
   _Bool 
# 260 "../../../../../../components/libraries/fds/fds.h"
        corruption;
} fds_stat_t;






typedef void (*fds_cb_t)(fds_evt_t const * p_evt);
# 281 "../../../../../../components/libraries/fds/fds.h"
ret_code_t fds_register(fds_cb_t cb);
# 296 "../../../../../../components/libraries/fds/fds.h"
ret_code_t fds_init(void);
# 334 "../../../../../../components/libraries/fds/fds.h"
ret_code_t fds_record_write(fds_record_desc_t * p_desc,
                            fds_record_t const * p_record);
# 357 "../../../../../../components/libraries/fds/fds.h"
ret_code_t fds_reserve(fds_reserve_token_t * p_token, uint16_t length_words);
# 369 "../../../../../../components/libraries/fds/fds.h"
ret_code_t fds_reserve_cancel(fds_reserve_token_t * p_token);
# 408 "../../../../../../components/libraries/fds/fds.h"
ret_code_t fds_record_write_reserved(fds_record_desc_t * p_desc,
                                     fds_record_t const * p_record,
                                     fds_reserve_token_t const * p_token);
# 432 "../../../../../../components/libraries/fds/fds.h"
ret_code_t fds_record_delete(fds_record_desc_t * p_desc);
# 454 "../../../../../../components/libraries/fds/fds.h"
ret_code_t fds_file_delete(uint16_t file_id);
# 492 "../../../../../../components/libraries/fds/fds.h"
ret_code_t fds_record_update(fds_record_desc_t * p_desc,
                             fds_record_t const * p_record);
# 511 "../../../../../../components/libraries/fds/fds.h"
ret_code_t fds_record_iterate(fds_record_desc_t * p_desc,
                              fds_find_token_t * p_token);
# 531 "../../../../../../components/libraries/fds/fds.h"
ret_code_t fds_record_find(uint16_t file_id,
                           uint16_t record_key,
                           fds_record_desc_t * p_desc,
                           fds_find_token_t * p_token);
# 552 "../../../../../../components/libraries/fds/fds.h"
ret_code_t fds_record_find_by_key(uint16_t record_key,
                                  fds_record_desc_t * p_desc,
                                  fds_find_token_t * p_token);
# 572 "../../../../../../components/libraries/fds/fds.h"
ret_code_t fds_record_find_in_file(uint16_t file_id,
                                   fds_record_desc_t * p_desc,
                                   fds_find_token_t * p_token);
# 601 "../../../../../../components/libraries/fds/fds.h"
ret_code_t fds_record_open(fds_record_desc_t * p_desc,
                           fds_flash_record_t * p_flash_record);
# 621 "../../../../../../components/libraries/fds/fds.h"
ret_code_t fds_record_close(fds_record_desc_t * p_desc);
# 636 "../../../../../../components/libraries/fds/fds.h"
ret_code_t fds_gc(void);
# 655 "../../../../../../components/libraries/fds/fds.h"
ret_code_t fds_descriptor_from_rec_id(fds_record_desc_t * p_desc,
                                      uint32_t record_id);
# 675 "../../../../../../components/libraries/fds/fds.h"
ret_code_t fds_record_id_from_desc(fds_record_desc_t const * p_desc,
                                   uint32_t * p_record_id);
# 690 "../../../../../../components/libraries/fds/fds.h"
ret_code_t fds_stat(fds_stat_t * p_stat);
# 24 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\main.c" 2


# 1 "../../../../../../components/libraries/delay/nrf_delay.h" 1
# 44 "../../../../../../components/libraries/delay/nrf_delay.h"
# 1 "../../../../../../modules/nrfx/nrfx.h" 1
# 44 "../../../../../../modules/nrfx/nrfx.h"
# 1 "../../../../../../integration/nrfx/nrfx_config.h" 1
# 45 "../../../../../../modules/nrfx/nrfx.h" 2
# 1 "../../../../../../modules/nrfx/drivers/nrfx_common.h" 1
# 49 "../../../../../../modules/nrfx/drivers/nrfx_common.h"
# 1 "../../../../../../modules/nrfx/mdk/nrf_peripherals.h" 1
# 61 "../../../../../../modules/nrfx/mdk/nrf_peripherals.h"
# 1 "../../../../../../modules/nrfx/mdk/nrf52832_peripherals.h" 1
# 62 "../../../../../../modules/nrfx/mdk/nrf_peripherals.h" 2
# 50 "../../../../../../modules/nrfx/drivers/nrfx_common.h" 2
# 167 "../../../../../../modules/nrfx/drivers/nrfx_common.h"
typedef void (* nrfx_irq_handler_t)(void);




typedef enum
{
    NRFX_DRV_STATE_UNINITIALIZED,
    NRFX_DRV_STATE_INITIALIZED,
    NRFX_DRV_STATE_POWERED_ON,
} nrfx_drv_state_t;
# 192 "../../../../../../modules/nrfx/drivers/nrfx_common.h"
static inline 
# 192 "../../../../../../modules/nrfx/drivers/nrfx_common.h" 3 4
               _Bool 
# 192 "../../../../../../modules/nrfx/drivers/nrfx_common.h"
                    nrfx_is_in_ram(void const * p_object);
# 201 "../../../../../../modules/nrfx/drivers/nrfx_common.h"
static inline IRQn_Type nrfx_get_irq_number(void const * p_reg);
# 217 "../../../../../../modules/nrfx/drivers/nrfx_common.h"
static inline uint32_t nrfx_bitpos_to_event(uint32_t bit);
# 233 "../../../../../../modules/nrfx/drivers/nrfx_common.h"
static inline uint32_t nrfx_event_to_bitpos(uint32_t event);




static inline 
# 238 "../../../../../../modules/nrfx/drivers/nrfx_common.h" 3 4
               _Bool 
# 238 "../../../../../../modules/nrfx/drivers/nrfx_common.h"
                    nrfx_is_in_ram(void const * p_object)
{
    return ((((uint32_t)p_object) & 0xE0000000u) == 0x20000000u);
}

static inline IRQn_Type nrfx_get_irq_number(void const * p_reg)
{
    uint8_t irq_number = (uint8_t)(((uint32_t)p_reg) >> 12u);
    return (IRQn_Type)irq_number;
}

static inline uint32_t nrfx_bitpos_to_event(uint32_t bit)
{
    static const uint32_t event_reg_offset = 0x100u;
    return event_reg_offset + (bit * sizeof(uint32_t));
}

static inline uint32_t nrfx_event_to_bitpos(uint32_t event)
{
    static const uint32_t event_reg_offset = 0x100u;
    return (event - event_reg_offset) / sizeof(uint32_t);
}
# 46 "../../../../../../modules/nrfx/nrfx.h" 2
# 1 "../../../../../../integration/nrfx/nrfx_glue.h" 1
# 57 "../../../../../../integration/nrfx/nrfx_glue.h"
# 1 "../../../../../../integration/nrfx/legacy/apply_old_config.h" 1
# 58 "../../../../../../integration/nrfx/nrfx_glue.h" 2

# 1 "../../../../../../modules/nrfx/soc/nrfx_irqs.h" 1
# 49 "../../../../../../modules/nrfx/soc/nrfx_irqs.h"
# 1 "../../../../../../modules/nrfx/soc/nrfx_irqs_nrf52832.h" 1
# 50 "../../../../../../modules/nrfx/soc/nrfx_irqs.h" 2
# 60 "../../../../../../integration/nrfx/nrfx_glue.h" 2
# 104 "../../../../../../integration/nrfx/nrfx_glue.h"
static inline void _NRFX_IRQ_PRIORITY_SET(IRQn_Type irq_number,
                                          uint8_t priority)
{
    if (1) { if (((((priority) > 1) && ((priority) < 4)) || (((priority) > 4) && ((priority) < 8)))) { } else { assert_nrf_callback((uint16_t)107, (uint8_t *)"../../../../../../integration/nrfx/nrfx_glue.h"); } };
    NVIC_SetPriority(irq_number, priority);
}







static inline void _NRFX_IRQ_ENABLE(IRQn_Type irq_number)
{
    NVIC_ClearPendingIRQ(irq_number);
    NVIC_EnableIRQ(irq_number);
}
# 132 "../../../../../../integration/nrfx/nrfx_glue.h"
static inline 
# 132 "../../../../../../integration/nrfx/nrfx_glue.h" 3 4
             _Bool 
# 132 "../../../../../../integration/nrfx/nrfx_glue.h"
                  _NRFX_IRQ_IS_ENABLED(IRQn_Type irq_number)
{
    return 0 != (((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ISER[irq_number / 32] & (1UL << (irq_number % 32)));
}







static inline void _NRFX_IRQ_DISABLE(IRQn_Type irq_number)
{
    NVIC_DisableIRQ(irq_number);
}







static inline void _NRFX_IRQ_PENDING_SET(IRQn_Type irq_number)
{
    NVIC_SetPendingIRQ(irq_number);
}







static inline void _NRFX_IRQ_PENDING_CLEAR(IRQn_Type irq_number)
{
    NVIC_ClearPendingIRQ(irq_number);
}
# 177 "../../../../../../integration/nrfx/nrfx_glue.h"
static inline 
# 177 "../../../../../../integration/nrfx/nrfx_glue.h" 3 4
             _Bool 
# 177 "../../../../../../integration/nrfx/nrfx_glue.h"
                  _NRFX_IRQ_IS_PENDING(IRQn_Type irq_number)
{
    return (NVIC_GetPendingIRQ(irq_number) == 1);
}
# 204 "../../../../../../integration/nrfx/nrfx_glue.h"
# 1 "../../../../../../modules/nrfx/soc/nrfx_coredep.h" 1
# 84 "../../../../../../modules/nrfx/soc/nrfx_coredep.h"
static inline void nrfx_coredep_delay_us(uint32_t time_us);
# 128 "../../../../../../modules/nrfx/soc/nrfx_coredep.h"
static inline void nrfx_coredep_delay_us(uint32_t time_us)
{
    if (time_us == 0)
    {
        return;
    }
# 152 "../../../../../../modules/nrfx/soc/nrfx_coredep.h"
    __attribute__((aligned(16)))
    static const uint16_t delay_bytecode[] = {
        0x3803,
        0xd8fd,
        0x4770
        };


    typedef void (* delay_func_t)(uint32_t);

    const delay_func_t delay_cycles = (delay_func_t)((((uint32_t)delay_bytecode) | 1));
    uint32_t cycles = time_us * 64;
    delay_cycles(cycles);
}
# 205 "../../../../../../integration/nrfx/nrfx_glue.h" 2
# 219 "../../../../../../integration/nrfx/nrfx_glue.h"
typedef ret_code_t nrfx_err_t;
# 241 "../../../../../../integration/nrfx/nrfx_glue.h"
# 1 "../../../../../../components/libraries/util/sdk_resources.h" 1
# 52 "../../../../../../components/libraries/util/sdk_resources.h"
# 1 "../../../../../../components/softdevice/s132/headers/nrf_sd_def.h" 1
# 53 "../../../../../../components/libraries/util/sdk_resources.h" 2
# 242 "../../../../../../integration/nrfx/nrfx_glue.h" 2
# 47 "../../../../../../modules/nrfx/nrfx.h" 2
# 1 "../../../../../../modules/nrfx/drivers/nrfx_errors.h" 1
# 48 "../../../../../../modules/nrfx/nrfx.h" 2
# 45 "../../../../../../components/libraries/delay/nrf_delay.h" 2
# 64 "../../../../../../components/libraries/delay/nrf_delay.h"
static inline void nrf_delay_ms(uint32_t ms_time)
{
    if (ms_time == 0)
    {
        return;
    }

    do {
        nrfx_coredep_delay_us(1000);
    } while (--ms_time);
}
# 27 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\main.c" 2
# 1 "../../../../../../integration/nrfx/legacy/nrf_drv_clock.h" 1
# 43 "../../../../../../integration/nrfx/legacy/nrf_drv_clock.h"
# 1 "../../../../../../modules/nrfx/drivers/include/nrfx_clock.h" 1
# 45 "../../../../../../modules/nrfx/drivers/include/nrfx_clock.h"
# 1 "../../../../../../modules/nrfx/hal/nrf_clock.h" 1
# 67 "../../../../../../modules/nrfx/hal/nrf_clock.h"
typedef enum
{
    NRF_CLOCK_LFCLK_RC = (0UL),
    NRF_CLOCK_LFCLK_Xtal = (1UL),
    NRF_CLOCK_LFCLK_Synth = (2UL)
} nrf_clock_lfclk_t;




typedef enum
{
    NRF_CLOCK_HFCLK_LOW_ACCURACY = (0UL),
    NRF_CLOCK_HFCLK_HIGH_ACCURACY = (1UL)
} nrf_clock_hfclk_t;





typedef enum
{
    NRF_CLOCK_START_TASK_NOT_TRIGGERED = (0UL),
    NRF_CLOCK_START_TASK_TRIGGERED = (1UL)
} nrf_clock_start_task_status_t;




typedef enum
{
    NRF_CLOCK_INT_HF_STARTED_MASK = (0x1UL << (0UL)),
    NRF_CLOCK_INT_LF_STARTED_MASK = (0x1UL << (1UL)),
    NRF_CLOCK_INT_DONE_MASK = (0x1UL << (3UL)),
    NRF_CLOCK_INT_CTTO_MASK = (0x1UL << (4UL))
} nrf_clock_int_mask_t;







typedef enum
{
    NRF_CLOCK_TASK_HFCLKSTART = __builtin_offsetof (NRF_CLOCK_Type, TASKS_HFCLKSTART),
    NRF_CLOCK_TASK_HFCLKSTOP = __builtin_offsetof (NRF_CLOCK_Type, TASKS_HFCLKSTOP),
    NRF_CLOCK_TASK_LFCLKSTART = __builtin_offsetof (NRF_CLOCK_Type, TASKS_LFCLKSTART),
    NRF_CLOCK_TASK_LFCLKSTOP = __builtin_offsetof (NRF_CLOCK_Type, TASKS_LFCLKSTOP),
    NRF_CLOCK_TASK_CAL = __builtin_offsetof (NRF_CLOCK_Type, TASKS_CAL),
    NRF_CLOCK_TASK_CTSTART = __builtin_offsetof (NRF_CLOCK_Type, TASKS_CTSTART),
    NRF_CLOCK_TASK_CTSTOP = __builtin_offsetof (NRF_CLOCK_Type, TASKS_CTSTOP)
} nrf_clock_task_t;




typedef enum
{
    NRF_CLOCK_EVENT_HFCLKSTARTED = __builtin_offsetof (NRF_CLOCK_Type, EVENTS_HFCLKSTARTED),
    NRF_CLOCK_EVENT_LFCLKSTARTED = __builtin_offsetof (NRF_CLOCK_Type, EVENTS_LFCLKSTARTED),
    NRF_CLOCK_EVENT_DONE = __builtin_offsetof (NRF_CLOCK_Type, EVENTS_DONE),
    NRF_CLOCK_EVENT_CTTO = __builtin_offsetof (NRF_CLOCK_Type, EVENTS_CTTO)
} nrf_clock_event_t;






static inline void nrf_clock_int_enable(uint32_t int_mask);






static inline void nrf_clock_int_disable(uint32_t int_mask);
# 154 "../../../../../../modules/nrfx/hal/nrf_clock.h"
static inline 
# 154 "../../../../../../modules/nrfx/hal/nrf_clock.h" 3 4
               _Bool 
# 154 "../../../../../../modules/nrfx/hal/nrf_clock.h"
                    nrf_clock_int_enable_check(nrf_clock_int_mask_t int_mask);
# 164 "../../../../../../modules/nrfx/hal/nrf_clock.h"
static inline uint32_t nrf_clock_task_address_get(nrf_clock_task_t task);






static inline void nrf_clock_task_trigger(nrf_clock_task_t task);
# 181 "../../../../../../modules/nrfx/hal/nrf_clock.h"
static inline uint32_t nrf_clock_event_address_get(nrf_clock_event_t event);






static inline void nrf_clock_event_clear(nrf_clock_event_t event);
# 198 "../../../../../../modules/nrfx/hal/nrf_clock.h"
static inline 
# 198 "../../../../../../modules/nrfx/hal/nrf_clock.h" 3 4
               _Bool 
# 198 "../../../../../../modules/nrfx/hal/nrf_clock.h"
                    nrf_clock_event_check(nrf_clock_event_t event);
# 207 "../../../../../../modules/nrfx/hal/nrf_clock.h"
static inline void nrf_clock_lf_src_set(nrf_clock_lfclk_t source);
# 216 "../../../../../../modules/nrfx/hal/nrf_clock.h"
static inline nrf_clock_lfclk_t nrf_clock_lf_src_get(void);
# 225 "../../../../../../modules/nrfx/hal/nrf_clock.h"
static inline nrf_clock_lfclk_t nrf_clock_lf_actv_src_get(void);
# 234 "../../../../../../modules/nrfx/hal/nrf_clock.h"
static inline nrf_clock_lfclk_t nrf_clock_lf_srccopy_get(void);







static inline 
# 242 "../../../../../../modules/nrfx/hal/nrf_clock.h" 3 4
               _Bool 
# 242 "../../../../../../modules/nrfx/hal/nrf_clock.h"
                    nrf_clock_lf_is_running(void);







static inline nrf_clock_start_task_status_t nrf_clock_lf_start_task_status_get(void);







static inline nrf_clock_hfclk_t nrf_clock_hf_src_get(void);
# 268 "../../../../../../modules/nrfx/hal/nrf_clock.h"
static inline 
# 268 "../../../../../../modules/nrfx/hal/nrf_clock.h" 3 4
               _Bool 
# 268 "../../../../../../modules/nrfx/hal/nrf_clock.h"
                    nrf_clock_hf_is_running(nrf_clock_hfclk_t clk_src);







static inline nrf_clock_start_task_status_t nrf_clock_hf_start_task_status_get(void);






static inline void nrf_clock_cal_timer_timeout_set(uint32_t interval);



static inline void nrf_clock_int_enable(uint32_t int_mask)
{
    ((NRF_CLOCK_Type *) 0x40000000UL)->INTENSET = int_mask;
}

static inline void nrf_clock_int_disable(uint32_t int_mask)
{
    ((NRF_CLOCK_Type *) 0x40000000UL)->INTENCLR = int_mask;
}

static inline 
# 297 "../../../../../../modules/nrfx/hal/nrf_clock.h" 3 4
               _Bool 
# 297 "../../../../../../modules/nrfx/hal/nrf_clock.h"
                    nrf_clock_int_enable_check(nrf_clock_int_mask_t int_mask)
{
    return (
# 299 "../../../../../../modules/nrfx/hal/nrf_clock.h" 3 4
           _Bool
# 299 "../../../../../../modules/nrfx/hal/nrf_clock.h"
               )(((NRF_CLOCK_Type *) 0x40000000UL)->INTENCLR & int_mask);
}

static inline uint32_t nrf_clock_task_address_get(nrf_clock_task_t task)
{
    return ((uint32_t )((NRF_CLOCK_Type *) 0x40000000UL) + task);
}

static inline void nrf_clock_task_trigger(nrf_clock_task_t task)
{
    *((volatile uint32_t *)((uint8_t *)((NRF_CLOCK_Type *) 0x40000000UL) + task)) = (1UL);
}

static inline uint32_t nrf_clock_event_address_get(nrf_clock_event_t event)
{
    return ((uint32_t)((NRF_CLOCK_Type *) 0x40000000UL) + event);
}

static inline void nrf_clock_event_clear(nrf_clock_event_t event)
{
    *((volatile uint32_t *)((uint8_t *)((NRF_CLOCK_Type *) 0x40000000UL) + event)) = (0UL);

    volatile uint32_t dummy = *((volatile uint32_t *)((uint8_t *)((NRF_CLOCK_Type *) 0x40000000UL) + event));
    (void)dummy;

}

static inline 
# 326 "../../../../../../modules/nrfx/hal/nrf_clock.h" 3 4
               _Bool 
# 326 "../../../../../../modules/nrfx/hal/nrf_clock.h"
                    nrf_clock_event_check(nrf_clock_event_t event)
{
    return (
# 328 "../../../../../../modules/nrfx/hal/nrf_clock.h" 3 4
           _Bool
# 328 "../../../../../../modules/nrfx/hal/nrf_clock.h"
               )*((volatile uint32_t *)((uint8_t *)((NRF_CLOCK_Type *) 0x40000000UL) + event));
}

static inline void nrf_clock_lf_src_set(nrf_clock_lfclk_t source)
{
    ((NRF_CLOCK_Type *) 0x40000000UL)->LFCLKSRC =
        (uint32_t)((source << (0UL)) & (0x3UL << (0UL)));
}

static inline nrf_clock_lfclk_t nrf_clock_lf_src_get(void)
{
    return (nrf_clock_lfclk_t)((((NRF_CLOCK_Type *) 0x40000000UL)->LFCLKSRC &
                                (0x3UL << (0UL))) >> (0UL));
}

static inline nrf_clock_lfclk_t nrf_clock_lf_actv_src_get(void)
{
    return (nrf_clock_lfclk_t)((((NRF_CLOCK_Type *) 0x40000000UL)->LFCLKSTAT &
                                (0x3UL << (0UL))) >> (0UL));
}

static inline nrf_clock_lfclk_t nrf_clock_lf_srccopy_get(void)
{
    return (nrf_clock_lfclk_t)((((NRF_CLOCK_Type *) 0x40000000UL)->LFCLKSRCCOPY &
                                (0x3UL << (0UL))) >> (0UL));
}

static inline 
# 355 "../../../../../../modules/nrfx/hal/nrf_clock.h" 3 4
               _Bool 
# 355 "../../../../../../modules/nrfx/hal/nrf_clock.h"
                    nrf_clock_lf_is_running(void)
{
    return ((((NRF_CLOCK_Type *) 0x40000000UL)->LFCLKSTAT &
             (0x1UL << (16UL))) >> (16UL));
}

static inline nrf_clock_start_task_status_t nrf_clock_lf_start_task_status_get(void)
{
    return (nrf_clock_start_task_status_t)((((NRF_CLOCK_Type *) 0x40000000UL)->LFCLKRUN &
                                            (0x1UL << (0UL))) >>
                                           (0UL));
}

static inline nrf_clock_hfclk_t nrf_clock_hf_src_get(void)
{
    return (nrf_clock_hfclk_t)((((NRF_CLOCK_Type *) 0x40000000UL)->HFCLKSTAT &
                                (0x1UL << (0UL))) >> (0UL));
}

static inline 
# 374 "../../../../../../modules/nrfx/hal/nrf_clock.h" 3 4
               _Bool 
# 374 "../../../../../../modules/nrfx/hal/nrf_clock.h"
                    nrf_clock_hf_is_running(nrf_clock_hfclk_t clk_src)
{
    return (((NRF_CLOCK_Type *) 0x40000000UL)->HFCLKSTAT & ((0x1UL << (16UL)) | (0x1UL << (0UL)))) ==
            ((0x1UL << (16UL)) | (clk_src << (0UL)));
}

static inline nrf_clock_start_task_status_t nrf_clock_hf_start_task_status_get(void)
{
    return (nrf_clock_start_task_status_t)((((NRF_CLOCK_Type *) 0x40000000UL)->HFCLKRUN &
                                            (0x1UL << (0UL))) >>
                                           (0UL));
}

static inline void nrf_clock_cal_timer_timeout_set(uint32_t interval)
{
    ((NRF_CLOCK_Type *) 0x40000000UL)->CTIV = ((interval << (0UL)) & (0x7FUL << (0UL)));
}
# 46 "../../../../../../modules/nrfx/drivers/include/nrfx_clock.h" 2
# 1 "../../../../../../modules/nrfx/drivers/include/nrfx_power_clock.h" 1
# 51 "../../../../../../modules/nrfx/drivers/include/nrfx_power_clock.h"
static inline void nrfx_power_clock_irq_init(void);


static inline void nrfx_power_clock_irq_init(void)
{
    uint8_t priority;
# 65 "../../../../../../modules/nrfx/drivers/include/nrfx_power_clock.h"
    priority = 7;


    if (!_NRFX_IRQ_IS_ENABLED(POWER_CLOCK_IRQn))
    {
        _NRFX_IRQ_PRIORITY_SET(POWER_CLOCK_IRQn, priority);
        _NRFX_IRQ_ENABLE(POWER_CLOCK_IRQn);
    }
}
# 47 "../../../../../../modules/nrfx/drivers/include/nrfx_clock.h" 2
# 62 "../../../../../../modules/nrfx/drivers/include/nrfx_clock.h"
typedef enum
{
    NRFX_CLOCK_EVT_HFCLK_STARTED,
    NRFX_CLOCK_EVT_LFCLK_STARTED,
    NRFX_CLOCK_EVT_CTTO,
    NRFX_CLOCK_EVT_CAL_DONE
} nrfx_clock_evt_type_t;






typedef void (*nrfx_clock_event_handler_t)(nrfx_clock_evt_type_t event);
# 88 "../../../../../../modules/nrfx/drivers/include/nrfx_clock.h"
nrfx_err_t nrfx_clock_init(nrfx_clock_event_handler_t event_handler);




void nrfx_clock_enable(void);




void nrfx_clock_disable(void);




void nrfx_clock_uninit(void);




void nrfx_clock_lfclk_start(void);




void nrfx_clock_lfclk_stop(void);







static inline 
# 121 "../../../../../../modules/nrfx/drivers/include/nrfx_clock.h" 3 4
               _Bool 
# 121 "../../../../../../modules/nrfx/drivers/include/nrfx_clock.h"
                    nrfx_clock_lfclk_is_running(void);




void nrfx_clock_hfclk_start(void);




void nrfx_clock_hfclk_stop(void);







static inline 
# 139 "../../../../../../modules/nrfx/drivers/include/nrfx_clock.h" 3 4
               _Bool 
# 139 "../../../../../../modules/nrfx/drivers/include/nrfx_clock.h"
                    nrfx_clock_hfclk_is_running(void);
# 151 "../../../../../../modules/nrfx/drivers/include/nrfx_clock.h"
nrfx_err_t nrfx_clock_calibration_start(void);
# 161 "../../../../../../modules/nrfx/drivers/include/nrfx_clock.h"
nrfx_err_t nrfx_clock_is_calibrating(void);





void nrfx_clock_calibration_timer_start(uint8_t interval);




void nrfx_clock_calibration_timer_stop(void);







static inline uint32_t nrfx_clock_ppi_task_addr(nrf_clock_task_t task);







static inline uint32_t nrfx_clock_ppi_event_addr(nrf_clock_event_t event);



static inline uint32_t nrfx_clock_ppi_task_addr(nrf_clock_task_t task)
{
    return nrf_clock_task_address_get(task);
}

static inline uint32_t nrfx_clock_ppi_event_addr(nrf_clock_event_t event)
{
    return nrf_clock_event_address_get(event);
}

static inline 
# 202 "../../../../../../modules/nrfx/drivers/include/nrfx_clock.h" 3 4
               _Bool 
# 202 "../../../../../../modules/nrfx/drivers/include/nrfx_clock.h"
                    nrfx_clock_hfclk_is_running(void)
{
    return nrf_clock_hf_is_running(NRF_CLOCK_HFCLK_HIGH_ACCURACY);
}

static inline 
# 207 "../../../../../../modules/nrfx/drivers/include/nrfx_clock.h" 3 4
               _Bool 
# 207 "../../../../../../modules/nrfx/drivers/include/nrfx_clock.h"
                    nrfx_clock_lfclk_is_running(void)
{
    return nrf_clock_lf_is_running();
}



void POWER_CLOCK_IRQHandler(void);
# 44 "../../../../../../integration/nrfx/legacy/nrf_drv_clock.h" 2
# 60 "../../../../../../integration/nrfx/legacy/nrf_drv_clock.h"
typedef enum
{
    NRF_DRV_CLOCK_EVT_HFCLK_STARTED,
    NRF_DRV_CLOCK_EVT_LFCLK_STARTED,
    NRF_DRV_CLOCK_EVT_CAL_DONE,
    NRF_DRV_CLOCK_EVT_CAL_ABORTED,
} nrf_drv_clock_evt_type_t;






typedef void (*nrf_drv_clock_event_handler_t)(nrf_drv_clock_evt_type_t event);


typedef struct nrf_drv_clock_handler_item_s nrf_drv_clock_handler_item_t;

struct nrf_drv_clock_handler_item_s
{
    nrf_drv_clock_handler_item_t * p_next;
    nrf_drv_clock_event_handler_t event_handler;
};








# 90 "../../../../../../integration/nrfx/legacy/nrf_drv_clock.h" 3 4
_Bool 
# 90 "../../../../../../integration/nrfx/legacy/nrf_drv_clock.h"
    nrf_drv_clock_init_check(void);
# 100 "../../../../../../integration/nrfx/legacy/nrf_drv_clock.h"
ret_code_t nrf_drv_clock_init(void);





void nrf_drv_clock_uninit(void);
# 129 "../../../../../../integration/nrfx/legacy/nrf_drv_clock.h"
void nrf_drv_clock_lfclk_request(nrf_drv_clock_handler_item_t * p_handler_item);
# 138 "../../../../../../integration/nrfx/legacy/nrf_drv_clock.h"
void nrf_drv_clock_lfclk_release(void);








# 146 "../../../../../../integration/nrfx/legacy/nrf_drv_clock.h" 3 4
_Bool 
# 146 "../../../../../../integration/nrfx/legacy/nrf_drv_clock.h"
    nrf_drv_clock_lfclk_is_running(void);
# 167 "../../../../../../integration/nrfx/legacy/nrf_drv_clock.h"
void nrf_drv_clock_hfclk_request(nrf_drv_clock_handler_item_t * p_handler_item);






void nrf_drv_clock_hfclk_release(void);








# 182 "../../../../../../integration/nrfx/legacy/nrf_drv_clock.h" 3 4
_Bool 
# 182 "../../../../../../integration/nrfx/legacy/nrf_drv_clock.h"
    nrf_drv_clock_hfclk_is_running(void);
# 205 "../../../../../../integration/nrfx/legacy/nrf_drv_clock.h"
ret_code_t nrf_drv_clock_calibration_start(uint8_t delay, nrf_drv_clock_event_handler_t handler);
# 218 "../../../../../../integration/nrfx/legacy/nrf_drv_clock.h"
ret_code_t nrf_drv_clock_calibration_abort(void);
# 231 "../../../../../../integration/nrfx/legacy/nrf_drv_clock.h"
ret_code_t nrf_drv_clock_is_calibrating(
# 231 "../../../../../../integration/nrfx/legacy/nrf_drv_clock.h" 3 4
                                       _Bool 
# 231 "../../../../../../integration/nrfx/legacy/nrf_drv_clock.h"
                                            * p_is_calibrating);







static inline uint32_t nrf_drv_clock_ppi_task_addr(nrf_clock_task_t task);







static inline uint32_t nrf_drv_clock_ppi_event_addr(nrf_clock_event_t event);
# 256 "../../../../../../integration/nrfx/legacy/nrf_drv_clock.h"
void nrf_drv_clock_on_soc_event(uint32_t evt_id);







void nrf_drv_clock_on_sd_enable(void);
# 274 "../../../../../../integration/nrfx/legacy/nrf_drv_clock.h"
void nrf_drv_clock_on_sd_disable(void);







static inline uint32_t nrf_drv_clock_ppi_task_addr(nrf_clock_task_t task)
{
    return nrf_clock_task_address_get(task);
}

static inline uint32_t nrf_drv_clock_ppi_event_addr(nrf_clock_event_t event)
{
    return nrf_clock_event_address_get(event);
}
# 28 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\main.c" 2
# 1 "../../../../../../integration/nrfx/legacy/nrf_drv_ppi.h" 1
# 44 "../../../../../../integration/nrfx/legacy/nrf_drv_ppi.h"
# 1 "../../../../../../modules/nrfx/drivers/include/nrfx_ppi.h" 1
# 45 "../../../../../../modules/nrfx/drivers/include/nrfx_ppi.h"
# 1 "../../../../../../modules/nrfx/hal/nrf_ppi.h" 1
# 64 "../../../../../../modules/nrfx/hal/nrf_ppi.h"
typedef enum
{
    NRF_PPI_CHANNEL0 = (0UL),
    NRF_PPI_CHANNEL1 = (1UL),
    NRF_PPI_CHANNEL2 = (2UL),
    NRF_PPI_CHANNEL3 = (3UL),
    NRF_PPI_CHANNEL4 = (4UL),
    NRF_PPI_CHANNEL5 = (5UL),
    NRF_PPI_CHANNEL6 = (6UL),
    NRF_PPI_CHANNEL7 = (7UL),
    NRF_PPI_CHANNEL8 = (8UL),
    NRF_PPI_CHANNEL9 = (9UL),
    NRF_PPI_CHANNEL10 = (10UL),
    NRF_PPI_CHANNEL11 = (11UL),
    NRF_PPI_CHANNEL12 = (12UL),
    NRF_PPI_CHANNEL13 = (13UL),
    NRF_PPI_CHANNEL14 = (14UL),
    NRF_PPI_CHANNEL15 = (15UL),

    NRF_PPI_CHANNEL16 = (16UL),
    NRF_PPI_CHANNEL17 = (17UL),
    NRF_PPI_CHANNEL18 = (18UL),
    NRF_PPI_CHANNEL19 = (19UL),

    NRF_PPI_CHANNEL20 = (20UL),
    NRF_PPI_CHANNEL21 = (21UL),
    NRF_PPI_CHANNEL22 = (22UL),
    NRF_PPI_CHANNEL23 = (23UL),
    NRF_PPI_CHANNEL24 = (24UL),
    NRF_PPI_CHANNEL25 = (25UL),
    NRF_PPI_CHANNEL26 = (26UL),
    NRF_PPI_CHANNEL27 = (27UL),
    NRF_PPI_CHANNEL28 = (28UL),
    NRF_PPI_CHANNEL29 = (29UL),
    NRF_PPI_CHANNEL30 = (30UL),
    NRF_PPI_CHANNEL31 = (31UL)
} nrf_ppi_channel_t;





typedef enum
{
    NRF_PPI_CHANNEL_GROUP0 = 0,
    NRF_PPI_CHANNEL_GROUP1 = 1,
    NRF_PPI_CHANNEL_GROUP2 = 2,
    NRF_PPI_CHANNEL_GROUP3 = 3,

    NRF_PPI_CHANNEL_GROUP4 = 4,
    NRF_PPI_CHANNEL_GROUP5 = 5

} nrf_ppi_channel_group_t;





typedef enum
{
    NRF_PPI_CHANNEL_EXCLUDE = (0UL),
    NRF_PPI_CHANNEL_INCLUDE = (1UL)
} nrf_ppi_channel_include_t;





typedef enum
{
    NRF_PPI_CHANNEL_DISABLED = (0UL),
    NRF_PPI_CHANNEL_ENABLED = (1UL)
} nrf_ppi_channel_enable_t;





typedef enum
{

    NRF_PPI_TASK_CHG0_EN = __builtin_offsetof (NRF_PPI_Type, TASKS_CHG[0].EN),
    NRF_PPI_TASK_CHG0_DIS = __builtin_offsetof (NRF_PPI_Type, TASKS_CHG[0].DIS),
    NRF_PPI_TASK_CHG1_EN = __builtin_offsetof (NRF_PPI_Type, TASKS_CHG[1].EN),
    NRF_PPI_TASK_CHG1_DIS = __builtin_offsetof (NRF_PPI_Type, TASKS_CHG[1].DIS),
    NRF_PPI_TASK_CHG2_EN = __builtin_offsetof (NRF_PPI_Type, TASKS_CHG[2].EN),
    NRF_PPI_TASK_CHG2_DIS = __builtin_offsetof (NRF_PPI_Type, TASKS_CHG[2].DIS),
    NRF_PPI_TASK_CHG3_EN = __builtin_offsetof (NRF_PPI_Type, TASKS_CHG[3].EN),
    NRF_PPI_TASK_CHG3_DIS = __builtin_offsetof (NRF_PPI_Type, TASKS_CHG[3].DIS),

    NRF_PPI_TASK_CHG4_EN = __builtin_offsetof (NRF_PPI_Type, TASKS_CHG[4].EN),
    NRF_PPI_TASK_CHG4_DIS = __builtin_offsetof (NRF_PPI_Type, TASKS_CHG[4].DIS),
    NRF_PPI_TASK_CHG5_EN = __builtin_offsetof (NRF_PPI_Type, TASKS_CHG[5].EN),
    NRF_PPI_TASK_CHG5_DIS = __builtin_offsetof (NRF_PPI_Type, TASKS_CHG[5].DIS)


} nrf_ppi_task_t;
# 170 "../../../../../../modules/nrfx/hal/nrf_ppi.h"
static inline void nrf_ppi_channel_enable(nrf_ppi_channel_t channel);
# 179 "../../../../../../modules/nrfx/hal/nrf_ppi.h"
static inline void nrf_ppi_channel_disable(nrf_ppi_channel_t channel);
# 192 "../../../../../../modules/nrfx/hal/nrf_ppi.h"
static inline nrf_ppi_channel_enable_t nrf_ppi_channel_enable_get(nrf_ppi_channel_t channel);




static inline void nrf_ppi_channel_disable_all(void);






static inline void nrf_ppi_channels_disable(uint32_t mask);
# 215 "../../../../../../modules/nrfx/hal/nrf_ppi.h"
static inline void nrf_ppi_channel_endpoint_setup(nrf_ppi_channel_t channel,
                                                    uint32_t eep,
                                                    uint32_t tep);
# 227 "../../../../../../modules/nrfx/hal/nrf_ppi.h"
static inline void nrf_ppi_fork_endpoint_setup(nrf_ppi_channel_t channel,
                                                 uint32_t fork_tep);
# 241 "../../../../../../modules/nrfx/hal/nrf_ppi.h"
static inline void nrf_ppi_channel_and_fork_endpoint_setup(nrf_ppi_channel_t channel,
                                                             uint32_t eep,
                                                             uint32_t tep,
                                                             uint32_t fork_tep);
# 257 "../../../../../../modules/nrfx/hal/nrf_ppi.h"
static inline void nrf_ppi_channel_include_in_group(nrf_ppi_channel_t channel,
                                                      nrf_ppi_channel_group_t channel_group);
# 270 "../../../../../../modules/nrfx/hal/nrf_ppi.h"
static inline void nrf_ppi_channels_include_in_group(uint32_t channel_mask,
                                                       nrf_ppi_channel_group_t channel_group);
# 282 "../../../../../../modules/nrfx/hal/nrf_ppi.h"
static inline void nrf_ppi_channel_remove_from_group(nrf_ppi_channel_t channel,
                                                       nrf_ppi_channel_group_t channel_group);
# 294 "../../../../../../modules/nrfx/hal/nrf_ppi.h"
static inline void nrf_ppi_channels_remove_from_group(uint32_t channel_mask,
                                                        nrf_ppi_channel_group_t channel_group);







static inline void nrf_ppi_channel_group_clear(nrf_ppi_channel_group_t group);







static inline void nrf_ppi_group_enable(nrf_ppi_channel_group_t group);







static inline void nrf_ppi_group_disable(nrf_ppi_channel_group_t group);






static inline void nrf_ppi_task_trigger(nrf_ppi_task_t ppi_task);






static inline uint32_t * nrf_ppi_task_address_get(nrf_ppi_task_t ppi_task);






static inline uint32_t * nrf_ppi_task_group_enable_address_get(nrf_ppi_channel_group_t group);






static inline uint32_t * nrf_ppi_task_group_disable_address_get(nrf_ppi_channel_group_t group);




static inline void nrf_ppi_channel_enable(nrf_ppi_channel_t channel)
{
    ((NRF_PPI_Type *) 0x4001F000UL)->CHENSET = (1UL) << ((uint32_t) channel);
}

static inline void nrf_ppi_channel_disable(nrf_ppi_channel_t channel)
{
    ((NRF_PPI_Type *) 0x4001F000UL)->CHENCLR = (1UL) << ((uint32_t) channel);
}

static inline nrf_ppi_channel_enable_t nrf_ppi_channel_enable_get(nrf_ppi_channel_t channel)
{
    if (((NRF_PPI_Type *) 0x4001F000UL)->CHEN & ((0x1UL << (0UL)) << ((uint32_t) channel)))
    {
        return NRF_PPI_CHANNEL_ENABLED;
    }
    else
    {
        return NRF_PPI_CHANNEL_DISABLED;
    }
}

static inline void nrf_ppi_channel_disable_all(void)
{
    ((NRF_PPI_Type *) 0x4001F000UL)->CHENCLR = ((uint32_t)0xFFFFFFFFuL);
}

static inline void nrf_ppi_channels_disable(uint32_t mask)
{
    ((NRF_PPI_Type *) 0x4001F000UL)->CHENCLR = mask;
}

static inline void nrf_ppi_channel_endpoint_setup(nrf_ppi_channel_t channel,
                                                    uint32_t eep,
                                                    uint32_t tep)
{
    ((NRF_PPI_Type *) 0x4001F000UL)->CH[(uint32_t) channel].EEP = eep;
    ((NRF_PPI_Type *) 0x4001F000UL)->CH[(uint32_t) channel].TEP = tep;
}



static inline void nrf_ppi_fork_endpoint_setup(nrf_ppi_channel_t channel,
                                                 uint32_t fork_tep)
{
    ((NRF_PPI_Type *) 0x4001F000UL)->FORK[(uint32_t) channel].TEP = fork_tep;
}

static inline void nrf_ppi_channel_and_fork_endpoint_setup(nrf_ppi_channel_t channel,
                                                             uint32_t eep,
                                                             uint32_t tep,
                                                             uint32_t fork_tep)
{
    nrf_ppi_channel_endpoint_setup(channel, eep, tep);
    nrf_ppi_fork_endpoint_setup(channel, fork_tep);
}


static inline void nrf_ppi_channel_include_in_group(nrf_ppi_channel_t channel,
                                                      nrf_ppi_channel_group_t channel_group)
{
    ((NRF_PPI_Type *) 0x4001F000UL)->CHG[(uint32_t) channel_group] =
        ((NRF_PPI_Type *) 0x4001F000UL)->CHG[(uint32_t) channel_group] | ((1UL) << ((uint32_t) channel));
}

static inline void nrf_ppi_channels_include_in_group(uint32_t channel_mask,
                                                       nrf_ppi_channel_group_t channel_group)
{
    ((NRF_PPI_Type *) 0x4001F000UL)->CHG[(uint32_t) channel_group] =
        ((NRF_PPI_Type *) 0x4001F000UL)->CHG[(uint32_t) channel_group] | (channel_mask);
}

static inline void nrf_ppi_channel_remove_from_group(nrf_ppi_channel_t channel,
                                                       nrf_ppi_channel_group_t channel_group)
{
    ((NRF_PPI_Type *) 0x4001F000UL)->CHG[(uint32_t) channel_group] =
        ((NRF_PPI_Type *) 0x4001F000UL)->CHG[(uint32_t) channel_group] & ~((1UL) << ((uint32_t) channel));
}

static inline void nrf_ppi_channels_remove_from_group(uint32_t channel_mask,
                                                        nrf_ppi_channel_group_t channel_group)
{
    ((NRF_PPI_Type *) 0x4001F000UL)->CHG[(uint32_t) channel_group] =
        ((NRF_PPI_Type *) 0x4001F000UL)->CHG[(uint32_t) channel_group] & ~(channel_mask);
}

static inline void nrf_ppi_channel_group_clear(nrf_ppi_channel_group_t group)
{
    ((NRF_PPI_Type *) 0x4001F000UL)->CHG[(uint32_t) group] = 0;
}

static inline void nrf_ppi_group_enable(nrf_ppi_channel_group_t group)
{
    ((NRF_PPI_Type *) 0x4001F000UL)->TASKS_CHG[(uint32_t) group].EN = (1UL);
}

static inline void nrf_ppi_group_disable(nrf_ppi_channel_group_t group)
{
    ((NRF_PPI_Type *) 0x4001F000UL)->TASKS_CHG[(uint32_t) group].DIS = (1UL);
}

static inline void nrf_ppi_task_trigger(nrf_ppi_task_t ppi_task)
{
    *((volatile uint32_t *) ((uint8_t *) 0x4001F000UL + (uint32_t) ppi_task)) = (1UL);
}

static inline uint32_t * nrf_ppi_task_address_get(nrf_ppi_task_t ppi_task)
{
    return (uint32_t *) ((uint8_t *) 0x4001F000UL + (uint32_t) ppi_task);
}

static inline uint32_t * nrf_ppi_task_group_enable_address_get(nrf_ppi_channel_group_t group)
{
    return (uint32_t *) &((NRF_PPI_Type *) 0x4001F000UL)->TASKS_CHG[(uint32_t) group].EN;
}

static inline uint32_t * nrf_ppi_task_group_disable_address_get(nrf_ppi_channel_group_t group)
{
    return (uint32_t *) &((NRF_PPI_Type *) 0x4001F000UL)->TASKS_CHG[(uint32_t) group].DIS;
}
# 46 "../../../../../../modules/nrfx/drivers/include/nrfx_ppi.h" 2
# 81 "../../../../../../modules/nrfx/drivers/include/nrfx_ppi.h"
void nrfx_ppi_free_all(void);
# 92 "../../../../../../modules/nrfx/drivers/include/nrfx_ppi.h"
nrfx_err_t nrfx_ppi_channel_alloc(nrf_ppi_channel_t * p_channel);
# 103 "../../../../../../modules/nrfx/drivers/include/nrfx_ppi.h"
nrfx_err_t nrfx_ppi_channel_free(nrf_ppi_channel_t channel);
# 116 "../../../../../../modules/nrfx/drivers/include/nrfx_ppi.h"
nrfx_err_t nrfx_ppi_channel_assign(nrf_ppi_channel_t channel, uint32_t eep, uint32_t tep);
# 129 "../../../../../../modules/nrfx/drivers/include/nrfx_ppi.h"
nrfx_err_t nrfx_ppi_channel_fork_assign(nrf_ppi_channel_t channel, uint32_t fork_tep);
# 140 "../../../../../../modules/nrfx/drivers/include/nrfx_ppi.h"
nrfx_err_t nrfx_ppi_channel_enable(nrf_ppi_channel_t channel);
# 151 "../../../../../../modules/nrfx/drivers/include/nrfx_ppi.h"
nrfx_err_t nrfx_ppi_channel_disable(nrf_ppi_channel_t channel);
# 162 "../../../../../../modules/nrfx/drivers/include/nrfx_ppi.h"
nrfx_err_t nrfx_ppi_group_alloc(nrf_ppi_channel_group_t * p_group);
# 173 "../../../../../../modules/nrfx/drivers/include/nrfx_ppi.h"
nrfx_err_t nrfx_ppi_group_free(nrf_ppi_channel_group_t group);
# 182 "../../../../../../modules/nrfx/drivers/include/nrfx_ppi.h"
static inline uint32_t nrfx_ppi_channel_to_mask(nrf_ppi_channel_t channel)
{
    return (1uL << (uint32_t) channel);
}
# 198 "../../../../../../modules/nrfx/drivers/include/nrfx_ppi.h"
nrfx_err_t nrfx_ppi_channels_include_in_group(uint32_t channel_mask,
                                              nrf_ppi_channel_group_t group);
# 212 "../../../../../../modules/nrfx/drivers/include/nrfx_ppi.h"
static inline nrfx_err_t nrfx_ppi_channel_include_in_group(nrf_ppi_channel_t channel,
                                                             nrf_ppi_channel_group_t group)
{
    return nrfx_ppi_channels_include_in_group(nrfx_ppi_channel_to_mask(channel), group);
}
# 229 "../../../../../../modules/nrfx/drivers/include/nrfx_ppi.h"
nrfx_err_t nrfx_ppi_channels_remove_from_group(uint32_t channel_mask,
                                               nrf_ppi_channel_group_t group);
# 243 "../../../../../../modules/nrfx/drivers/include/nrfx_ppi.h"
static inline nrfx_err_t nrfx_ppi_channel_remove_from_group(nrf_ppi_channel_t channel,
                                                              nrf_ppi_channel_group_t group)
{
    return nrfx_ppi_channels_remove_from_group(nrfx_ppi_channel_to_mask(channel), group);
}
# 258 "../../../../../../modules/nrfx/drivers/include/nrfx_ppi.h"
static inline nrfx_err_t nrfx_ppi_group_clear(nrf_ppi_channel_group_t group)
{
    return nrfx_ppi_channels_remove_from_group(((uint32_t)0xFFFFFFFFuL & ~((0xFFFE0000uL | 0uL | 0uL))), group);
}
# 272 "../../../../../../modules/nrfx/drivers/include/nrfx_ppi.h"
nrfx_err_t nrfx_ppi_group_enable(nrf_ppi_channel_group_t group);
# 283 "../../../../../../modules/nrfx/drivers/include/nrfx_ppi.h"
nrfx_err_t nrfx_ppi_group_disable(nrf_ppi_channel_group_t group);
# 292 "../../../../../../modules/nrfx/drivers/include/nrfx_ppi.h"
static inline uint32_t nrfx_ppi_task_addr_get(nrf_ppi_task_t task)
{
    return (uint32_t) nrf_ppi_task_address_get(task);
}
# 304 "../../../../../../modules/nrfx/drivers/include/nrfx_ppi.h"
static inline uint32_t nrfx_ppi_task_addr_group_enable_get(nrf_ppi_channel_group_t group)
{
    return (uint32_t) nrf_ppi_task_group_enable_address_get(group);
}
# 316 "../../../../../../modules/nrfx/drivers/include/nrfx_ppi.h"
static inline uint32_t nrfx_ppi_task_addr_group_disable_get(nrf_ppi_channel_group_t group)
{
    return (uint32_t) nrf_ppi_task_group_disable_address_get(group);
}
# 45 "../../../../../../integration/nrfx/legacy/nrf_drv_ppi.h" 2
# 112 "../../../../../../integration/nrfx/legacy/nrf_drv_ppi.h"
ret_code_t nrf_drv_ppi_init(void);
# 122 "../../../../../../integration/nrfx/legacy/nrf_drv_ppi.h"
ret_code_t nrf_drv_ppi_uninit(void);
# 29 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\main.c" 2
# 1 "../../../../../../components/libraries/experimental_log/nrf_log.h" 1
# 52 "../../../../../../components/libraries/experimental_log/nrf_log.h"
# 1 "../../../../../../components/libraries/util/sdk_common.h" 1
# 55 "../../../../../../components/libraries/util/sdk_common.h"
# 1 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/string.h" 1 3 4
# 90 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/string.h" 3 4

# 90 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/string.h" 3 4
void *memcpy(void *__s1, const void *__s2, size_t __n);
# 105 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/string.h" 3 4
void *memcpy_fast(void *__s1, const void *__s2, size_t __n);
# 124 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/string.h" 3 4
void *memccpy(void *__s1, const void *__s2, int __c, size_t __n);
# 138 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/string.h" 3 4
void *mempcpy(void *__s1, const void *__s2, size_t __n);
# 153 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/string.h" 3 4
void *memmove(void *__s1, const void *__s2, size_t __n);
# 164 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/string.h" 3 4
int memcmp(const void *__s1, const void *__s2, size_t __n);
# 178 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/string.h" 3 4
void *memchr(const void *__s, int __c, size_t __n);
# 188 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/string.h" 3 4
void *memset(void *__s, int __c, size_t __n);
# 199 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/string.h" 3 4
char *strcpy(char *__s1, const char *__s2);
# 219 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/string.h" 3 4
char *strncpy(char *__s1, const char *__s2, size_t __n);
# 236 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/string.h" 3 4
size_t strlcpy(char *__s1, const char *__s2, size_t __n);
# 249 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/string.h" 3 4
char *strcat(char *__s1, const char *__s2);
# 263 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/string.h" 3 4
char *strncat(char *__s1, const char *__s2, size_t __n);
# 284 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/string.h" 3 4
size_t strlcat(char *__s1, const char *__s2, size_t __n);
# 294 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/string.h" 3 4
int strcmp(const char *__s1, const char *__s2);
# 307 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/string.h" 3 4
int strncmp(const char *__s1, const char *__s2, size_t __n);
# 319 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/string.h" 3 4
int strcasecmp(const char *__s1, const char *__s2);
# 334 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/string.h" 3 4
int strncasecmp(const char *__s1, const char *__s2, size_t __n);
# 346 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/string.h" 3 4
char *strchr(const char *__s, int __c);
# 358 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/string.h" 3 4
char *strnchr(const char *__str, size_t __n, int __ch);
# 369 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/string.h" 3 4
size_t strcspn(const char *__s1, const char *__s2);
# 380 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/string.h" 3 4
char *strpbrk(const char *__s1, const char *__s2);
# 392 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/string.h" 3 4
char *strrchr(const char *__s, int __c);
# 403 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/string.h" 3 4
size_t strspn(const char *__s1, const char *__s2);
# 416 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/string.h" 3 4
char *strstr(const char *__s1, const char *__s2);
# 431 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/string.h" 3 4
char *strnstr(const char *__s1, const char *__s2, size_t __n);
# 446 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/string.h" 3 4
char *strcasestr(const char *__s1, const char *__s2);
# 462 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/string.h" 3 4
char *strncasestr(const char *__s1, const char *__s2, size_t __n);







size_t strlen(const char *__s);
# 481 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/string.h" 3 4
size_t strnlen(const char *__s, size_t __n);
# 515 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/string.h" 3 4
char *strtok(char *__s1, const char *__s2);
# 534 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/string.h" 3 4
char *strsep(char **__stringp, const char *__delim);
# 547 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/string.h" 3 4
char *strtok_r(char *__s1, const char *__s2, char **__s3);
# 561 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/string.h" 3 4
char *strdup(const char *__s1);
# 579 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/string.h" 3 4
char *strndup(const char *__s1, size_t __n);
# 592 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/string.h" 3 4
char *strerror(int __num);



int strcoll(const char *__str1, const char *__str2);
size_t strxfrm( char *__str1, const char *__str2, size_t __num);
# 56 "../../../../../../components/libraries/util/sdk_common.h" 2



# 1 "../../../../../../components/libraries/util/sdk_os.h" 1
# 60 "../../../../../../components/libraries/util/sdk_common.h" 2

# 1 "../../../../../../components/libraries/util/app_util.h" 1
# 62 "../../../../../../components/libraries/util/sdk_common.h" 2
# 1 "../../../../../../components/libraries/util/sdk_macros.h" 1
# 63 "../../../../../../components/libraries/util/sdk_common.h" 2
# 53 "../../../../../../components/libraries/experimental_log/nrf_log.h" 2
# 1 "../../../../../../components/libraries/experimental_section_vars/nrf_section.h" 1
# 54 "../../../../../../components/libraries/experimental_log/nrf_log.h" 2

# 1 "../../../../../../components/libraries/strerror/nrf_strerror.h" 1
# 69 "../../../../../../components/libraries/strerror/nrf_strerror.h"

# 69 "../../../../../../components/libraries/strerror/nrf_strerror.h"
char const * nrf_strerror_get(ret_code_t code);
# 81 "../../../../../../components/libraries/strerror/nrf_strerror.h"
char const * nrf_strerror_find(ret_code_t code);
# 56 "../../../../../../components/libraries/experimental_log/nrf_log.h" 2
# 81 "../../../../../../components/libraries/experimental_log/nrf_log.h"
# 1 "../../../../../../components/libraries/experimental_log/src/nrf_log_internal.h" 1
# 48 "../../../../../../components/libraries/experimental_log/src/nrf_log_internal.h"
# 1 "../../../../../../components/libraries/experimental_log/nrf_log_instance.h" 1
# 45 "../../../../../../components/libraries/experimental_log/nrf_log_instance.h"
# 1 "../../../../../../components/libraries/experimental_log/nrf_log_types.h" 1
# 48 "../../../../../../components/libraries/experimental_log/nrf_log_types.h"
typedef enum
{
    NRF_LOG_SEVERITY_NONE,
    NRF_LOG_SEVERITY_ERROR,
    NRF_LOG_SEVERITY_WARNING,
    NRF_LOG_SEVERITY_INFO,
    NRF_LOG_SEVERITY_DEBUG,
    NRF_LOG_SEVERITY_INFO_RAW,
} nrf_log_severity_t;






typedef struct
{
    uint16_t module_id;
    uint16_t order_idx;
    uint32_t filter;
    uint32_t filter_lvls;
} nrf_log_module_dynamic_data_t;






typedef struct
{
    uint16_t module_id;
    uint16_t padding;
} nrf_log_module_reduced_dynamic_data_t;







typedef struct
{
    const char * p_module_name;
    uint8_t info_color_id;
    uint8_t debug_color_id;
    nrf_log_severity_t compiled_lvl;
    nrf_log_severity_t initial_lvl;
} nrf_log_module_const_data_t;
# 46 "../../../../../../components/libraries/experimental_log/nrf_log_instance.h" 2
# 49 "../../../../../../components/libraries/experimental_log/src/nrf_log_internal.h" 2
# 1 "../../../../../../components/libraries/experimental_log/nrf_log_types.h" 1
# 50 "../../../../../../components/libraries/experimental_log/src/nrf_log_internal.h" 2
# 292 "../../../../../../components/libraries/experimental_log/src/nrf_log_internal.h"
extern nrf_log_module_reduced_dynamic_data_t m_nrf_log_app_logs_data_dynamic;
# 362 "../../../../../../components/libraries/experimental_log/src/nrf_log_internal.h"
typedef struct
{
    uint32_t type : 2;
    uint32_t in_progress: 1;
    uint32_t data : 29;
} nrf_log_generic_header_t;

typedef struct
{
    uint32_t type : 2;
    uint32_t in_progress: 1;
    uint32_t severity : 3;
    uint32_t nargs : 4;
    uint32_t addr : 22;
} nrf_log_std_header_t;

typedef struct
{
    uint32_t type : 2;
    uint32_t in_progress: 1;
    uint32_t severity : 3;
    uint32_t offset : 10;
    uint32_t reserved : 6;
    uint32_t len : 10;
} nrf_log_hexdump_header_t;

typedef struct
{
    uint32_t type : 2;
    uint32_t reserved0 : 4;
    uint32_t offset : 10;
    uint32_t reserved1 : 6;
    uint32_t len : 10;
} nrf_log_pushed_header_t;

typedef union
{
    nrf_log_generic_header_t generic;
    nrf_log_std_header_t std;
    nrf_log_hexdump_header_t hexdump;
    nrf_log_pushed_header_t pushed;
    uint32_t raw;
} nrf_log_main_header_t;

typedef struct
{
    nrf_log_main_header_t base;
    uint16_t module_id;
    uint16_t dropped;
    uint32_t timestamp;
} nrf_log_header_t;







_Static_assert((sizeof(nrf_log_pushed_header_t)/sizeof(uint32_t)) == 1, "unspecified message");






void nrf_log_frontend_std_0(uint32_t severity_mid, char const * const p_str);
# 436 "../../../../../../components/libraries/experimental_log/src/nrf_log_internal.h"
void nrf_log_frontend_std_1(uint32_t severity_mid,
                            char const * const p_str,
                            uint32_t val0);
# 447 "../../../../../../components/libraries/experimental_log/src/nrf_log_internal.h"
void nrf_log_frontend_std_2(uint32_t severity_mid,
                            char const * const p_str,
                            uint32_t val0,
                            uint32_t val1);
# 459 "../../../../../../components/libraries/experimental_log/src/nrf_log_internal.h"
void nrf_log_frontend_std_3(uint32_t severity_mid,
                            char const * const p_str,
                            uint32_t val0,
                            uint32_t val1,
                            uint32_t val2);
# 472 "../../../../../../components/libraries/experimental_log/src/nrf_log_internal.h"
void nrf_log_frontend_std_4(uint32_t severity_mid,
                            char const * const p_str,
                            uint32_t val0,
                            uint32_t val1,
                            uint32_t val2,
                            uint32_t val3);
# 486 "../../../../../../components/libraries/experimental_log/src/nrf_log_internal.h"
void nrf_log_frontend_std_5(uint32_t severity_mid,
                            char const * const p_str,
                            uint32_t val0,
                            uint32_t val1,
                            uint32_t val2,
                            uint32_t val3,
                            uint32_t val4);
# 501 "../../../../../../components/libraries/experimental_log/src/nrf_log_internal.h"
void nrf_log_frontend_std_6(uint32_t severity_mid,
                            char const * const p_str,
                            uint32_t val0,
                            uint32_t val1,
                            uint32_t val2,
                            uint32_t val3,
                            uint32_t val4,
                            uint32_t val5);
# 519 "../../../../../../components/libraries/experimental_log/src/nrf_log_internal.h"
void nrf_log_frontend_hexdump(uint32_t severity_mid,
                              const void * const p_data,
                              uint16_t length);






uint8_t nrf_log_getchar(void);
# 82 "../../../../../../components/libraries/experimental_log/nrf_log.h" 2
# 257 "../../../../../../components/libraries/experimental_log/nrf_log.h"
uint32_t nrf_log_push(char * const p_str);
# 30 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\main.c" 2
# 1 "../../../../../../components/libraries/experimental_log/nrf_log_ctrl.h" 1
# 58 "../../../../../../components/libraries/experimental_log/nrf_log_ctrl.h"
# 1 "../../../../../../components/libraries/experimental_log/src/nrf_log_ctrl_internal.h" 1
# 59 "../../../../../../components/libraries/experimental_log/nrf_log_ctrl.h" 2
# 1 "../../../../../../components/libraries/experimental_log/nrf_log_backend_interface.h" 1
# 53 "../../../../../../components/libraries/experimental_log/nrf_log_backend_interface.h"
# 1 "../../../../../../components/libraries/experimental_memobj/nrf_memobj.h" 1
# 51 "../../../../../../components/libraries/experimental_memobj/nrf_memobj.h"
# 1 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stdlib.h" 1 3 4
# 106 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stdlib.h" 3 4

# 106 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stdlib.h" 3 4
typedef struct
{
  int quot;
  int rem;
} div_t;





typedef struct
{
  long quot;
  long rem;
} ldiv_t;






typedef struct
{
  long long quot;
  long rem;
} lldiv_t;






int abs(int __j);






long int labs(long int __j);






long long int llabs(long long int __j);
# 168 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stdlib.h" 3 4
div_t div(int __numer, int __denom);
# 184 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stdlib.h" 3 4
ldiv_t ldiv(long int __numer, long int __denom);
# 201 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stdlib.h" 3 4
lldiv_t lldiv(long long int __numer, long long int __denom);
# 213 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stdlib.h" 3 4
void *malloc(size_t __size);
# 225 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stdlib.h" 3 4
void *calloc(size_t __nobj, size_t __size);
# 248 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stdlib.h" 3 4
void *realloc(void *p, size_t __size);
# 261 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stdlib.h" 3 4
void free(void *__p);
# 279 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stdlib.h" 3 4
double atof(const char *__nptr);
# 319 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stdlib.h" 3 4
double strtod(const char *__nptr, char **__endptr);
# 359 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stdlib.h" 3 4
float strtof(const char *__nptr, char **__endptr);
# 377 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stdlib.h" 3 4
int atoi(const char *__nptr);
# 395 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stdlib.h" 3 4
long int atol(const char *__nptr);
# 414 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stdlib.h" 3 4
long long int atoll(const char *__nptr);
# 472 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stdlib.h" 3 4
long int strtol(const char *__nptr, char **__endptr, int __base);
# 530 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stdlib.h" 3 4
long long int strtoll(const char *__nptr, char **__endptr, int __base);
# 588 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stdlib.h" 3 4
unsigned long int strtoul(const char *__nptr, char **__endptr, int __base);
# 646 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stdlib.h" 3 4
unsigned long long int strtoull(const char *__nptr, char **__endptr, int __base);
# 656 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stdlib.h" 3 4
int rand(void);
# 672 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stdlib.h" 3 4
void srand(unsigned int __seed);
# 686 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stdlib.h" 3 4
void *bsearch(const void *__key,
              const void *__buf,
              size_t __num,
              size_t __size,
              int (*__compare)(const void *, const void *));
# 701 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stdlib.h" 3 4
void qsort(void *__buf,
           size_t __num,
           size_t __size,
           int (*__compare)(const void *, const void *));

void abort(void);






void exit(int __exit_code);
# 723 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stdlib.h" 3 4
int atexit(void (*__func)(void));

char *getenv(const char *__name);
int system(const char *__command);
# 745 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stdlib.h" 3 4
char *itoa(int __val, char *__buf, int __radix);
# 759 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stdlib.h" 3 4
char *utoa(unsigned val, char *buf, int radix);
# 777 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stdlib.h" 3 4
char *ltoa(long __val, char *__buf, int __radix);
# 791 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stdlib.h" 3 4
char *ultoa(unsigned long __val, char *__buf, int __radix);
# 809 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stdlib.h" 3 4
char *lltoa(long long __val, char *__buf, int __radix);
# 823 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stdlib.h" 3 4
char *ulltoa(unsigned long long __val, char *__buf, int __radix);
# 851 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stdlib.h" 3 4
int mblen(const char *__s, size_t __n);
# 879 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stdlib.h" 3 4
int mblen_l(const char *__s, size_t __n, struct __locale_s *__loc);
# 904 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stdlib.h" 3 4
size_t mbstowcs(wchar_t *__pwcs, const char *__s, size_t __n);
# 915 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stdlib.h" 3 4
size_t mbstowcs_l(wchar_t *__pwcs, const char *__s, size_t __n, struct __locale_s *__loc);
# 939 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stdlib.h" 3 4
int mbtowc(wchar_t *__pwc, const char *__s, size_t __n);
# 964 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stdlib.h" 3 4
int mbtowc_l(wchar_t *__pwc, const char *__s, size_t __n, struct __locale_s *__loc);


int wctomb(char *__s, wchar_t __wc);
int wctomb_l(char *__s, wchar_t __wc, struct __locale_s *__loc);

size_t wcstombs(char *__s, const wchar_t *__pwcs, size_t __n);
size_t wcstombs_l(char *__s, const wchar_t *__pwcs, size_t __n, struct __locale_s *__loc);
# 52 "../../../../../../components/libraries/experimental_memobj/nrf_memobj.h" 2

# 1 "../../../../../../components/libraries/balloc/nrf_balloc.h" 1
# 104 "../../../../../../components/libraries/balloc/nrf_balloc.h"

# 104 "../../../../../../components/libraries/balloc/nrf_balloc.h"
typedef struct
{
    uint8_t * p_stack_pointer;
    uint8_t max_utilization;
} nrf_balloc_cb_t;


typedef struct
{
    nrf_balloc_cb_t * p_cb;
    uint8_t * p_stack_base;



    uint8_t * p_stack_limit;
    void * p_memory_begin;



    nrf_log_module_reduced_dynamic_data_t * p_log;
# 133 "../../../../../../components/libraries/balloc/nrf_balloc.h"
    uint16_t block_size;




} nrf_balloc_t;
# 295 "../../../../../../components/libraries/balloc/nrf_balloc.h"
ret_code_t nrf_balloc_init(nrf_balloc_t const * p_pool);
# 305 "../../../../../../components/libraries/balloc/nrf_balloc.h"
void * nrf_balloc_alloc(nrf_balloc_t const * p_pool);






void nrf_balloc_free(nrf_balloc_t const * p_pool, void * p_element);







static inline uint8_t nrf_balloc_max_utilization_get(nrf_balloc_t const * p_pool);


static inline uint8_t nrf_balloc_max_utilization_get(nrf_balloc_t const * p_pool)
{
    if (1) { if (p_pool != 
# 325 "../../../../../../components/libraries/balloc/nrf_balloc.h" 3 4
   0
# 325 "../../../../../../components/libraries/balloc/nrf_balloc.h"
   ) { } else { assert_nrf_callback((uint16_t)325, (uint8_t *)"../../../../../../components/libraries/balloc/nrf_balloc.h"); } };
    return p_pool->p_cb->max_utilization;
}
# 336 "../../../../../../components/libraries/balloc/nrf_balloc.h"
static inline uint8_t nrf_balloc_utilization_get(nrf_balloc_t const * p_pool);


static inline uint8_t nrf_balloc_utilization_get(nrf_balloc_t const * p_pool)
{
    if (1) { if (p_pool != 
# 341 "../../../../../../components/libraries/balloc/nrf_balloc.h" 3 4
   0
# 341 "../../../../../../components/libraries/balloc/nrf_balloc.h"
   ) { } else { assert_nrf_callback((uint16_t)341, (uint8_t *)"../../../../../../components/libraries/balloc/nrf_balloc.h"); } };
    return (p_pool->p_stack_limit - p_pool->p_cb->p_stack_pointer);
}
# 54 "../../../../../../components/libraries/experimental_memobj/nrf_memobj.h" 2
# 93 "../../../../../../components/libraries/experimental_memobj/nrf_memobj.h"
typedef nrf_balloc_t nrf_memobj_pool_t;




typedef void * nrf_memobj_t;
# 109 "../../../../../../components/libraries/experimental_memobj/nrf_memobj.h"
ret_code_t nrf_memobj_pool_init(nrf_memobj_pool_t const * p_pool);
# 126 "../../../../../../components/libraries/experimental_memobj/nrf_memobj.h"
nrf_memobj_t * nrf_memobj_alloc(nrf_memobj_pool_t const * p_pool,
                                size_t size);
# 138 "../../../../../../components/libraries/experimental_memobj/nrf_memobj.h"
void nrf_memobj_get(nrf_memobj_t const * p_obj);
# 153 "../../../../../../components/libraries/experimental_memobj/nrf_memobj.h"
void nrf_memobj_put(nrf_memobj_t * p_obj);
# 164 "../../../../../../components/libraries/experimental_memobj/nrf_memobj.h"
void nrf_memobj_free(nrf_memobj_t * p_obj);
# 174 "../../../../../../components/libraries/experimental_memobj/nrf_memobj.h"
void nrf_memobj_write(nrf_memobj_t * p_obj,
                      void * p_data,
                      uint32_t len,
                      uint32_t offset);
# 187 "../../../../../../components/libraries/experimental_memobj/nrf_memobj.h"
void nrf_memobj_read(nrf_memobj_t * p_obj,
                     void * p_data,
                     uint32_t len,
                     uint32_t offset);
# 54 "../../../../../../components/libraries/experimental_log/nrf_log_backend_interface.h" 2
# 64 "../../../../../../components/libraries/experimental_log/nrf_log_backend_interface.h"
typedef nrf_memobj_t nrf_log_entry_t;


typedef struct nrf_log_backend_s nrf_log_backend_t;




typedef struct
{



    void (*put)(nrf_log_backend_t const * p_backend, nrf_log_entry_t * p_entry);




    void (*panic_set)(nrf_log_backend_t const * p_backend);




    void (*flush)(nrf_log_backend_t const * p_backend);
} nrf_log_backend_api_t;




struct nrf_log_backend_s
{
    nrf_log_backend_api_t const * p_api;
    nrf_log_backend_t * p_next;
    uint8_t id;
    
# 98 "../../../../../../components/libraries/experimental_log/nrf_log_backend_interface.h" 3 4
   _Bool 
# 98 "../../../../../../components/libraries/experimental_log/nrf_log_backend_interface.h"
                                 enabled;
};







static inline void nrf_log_backend_put(nrf_log_backend_t const * p_backend,
                                         nrf_log_entry_t * p_msg);






static inline void nrf_log_backend_panic_set(nrf_log_backend_t const * p_backend);
# 124 "../../../../../../components/libraries/experimental_log/nrf_log_backend_interface.h"
static inline void nrf_log_backend_flush(nrf_log_backend_t const * p_backend);
# 135 "../../../../../../components/libraries/experimental_log/nrf_log_backend_interface.h"
static inline void nrf_log_backend_id_set(nrf_log_backend_t * p_backend, uint8_t id);
# 145 "../../../../../../components/libraries/experimental_log/nrf_log_backend_interface.h"
static inline uint8_t nrf_log_backend_id_get(nrf_log_backend_t const * p_backend);






static inline void nrf_log_backend_enable(nrf_log_backend_t * p_backend);






static inline void nrf_log_backend_disable(nrf_log_backend_t * p_backend);
# 168 "../../../../../../components/libraries/experimental_log/nrf_log_backend_interface.h"
static inline 
# 168 "../../../../../../components/libraries/experimental_log/nrf_log_backend_interface.h" 3 4
               _Bool 
# 168 "../../../../../../components/libraries/experimental_log/nrf_log_backend_interface.h"
                    nrf_log_backend_is_enabled(nrf_log_backend_t const * p_backend);


static inline void nrf_log_backend_put(nrf_log_backend_t const * p_backend,
                                         nrf_log_entry_t * p_msg)
{
    p_backend->p_api->put(p_backend, p_msg);
}

static inline void nrf_log_backend_panic_set(nrf_log_backend_t const * p_backend)
{
    p_backend->p_api->panic_set(p_backend);
}

static inline void nrf_log_backend_flush(nrf_log_backend_t const * p_backend)
{
    p_backend->p_api->flush(p_backend);
}

static inline void nrf_log_backend_id_set(nrf_log_backend_t * p_backend, uint8_t id)
{
    p_backend->id = id;
}

static inline uint8_t nrf_log_backend_id_get(nrf_log_backend_t const * p_backend)
{
    return p_backend->id;
}

static inline void nrf_log_backend_enable(nrf_log_backend_t * p_backend)
{
    p_backend->enabled = 
# 199 "../../../../../../components/libraries/experimental_log/nrf_log_backend_interface.h" 3 4
                        1
# 199 "../../../../../../components/libraries/experimental_log/nrf_log_backend_interface.h"
                            ;
}

static inline void nrf_log_backend_disable(nrf_log_backend_t * p_backend)
{
    p_backend->enabled = 
# 204 "../../../../../../components/libraries/experimental_log/nrf_log_backend_interface.h" 3 4
                        0
# 204 "../../../../../../components/libraries/experimental_log/nrf_log_backend_interface.h"
                             ;
}

static inline 
# 207 "../../../../../../components/libraries/experimental_log/nrf_log_backend_interface.h" 3 4
               _Bool 
# 207 "../../../../../../components/libraries/experimental_log/nrf_log_backend_interface.h"
                    nrf_log_backend_is_enabled(nrf_log_backend_t const * p_backend)
{
    return p_backend->enabled;
}
# 60 "../../../../../../components/libraries/experimental_log/nrf_log_ctrl.h" 2
# 69 "../../../../../../components/libraries/experimental_log/nrf_log_ctrl.h"
typedef uint32_t (*nrf_log_timestamp_func_t)(void);
# 123 "../../../../../../components/libraries/experimental_log/nrf_log_ctrl.h"
ret_code_t nrf_log_init(nrf_log_timestamp_func_t timestamp_func, uint32_t timestamp_freq);
# 133 "../../../../../../components/libraries/experimental_log/nrf_log_ctrl.h"
int32_t nrf_log_backend_add(nrf_log_backend_t * p_backend, nrf_log_severity_t severity);







void nrf_log_backend_remove(nrf_log_backend_t * p_backend);







void nrf_log_panic(void);
# 160 "../../../../../../components/libraries/experimental_log/nrf_log_ctrl.h"

# 160 "../../../../../../components/libraries/experimental_log/nrf_log_ctrl.h" 3 4
_Bool 
# 160 "../../../../../../components/libraries/experimental_log/nrf_log_ctrl.h"
    nrf_log_frontend_dequeue(void);






uint32_t nrf_log_module_cnt_get(void);
# 176 "../../../../../../components/libraries/experimental_log/nrf_log_ctrl.h"
const char * nrf_log_module_name_get(uint32_t module_id, 
# 176 "../../../../../../components/libraries/experimental_log/nrf_log_ctrl.h" 3 4
                                                        _Bool 
# 176 "../../../../../../components/libraries/experimental_log/nrf_log_ctrl.h"
                                                             is_ordered_idx);
# 186 "../../../../../../components/libraries/experimental_log/nrf_log_ctrl.h"
uint8_t nrf_log_color_id_get(uint32_t module_id, nrf_log_severity_t severity);
# 197 "../../../../../../components/libraries/experimental_log/nrf_log_ctrl.h"
void nrf_log_module_filter_set(uint32_t backend_id,
                               uint32_t module_id,
                               nrf_log_severity_t severity);
# 213 "../../../../../../components/libraries/experimental_log/nrf_log_ctrl.h"
nrf_log_severity_t nrf_log_module_filter_get(uint32_t backend_id,
                                             uint32_t module_id,
                                             
# 215 "../../../../../../components/libraries/experimental_log/nrf_log_ctrl.h" 3 4
                                            _Bool 
# 215 "../../../../../../components/libraries/experimental_log/nrf_log_ctrl.h"
                                                     is_ordered_idx,
                                             
# 216 "../../../../../../components/libraries/experimental_log/nrf_log_ctrl.h" 3 4
                                            _Bool 
# 216 "../../../../../../components/libraries/experimental_log/nrf_log_ctrl.h"
                                                     dynamic);
# 31 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\main.c" 2
# 1 "../../../../../../components/libraries/experimental_log/nrf_log_default_backends.h" 1
# 73 "../../../../../../components/libraries/experimental_log/nrf_log_default_backends.h"
void nrf_log_default_backends_init(void);
# 32 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\main.c" 2
# 1 "../../../../../../components/softdevice/common/nrf_sdh_freertos.h" 1
# 54 "../../../../../../components/softdevice/common/nrf_sdh_freertos.h"
typedef void (*nrf_sdh_freertos_task_hook_t)(void * p_context);






void nrf_sdh_freertos_init(nrf_sdh_freertos_task_hook_t hook, void * p_context);
# 33 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\main.c" 2
# 1 "../../../../../../external/freertos/source/include/semphr.h" 1
# 36 "../../../../../../external/freertos/source/include/semphr.h"
# 1 "../../../../../../external/freertos/source/include/queue.h" 1
# 47 "../../../../../../external/freertos/source/include/queue.h"
typedef void * QueueHandle_t;






typedef void * QueueSetHandle_t;






typedef void * QueueSetMemberHandle_t;
# 649 "../../../../../../external/freertos/source/include/queue.h"
BaseType_t xQueueGenericSend( QueueHandle_t xQueue, const void * const pvItemToQueue, TickType_t xTicksToWait, const BaseType_t xCopyPosition ) ;
# 743 "../../../../../../external/freertos/source/include/queue.h"
BaseType_t xQueuePeek( QueueHandle_t xQueue, void * const pvBuffer, TickType_t xTicksToWait ) ;
# 776 "../../../../../../external/freertos/source/include/queue.h"
BaseType_t xQueuePeekFromISR( QueueHandle_t xQueue, void * const pvBuffer ) ;
# 867 "../../../../../../external/freertos/source/include/queue.h"
BaseType_t xQueueReceive( QueueHandle_t xQueue, void * const pvBuffer, TickType_t xTicksToWait ) ;
# 882 "../../../../../../external/freertos/source/include/queue.h"
UBaseType_t uxQueueMessagesWaiting( const QueueHandle_t xQueue ) ;
# 899 "../../../../../../external/freertos/source/include/queue.h"
UBaseType_t uxQueueSpacesAvailable( const QueueHandle_t xQueue ) ;
# 913 "../../../../../../external/freertos/source/include/queue.h"
void vQueueDelete( QueueHandle_t xQueue ) ;
# 1294 "../../../../../../external/freertos/source/include/queue.h"
BaseType_t xQueueGenericSendFromISR( QueueHandle_t xQueue, const void * const pvItemToQueue, BaseType_t * const pxHigherPriorityTaskWoken, const BaseType_t xCopyPosition ) ;
BaseType_t xQueueGiveFromISR( QueueHandle_t xQueue, BaseType_t * const pxHigherPriorityTaskWoken ) ;
# 1384 "../../../../../../external/freertos/source/include/queue.h"
BaseType_t xQueueReceiveFromISR( QueueHandle_t xQueue, void * const pvBuffer, BaseType_t * const pxHigherPriorityTaskWoken ) ;





BaseType_t xQueueIsQueueEmptyFromISR( const QueueHandle_t xQueue ) ;
BaseType_t xQueueIsQueueFullFromISR( const QueueHandle_t xQueue ) ;
UBaseType_t uxQueueMessagesWaitingFromISR( const QueueHandle_t xQueue ) ;
# 1403 "../../../../../../external/freertos/source/include/queue.h"
BaseType_t xQueueCRSendFromISR( QueueHandle_t xQueue, const void *pvItemToQueue, BaseType_t xCoRoutinePreviouslyWoken );
BaseType_t xQueueCRReceiveFromISR( QueueHandle_t xQueue, void *pvBuffer, BaseType_t *pxTaskWoken );
BaseType_t xQueueCRSend( QueueHandle_t xQueue, const void *pvItemToQueue, TickType_t xTicksToWait );
BaseType_t xQueueCRReceive( QueueHandle_t xQueue, void *pvBuffer, TickType_t xTicksToWait );






QueueHandle_t xQueueCreateMutex( const uint8_t ucQueueType ) ;
QueueHandle_t xQueueCreateMutexStatic( const uint8_t ucQueueType, StaticQueue_t *pxStaticQueue ) ;
QueueHandle_t xQueueCreateCountingSemaphore( const UBaseType_t uxMaxCount, const UBaseType_t uxInitialCount ) ;
QueueHandle_t xQueueCreateCountingSemaphoreStatic( const UBaseType_t uxMaxCount, const UBaseType_t uxInitialCount, StaticQueue_t *pxStaticQueue ) ;
BaseType_t xQueueSemaphoreTake( QueueHandle_t xQueue, TickType_t xTicksToWait ) ;
void* xQueueGetMutexHolder( QueueHandle_t xSemaphore ) ;
void* xQueueGetMutexHolderFromISR( QueueHandle_t xSemaphore ) ;





BaseType_t xQueueTakeMutexRecursive( QueueHandle_t xMutex, TickType_t xTicksToWait ) ;
BaseType_t xQueueGiveMutexRecursive( QueueHandle_t pxMutex ) ;
# 1457 "../../../../../../external/freertos/source/include/queue.h"
 void vQueueAddToRegistry( QueueHandle_t xQueue, const char *pcName ) ;
# 1471 "../../../../../../external/freertos/source/include/queue.h"
 void vQueueUnregisterQueue( QueueHandle_t xQueue ) ;
# 1486 "../../../../../../external/freertos/source/include/queue.h"
 const char *pcQueueGetName( QueueHandle_t xQueue ) ;
# 1495 "../../../../../../external/freertos/source/include/queue.h"
 QueueHandle_t xQueueGenericCreate( const UBaseType_t uxQueueLength, const UBaseType_t uxItemSize, const uint8_t ucQueueType ) ;
# 1555 "../../../../../../external/freertos/source/include/queue.h"
QueueSetHandle_t xQueueCreateSet( const UBaseType_t uxEventQueueLength ) ;
# 1579 "../../../../../../external/freertos/source/include/queue.h"
BaseType_t xQueueAddToSet( QueueSetMemberHandle_t xQueueOrSemaphore, QueueSetHandle_t xQueueSet ) ;
# 1598 "../../../../../../external/freertos/source/include/queue.h"
BaseType_t xQueueRemoveFromSet( QueueSetMemberHandle_t xQueueOrSemaphore, QueueSetHandle_t xQueueSet ) ;
# 1634 "../../../../../../external/freertos/source/include/queue.h"
QueueSetMemberHandle_t xQueueSelectFromSet( QueueSetHandle_t xQueueSet, const TickType_t xTicksToWait ) ;




QueueSetMemberHandle_t xQueueSelectFromSetFromISR( QueueSetHandle_t xQueueSet ) ;


void vQueueWaitForMessageRestricted( QueueHandle_t xQueue, TickType_t xTicksToWait, const BaseType_t xWaitIndefinitely ) ;
BaseType_t xQueueGenericReset( QueueHandle_t xQueue, BaseType_t xNewQueue ) ;
void vQueueSetQueueNumber( QueueHandle_t xQueue, UBaseType_t uxQueueNumber ) ;
UBaseType_t uxQueueGetQueueNumber( QueueHandle_t xQueue ) ;
uint8_t ucQueueGetQueueType( QueueHandle_t xQueue ) ;
# 37 "../../../../../../external/freertos/source/include/semphr.h" 2

typedef QueueHandle_t SemaphoreHandle_t;
# 34 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\main.c" 2
# 1 "../../../../../../external/freertos/source/include/task.h" 1
# 37 "../../../../../../external/freertos/source/include/task.h"
# 1 "../../../../../../external/freertos/source/include/list.h" 1
# 140 "../../../../../../external/freertos/source/include/list.h"
struct xLIST_ITEM
{

 TickType_t xItemValue;
 struct xLIST_ITEM * pxNext;
 struct xLIST_ITEM * pxPrevious;
 void * pvOwner;
 void * pvContainer;

};
typedef struct xLIST_ITEM ListItem_t;

struct xMINI_LIST_ITEM
{

 TickType_t xItemValue;
 struct xLIST_ITEM * pxNext;
 struct xLIST_ITEM * pxPrevious;
};
typedef struct xMINI_LIST_ITEM MiniListItem_t;




typedef struct xLIST
{

 volatile UBaseType_t uxNumberOfItems;
 ListItem_t * pxIndex;
 MiniListItem_t xListEnd;

} List_t;
# 345 "../../../../../../external/freertos/source/include/list.h"
void vListInitialise( List_t * const pxList ) ;
# 356 "../../../../../../external/freertos/source/include/list.h"
void vListInitialiseItem( ListItem_t * const pxItem ) ;
# 369 "../../../../../../external/freertos/source/include/list.h"
void vListInsert( List_t * const pxList, ListItem_t * const pxNewListItem ) ;
# 390 "../../../../../../external/freertos/source/include/list.h"
void vListInsertEnd( List_t * const pxList, ListItem_t * const pxNewListItem ) ;
# 405 "../../../../../../external/freertos/source/include/list.h"
UBaseType_t uxListRemove( ListItem_t * const pxItemToRemove ) ;
# 38 "../../../../../../external/freertos/source/include/task.h" 2
# 62 "../../../../../../external/freertos/source/include/task.h"
typedef void * TaskHandle_t;





typedef BaseType_t (*TaskHookFunction_t)( void * );


typedef enum
{
 eRunning = 0,
 eReady,
 eBlocked,
 eSuspended,
 eDeleted,
 eInvalid
} eTaskState;


typedef enum
{
 eNoAction = 0,
 eSetBits,
 eIncrement,
 eSetValueWithOverwrite,
 eSetValueWithoutOverwrite
} eNotifyAction;




typedef struct xTIME_OUT
{
 BaseType_t xOverflowCount;
 TickType_t xTimeOnEntering;
} TimeOut_t;




typedef struct xMEMORY_REGION
{
 void *pvBaseAddress;
 uint32_t ulLengthInBytes;
 uint32_t ulParameters;
} MemoryRegion_t;




typedef struct xTASK_PARAMETERS
{
 TaskFunction_t pvTaskCode;
 const char * const pcName;
 uint16_t usStackDepth;
 void *pvParameters;
 UBaseType_t uxPriority;
 StackType_t *puxStackBuffer;
 MemoryRegion_t xRegions[ 1 ];



} TaskParameters_t;



typedef struct xTASK_STATUS
{
 TaskHandle_t xHandle;
 const char *pcTaskName;
 UBaseType_t xTaskNumber;
 eTaskState eCurrentState;
 UBaseType_t uxCurrentPriority;
 UBaseType_t uxBasePriority;
 uint32_t ulRunTimeCounter;
 StackType_t *pxStackBase;
 uint16_t usStackHighWaterMark;
} TaskStatus_t;


typedef enum
{
 eAbortSleep = 0,
 eStandardSleep,
 eNoTasksWaitingTimeout
} eSleepModeStatus;
# 322 "../../../../../../external/freertos/source/include/task.h"
 BaseType_t xTaskCreate( TaskFunction_t pxTaskCode,
       const char * const pcName,
       const uint16_t usStackDepth,
       void * const pvParameters,
       UBaseType_t uxPriority,
       TaskHandle_t * const pxCreatedTask ) ;
# 657 "../../../../../../external/freertos/source/include/task.h"
void vTaskAllocateMPURegions( TaskHandle_t xTask, const MemoryRegion_t * const pxRegions ) ;
# 698 "../../../../../../external/freertos/source/include/task.h"
void vTaskDelete( TaskHandle_t xTaskToDelete ) ;
# 750 "../../../../../../external/freertos/source/include/task.h"
void vTaskDelay( const TickType_t xTicksToDelay ) ;
# 809 "../../../../../../external/freertos/source/include/task.h"
void vTaskDelayUntil( TickType_t * const pxPreviousWakeTime, const TickType_t xTimeIncrement ) ;
# 834 "../../../../../../external/freertos/source/include/task.h"
BaseType_t xTaskAbortDelay( TaskHandle_t xTask ) ;
# 881 "../../../../../../external/freertos/source/include/task.h"
UBaseType_t uxTaskPriorityGet( TaskHandle_t xTask ) ;







UBaseType_t uxTaskPriorityGetFromISR( TaskHandle_t xTask ) ;
# 907 "../../../../../../external/freertos/source/include/task.h"
eTaskState eTaskGetState( TaskHandle_t xTask ) ;
# 963 "../../../../../../external/freertos/source/include/task.h"
void vTaskGetInfo( TaskHandle_t xTask, TaskStatus_t *pxTaskStatus, BaseType_t xGetFreeStackSpace, eTaskState eState ) ;
# 1005 "../../../../../../external/freertos/source/include/task.h"
void vTaskPrioritySet( TaskHandle_t xTask, UBaseType_t uxNewPriority ) ;
# 1056 "../../../../../../external/freertos/source/include/task.h"
void vTaskSuspend( TaskHandle_t xTaskToSuspend ) ;
# 1105 "../../../../../../external/freertos/source/include/task.h"
void vTaskResume( TaskHandle_t xTaskToResume ) ;
# 1134 "../../../../../../external/freertos/source/include/task.h"
BaseType_t xTaskResumeFromISR( TaskHandle_t xTaskToResume ) ;
# 1167 "../../../../../../external/freertos/source/include/task.h"
void vTaskStartScheduler( void ) ;
# 1223 "../../../../../../external/freertos/source/include/task.h"
void vTaskEndScheduler( void ) ;
# 1274 "../../../../../../external/freertos/source/include/task.h"
void vTaskSuspendAll( void ) ;
# 1328 "../../../../../../external/freertos/source/include/task.h"
BaseType_t xTaskResumeAll( void ) ;
# 1343 "../../../../../../external/freertos/source/include/task.h"
TickType_t xTaskGetTickCount( void ) ;
# 1359 "../../../../../../external/freertos/source/include/task.h"
TickType_t xTaskGetTickCountFromISR( void ) ;
# 1373 "../../../../../../external/freertos/source/include/task.h"
UBaseType_t uxTaskGetNumberOfTasks( void ) ;
# 1386 "../../../../../../external/freertos/source/include/task.h"
char *pcTaskGetName( TaskHandle_t xTaskToQuery ) ;
# 1402 "../../../../../../external/freertos/source/include/task.h"
TaskHandle_t xTaskGetHandle( const char *pcNameToQuery ) ;
# 1423 "../../../../../../external/freertos/source/include/task.h"
UBaseType_t uxTaskGetStackHighWaterMark( TaskHandle_t xTask ) ;
# 1476 "../../../../../../external/freertos/source/include/task.h"
BaseType_t xTaskCallApplicationTaskHook( TaskHandle_t xTask, void *pvParameter ) ;
# 1485 "../../../../../../external/freertos/source/include/task.h"
TaskHandle_t xTaskGetIdleTaskHandle( void ) ;
# 1584 "../../../../../../external/freertos/source/include/task.h"
UBaseType_t uxTaskGetSystemState( TaskStatus_t * const pxTaskStatusArray, const UBaseType_t uxArraySize, uint32_t * const pulTotalRunTime ) ;
# 1631 "../../../../../../external/freertos/source/include/task.h"
void vTaskList( char * pcWriteBuffer ) ;
# 1685 "../../../../../../external/freertos/source/include/task.h"
void vTaskGetRunTimeStats( char *pcWriteBuffer ) ;
# 1766 "../../../../../../external/freertos/source/include/task.h"
BaseType_t xTaskGenericNotify( TaskHandle_t xTaskToNotify, uint32_t ulValue, eNotifyAction eAction, uint32_t *pulPreviousNotificationValue ) ;
# 1857 "../../../../../../external/freertos/source/include/task.h"
BaseType_t xTaskGenericNotifyFromISR( TaskHandle_t xTaskToNotify, uint32_t ulValue, eNotifyAction eAction, uint32_t *pulPreviousNotificationValue, BaseType_t *pxHigherPriorityTaskWoken ) ;
# 1934 "../../../../../../external/freertos/source/include/task.h"
BaseType_t xTaskNotifyWait( uint32_t ulBitsToClearOnEntry, uint32_t ulBitsToClearOnExit, uint32_t *pulNotificationValue, TickType_t xTicksToWait ) ;
# 2035 "../../../../../../external/freertos/source/include/task.h"
void vTaskNotifyGiveFromISR( TaskHandle_t xTaskToNotify, BaseType_t *pxHigherPriorityTaskWoken ) ;
# 2104 "../../../../../../external/freertos/source/include/task.h"
uint32_t ulTaskNotifyTake( BaseType_t xClearCountOnExit, TickType_t xTicksToWait ) ;
# 2120 "../../../../../../external/freertos/source/include/task.h"
BaseType_t xTaskNotifyStateClear( TaskHandle_t xTask );
# 2141 "../../../../../../external/freertos/source/include/task.h"
BaseType_t xTaskIncrementTick( void ) ;
# 2174 "../../../../../../external/freertos/source/include/task.h"
void vTaskPlaceOnEventList( List_t * const pxEventList, const TickType_t xTicksToWait ) ;
void vTaskPlaceOnUnorderedEventList( List_t * pxEventList, const TickType_t xItemValue, const TickType_t xTicksToWait ) ;
# 2188 "../../../../../../external/freertos/source/include/task.h"
void vTaskPlaceOnEventListRestricted( List_t * const pxEventList, TickType_t xTicksToWait, const BaseType_t xWaitIndefinitely ) ;
# 2214 "../../../../../../external/freertos/source/include/task.h"
BaseType_t xTaskRemoveFromEventList( const List_t * const pxEventList ) ;
void vTaskRemoveFromUnorderedEventList( ListItem_t * pxEventListItem, const TickType_t xItemValue ) ;
# 2225 "../../../../../../external/freertos/source/include/task.h"
void vTaskSwitchContext( void ) ;





TickType_t uxTaskResetEventItemValue( void ) ;




TaskHandle_t xTaskGetCurrentTaskHandle( void ) ;




void vTaskSetTimeOutState( TimeOut_t * const pxTimeOut ) ;





BaseType_t xTaskCheckForTimeOut( TimeOut_t * const pxTimeOut, TickType_t * const pxTicksToWait ) ;





void vTaskMissedYield( void ) ;





BaseType_t xTaskGetSchedulerState( void ) ;





BaseType_t xTaskPriorityInherit( TaskHandle_t const pxMutexHolder ) ;





BaseType_t xTaskPriorityDisinherit( TaskHandle_t const pxMutexHolder ) ;
# 2281 "../../../../../../external/freertos/source/include/task.h"
void vTaskPriorityDisinheritAfterTimeout( TaskHandle_t const pxMutexHolder, UBaseType_t uxHighestPriorityWaitingTask ) ;




UBaseType_t uxTaskGetTaskNumber( TaskHandle_t xTask ) ;





void vTaskSetTaskNumber( TaskHandle_t xTask, const UBaseType_t uxHandle ) ;
# 2302 "../../../../../../external/freertos/source/include/task.h"
void vTaskStepTick( const TickType_t xTicksToJump ) ;
# 2318 "../../../../../../external/freertos/source/include/task.h"
eSleepModeStatus eTaskConfirmSleepModeStatus( void ) ;





void *pvTaskIncrementMutexHeldCount( void ) ;





void vTaskInternalSetTimeOutState( TimeOut_t * const pxTimeOut ) ;
# 35 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\main.c" 2
# 1 "../../../../../../external/freertos/source/include/timers.h" 1
# 39 "../../../../../../external/freertos/source/include/timers.h"
# 1 "../../../../../../external/freertos/source/include/task.h" 1
# 40 "../../../../../../external/freertos/source/include/timers.h" 2
# 77 "../../../../../../external/freertos/source/include/timers.h"
typedef void * TimerHandle_t;




typedef void (*TimerCallbackFunction_t)( TimerHandle_t xTimer );





typedef void (*PendedFunction_t)( void *, uint32_t );
# 228 "../../../../../../external/freertos/source/include/timers.h"
 TimerHandle_t xTimerCreate( const char * const pcTimerName,
        const TickType_t xTimerPeriodInTicks,
        const UBaseType_t uxAutoReload,
        void * const pvTimerID,
        TimerCallbackFunction_t pxCallbackFunction ) ;
# 386 "../../../../../../external/freertos/source/include/timers.h"
void *pvTimerGetTimerID( const TimerHandle_t xTimer ) ;
# 407 "../../../../../../external/freertos/source/include/timers.h"
void vTimerSetTimerID( TimerHandle_t xTimer, void *pvNewID ) ;
# 444 "../../../../../../external/freertos/source/include/timers.h"
BaseType_t xTimerIsTimerActive( TimerHandle_t xTimer ) ;







TaskHandle_t xTimerGetTimerDaemonTaskHandle( void ) ;
# 1187 "../../../../../../external/freertos/source/include/timers.h"
BaseType_t xTimerPendFunctionCallFromISR( PendedFunction_t xFunctionToPend, void *pvParameter1, uint32_t ulParameter2, BaseType_t *pxHigherPriorityTaskWoken ) ;
# 1221 "../../../../../../external/freertos/source/include/timers.h"
BaseType_t xTimerPendFunctionCall( PendedFunction_t xFunctionToPend, void *pvParameter1, uint32_t ulParameter2, TickType_t xTicksToWait ) ;
# 1232 "../../../../../../external/freertos/source/include/timers.h"
const char * pcTimerGetName( TimerHandle_t xTimer ) ;
# 1243 "../../../../../../external/freertos/source/include/timers.h"
TickType_t xTimerGetPeriod( TimerHandle_t xTimer ) ;
# 1258 "../../../../../../external/freertos/source/include/timers.h"
TickType_t xTimerGetExpiryTime( TimerHandle_t xTimer ) ;





BaseType_t xTimerCreateTimerTask( void ) ;
BaseType_t xTimerGenericCommand( TimerHandle_t xTimer, const BaseType_t xCommandID, const TickType_t xOptionalValue, BaseType_t * const pxHigherPriorityTaskWoken, const TickType_t xTicksToWait ) ;


 void vTimerSetTimerNumber( TimerHandle_t xTimer, UBaseType_t uxTimerNumber ) ;
 UBaseType_t uxTimerGetTimerNumber( TimerHandle_t xTimer ) ;
# 36 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\main.c" 2



# 1 "../../../../../../components/libraries/twi_mngr/nrf_twi_mngr.h" 1
# 44 "../../../../../../components/libraries/twi_mngr/nrf_twi_mngr.h"
# 1 "../../../../../../integration/nrfx/legacy/nrf_drv_twi.h" 1
# 46 "../../../../../../integration/nrfx/legacy/nrf_drv_twi.h"
# 1 "../../../../../../modules/nrfx/drivers/include/nrfx_twim.h" 1
# 45 "../../../../../../modules/nrfx/drivers/include/nrfx_twim.h"
# 1 "../../../../../../modules/nrfx/hal/nrf_twim.h" 1
# 60 "../../../../../../modules/nrfx/hal/nrf_twim.h"
typedef enum
{

    NRF_TWIM_TASK_STARTRX = __builtin_offsetof (NRF_TWIM_Type, TASKS_STARTRX),
    NRF_TWIM_TASK_STARTTX = __builtin_offsetof (NRF_TWIM_Type, TASKS_STARTTX),
    NRF_TWIM_TASK_STOP = __builtin_offsetof (NRF_TWIM_Type, TASKS_STOP),
    NRF_TWIM_TASK_SUSPEND = __builtin_offsetof (NRF_TWIM_Type, TASKS_SUSPEND),
    NRF_TWIM_TASK_RESUME = __builtin_offsetof (NRF_TWIM_Type, TASKS_RESUME)

} nrf_twim_task_t;




typedef enum
{

    NRF_TWIM_EVENT_STOPPED = __builtin_offsetof (NRF_TWIM_Type, EVENTS_STOPPED),
    NRF_TWIM_EVENT_ERROR = __builtin_offsetof (NRF_TWIM_Type, EVENTS_ERROR),
    NRF_TWIM_EVENT_SUSPENDED = 0x148,
    NRF_TWIM_EVENT_RXSTARTED = __builtin_offsetof (NRF_TWIM_Type, EVENTS_RXSTARTED),
    NRF_TWIM_EVENT_TXSTARTED = __builtin_offsetof (NRF_TWIM_Type, EVENTS_TXSTARTED),
    NRF_TWIM_EVENT_LASTRX = __builtin_offsetof (NRF_TWIM_Type, EVENTS_LASTRX),
    NRF_TWIM_EVENT_LASTTX = __builtin_offsetof (NRF_TWIM_Type, EVENTS_LASTTX)

} nrf_twim_event_t;




typedef enum
{
    NRF_TWIM_SHORT_LASTTX_STARTRX_MASK = (0x1UL << (7UL)),
    NRF_TWIM_SHORT_LASTTX_SUSPEND_MASK = (0x1UL << (8UL)),
    NRF_TWIM_SHORT_LASTTX_STOP_MASK = (0x1UL << (9UL)),
    NRF_TWIM_SHORT_LASTRX_STARTTX_MASK = (0x1UL << (10UL)),
    NRF_TWIM_SHORT_LASTRX_STOP_MASK = (0x1UL << (12UL)),
    NRF_TWIM_ALL_SHORTS_MASK = (0x1UL << (7UL)) |
                                         (0x1UL << (8UL)) |
                                         (0x1UL << (9UL)) |
                                         (0x1UL << (10UL)) |
                                         (0x1UL << (12UL))
} nrf_twim_short_mask_t;




typedef enum
{
    NRF_TWIM_INT_STOPPED_MASK = (0x1UL << (1UL)),
    NRF_TWIM_INT_ERROR_MASK = (0x1UL << (9UL)),
    NRF_TWIM_INT_SUSPENDED_MASK = (0x1UL << (18UL)),
    NRF_TWIM_INT_RXSTARTED_MASK = (0x1UL << (19UL)),
    NRF_TWIM_INT_TXSTARTED_MASK = (0x1UL << (20UL)),
    NRF_TWIM_INT_LASTRX_MASK = (0x1UL << (23UL)),
    NRF_TWIM_INT_LASTTX_MASK = (0x1UL << (24UL)),
    NRF_TWIM_ALL_INTS_MASK = (0x1UL << (1UL)) |
                                  (0x1UL << (9UL)) |
                                  (0x1UL << (18UL)) |
                                  (0x1UL << (19UL)) |
                                  (0x1UL << (20UL)) |
                                  (0x1UL << (23UL)) |
                                  (0x1UL << (24UL))
} nrf_twim_int_mask_t;




typedef enum
{
    NRF_TWIM_FREQ_100K = (0x01980000UL),
    NRF_TWIM_FREQ_250K = (0x04000000UL),
    NRF_TWIM_FREQ_400K = (0x06400000UL)
} nrf_twim_frequency_t;




typedef enum
{
    NRF_TWIM_ERROR_ADDRESS_NACK = (0x1UL << (1UL)),
    NRF_TWIM_ERROR_DATA_NACK = (0x1UL << (2UL))
} nrf_twim_error_t;
# 151 "../../../../../../modules/nrfx/hal/nrf_twim.h"
static inline void nrf_twim_task_trigger(NRF_TWIM_Type * p_reg,
                                           nrf_twim_task_t task);
# 162 "../../../../../../modules/nrfx/hal/nrf_twim.h"
static inline uint32_t * nrf_twim_task_address_get(NRF_TWIM_Type * p_reg,
                                                     nrf_twim_task_t task);







static inline void nrf_twim_event_clear(NRF_TWIM_Type * p_reg,
                                          nrf_twim_event_t event);
# 183 "../../../../../../modules/nrfx/hal/nrf_twim.h"
static inline 
# 183 "../../../../../../modules/nrfx/hal/nrf_twim.h" 3 4
               _Bool 
# 183 "../../../../../../modules/nrfx/hal/nrf_twim.h"
                    nrf_twim_event_check(NRF_TWIM_Type * p_reg,
                                          nrf_twim_event_t event);
# 194 "../../../../../../modules/nrfx/hal/nrf_twim.h"
static inline uint32_t * nrf_twim_event_address_get(NRF_TWIM_Type * p_reg,
                                                      nrf_twim_event_t event);







static inline void nrf_twim_shorts_enable(NRF_TWIM_Type * p_reg,
                                            uint32_t shorts_mask);







static inline void nrf_twim_shorts_disable(NRF_TWIM_Type * p_reg,
                                             uint32_t shorts_mask);







static inline void nrf_twim_int_enable(NRF_TWIM_Type * p_reg,
                                         uint32_t int_mask);







static inline void nrf_twim_int_disable(NRF_TWIM_Type * p_reg,
                                          uint32_t int_mask);
# 242 "../../../../../../modules/nrfx/hal/nrf_twim.h"
static inline 
# 242 "../../../../../../modules/nrfx/hal/nrf_twim.h" 3 4
               _Bool 
# 242 "../../../../../../modules/nrfx/hal/nrf_twim.h"
                    nrf_twim_int_enable_check(NRF_TWIM_Type * p_reg,
                                               nrf_twim_int_mask_t int_mask);






static inline void nrf_twim_enable(NRF_TWIM_Type * p_reg);






static inline void nrf_twim_disable(NRF_TWIM_Type * p_reg);
# 267 "../../../../../../modules/nrfx/hal/nrf_twim.h"
static inline void nrf_twim_pins_set(NRF_TWIM_Type * p_reg,
                                       uint32_t scl_pin,
                                       uint32_t sda_pin);







static inline void nrf_twim_frequency_set(NRF_TWIM_Type * p_reg,
                                            nrf_twim_frequency_t frequency);
# 289 "../../../../../../modules/nrfx/hal/nrf_twim.h"
static inline uint32_t nrf_twim_errorsrc_get_and_clear(NRF_TWIM_Type * p_reg);







static inline void nrf_twim_address_set(NRF_TWIM_Type * p_reg,
                                          uint8_t address);
# 307 "../../../../../../modules/nrfx/hal/nrf_twim.h"
static inline void nrf_twim_tx_buffer_set(NRF_TWIM_Type * p_reg,
                                            uint8_t const * p_buffer,
                                            size_t length);
# 318 "../../../../../../modules/nrfx/hal/nrf_twim.h"
static inline void nrf_twim_rx_buffer_set(NRF_TWIM_Type * p_reg,
                                            uint8_t * p_buffer,
                                            size_t length);

static inline void nrf_twim_shorts_set(NRF_TWIM_Type * p_reg,
                                         uint32_t shorts_mask);

static inline size_t nrf_twim_txd_amount_get(NRF_TWIM_Type * p_reg);

static inline size_t nrf_twim_rxd_amount_get(NRF_TWIM_Type * p_reg);






static inline void nrf_twim_tx_list_enable(NRF_TWIM_Type * p_reg);






static inline void nrf_twim_tx_list_disable(NRF_TWIM_Type * p_reg);






static inline void nrf_twim_rx_list_enable(NRF_TWIM_Type * p_reg);






static inline void nrf_twim_rx_list_disable(NRF_TWIM_Type * p_reg);



static inline void nrf_twim_task_trigger(NRF_TWIM_Type * p_reg,
                                           nrf_twim_task_t task)
{
    *((volatile uint32_t *)((uint8_t *)p_reg + (uint32_t)task)) = 0x1UL;
}

static inline uint32_t * nrf_twim_task_address_get(NRF_TWIM_Type * p_reg,
                                                     nrf_twim_task_t task)
{
    return (uint32_t *)((uint8_t *)p_reg + (uint32_t)task);
}

static inline void nrf_twim_event_clear(NRF_TWIM_Type * p_reg,
                                          nrf_twim_event_t event)
{
    *((volatile uint32_t *)((uint8_t *)p_reg + (uint32_t)event)) = 0x0UL;

    volatile uint32_t dummy = *((volatile uint32_t *)((uint8_t *)p_reg + (uint32_t)event));
    (void)dummy;

}

static inline 
# 381 "../../../../../../modules/nrfx/hal/nrf_twim.h" 3 4
               _Bool 
# 381 "../../../../../../modules/nrfx/hal/nrf_twim.h"
                    nrf_twim_event_check(NRF_TWIM_Type * p_reg,
                                          nrf_twim_event_t event)
{
    return (
# 384 "../../../../../../modules/nrfx/hal/nrf_twim.h" 3 4
           _Bool
# 384 "../../../../../../modules/nrfx/hal/nrf_twim.h"
               )*(volatile uint32_t *)((uint8_t *)p_reg + (uint32_t)event);
}

static inline uint32_t * nrf_twim_event_address_get(NRF_TWIM_Type * p_reg,
                                                      nrf_twim_event_t event)
{
    return (uint32_t *)((uint8_t *)p_reg + (uint32_t)event);
}

static inline void nrf_twim_shorts_enable(NRF_TWIM_Type * p_reg,
                                            uint32_t shorts_mask)
{
    p_reg->SHORTS |= shorts_mask;
}

static inline void nrf_twim_shorts_disable(NRF_TWIM_Type * p_reg,
                                             uint32_t shorts_mask)
{
    p_reg->SHORTS &= ~(shorts_mask);
}

static inline void nrf_twim_int_enable(NRF_TWIM_Type * p_reg,
                                         uint32_t int_mask)
{
    p_reg->INTENSET = int_mask;
}

static inline void nrf_twim_int_disable(NRF_TWIM_Type * p_reg,
                                          uint32_t int_mask)
{
    p_reg->INTENCLR = int_mask;
}

static inline 
# 417 "../../../../../../modules/nrfx/hal/nrf_twim.h" 3 4
               _Bool 
# 417 "../../../../../../modules/nrfx/hal/nrf_twim.h"
                    nrf_twim_int_enable_check(NRF_TWIM_Type * p_reg,
                                               nrf_twim_int_mask_t int_mask)
{
    return (
# 420 "../../../../../../modules/nrfx/hal/nrf_twim.h" 3 4
           _Bool
# 420 "../../../../../../modules/nrfx/hal/nrf_twim.h"
               )(p_reg->INTENSET & int_mask);
}

static inline void nrf_twim_enable(NRF_TWIM_Type * p_reg)
{
    p_reg->ENABLE = ((6UL) << (0UL));
}

static inline void nrf_twim_disable(NRF_TWIM_Type * p_reg)
{
    p_reg->ENABLE = ((0UL) << (0UL));
}

static inline void nrf_twim_pins_set(NRF_TWIM_Type * p_reg,
                                       uint32_t scl_pin,
                                       uint32_t sda_pin)
{
    p_reg->PSEL.SCL = scl_pin;
    p_reg->PSEL.SDA = sda_pin;
}

static inline void nrf_twim_frequency_set(NRF_TWIM_Type * p_reg,
                                            nrf_twim_frequency_t frequency)
{
    p_reg->FREQUENCY = frequency;
}

static inline uint32_t nrf_twim_errorsrc_get_and_clear(NRF_TWIM_Type * p_reg)
{
    uint32_t error_source = p_reg->ERRORSRC;


    p_reg->ERRORSRC = error_source;

    return error_source;
}

static inline void nrf_twim_address_set(NRF_TWIM_Type * p_reg,
                                          uint8_t address)
{
    p_reg->ADDRESS = address;
}

static inline void nrf_twim_tx_buffer_set(NRF_TWIM_Type * p_reg,
                                            uint8_t const * p_buffer,
                                            size_t length)
{
    p_reg->TXD.PTR = (uint32_t)p_buffer;
    p_reg->TXD.MAXCNT = length;
}

static inline void nrf_twim_rx_buffer_set(NRF_TWIM_Type * p_reg,
                                            uint8_t * p_buffer,
                                            size_t length)
{
    p_reg->RXD.PTR = (uint32_t)p_buffer;
    p_reg->RXD.MAXCNT = length;
}

static inline void nrf_twim_shorts_set(NRF_TWIM_Type * p_reg,
                                         uint32_t shorts_mask)
{
    p_reg->SHORTS = shorts_mask;
}

static inline size_t nrf_twim_txd_amount_get(NRF_TWIM_Type * p_reg)
{
    return p_reg->TXD.AMOUNT;
}

static inline size_t nrf_twim_rxd_amount_get(NRF_TWIM_Type * p_reg)
{
    return p_reg->RXD.AMOUNT;
}

static inline void nrf_twim_tx_list_enable(NRF_TWIM_Type * p_reg)
{
    p_reg->TXD.LIST = 1;
}

static inline void nrf_twim_tx_list_disable(NRF_TWIM_Type * p_reg)
{
    p_reg->TXD.LIST = 0;
}

static inline void nrf_twim_rx_list_enable(NRF_TWIM_Type * p_reg)
{
    p_reg->RXD.LIST = 1;
}

static inline void nrf_twim_rx_list_disable(NRF_TWIM_Type * p_reg)
{
    p_reg->RXD.LIST = 0;
}
# 46 "../../../../../../modules/nrfx/drivers/include/nrfx_twim.h" 2
# 61 "../../../../../../modules/nrfx/drivers/include/nrfx_twim.h"
typedef struct
{
    NRF_TWIM_Type * p_twim;
    uint8_t drv_inst_idx;
} nrfx_twim_t;
# 76 "../../../../../../modules/nrfx/drivers/include/nrfx_twim.h"
enum {






    NRFX_TWIM_ENABLED_COUNT
};




typedef struct
{
    uint32_t scl;
    uint32_t sda;
    nrf_twim_frequency_t frequency;
    uint8_t interrupt_priority;
    
# 95 "../../../../../../modules/nrfx/drivers/include/nrfx_twim.h" 3 4
   _Bool 
# 95 "../../../../../../modules/nrfx/drivers/include/nrfx_twim.h"
                        hold_bus_uninit;
} nrfx_twim_config_t;
# 120 "../../../../../../modules/nrfx/drivers/include/nrfx_twim.h"
typedef enum
{
    NRFX_TWIM_EVT_DONE,
    NRFX_TWIM_EVT_ADDRESS_NACK,
    NRFX_TWIM_EVT_DATA_NACK
} nrfx_twim_evt_type_t;




typedef enum
{
    NRFX_TWIM_XFER_TX,
    NRFX_TWIM_XFER_RX,
    NRFX_TWIM_XFER_TXRX,
    NRFX_TWIM_XFER_TXTX
} nrfx_twim_xfer_type_t;




typedef struct
{
    nrfx_twim_xfer_type_t type;
    uint8_t address;
    size_t primary_length;
    size_t secondary_length;
    uint8_t * p_primary_buf;
    uint8_t * p_secondary_buf;
} nrfx_twim_xfer_desc_t;
# 195 "../../../../../../modules/nrfx/drivers/include/nrfx_twim.h"
typedef struct
{
    nrfx_twim_evt_type_t type;
    nrfx_twim_xfer_desc_t xfer_desc;
} nrfx_twim_evt_t;




typedef void (* nrfx_twim_evt_handler_t)(nrfx_twim_evt_t const * p_event,
                                         void * p_context);
# 222 "../../../../../../modules/nrfx/drivers/include/nrfx_twim.h"
nrfx_err_t nrfx_twim_init(nrfx_twim_t const * p_instance,
                          nrfx_twim_config_t const * p_config,
                          nrfx_twim_evt_handler_t event_handler,
                          void * p_context);






void nrfx_twim_uninit(nrfx_twim_t const * p_instance);






void nrfx_twim_enable(nrfx_twim_t const * p_instance);






void nrfx_twim_disable(nrfx_twim_t const * p_instance);
# 276 "../../../../../../modules/nrfx/drivers/include/nrfx_twim.h"
nrfx_err_t nrfx_twim_tx(nrfx_twim_t const * p_instance,
                        uint8_t address,
                        uint8_t const * p_data,
                        size_t length,
                        
# 280 "../../../../../../modules/nrfx/drivers/include/nrfx_twim.h" 3 4
                       _Bool 
# 280 "../../../../../../modules/nrfx/drivers/include/nrfx_twim.h"
                                           no_stop);
# 302 "../../../../../../modules/nrfx/drivers/include/nrfx_twim.h"
nrfx_err_t nrfx_twim_rx(nrfx_twim_t const * p_instance,
                        uint8_t address,
                        uint8_t * p_data,
                        size_t length);
# 357 "../../../../../../modules/nrfx/drivers/include/nrfx_twim.h"
nrfx_err_t nrfx_twim_xfer(nrfx_twim_t const * p_instance,
                          nrfx_twim_xfer_desc_t const * p_xfer_desc,
                          uint32_t flags);
# 369 "../../../../../../modules/nrfx/drivers/include/nrfx_twim.h"

# 369 "../../../../../../modules/nrfx/drivers/include/nrfx_twim.h" 3 4
_Bool 
# 369 "../../../../../../modules/nrfx/drivers/include/nrfx_twim.h"
    nrfx_twim_is_busy(nrfx_twim_t const * p_instance);
# 383 "../../../../../../modules/nrfx/drivers/include/nrfx_twim.h"
uint32_t nrfx_twim_start_task_get(nrfx_twim_t const * p_instance, nrfx_twim_xfer_type_t xfer_type);
# 395 "../../../../../../modules/nrfx/drivers/include/nrfx_twim.h"
uint32_t nrfx_twim_stopped_event_get(nrfx_twim_t const * p_instance);


void SPIM0_SPIS0_TWIM0_TWIS0_SPI0_TWI0_IRQHandler(void);
void SPIM1_SPIS1_TWIM1_TWIS1_SPI1_TWI1_IRQHandler(void);
# 47 "../../../../../../integration/nrfx/legacy/nrf_drv_twi.h" 2
# 63 "../../../../../../integration/nrfx/legacy/nrf_drv_twi.h"
# 1 "../../../../../../modules/nrfx/drivers/include/nrfx_twi.h" 1
# 45 "../../../../../../modules/nrfx/drivers/include/nrfx_twi.h"
# 1 "../../../../../../modules/nrfx/hal/nrf_twi.h" 1
# 60 "../../../../../../modules/nrfx/hal/nrf_twi.h"
typedef enum
{

    NRF_TWI_TASK_STARTRX = __builtin_offsetof (NRF_TWI_Type, TASKS_STARTRX),
    NRF_TWI_TASK_STARTTX = __builtin_offsetof (NRF_TWI_Type, TASKS_STARTTX),
    NRF_TWI_TASK_STOP = __builtin_offsetof (NRF_TWI_Type, TASKS_STOP),
    NRF_TWI_TASK_SUSPEND = __builtin_offsetof (NRF_TWI_Type, TASKS_SUSPEND),
    NRF_TWI_TASK_RESUME = __builtin_offsetof (NRF_TWI_Type, TASKS_RESUME)

} nrf_twi_task_t;




typedef enum
{

    NRF_TWI_EVENT_STOPPED = __builtin_offsetof (NRF_TWI_Type, EVENTS_STOPPED),
    NRF_TWI_EVENT_RXDREADY = __builtin_offsetof (NRF_TWI_Type, EVENTS_RXDREADY),
    NRF_TWI_EVENT_TXDSENT = __builtin_offsetof (NRF_TWI_Type, EVENTS_TXDSENT),
    NRF_TWI_EVENT_ERROR = __builtin_offsetof (NRF_TWI_Type, EVENTS_ERROR),
    NRF_TWI_EVENT_BB = __builtin_offsetof (NRF_TWI_Type, EVENTS_BB),
    NRF_TWI_EVENT_SUSPENDED = __builtin_offsetof (NRF_TWI_Type, EVENTS_SUSPENDED)

} nrf_twi_event_t;




typedef enum
{
    NRF_TWI_SHORT_BB_SUSPEND_MASK = (0x1UL << (0UL)),
    NRF_TWI_SHORT_BB_STOP_MASK = (0x1UL << (1UL)),
    NRF_TWI_ALL_SHORTS_MASK = (0x1UL << (0UL)) |
                                    (0x1UL << (1UL))
} nrf_twi_short_mask_t;




typedef enum
{
    NRF_TWI_INT_STOPPED_MASK = (0x1UL << (1UL)),
    NRF_TWI_INT_RXDREADY_MASK = (0x1UL << (2UL)),
    NRF_TWI_INT_TXDSENT_MASK = (0x1UL << (7UL)),
    NRF_TWI_INT_ERROR_MASK = (0x1UL << (9UL)),
    NRF_TWI_INT_BB_MASK = (0x1UL << (14UL)),
    NRF_TWI_INT_SUSPENDED_MASK = (0x1UL << (18UL)),
    NRF_TWI_ALL_INTS_MASK = (0x1UL << (1UL)) |
                                  (0x1UL << (2UL)) |
                                  (0x1UL << (7UL)) |
                                  (0x1UL << (9UL)) |
                                  (0x1UL << (14UL)) |
                                  (0x1UL << (18UL))
} nrf_twi_int_mask_t;




typedef enum
{
    NRF_TWI_ERROR_ADDRESS_NACK = (0x1UL << (1UL)),
    NRF_TWI_ERROR_DATA_NACK = (0x1UL << (2UL)),
    NRF_TWI_ERROR_OVERRUN = (0x1UL << (0UL))


} nrf_twi_error_t;




typedef enum
{
    NRF_TWI_FREQ_100K = (0x01980000UL),
    NRF_TWI_FREQ_250K = (0x04000000UL),
    NRF_TWI_FREQ_400K = (0x06680000UL)
} nrf_twi_frequency_t;
# 145 "../../../../../../modules/nrfx/hal/nrf_twi.h"
static inline void nrf_twi_task_trigger(NRF_TWI_Type * p_reg,
                                          nrf_twi_task_t task);
# 156 "../../../../../../modules/nrfx/hal/nrf_twi.h"
static inline uint32_t * nrf_twi_task_address_get(NRF_TWI_Type * p_reg,
                                                    nrf_twi_task_t task);







static inline void nrf_twi_event_clear(NRF_TWI_Type * p_reg,
                                         nrf_twi_event_t event);
# 177 "../../../../../../modules/nrfx/hal/nrf_twi.h"
static inline 
# 177 "../../../../../../modules/nrfx/hal/nrf_twi.h" 3 4
               _Bool 
# 177 "../../../../../../modules/nrfx/hal/nrf_twi.h"
                    nrf_twi_event_check(NRF_TWI_Type * p_reg,
                                         nrf_twi_event_t event);
# 188 "../../../../../../modules/nrfx/hal/nrf_twi.h"
static inline uint32_t * nrf_twi_event_address_get(NRF_TWI_Type * p_reg,
                                                     nrf_twi_event_t event);







static inline void nrf_twi_shorts_enable(NRF_TWI_Type * p_reg,
                                           uint32_t shorts_mask);







static inline void nrf_twi_shorts_disable(NRF_TWI_Type * p_reg,
                                            uint32_t shorts_mask);







static inline void nrf_twi_int_enable(NRF_TWI_Type * p_reg,
                                        uint32_t int_mask);







static inline void nrf_twi_int_disable(NRF_TWI_Type * p_reg,
                                         uint32_t int_mask);
# 236 "../../../../../../modules/nrfx/hal/nrf_twi.h"
static inline 
# 236 "../../../../../../modules/nrfx/hal/nrf_twi.h" 3 4
               _Bool 
# 236 "../../../../../../modules/nrfx/hal/nrf_twi.h"
                    nrf_twi_int_enable_check(NRF_TWI_Type * p_reg,
                                              nrf_twi_int_mask_t int_mask);






static inline void nrf_twi_enable(NRF_TWI_Type * p_reg);






static inline void nrf_twi_disable(NRF_TWI_Type * p_reg);
# 261 "../../../../../../modules/nrfx/hal/nrf_twi.h"
static inline void nrf_twi_pins_set(NRF_TWI_Type * p_reg,
                                      uint32_t scl_pin,
                                      uint32_t sda_pin);







static inline void nrf_twi_frequency_set(NRF_TWI_Type * p_reg,
                                           nrf_twi_frequency_t frequency);
# 283 "../../../../../../modules/nrfx/hal/nrf_twi.h"
static inline uint32_t nrf_twi_errorsrc_get_and_clear(NRF_TWI_Type * p_reg);







static inline void nrf_twi_address_set(NRF_TWI_Type * p_reg, uint8_t address);
# 300 "../../../../../../modules/nrfx/hal/nrf_twi.h"
static inline uint8_t nrf_twi_rxd_get(NRF_TWI_Type * p_reg);







static inline void nrf_twi_txd_set(NRF_TWI_Type * p_reg, uint8_t data);

static inline void nrf_twi_shorts_set(NRF_TWI_Type * p_reg,
                                        uint32_t shorts_mask);



static inline void nrf_twi_task_trigger(NRF_TWI_Type * p_reg,
                                          nrf_twi_task_t task)
{
    *((volatile uint32_t *)((uint8_t *)p_reg + (uint32_t)task)) = 0x1UL;
}

static inline uint32_t * nrf_twi_task_address_get(NRF_TWI_Type * p_reg,
                                                    nrf_twi_task_t task)
{
    return (uint32_t *)((uint8_t *)p_reg + (uint32_t)task);
}

static inline void nrf_twi_event_clear(NRF_TWI_Type * p_reg,
                                         nrf_twi_event_t event)
{
    *((volatile uint32_t *)((uint8_t *)p_reg + (uint32_t)event)) = 0x0UL;

    volatile uint32_t dummy = *((volatile uint32_t *)((uint8_t *)p_reg + (uint32_t)event));
    (void)dummy;

}

static inline 
# 337 "../../../../../../modules/nrfx/hal/nrf_twi.h" 3 4
               _Bool 
# 337 "../../../../../../modules/nrfx/hal/nrf_twi.h"
                    nrf_twi_event_check(NRF_TWI_Type * p_reg,
                                         nrf_twi_event_t event)
{
    return (
# 340 "../../../../../../modules/nrfx/hal/nrf_twi.h" 3 4
           _Bool
# 340 "../../../../../../modules/nrfx/hal/nrf_twi.h"
               )*(volatile uint32_t *)((uint8_t *)p_reg + (uint32_t)event);
}

static inline uint32_t * nrf_twi_event_address_get(NRF_TWI_Type * p_reg,
                                                     nrf_twi_event_t event)
{
    return (uint32_t *)((uint8_t *)p_reg + (uint32_t)event);
}

static inline void nrf_twi_shorts_enable(NRF_TWI_Type * p_reg,
                                           uint32_t shorts_mask)
{
    p_reg->SHORTS |= shorts_mask;
}

static inline void nrf_twi_shorts_disable(NRF_TWI_Type * p_reg,
                                            uint32_t shorts_mask)
{
    p_reg->SHORTS &= ~(shorts_mask);
}

static inline void nrf_twi_int_enable(NRF_TWI_Type * p_reg,
                                        uint32_t int_mask)
{
    p_reg->INTENSET = int_mask;
}

static inline void nrf_twi_int_disable(NRF_TWI_Type * p_reg,
                                         uint32_t int_mask)
{
    p_reg->INTENCLR = int_mask;
}

static inline 
# 373 "../../../../../../modules/nrfx/hal/nrf_twi.h" 3 4
               _Bool 
# 373 "../../../../../../modules/nrfx/hal/nrf_twi.h"
                    nrf_twi_int_enable_check(NRF_TWI_Type * p_reg,
                                              nrf_twi_int_mask_t int_mask)
{
    return (
# 376 "../../../../../../modules/nrfx/hal/nrf_twi.h" 3 4
           _Bool
# 376 "../../../../../../modules/nrfx/hal/nrf_twi.h"
               )(p_reg->INTENSET & int_mask);
}

static inline void nrf_twi_enable(NRF_TWI_Type * p_reg)
{
    p_reg->ENABLE = ((5UL) << (0UL));
}

static inline void nrf_twi_disable(NRF_TWI_Type * p_reg)
{
    p_reg->ENABLE = ((0UL) << (0UL));
}

static inline void nrf_twi_pins_set(NRF_TWI_Type * p_reg,
                                      uint32_t scl_pin,
                                      uint32_t sda_pin)
{



    p_reg->PSELSCL = scl_pin;





    p_reg->PSELSDA = sda_pin;

}

static inline void nrf_twi_frequency_set(NRF_TWI_Type * p_reg,
                                           nrf_twi_frequency_t frequency)
{
    p_reg->FREQUENCY = frequency;
}

static inline uint32_t nrf_twi_errorsrc_get_and_clear(NRF_TWI_Type * p_reg)
{
    uint32_t error_source = p_reg->ERRORSRC;


    p_reg->ERRORSRC = error_source;

    return error_source;
}

static inline void nrf_twi_address_set(NRF_TWI_Type * p_reg, uint8_t address)
{
    p_reg->ADDRESS = address;
}

static inline uint8_t nrf_twi_rxd_get(NRF_TWI_Type * p_reg)
{
    return (uint8_t)p_reg->RXD;
}

static inline void nrf_twi_txd_set(NRF_TWI_Type * p_reg, uint8_t data)
{
    p_reg->TXD = data;
}

static inline void nrf_twi_shorts_set(NRF_TWI_Type * p_reg,
                                        uint32_t shorts_mask)
{
    p_reg->SHORTS = shorts_mask;
}
# 46 "../../../../../../modules/nrfx/drivers/include/nrfx_twi.h" 2
# 61 "../../../../../../modules/nrfx/drivers/include/nrfx_twi.h"
typedef struct
{
    NRF_TWI_Type * p_twi;
    uint8_t drv_inst_idx;
} nrfx_twi_t;
# 76 "../../../../../../modules/nrfx/drivers/include/nrfx_twi.h"
enum {




    NRFX_TWI1_INST_IDX,

    NRFX_TWI_ENABLED_COUNT
};




typedef struct
{
    uint32_t scl;
    uint32_t sda;
    nrf_twi_frequency_t frequency;
    uint8_t interrupt_priority;
    
# 95 "../../../../../../modules/nrfx/drivers/include/nrfx_twi.h" 3 4
   _Bool 
# 95 "../../../../../../modules/nrfx/drivers/include/nrfx_twi.h"
                       hold_bus_uninit;
} nrfx_twi_config_t;
# 116 "../../../../../../modules/nrfx/drivers/include/nrfx_twi.h"
typedef enum
{
    NRFX_TWI_EVT_DONE,
    NRFX_TWI_EVT_ADDRESS_NACK,
    NRFX_TWI_EVT_DATA_NACK
} nrfx_twi_evt_type_t;




typedef enum
{
    NRFX_TWI_XFER_TX,
    NRFX_TWI_XFER_RX,
    NRFX_TWI_XFER_TXRX,
    NRFX_TWI_XFER_TXTX
} nrfx_twi_xfer_type_t;




typedef struct
{
    nrfx_twi_xfer_type_t type;
    uint8_t address;
    size_t primary_length;
    size_t secondary_length;
    uint8_t * p_primary_buf;
    uint8_t * p_secondary_buf;
} nrfx_twi_xfer_desc_t;
# 191 "../../../../../../modules/nrfx/drivers/include/nrfx_twi.h"
typedef struct
{
    nrfx_twi_evt_type_t type;
    nrfx_twi_xfer_desc_t xfer_desc;
} nrfx_twi_evt_t;




typedef void (* nrfx_twi_evt_handler_t)(nrfx_twi_evt_t const * p_event,
                                        void * p_context);
# 218 "../../../../../../modules/nrfx/drivers/include/nrfx_twi.h"
nrfx_err_t nrfx_twi_init(nrfx_twi_t const * p_instance,
                         nrfx_twi_config_t const * p_config,
                         nrfx_twi_evt_handler_t event_handler,
                         void * p_context);






void nrfx_twi_uninit(nrfx_twi_t const * p_instance);






void nrfx_twi_enable(nrfx_twi_t const * p_instance);






void nrfx_twi_disable(nrfx_twi_t const * p_instance);
# 264 "../../../../../../modules/nrfx/drivers/include/nrfx_twi.h"
nrfx_err_t nrfx_twi_tx(nrfx_twi_t const * p_instance,
                       uint8_t address,
                       uint8_t const * p_data,
                       size_t length,
                       
# 268 "../../../../../../modules/nrfx/drivers/include/nrfx_twi.h" 3 4
                      _Bool 
# 268 "../../../../../../modules/nrfx/drivers/include/nrfx_twi.h"
                                         no_stop);
# 288 "../../../../../../modules/nrfx/drivers/include/nrfx_twi.h"
nrfx_err_t nrfx_twi_rx(nrfx_twi_t const * p_instance,
                       uint8_t address,
                       uint8_t * p_data,
                       size_t length);
# 324 "../../../../../../modules/nrfx/drivers/include/nrfx_twi.h"
nrfx_err_t nrfx_twi_xfer(nrfx_twi_t const * p_instance,
                         nrfx_twi_xfer_desc_t const * p_xfer_desc,
                         uint32_t flags);
# 336 "../../../../../../modules/nrfx/drivers/include/nrfx_twi.h"

# 336 "../../../../../../modules/nrfx/drivers/include/nrfx_twi.h" 3 4
_Bool 
# 336 "../../../../../../modules/nrfx/drivers/include/nrfx_twi.h"
    nrfx_twi_is_busy(nrfx_twi_t const * p_instance);
# 345 "../../../../../../modules/nrfx/drivers/include/nrfx_twi.h"
size_t nrfx_twi_data_count_get(nrfx_twi_t const * const p_instance);
# 357 "../../../../../../modules/nrfx/drivers/include/nrfx_twi.h"
uint32_t nrfx_twi_stopped_event_get(nrfx_twi_t const * p_instance);

void SPIM0_SPIS0_TWIM0_TWIS0_SPI0_TWI0_IRQHandler(void);
void SPIM1_SPIS1_TWIM1_TWIS1_SPI1_TWI1_IRQHandler(void);
# 64 "../../../../../../integration/nrfx/legacy/nrf_drv_twi.h" 2
# 101 "../../../../../../integration/nrfx/legacy/nrf_drv_twi.h"
typedef struct
{
    uint8_t inst_idx;
    union
    {

        nrfx_twim_t twim;


        nrfx_twi_t twi;

    } u;
    
# 113 "../../../../../../integration/nrfx/legacy/nrf_drv_twi.h" 3 4
   _Bool 
# 113 "../../../../../../integration/nrfx/legacy/nrf_drv_twi.h"
           use_easy_dma;
} nrf_drv_twi_t;
# 139 "../../../../../../integration/nrfx/legacy/nrf_drv_twi.h"
typedef enum
{
    NRF_DRV_TWI_FREQ_100K = NRF_TWI_FREQ_100K ,
    NRF_DRV_TWI_FREQ_250K = NRF_TWI_FREQ_250K ,
    NRF_DRV_TWI_FREQ_400K = NRF_TWI_FREQ_400K
} nrf_drv_twi_frequency_t;




typedef struct
{
    uint32_t scl;
    uint32_t sda;
    nrf_drv_twi_frequency_t frequency;
    uint8_t interrupt_priority;
    
# 155 "../../../../../../integration/nrfx/legacy/nrf_drv_twi.h" 3 4
   _Bool 
# 155 "../../../../../../integration/nrfx/legacy/nrf_drv_twi.h"
                           clear_bus_init;
    
# 156 "../../../../../../integration/nrfx/legacy/nrf_drv_twi.h" 3 4
   _Bool 
# 156 "../../../../../../integration/nrfx/legacy/nrf_drv_twi.h"
                           hold_bus_uninit;
} nrf_drv_twi_config_t;
# 182 "../../../../../../integration/nrfx/legacy/nrf_drv_twi.h"
typedef enum
{
    NRF_DRV_TWI_EVT_DONE,
    NRF_DRV_TWI_EVT_ADDRESS_NACK,
    NRF_DRV_TWI_EVT_DATA_NACK
} nrf_drv_twi_evt_type_t;




typedef enum
{
    NRF_DRV_TWI_XFER_TX,
    NRF_DRV_TWI_XFER_RX,
    NRF_DRV_TWI_XFER_TXRX,
    NRF_DRV_TWI_XFER_TXTX
} nrf_drv_twi_xfer_type_t;




typedef struct
{
    nrf_drv_twi_xfer_type_t type;
    uint8_t address;
    uint8_t primary_length;
    uint8_t secondary_length;
    uint8_t * p_primary_buf;
    uint8_t * p_secondary_buf;
} nrf_drv_twi_xfer_desc_t;
# 257 "../../../../../../integration/nrfx/legacy/nrf_drv_twi.h"
typedef struct
{
    nrf_drv_twi_evt_type_t type;
    nrf_drv_twi_xfer_desc_t xfer_desc;
} nrf_drv_twi_evt_t;




typedef void (* nrf_drv_twi_evt_handler_t)(nrf_drv_twi_evt_t const * p_event,
                                           void * p_context);
# 284 "../../../../../../integration/nrfx/legacy/nrf_drv_twi.h"
ret_code_t nrf_drv_twi_init(nrf_drv_twi_t const * p_instance,
                            nrf_drv_twi_config_t const * p_config,
                            nrf_drv_twi_evt_handler_t event_handler,
                            void * p_context);






static inline
void nrf_drv_twi_uninit(nrf_drv_twi_t const * p_instance);






static inline
void nrf_drv_twi_enable(nrf_drv_twi_t const * p_instance);






static inline
void nrf_drv_twi_disable(nrf_drv_twi_t const * p_instance);
# 334 "../../../../../../integration/nrfx/legacy/nrf_drv_twi.h"
static inline
ret_code_t nrf_drv_twi_tx(nrf_drv_twi_t const * p_instance,
                          uint8_t address,
                          uint8_t const * p_data,
                          uint8_t length,
                          
# 339 "../../../../../../integration/nrfx/legacy/nrf_drv_twi.h" 3 4
                         _Bool 
# 339 "../../../../../../integration/nrfx/legacy/nrf_drv_twi.h"
                                               no_stop);
# 359 "../../../../../../integration/nrfx/legacy/nrf_drv_twi.h"
static inline
ret_code_t nrf_drv_twi_rx(nrf_drv_twi_t const * p_instance,
                          uint8_t address,
                          uint8_t * p_data,
                          uint8_t length);
# 414 "../../../../../../integration/nrfx/legacy/nrf_drv_twi.h"
static inline
ret_code_t nrf_drv_twi_xfer(nrf_drv_twi_t const * p_instance,
                            nrf_drv_twi_xfer_desc_t const * p_xfer_desc,
                            uint32_t flags);
# 427 "../../../../../../integration/nrfx/legacy/nrf_drv_twi.h"
static inline

# 428 "../../../../../../integration/nrfx/legacy/nrf_drv_twi.h" 3 4
_Bool 
# 428 "../../../../../../integration/nrfx/legacy/nrf_drv_twi.h"
    nrf_drv_twi_is_busy(nrf_drv_twi_t const * p_instance);
# 439 "../../../../../../integration/nrfx/legacy/nrf_drv_twi.h"
static inline
uint32_t nrf_drv_twi_data_count_get(nrf_drv_twi_t const * const p_instance);
# 453 "../../../../../../integration/nrfx/legacy/nrf_drv_twi.h"
static inline
uint32_t nrf_drv_twi_start_task_get(nrf_drv_twi_t const * p_instance, nrf_drv_twi_xfer_type_t xfer_type);
# 466 "../../../../../../integration/nrfx/legacy/nrf_drv_twi.h"
static inline
uint32_t nrf_drv_twi_stopped_event_get(nrf_drv_twi_t const * p_instance);
# 495 "../../../../../../integration/nrfx/legacy/nrf_drv_twi.h"
static inline
void nrf_drv_twi_uninit(nrf_drv_twi_t const * p_instance)
{
    if (
# 498 "../../../../../../integration/nrfx/legacy/nrf_drv_twi.h" 3 4
       0
# 498 "../../../../../../integration/nrfx/legacy/nrf_drv_twi.h"
                           )
    {
        nrfx_twim_uninit(&p_instance->u.twim);
    }
    else if ((!
# 502 "../../../../../../integration/nrfx/legacy/nrf_drv_twi.h" 3 4
            0
# 502 "../../../../../../integration/nrfx/legacy/nrf_drv_twi.h"
            ))
    {
        nrfx_twi_uninit(&p_instance->u.twi);
    }
}

static inline
void nrf_drv_twi_enable(nrf_drv_twi_t const * p_instance)
{
    if (
# 511 "../../../../../../integration/nrfx/legacy/nrf_drv_twi.h" 3 4
       0
# 511 "../../../../../../integration/nrfx/legacy/nrf_drv_twi.h"
                           )
    {
        nrfx_twim_enable(&p_instance->u.twim);
    }
    else if ((!
# 515 "../../../../../../integration/nrfx/legacy/nrf_drv_twi.h" 3 4
            0
# 515 "../../../../../../integration/nrfx/legacy/nrf_drv_twi.h"
            ))
    {
        nrfx_twi_enable(&p_instance->u.twi);
    }
}

static inline
void nrf_drv_twi_disable(nrf_drv_twi_t const * p_instance)
{
    if (
# 524 "../../../../../../integration/nrfx/legacy/nrf_drv_twi.h" 3 4
       0
# 524 "../../../../../../integration/nrfx/legacy/nrf_drv_twi.h"
                           )
    {
        nrfx_twim_disable(&p_instance->u.twim);
    }
    else if ((!
# 528 "../../../../../../integration/nrfx/legacy/nrf_drv_twi.h" 3 4
            0
# 528 "../../../../../../integration/nrfx/legacy/nrf_drv_twi.h"
            ))
    {
        nrfx_twi_disable(&p_instance->u.twi);
    }
}

static inline
ret_code_t nrf_drv_twi_tx(nrf_drv_twi_t const * p_instance,
                          uint8_t address,
                          uint8_t const * p_data,
                          uint8_t length,
                          
# 539 "../../../../../../integration/nrfx/legacy/nrf_drv_twi.h" 3 4
                         _Bool 
# 539 "../../../../../../integration/nrfx/legacy/nrf_drv_twi.h"
                                               no_stop)
{
    ret_code_t result = 0;
    if (
# 542 "../../../../../../integration/nrfx/legacy/nrf_drv_twi.h" 3 4
       0
# 542 "../../../../../../integration/nrfx/legacy/nrf_drv_twi.h"
                           )
    {
        result = nrfx_twim_tx(&p_instance->u.twim,
                                address, p_data, length, no_stop);
    }
    else if ((!
# 547 "../../../../../../integration/nrfx/legacy/nrf_drv_twi.h" 3 4
            0
# 547 "../../../../../../integration/nrfx/legacy/nrf_drv_twi.h"
            ))
    {
        result = nrfx_twi_tx(&p_instance->u.twi,
                               address, p_data, length, no_stop);
    }
    return result;
}

static inline
ret_code_t nrf_drv_twi_rx(nrf_drv_twi_t const * p_instance,
                          uint8_t address,
                          uint8_t * p_data,
                          uint8_t length)
{
    ret_code_t result = 0;
    if (
# 562 "../../../../../../integration/nrfx/legacy/nrf_drv_twi.h" 3 4
       0
# 562 "../../../../../../integration/nrfx/legacy/nrf_drv_twi.h"
                           )
    {
        result = nrfx_twim_rx(&p_instance->u.twim,
                                address, p_data, length);
    }
    else if ((!
# 567 "../../../../../../integration/nrfx/legacy/nrf_drv_twi.h" 3 4
            0
# 567 "../../../../../../integration/nrfx/legacy/nrf_drv_twi.h"
            ))
    {
        result = nrfx_twi_rx(&p_instance->u.twi,
                               address, p_data, length);
    }
    return result;
}

static inline
ret_code_t nrf_drv_twi_xfer(nrf_drv_twi_t const * p_instance,
                            nrf_drv_twi_xfer_desc_t const * p_xfer_desc,
                            uint32_t flags)
{
    ret_code_t result = 0;
    if (
# 581 "../../../../../../integration/nrfx/legacy/nrf_drv_twi.h" 3 4
       0
# 581 "../../../../../../integration/nrfx/legacy/nrf_drv_twi.h"
                           )
    {

        nrfx_twim_xfer_desc_t const twim_xfer_desc =
        {
            .type = (nrfx_twim_xfer_type_t)p_xfer_desc->type,
            .address = p_xfer_desc->address,
            .primary_length = p_xfer_desc->primary_length,
            .secondary_length = p_xfer_desc->secondary_length,
            .p_primary_buf = p_xfer_desc->p_primary_buf,
            .p_secondary_buf = p_xfer_desc->p_secondary_buf,
        };
        result = nrfx_twim_xfer(&p_instance->u.twim, &twim_xfer_desc, flags);

    }
    else if ((!
# 596 "../../../../../../integration/nrfx/legacy/nrf_drv_twi.h" 3 4
            0
# 596 "../../../../../../integration/nrfx/legacy/nrf_drv_twi.h"
            ))
    {

        nrfx_twi_xfer_desc_t const twi_xfer_desc =
        {
            .type = (nrfx_twi_xfer_type_t)p_xfer_desc->type,
            .address = p_xfer_desc->address,
            .primary_length = p_xfer_desc->primary_length,
            .secondary_length = p_xfer_desc->secondary_length,
            .p_primary_buf = p_xfer_desc->p_primary_buf,
            .p_secondary_buf = p_xfer_desc->p_secondary_buf,
        };
        result = nrfx_twi_xfer(&p_instance->u.twi, &twi_xfer_desc, flags);

    }
    return result;
}

static inline

# 615 "../../../../../../integration/nrfx/legacy/nrf_drv_twi.h" 3 4
_Bool 
# 615 "../../../../../../integration/nrfx/legacy/nrf_drv_twi.h"
    nrf_drv_twi_is_busy(nrf_drv_twi_t const * p_instance)
{
    
# 617 "../../../../../../integration/nrfx/legacy/nrf_drv_twi.h" 3 4
   _Bool 
# 617 "../../../../../../integration/nrfx/legacy/nrf_drv_twi.h"
        result = 0;
    if (
# 618 "../../../../../../integration/nrfx/legacy/nrf_drv_twi.h" 3 4
       0
# 618 "../../../../../../integration/nrfx/legacy/nrf_drv_twi.h"
                           )
    {
        result = nrfx_twim_is_busy(&p_instance->u.twim);
    }
    else if ((!
# 622 "../../../../../../integration/nrfx/legacy/nrf_drv_twi.h" 3 4
            0
# 622 "../../../../../../integration/nrfx/legacy/nrf_drv_twi.h"
            ))
    {
        result = nrfx_twi_is_busy(&p_instance->u.twi);
    }
    return result;
}

static inline
uint32_t nrf_drv_twi_data_count_get(nrf_drv_twi_t const * const p_instance)
{
    uint32_t result = 0;
    if (
# 633 "../../../../../../integration/nrfx/legacy/nrf_drv_twi.h" 3 4
       0
# 633 "../../../../../../integration/nrfx/legacy/nrf_drv_twi.h"
                           )
    {
        if (1) { if (
# 635 "../../../../../../integration/nrfx/legacy/nrf_drv_twi.h" 3 4
       0
# 635 "../../../../../../integration/nrfx/legacy/nrf_drv_twi.h"
       ) { } else { assert_nrf_callback((uint16_t)635, (uint8_t *)"../../../../../../integration/nrfx/legacy/nrf_drv_twi.h"); } };
        result = 0;
    }
    else if ((!
# 638 "../../../../../../integration/nrfx/legacy/nrf_drv_twi.h" 3 4
            0
# 638 "../../../../../../integration/nrfx/legacy/nrf_drv_twi.h"
            ))
    {
        result = nrfx_twi_data_count_get(&p_instance->u.twi);
    }
    return result;
}

static inline
uint32_t nrf_drv_twi_start_task_get(nrf_drv_twi_t const * p_instance,
                                    nrf_drv_twi_xfer_type_t xfer_type)
{
    uint32_t result = 0;
    if (
# 650 "../../../../../../integration/nrfx/legacy/nrf_drv_twi.h" 3 4
       0
# 650 "../../../../../../integration/nrfx/legacy/nrf_drv_twi.h"
                           )
    {
        result = nrfx_twim_start_task_get(&p_instance->u.twim,
                                          (nrfx_twim_xfer_type_t)xfer_type);
    }
    else if ((!
# 655 "../../../../../../integration/nrfx/legacy/nrf_drv_twi.h" 3 4
            0
# 655 "../../../../../../integration/nrfx/legacy/nrf_drv_twi.h"
            ))
    {
        if (1) { if (
# 657 "../../../../../../integration/nrfx/legacy/nrf_drv_twi.h" 3 4
       0
# 657 "../../../../../../integration/nrfx/legacy/nrf_drv_twi.h"
       ) { } else { assert_nrf_callback((uint16_t)657, (uint8_t *)"../../../../../../integration/nrfx/legacy/nrf_drv_twi.h"); } };
        result = 0;
    }
    return result;
}

static inline
uint32_t nrf_drv_twi_stopped_event_get(nrf_drv_twi_t const * p_instance)
{
    uint32_t result = 0;
    if (
# 667 "../../../../../../integration/nrfx/legacy/nrf_drv_twi.h" 3 4
       0
# 667 "../../../../../../integration/nrfx/legacy/nrf_drv_twi.h"
                           )
    {
        result = nrfx_twim_stopped_event_get(&p_instance->u.twim);
    }
    else if ((!
# 671 "../../../../../../integration/nrfx/legacy/nrf_drv_twi.h" 3 4
            0
# 671 "../../../../../../integration/nrfx/legacy/nrf_drv_twi.h"
            ))
    {
        result = nrfx_twi_stopped_event_get(&p_instance->u.twi);
    }
    return result;
}
# 45 "../../../../../../components/libraries/twi_mngr/nrf_twi_mngr.h" 2

# 1 "../../../../../../components/libraries/queue/nrf_queue.h" 1
# 69 "../../../../../../components/libraries/queue/nrf_queue.h"
typedef struct
{
    volatile size_t front;
    volatile size_t back;
    size_t max_utilization;
} nrf_queue_cb_t;


typedef enum
{
    NRF_QUEUE_MODE_OVERFLOW,
    NRF_QUEUE_MODE_NO_OVERFLOW,
} nrf_queue_mode_t;


typedef struct
{
    nrf_queue_cb_t * p_cb;
    void * p_buffer;
    size_t size;
    size_t element_size;
    nrf_queue_mode_t mode;



    nrf_log_module_reduced_dynamic_data_t * p_log;
} nrf_queue_t;
# 286 "../../../../../../components/libraries/queue/nrf_queue.h"
ret_code_t nrf_queue_push(nrf_queue_t const * p_queue, void const * p_element);
# 297 "../../../../../../components/libraries/queue/nrf_queue.h"
ret_code_t nrf_queue_generic_pop(nrf_queue_t const * p_queue,
                                 void * p_element,
                                 
# 299 "../../../../../../components/libraries/queue/nrf_queue.h" 3 4
                                _Bool 
# 299 "../../../../../../components/libraries/queue/nrf_queue.h"
                                                    just_peek);
# 330 "../../../../../../components/libraries/queue/nrf_queue.h"
ret_code_t nrf_queue_write(nrf_queue_t const * p_queue,
                           void const * p_data,
                           size_t element_count);
# 342 "../../../../../../components/libraries/queue/nrf_queue.h"
size_t nrf_queue_in(nrf_queue_t const * p_queue,
                    void const * p_data,
                    size_t element_count);
# 355 "../../../../../../components/libraries/queue/nrf_queue.h"
ret_code_t nrf_queue_read(nrf_queue_t const * p_queue,
                          void * p_data,
                          size_t element_count);
# 367 "../../../../../../components/libraries/queue/nrf_queue.h"
size_t nrf_queue_out(nrf_queue_t const * p_queue,
                    void * p_data,
                    size_t element_count);








# 377 "../../../../../../components/libraries/queue/nrf_queue.h" 3 4
_Bool 
# 377 "../../../../../../components/libraries/queue/nrf_queue.h"
    nrf_queue_is_full(nrf_queue_t const * p_queue);








# 385 "../../../../../../components/libraries/queue/nrf_queue.h" 3 4
_Bool 
# 385 "../../../../../../components/libraries/queue/nrf_queue.h"
    nrf_queue_is_empty(nrf_queue_t const * p_queue);







size_t nrf_queue_utilization_get(nrf_queue_t const * p_queue);







size_t nrf_queue_available_get(nrf_queue_t const * p_queue);







size_t nrf_queue_max_utilization_get(nrf_queue_t const * p_queue);






void nrf_queue_max_utilization_reset(nrf_queue_t const * p_queue);





void nrf_queue_reset(nrf_queue_t const * p_queue);
# 47 "../../../../../../components/libraries/twi_mngr/nrf_twi_mngr.h" 2
# 152 "../../../../../../components/libraries/twi_mngr/nrf_twi_mngr.h"
typedef void (* nrf_twi_mngr_callback_t)(ret_code_t result, void * p_user_data);




typedef struct {
    uint8_t * p_data;
    uint8_t length;
    uint8_t operation;
    uint8_t flags;
} nrf_twi_mngr_transfer_t;




typedef struct {
    nrf_twi_mngr_callback_t callback;


    void * p_user_data;


    nrf_twi_mngr_transfer_t const * p_transfers;


    uint8_t number_of_transfers;


    nrf_drv_twi_config_t const * p_required_twi_cfg;

} nrf_twi_mngr_transaction_t;




typedef struct {
    nrf_twi_mngr_transaction_t const * volatile p_current_transaction;


    nrf_drv_twi_config_t default_configuration;


    nrf_drv_twi_config_t const * p_current_configuration;


    uint8_t volatile current_transfer_idx;

} nrf_twi_mngr_cb_t;




typedef struct {
    nrf_twi_mngr_cb_t * p_nrf_twi_mngr_cb;


    nrf_queue_t const * p_queue;


    nrf_drv_twi_t twi;

} nrf_twi_mngr_t;
# 256 "../../../../../../components/libraries/twi_mngr/nrf_twi_mngr.h"
ret_code_t nrf_twi_mngr_init(nrf_twi_mngr_t const * p_nrf_twi_mngr,
                             nrf_drv_twi_config_t const * p_default_twi_config);






void nrf_twi_mngr_uninit(nrf_twi_mngr_t const * p_nrf_twi_mngr);
# 288 "../../../../../../components/libraries/twi_mngr/nrf_twi_mngr.h"
ret_code_t nrf_twi_mngr_schedule(nrf_twi_mngr_t const * p_nrf_twi_mngr,
                                 nrf_twi_mngr_transaction_t const * p_transaction);
# 310 "../../../../../../components/libraries/twi_mngr/nrf_twi_mngr.h"
ret_code_t nrf_twi_mngr_perform(nrf_twi_mngr_t const * p_nrf_twi_mngr,
                                nrf_drv_twi_config_t const * p_config,
                                nrf_twi_mngr_transfer_t const * p_transfers,
                                uint8_t number_of_transfers,
                                void (* user_function)(void));
# 325 "../../../../../../components/libraries/twi_mngr/nrf_twi_mngr.h"
static inline 
# 325 "../../../../../../components/libraries/twi_mngr/nrf_twi_mngr.h" 3 4
               _Bool 
# 325 "../../../../../../components/libraries/twi_mngr/nrf_twi_mngr.h"
                    nrf_twi_mngr_is_idle(nrf_twi_mngr_t const * p_nrf_twi_mngr);


static inline 
# 328 "../../../../../../components/libraries/twi_mngr/nrf_twi_mngr.h" 3 4
               _Bool 
# 328 "../../../../../../components/libraries/twi_mngr/nrf_twi_mngr.h"
                    nrf_twi_mngr_is_idle(nrf_twi_mngr_t const * p_nrf_twi_mngr)
{
    return (p_nrf_twi_mngr->p_nrf_twi_mngr_cb->p_current_transaction == 
# 330 "../../../../../../components/libraries/twi_mngr/nrf_twi_mngr.h" 3 4
                                                                       0
# 330 "../../../../../../components/libraries/twi_mngr/nrf_twi_mngr.h"
                                                                           );
}
# 40 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\main.c" 2



# 1 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/math.h" 1 3 4
# 99 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/math.h" 3 4

# 99 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/math.h" 3 4
int __float32_isinf(float);
int __float64_isinf(double);
int __float32_isnan(float);
int __float64_isnan(double);
int __float32_isfinite(float);
int __float64_isfinite(double);
int __float32_isnormal(float);
int __float64_isnormal(double);
int __float32_signbit(float);
int __float64_signbit(double);
int __float32_classify(float);
int __float64_classify(double);
# 261 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/math.h" 3 4
typedef float float_t;
typedef double double_t;
# 274 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/math.h" 3 4
float cosf(float __x);
# 293 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/math.h" 3 4
double cos(double __x);
# 305 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/math.h" 3 4
float sinf(float __x);
# 324 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/math.h" 3 4
double sin(double __x);
# 337 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/math.h" 3 4
float tanf(float __x);
# 356 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/math.h" 3 4
double tan(double __x);
# 370 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/math.h" 3 4
float acosf(float __x);
# 390 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/math.h" 3 4
double acos(double __x);
# 405 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/math.h" 3 4
float asinf(float __x);
# 426 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/math.h" 3 4
double asin(double __x);
# 436 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/math.h" 3 4
float atanf(float __x);
# 451 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/math.h" 3 4
double atan(double __x);
# 475 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/math.h" 3 4
float atan2f(float __y, float __x);
# 505 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/math.h" 3 4
double atan2(double __y, double __x);
# 524 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/math.h" 3 4
float frexpf(float __x, int *__exp);
# 549 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/math.h" 3 4
double frexp(double __x, int *__exp);
# 565 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/math.h" 3 4
float ldexpf(float __x, int __exp);
# 586 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/math.h" 3 4
double ldexp(double __x, int __exp);
# 608 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/math.h" 3 4
float scalbnf(float __x, int __exp);
# 635 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/math.h" 3 4
double scalbn(double __x, int __exp);
# 651 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/math.h" 3 4
float logf(float __x);
# 673 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/math.h" 3 4
double log(double __x);
# 689 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/math.h" 3 4
float log10f(float __x);
# 711 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/math.h" 3 4
double log10(double __x);
# 730 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/math.h" 3 4
float fmodf(float __x, float __y);
# 755 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/math.h" 3 4
double fmod(double __x, double __y);
# 768 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/math.h" 3 4
float modff(float __x, float *__iptr);
# 787 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/math.h" 3 4
double modf(double __x, double *__iptr);
# 819 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/math.h" 3 4
float powf(float __x, float __y);
# 857 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/math.h" 3 4
double pow(double __x, double __y);
# 873 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/math.h" 3 4
float sqrtf(float __x);
# 895 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/math.h" 3 4
double sqrt(double __x);







float cbrtf(float __x);
# 917 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/math.h" 3 4
double cbrt(double __x);
# 928 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/math.h" 3 4
float ceilf(float __x);
# 946 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/math.h" 3 4
double ceil(double __x);







float fabsf(float __x);
# 968 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/math.h" 3 4
double fabs(double __x);
# 979 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/math.h" 3 4
float fminf(float __x, float __y);
# 996 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/math.h" 3 4
double fmin(double __x, double __y);
# 1007 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/math.h" 3 4
float fmaxf(float __x, float __y);
# 1024 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/math.h" 3 4
double fmax(double __x, double __y);
# 1035 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/math.h" 3 4
float floorf(float);
# 1052 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/math.h" 3 4
double floor(double);
# 1066 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/math.h" 3 4
float hypotf(float __x, float __y);
# 1086 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/math.h" 3 4
double hypot(double __x, double __y);
# 1100 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/math.h" 3 4
float coshf(float __x);
# 1120 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/math.h" 3 4
double cosh(double __x);
# 1133 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/math.h" 3 4
float sinhf(float __x);
# 1152 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/math.h" 3 4
double sinh(double __x);
# 1163 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/math.h" 3 4
float tanhf(float __x);
# 1180 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/math.h" 3 4
double tanh(double __x);
# 1194 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/math.h" 3 4
float expf(float __x);
# 1214 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/math.h" 3 4
double exp(double __x);
# 1229 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/math.h" 3 4
float acoshf(float __x);
# 1251 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/math.h" 3 4
double acosh(double __x);
# 1264 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/math.h" 3 4
float asinhf(float __x);
# 1284 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/math.h" 3 4
double asinh(double __x);
# 1297 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/math.h" 3 4
float atanhf(float __x);
# 1319 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/math.h" 3 4
double atanh(double __x);







float fmaf(float __x, float __y, float __z);
# 1341 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/math.h" 3 4
double fma(double __x, double __y, double __z);







float copysignf(float __x, float __y);
# 1363 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/math.h" 3 4
double copysign(double __x, double __y);







float erff(float __x);
# 1385 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/math.h" 3 4
double erf(double __x);







float erfcf(float __x);
# 1407 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/math.h" 3 4
double erfc(double __x);







float exp2f(float __x);
# 1429 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/math.h" 3 4
double exp2(double __x);







float expm1f(float __x);
# 1451 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/math.h" 3 4
double expm1(double __x);







float fdimf(float __x, float __y);
# 1473 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/math.h" 3 4
double fdim(double __x, double __y);







int ilogbf(float __x);
# 1496 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/math.h" 3 4
int ilogb(double __x);







float lgammaf(float __x);
# 1518 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/math.h" 3 4
double lgamma(double __x);







long long int llrintf(float __x);
# 1540 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/math.h" 3 4
long long int llrint(double __x);







long long int llroundf(float __x);
# 1562 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/math.h" 3 4
long long int llround(double __x);







float log1pf(float __x);
# 1584 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/math.h" 3 4
double log1p(double __x);







float log2f(float __x);
# 1606 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/math.h" 3 4
double log2(double __x);







float logbf(float __x);
# 1628 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/math.h" 3 4
double logb(double __x);






long int lrintf(float __x);
# 1649 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/math.h" 3 4
long int lrint(double __x);







long int lroundf(float __x);
# 1671 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/math.h" 3 4
long int lround(double __x);







float nearbyintf(float);
# 1693 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/math.h" 3 4
double nearbyint(double);







float nextafterf(float __x, float __y);
# 1715 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/math.h" 3 4
double nextafter(double __x, double __y);







float remainderf(float numer, float denom);
# 1737 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/math.h" 3 4
double remainder(double numer, double denom);







float remquof(float numer, float denom, int *quot);
# 1759 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/math.h" 3 4
double remquo(double numer, double denom, int *quot);







float rintf(float __x);
# 1781 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/math.h" 3 4
double rint(double __x);







float roundf(float __x);
# 1803 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/math.h" 3 4
double round(double __x);







float scalblnf(float __x, long int __exp);
# 1825 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/math.h" 3 4
double scalbln(double __x, long int __exp);







float tgammaf(float __x);
# 1847 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/math.h" 3 4
double tgamma(double __x);







float truncf(float __x);
# 1869 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/math.h" 3 4
double trunc(double __x);
# 44 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\main.c" 2

# 1 "../../../drivers/MPU6050.h" 1
# 13 "../../../drivers/MPU6050.h"

# 13 "../../../drivers/MPU6050.h"
typedef struct {
 float x;
 float y;
 float z;
} IMU_reading_t;

uint8_t MPU_read_8bit(uint8_t reg);
void MPU_read_burst(uint8_t reg, uint8_t* storage, uint8_t len8bit);
void MPU_write(uint8_t reg, uint8_t value);
void MPU_write_bit(uint8_t reg, uint8_t bit, uint8_t data);
void MPU_write_bits(uint8_t reg, uint8_t bitStart, uint8_t length, uint8_t data);
void IMU_init(void);
void IMU_read(void);
int IMU_newData(void);
int IMU_getTemp(void);
float fIMU_readFloatAccelX(void);
float fIMU_readFloatAccelY(void);
float fIMU_readFloatAccelZ(void);
float fIMU_readFloatGyroX(void);
float fIMU_readFloatGyroY(void);
float fIMU_readFloatGyroZ(void);
IMU_reading_t IMU_getGyro(void);
IMU_reading_t IMU_getAccel(void);
# 46 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\main.c" 2
# 1 "../../../communication/arq.h" 1





typedef uint8_t arq_connection;

void arq_init(void);

arq_connection arq_new_connection(void);
uint8_t arq_connect(arq_connection id, uint8_t remote_addr, void (*func)(uint8_t*, uint16_t), uint16_t timeout);
arq_connection arq_listen(void (*func)(uint8_t*, uint16_t));
uint8_t arq_close_connection(arq_connection id);
uint8_t arq_send(arq_connection id, uint8_t *data, uint16_t len);
uint8_t arq_send_string(arq_connection id, char *str);
void vARQTask(void *pvParamters);
# 47 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\main.c" 2
# 1 "../../../communication/bluetooth.h" 1
void BLE_init();
void ble_send(uint8_t* data, uint16_t len);
void advertising_start(void);
# 48 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\main.c" 2
# 1 "../../../drivers/defines.h" 1
# 49 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\main.c" 2
# 1 "../../../drivers/display.h" 1
# 11 "../../../drivers/display.h"
# 1 "../../../../../../components/libraries/gfx/nrf_lcd.h" 1
# 58 "../../../../../../components/libraries/gfx/nrf_lcd.h"
typedef enum{
    NRF_LCD_ROTATE_0 = 0,
    NRF_LCD_ROTATE_90,
    NRF_LCD_ROTATE_180,
    NRF_LCD_ROTATE_270
}nrf_lcd_rotation_t;




typedef struct
{
    nrfx_drv_state_t state;
    uint16_t height;
    uint16_t width;
    nrf_lcd_rotation_t rotation;
}lcd_cb_t;






typedef struct
{



    ret_code_t (* lcd_init)(void);




    void (* lcd_uninit)(void);
# 100 "../../../../../../components/libraries/gfx/nrf_lcd.h"
    void (* lcd_pixel_draw)(uint16_t x, uint16_t y, uint32_t color);
# 111 "../../../../../../components/libraries/gfx/nrf_lcd.h"
    void (* lcd_rect_draw)(uint16_t x, uint16_t y, uint16_t width, uint16_t height, uint32_t color);
# 120 "../../../../../../components/libraries/gfx/nrf_lcd.h"
    void (* lcd_display)(void);






    void (* lcd_rotation_set)(nrf_lcd_rotation_t rotation);






    void (* lcd_display_invert)(
# 134 "../../../../../../components/libraries/gfx/nrf_lcd.h" 3 4
                               _Bool 
# 134 "../../../../../../components/libraries/gfx/nrf_lcd.h"
                                    invert);




    lcd_cb_t * p_lcd_cb;
}nrf_lcd_t;
# 12 "../../../drivers/display.h" 2
# 1 "../../../../../../components/libraries/gfx/nrf_gfx.h" 1
# 47 "../../../../../../components/libraries/gfx/nrf_gfx.h"
# 1 "../../../../../../components/libraries/gfx/nrf_lcd.h" 1
# 48 "../../../../../../components/libraries/gfx/nrf_gfx.h" 2
# 1 "../../../../../../external/thedotfactory_fonts/nrf_font.h" 1
# 39 "../../../../../../external/thedotfactory_fonts/nrf_font.h"
typedef struct
{
    uint8_t widthBits;
    uint16_t offset;
}FONT_CHAR_INFO;




typedef struct
{
    uint8_t height;
    uint8_t startChar;
    uint8_t endChar;
    uint8_t spacePixels;
    const FONT_CHAR_INFO * charInfo;
    const uint8_t * data;
}FONT_INFO;
# 49 "../../../../../../components/libraries/gfx/nrf_gfx.h" 2
# 69 "../../../../../../components/libraries/gfx/nrf_gfx.h"
typedef struct
{
    uint16_t x;
    uint16_t y;
}nrf_gfx_point_t;




typedef struct
{
    uint16_t x_start;
    uint16_t y_start;
    uint16_t x_end;
    uint16_t y_end;
    uint16_t thickness;
}nrf_gfx_line_t;




typedef struct
{
    uint16_t x;
    uint16_t y;
    uint16_t r;
}nrf_gfx_circle_t;




typedef struct
{
    uint16_t x;
    uint16_t y;
    uint16_t width;
    uint16_t height;
}nrf_gfx_rect_t;
# 146 "../../../../../../components/libraries/gfx/nrf_gfx.h"
typedef FONT_INFO nrf_gfx_font_desc_t;
# 155 "../../../../../../components/libraries/gfx/nrf_gfx.h"
ret_code_t nrf_gfx_init(nrf_lcd_t const * p_instance);
# 164 "../../../../../../components/libraries/gfx/nrf_gfx.h"
void nrf_gfx_uninit(nrf_lcd_t const * p_instance);
# 173 "../../../../../../components/libraries/gfx/nrf_gfx.h"
void nrf_gfx_point_draw(nrf_lcd_t const * p_instance, nrf_gfx_point_t const * p_point, uint32_t color);
# 185 "../../../../../../components/libraries/gfx/nrf_gfx.h"
ret_code_t nrf_gfx_line_draw(nrf_lcd_t const * p_instance, nrf_gfx_line_t const * p_line, uint32_t color);
# 201 "../../../../../../components/libraries/gfx/nrf_gfx.h"
ret_code_t nrf_gfx_circle_draw(nrf_lcd_t const * p_instance,
                               nrf_gfx_circle_t const * p_circle,
                               uint32_t color,
                               
# 204 "../../../../../../components/libraries/gfx/nrf_gfx.h" 3 4
                              _Bool 
# 204 "../../../../../../components/libraries/gfx/nrf_gfx.h"
                                   fill);
# 218 "../../../../../../components/libraries/gfx/nrf_gfx.h"
ret_code_t nrf_gfx_rect_draw(nrf_lcd_t const * p_instance,
                             nrf_gfx_rect_t const * p_rect,
                             uint16_t thickness,
                             uint32_t color,
                             
# 222 "../../../../../../components/libraries/gfx/nrf_gfx.h" 3 4
                            _Bool 
# 222 "../../../../../../components/libraries/gfx/nrf_gfx.h"
                                 fill);







void nrf_gfx_screen_fill(nrf_lcd_t const * p_instance, uint32_t color);
# 244 "../../../../../../components/libraries/gfx/nrf_gfx.h"
ret_code_t nrf_gfx_bmp565_draw(nrf_lcd_t const * p_instance,
                               nrf_gfx_rect_t const * p_rect,
                               uint16_t const * img_buf);
# 259 "../../../../../../components/libraries/gfx/nrf_gfx.h"
void nrf_gfx_background_set(nrf_lcd_t const * p_instance, uint16_t const * img_buf);






void nrf_gfx_display(nrf_lcd_t const * p_instance);







void nrf_gfx_rotation_set(nrf_lcd_t const * p_instance, nrf_lcd_rotation_t rotation);







void nrf_gfx_invert(nrf_lcd_t const * p_instance, 
# 282 "../../../../../../components/libraries/gfx/nrf_gfx.h" 3 4
                                                 _Bool 
# 282 "../../../../../../components/libraries/gfx/nrf_gfx.h"
                                                      invert);
# 294 "../../../../../../components/libraries/gfx/nrf_gfx.h"
ret_code_t nrf_gfx_print(nrf_lcd_t const * p_instance,
                         nrf_gfx_point_t const * p_point,
                         uint16_t font_color,
                         const char * p_string,
                         const nrf_gfx_font_desc_t * p_font,
                         
# 299 "../../../../../../components/libraries/gfx/nrf_gfx.h" 3 4
                        _Bool 
# 299 "../../../../../../components/libraries/gfx/nrf_gfx.h"
                             wrap);







uint16_t nrf_gfx_height_get(nrf_lcd_t const * p_instance);







uint16_t nrf_gfx_width_get(nrf_lcd_t const * p_instance);
# 13 "../../../drivers/display.h" 2
# 1 "../../../drivers/oled.h" 1
# 17 "../../../drivers/oled.h"
ret_code_t oled_init(void);






void oled_uninit(void);
# 35 "../../../drivers/oled.h"
void oled_draw_pixel(uint16_t x, uint16_t y, uint32_t color);
# 48 "../../../drivers/oled.h"
void oled_draw_rectangle(uint16_t x, uint16_t y, uint16_t width, uint16_t height, uint32_t color);






void oled_display(void);






void oled_clear(void);
# 72 "../../../drivers/oled.h"
void oled_dummy_rotation_set(nrf_lcd_rotation_t rotation);
# 81 "../../../drivers/oled.h"
void oled_invert(
# 81 "../../../drivers/oled.h" 3 4
                _Bool 
# 81 "../../../drivers/oled.h"
                     invert);
# 14 "../../../drivers/display.h" 2

# 1 "../../../../../../external/freertos/source/include/queue.h" 1
# 16 "../../../drivers/display.h" 2



extern const nrf_gfx_font_desc_t orkney_8ptFontInfo;
extern QueueHandle_t queue_display;

typedef enum {
 DISPLAY_TEXT,
 DISPLAY_POINT,
 DISPLAY_LINE,
 DISPLAY_CIRCLE,
 DISPLAY_RECTANGLE,
 DISPLAY_LOG,
 DISPLAY_CLEAR
} DisplayOperationType;

typedef struct {
 nrf_gfx_point_t text_position;
 const char* p_string;
 
# 35 "../../../drivers/display.h" 3 4
_Bool 
# 35 "../../../drivers/display.h"
     wrap;
} display_element_text_t;

typedef struct {
 nrf_gfx_point_t point;
} display_element_point_t;

typedef struct {
 nrf_gfx_line_t line;
} display_element_line_t;

typedef struct {
 nrf_gfx_circle_t circle;
 
# 48 "../../../drivers/display.h" 3 4
_Bool 
# 48 "../../../drivers/display.h"
     fill;
} display_element_circle_t;

typedef struct {
 nrf_gfx_rect_t rectangle;
 uint16_t thickness;
 
# 54 "../../../drivers/display.h" 3 4
_Bool 
# 54 "../../../drivers/display.h"
     fill;
        int color;
} display_element_rectangle_t;

static lcd_cb_t m_lcd_cb =
{
    .state = NRFX_DRV_STATE_UNINITIALIZED,
    .height = 64 - 1,
    .width = 128 - 1,
    .rotation = NRF_LCD_ROTATE_0
};

extern const nrf_lcd_t m_nrf_lcd;

typedef struct {
 DisplayOperationType operation;
 union DisplayElement {
  display_element_text_t text;
  display_element_point_t point;
  display_element_line_t line;
  display_element_circle_t circle;
  display_element_rectangle_t rectangle;
  char log_string[10];
 } element;
} display_operation_t;







void display_init(void);
# 95 "../../../drivers/display.h"
void display_text(int x, int y, const char* p_string);






void display_text_on_line(int line, char* p_string);







void display_point(int x, int y);
# 121 "../../../drivers/display.h"
void display_line(int x_start, int y_start, int x_end, int y_end, int thickness);
# 132 "../../../drivers/display.h"
void display_circle(int x, int y, int r, 
# 132 "../../../drivers/display.h" 3 4
                                        _Bool 
# 132 "../../../drivers/display.h"
                                             fill);
# 145 "../../../drivers/display.h"
void display_rectangle(int x, int y, int width, int height, int thickness, 
# 145 "../../../drivers/display.h" 3 4
                                                                          _Bool 
# 145 "../../../drivers/display.h"
                                                                               fill, int color);
# 155 "../../../drivers/display.h"
void display_log(const char* p_string);




void display_clear(void);

void display_task(void *arg);
# 50 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\main.c" 2

# 1 "../../../drivers/encoder.h" 1
# 13 "../../../drivers/encoder.h"
# 1 "../../../../../../modules/nrfx/drivers/include/nrfx_gpiote.h" 1
# 45 "../../../../../../modules/nrfx/drivers/include/nrfx_gpiote.h"
# 1 "../../../../../../modules/nrfx/hal/nrf_gpiote.h" 1
# 67 "../../../../../../modules/nrfx/hal/nrf_gpiote.h"
typedef enum
{
  NRF_GPIOTE_POLARITY_LOTOHI = (1UL),
  NRF_GPIOTE_POLARITY_HITOLO = (2UL),
  NRF_GPIOTE_POLARITY_TOGGLE = (3UL)
} nrf_gpiote_polarity_t;






typedef enum
{
  NRF_GPIOTE_INITIAL_VALUE_LOW = (0UL),
  NRF_GPIOTE_INITIAL_VALUE_HIGH = (1UL)
} nrf_gpiote_outinit_t;




typedef enum
{
    NRF_GPIOTE_TASKS_OUT_0 = __builtin_offsetof (NRF_GPIOTE_Type, TASKS_OUT[0]),
    NRF_GPIOTE_TASKS_OUT_1 = __builtin_offsetof (NRF_GPIOTE_Type, TASKS_OUT[1]),
    NRF_GPIOTE_TASKS_OUT_2 = __builtin_offsetof (NRF_GPIOTE_Type, TASKS_OUT[2]),
    NRF_GPIOTE_TASKS_OUT_3 = __builtin_offsetof (NRF_GPIOTE_Type, TASKS_OUT[3]),

    NRF_GPIOTE_TASKS_OUT_4 = __builtin_offsetof (NRF_GPIOTE_Type, TASKS_OUT[4]),
    NRF_GPIOTE_TASKS_OUT_5 = __builtin_offsetof (NRF_GPIOTE_Type, TASKS_OUT[5]),
    NRF_GPIOTE_TASKS_OUT_6 = __builtin_offsetof (NRF_GPIOTE_Type, TASKS_OUT[6]),
    NRF_GPIOTE_TASKS_OUT_7 = __builtin_offsetof (NRF_GPIOTE_Type, TASKS_OUT[7]),


    NRF_GPIOTE_TASKS_SET_0 = __builtin_offsetof (NRF_GPIOTE_Type, TASKS_SET[0]),
    NRF_GPIOTE_TASKS_SET_1 = __builtin_offsetof (NRF_GPIOTE_Type, TASKS_SET[1]),
    NRF_GPIOTE_TASKS_SET_2 = __builtin_offsetof (NRF_GPIOTE_Type, TASKS_SET[2]),
    NRF_GPIOTE_TASKS_SET_3 = __builtin_offsetof (NRF_GPIOTE_Type, TASKS_SET[3]),
    NRF_GPIOTE_TASKS_SET_4 = __builtin_offsetof (NRF_GPIOTE_Type, TASKS_SET[4]),
    NRF_GPIOTE_TASKS_SET_5 = __builtin_offsetof (NRF_GPIOTE_Type, TASKS_SET[5]),
    NRF_GPIOTE_TASKS_SET_6 = __builtin_offsetof (NRF_GPIOTE_Type, TASKS_SET[6]),
    NRF_GPIOTE_TASKS_SET_7 = __builtin_offsetof (NRF_GPIOTE_Type, TASKS_SET[7]),


    NRF_GPIOTE_TASKS_CLR_0 = __builtin_offsetof (NRF_GPIOTE_Type, TASKS_CLR[0]),
    NRF_GPIOTE_TASKS_CLR_1 = __builtin_offsetof (NRF_GPIOTE_Type, TASKS_CLR[1]),
    NRF_GPIOTE_TASKS_CLR_2 = __builtin_offsetof (NRF_GPIOTE_Type, TASKS_CLR[2]),
    NRF_GPIOTE_TASKS_CLR_3 = __builtin_offsetof (NRF_GPIOTE_Type, TASKS_CLR[3]),
    NRF_GPIOTE_TASKS_CLR_4 = __builtin_offsetof (NRF_GPIOTE_Type, TASKS_CLR[4]),
    NRF_GPIOTE_TASKS_CLR_5 = __builtin_offsetof (NRF_GPIOTE_Type, TASKS_CLR[5]),
    NRF_GPIOTE_TASKS_CLR_6 = __builtin_offsetof (NRF_GPIOTE_Type, TASKS_CLR[6]),
    NRF_GPIOTE_TASKS_CLR_7 = __builtin_offsetof (NRF_GPIOTE_Type, TASKS_CLR[7]),


} nrf_gpiote_tasks_t;




typedef enum
{
    NRF_GPIOTE_EVENTS_IN_0 = __builtin_offsetof (NRF_GPIOTE_Type, EVENTS_IN[0]),
    NRF_GPIOTE_EVENTS_IN_1 = __builtin_offsetof (NRF_GPIOTE_Type, EVENTS_IN[1]),
    NRF_GPIOTE_EVENTS_IN_2 = __builtin_offsetof (NRF_GPIOTE_Type, EVENTS_IN[2]),
    NRF_GPIOTE_EVENTS_IN_3 = __builtin_offsetof (NRF_GPIOTE_Type, EVENTS_IN[3]),

    NRF_GPIOTE_EVENTS_IN_4 = __builtin_offsetof (NRF_GPIOTE_Type, EVENTS_IN[4]),
    NRF_GPIOTE_EVENTS_IN_5 = __builtin_offsetof (NRF_GPIOTE_Type, EVENTS_IN[5]),
    NRF_GPIOTE_EVENTS_IN_6 = __builtin_offsetof (NRF_GPIOTE_Type, EVENTS_IN[6]),
    NRF_GPIOTE_EVENTS_IN_7 = __builtin_offsetof (NRF_GPIOTE_Type, EVENTS_IN[7]),

    NRF_GPIOTE_EVENTS_PORT = __builtin_offsetof (NRF_GPIOTE_Type, EVENTS_PORT),

} nrf_gpiote_events_t;





typedef enum
{
    NRF_GPIOTE_INT_IN0_MASK = (0x1UL << (0UL)),
    NRF_GPIOTE_INT_IN1_MASK = (0x1UL << (1UL)),
    NRF_GPIOTE_INT_IN2_MASK = (0x1UL << (2UL)),
    NRF_GPIOTE_INT_IN3_MASK = (0x1UL << (3UL)),

    NRF_GPIOTE_INT_IN4_MASK = (0x1UL << (4UL)),
    NRF_GPIOTE_INT_IN5_MASK = (0x1UL << (5UL)),
    NRF_GPIOTE_INT_IN6_MASK = (0x1UL << (6UL)),
    NRF_GPIOTE_INT_IN7_MASK = (0x1UL << (7UL)),

    NRF_GPIOTE_INT_PORT_MASK = (int)(0x1UL << (31UL)),
} nrf_gpiote_int_t;
# 176 "../../../../../../modules/nrfx/hal/nrf_gpiote.h"
static inline void nrf_gpiote_task_set(nrf_gpiote_tasks_t task);
# 185 "../../../../../../modules/nrfx/hal/nrf_gpiote.h"
static inline uint32_t nrf_gpiote_task_addr_get(nrf_gpiote_tasks_t task);






static inline 
# 192 "../../../../../../modules/nrfx/hal/nrf_gpiote.h" 3 4
               _Bool 
# 192 "../../../../../../modules/nrfx/hal/nrf_gpiote.h"
                    nrf_gpiote_event_is_set(nrf_gpiote_events_t event);






static inline void nrf_gpiote_event_clear(nrf_gpiote_events_t event);
# 208 "../../../../../../modules/nrfx/hal/nrf_gpiote.h"
static inline uint32_t nrf_gpiote_event_addr_get(nrf_gpiote_events_t event);





static inline void nrf_gpiote_int_enable(uint32_t mask);





static inline void nrf_gpiote_int_disable(uint32_t mask);







static inline uint32_t nrf_gpiote_int_is_enabled(uint32_t mask);





static inline void nrf_gpiote_event_enable(uint32_t idx);





static inline void nrf_gpiote_event_disable(uint32_t idx);







static inline void nrf_gpiote_event_configure(uint32_t idx, uint32_t pin,
                                                nrf_gpiote_polarity_t polarity);







static inline uint32_t nrf_gpiote_event_pin_get(uint32_t idx);







static inline nrf_gpiote_polarity_t nrf_gpiote_event_polarity_get(uint32_t idx);





static inline void nrf_gpiote_task_enable(uint32_t idx);





static inline void nrf_gpiote_task_disable(uint32_t idx);
# 287 "../../../../../../modules/nrfx/hal/nrf_gpiote.h"
static inline void nrf_gpiote_task_configure(uint32_t idx, uint32_t pin,
                                               nrf_gpiote_polarity_t polarity,
                                               nrf_gpiote_outinit_t init_val);






static inline void nrf_gpiote_task_force(uint32_t idx, nrf_gpiote_outinit_t init_val);





static inline void nrf_gpiote_te_default(uint32_t idx);


static inline void nrf_gpiote_task_set(nrf_gpiote_tasks_t task)
{
    *(volatile uint32_t *)((uint32_t)((NRF_GPIOTE_Type *) 0x40006000UL) + task) = 0x1UL;
}

static inline uint32_t nrf_gpiote_task_addr_get(nrf_gpiote_tasks_t task)
{
    return ((uint32_t)((NRF_GPIOTE_Type *) 0x40006000UL) + task);
}

static inline 
# 315 "../../../../../../modules/nrfx/hal/nrf_gpiote.h" 3 4
               _Bool 
# 315 "../../../../../../modules/nrfx/hal/nrf_gpiote.h"
                    nrf_gpiote_event_is_set(nrf_gpiote_events_t event)
{
    return (*(uint32_t *)nrf_gpiote_event_addr_get(event) == 0x1UL) ? 
# 317 "../../../../../../modules/nrfx/hal/nrf_gpiote.h" 3 4
                                                                     1 
# 317 "../../../../../../modules/nrfx/hal/nrf_gpiote.h"
                                                                          : 
# 317 "../../../../../../modules/nrfx/hal/nrf_gpiote.h" 3 4
                                                                            0
# 317 "../../../../../../modules/nrfx/hal/nrf_gpiote.h"
                                                                                 ;
}

static inline void nrf_gpiote_event_clear(nrf_gpiote_events_t event)
{
    *(uint32_t *)nrf_gpiote_event_addr_get(event) = 0;

    volatile uint32_t dummy = *((volatile uint32_t *)nrf_gpiote_event_addr_get(event));
    (void)dummy;

}

static inline uint32_t nrf_gpiote_event_addr_get(nrf_gpiote_events_t event)
{
    return ((uint32_t)((NRF_GPIOTE_Type *) 0x40006000UL) + event);
}

static inline void nrf_gpiote_int_enable(uint32_t mask)
{
    ((NRF_GPIOTE_Type *) 0x40006000UL)->INTENSET = mask;
}

static inline void nrf_gpiote_int_disable(uint32_t mask)
{
    ((NRF_GPIOTE_Type *) 0x40006000UL)->INTENCLR = mask;
}

static inline uint32_t nrf_gpiote_int_is_enabled(uint32_t mask)
{
    return (((NRF_GPIOTE_Type *) 0x40006000UL)->INTENSET & mask);
}

static inline void nrf_gpiote_event_enable(uint32_t idx)
{
   ((NRF_GPIOTE_Type *) 0x40006000UL)->CONFIG[idx] |= (1UL);
}

static inline void nrf_gpiote_event_disable(uint32_t idx)
{
   ((NRF_GPIOTE_Type *) 0x40006000UL)->CONFIG[idx] &= ~(1UL);
}

static inline void nrf_gpiote_event_configure(uint32_t idx, uint32_t pin, nrf_gpiote_polarity_t polarity)
{
  ((NRF_GPIOTE_Type *) 0x40006000UL)->CONFIG[idx] &= ~((0x1FUL << (8UL)) | (0x3UL << (16UL)));
  ((NRF_GPIOTE_Type *) 0x40006000UL)->CONFIG[idx] |= ((pin << (8UL)) & (0x1FUL << (8UL))) |
                              ((polarity << (16UL)) & (0x3UL << (16UL)));
}

static inline uint32_t nrf_gpiote_event_pin_get(uint32_t idx)
{
    return ((((NRF_GPIOTE_Type *) 0x40006000UL)->CONFIG[idx] & (0x1FUL << (8UL))) >> (8UL));
}

static inline nrf_gpiote_polarity_t nrf_gpiote_event_polarity_get(uint32_t idx)
{
    return (nrf_gpiote_polarity_t)((((NRF_GPIOTE_Type *) 0x40006000UL)->CONFIG[idx] & (0x3UL << (16UL))) >> (16UL));
}

static inline void nrf_gpiote_task_enable(uint32_t idx)
{
    uint32_t final_config = ((NRF_GPIOTE_Type *) 0x40006000UL)->CONFIG[idx] | (3UL);
# 389 "../../../../../../modules/nrfx/hal/nrf_gpiote.h"
    ((NRF_GPIOTE_Type *) 0x40006000UL)->CONFIG[idx] = final_config;
}

static inline void nrf_gpiote_task_disable(uint32_t idx)
{
    ((NRF_GPIOTE_Type *) 0x40006000UL)->CONFIG[idx] &= ~(3UL);
}

static inline void nrf_gpiote_task_configure(uint32_t idx, uint32_t pin,
                                                nrf_gpiote_polarity_t polarity,
                                                nrf_gpiote_outinit_t init_val)
{
  ((NRF_GPIOTE_Type *) 0x40006000UL)->CONFIG[idx] &= ~((0x1FUL << (8UL)) |
                               (0x3UL << (16UL)) |
                               (0x1UL << (20UL)));

  ((NRF_GPIOTE_Type *) 0x40006000UL)->CONFIG[idx] |= ((pin << (8UL)) & (0x1FUL << (8UL))) |
                             ((polarity << (16UL)) & (0x3UL << (16UL))) |
                             ((init_val << (20UL)) & (0x1UL << (20UL)));
}

static inline void nrf_gpiote_task_force(uint32_t idx, nrf_gpiote_outinit_t init_val)
{
    ((NRF_GPIOTE_Type *) 0x40006000UL)->CONFIG[idx] = (((NRF_GPIOTE_Type *) 0x40006000UL)->CONFIG[idx] & ~(0x1UL << (20UL)))
                              | ((init_val << (20UL)) & (0x1UL << (20UL)));
}

static inline void nrf_gpiote_te_default(uint32_t idx)
{
    ((NRF_GPIOTE_Type *) 0x40006000UL)->CONFIG[idx] = 0;
}
# 46 "../../../../../../modules/nrfx/drivers/include/nrfx_gpiote.h" 2
# 1 "../../../../../../modules/nrfx/hal/nrf_gpio.h" 1
# 76 "../../../../../../modules/nrfx/hal/nrf_gpio.h"
typedef enum
{
    NRF_GPIO_PIN_DIR_INPUT = (0UL),
    NRF_GPIO_PIN_DIR_OUTPUT = (1UL)
} nrf_gpio_pin_dir_t;




typedef enum
{
    NRF_GPIO_PIN_INPUT_CONNECT = (0UL),
    NRF_GPIO_PIN_INPUT_DISCONNECT = (1UL)
} nrf_gpio_pin_input_t;




typedef enum
{
    NRF_GPIO_PIN_NOPULL = (0UL),
    NRF_GPIO_PIN_PULLDOWN = (1UL),
    NRF_GPIO_PIN_PULLUP = (3UL),
} nrf_gpio_pin_pull_t;




typedef enum
{
    NRF_GPIO_PIN_S0S1 = (0UL),
    NRF_GPIO_PIN_H0S1 = (1UL),
    NRF_GPIO_PIN_S0H1 = (2UL),
    NRF_GPIO_PIN_H0H1 = (3UL),
    NRF_GPIO_PIN_D0S1 = (4UL),
    NRF_GPIO_PIN_D0H1 = (5UL),
    NRF_GPIO_PIN_S0D1 = (6UL),
    NRF_GPIO_PIN_H0D1 = (7UL),
} nrf_gpio_pin_drive_t;




typedef enum
{
    NRF_GPIO_PIN_NOSENSE = (0UL),
    NRF_GPIO_PIN_SENSE_LOW = (3UL),
    NRF_GPIO_PIN_SENSE_HIGH = (2UL),
} nrf_gpio_pin_sense_t;
# 137 "../../../../../../modules/nrfx/hal/nrf_gpio.h"
static inline void nrf_gpio_range_cfg_output(uint32_t pin_range_start, uint32_t pin_range_end);
# 152 "../../../../../../modules/nrfx/hal/nrf_gpio.h"
static inline void nrf_gpio_range_cfg_input(uint32_t pin_range_start,
                                              uint32_t pin_range_end,
                                              nrf_gpio_pin_pull_t pull_config);
# 168 "../../../../../../modules/nrfx/hal/nrf_gpio.h"
static inline void nrf_gpio_cfg(
    uint32_t pin_number,
    nrf_gpio_pin_dir_t dir,
    nrf_gpio_pin_input_t input,
    nrf_gpio_pin_pull_t pull,
    nrf_gpio_pin_drive_t drive,
    nrf_gpio_pin_sense_t sense);
# 184 "../../../../../../modules/nrfx/hal/nrf_gpio.h"
static inline void nrf_gpio_cfg_output(uint32_t pin_number);
# 195 "../../../../../../modules/nrfx/hal/nrf_gpio.h"
static inline void nrf_gpio_cfg_input(uint32_t pin_number, nrf_gpio_pin_pull_t pull_config);






static inline void nrf_gpio_cfg_default(uint32_t pin_number);







static inline void nrf_gpio_cfg_watcher(uint32_t pin_number);







static inline void nrf_gpio_input_disconnect(uint32_t pin_number);
# 229 "../../../../../../modules/nrfx/hal/nrf_gpio.h"
static inline void nrf_gpio_cfg_sense_input(uint32_t pin_number,
                                              nrf_gpio_pin_pull_t pull_config,
                                              nrf_gpio_pin_sense_t sense_config);
# 240 "../../../../../../modules/nrfx/hal/nrf_gpio.h"
static inline void nrf_gpio_cfg_sense_set(uint32_t pin_number, nrf_gpio_pin_sense_t sense_config);
# 249 "../../../../../../modules/nrfx/hal/nrf_gpio.h"
static inline void nrf_gpio_pin_dir_set(uint32_t pin_number, nrf_gpio_pin_dir_t direction);
# 258 "../../../../../../modules/nrfx/hal/nrf_gpio.h"
static inline void nrf_gpio_pin_set(uint32_t pin_number);
# 268 "../../../../../../modules/nrfx/hal/nrf_gpio.h"
static inline void nrf_gpio_pin_clear(uint32_t pin_number);
# 278 "../../../../../../modules/nrfx/hal/nrf_gpio.h"
static inline void nrf_gpio_pin_toggle(uint32_t pin_number);
# 292 "../../../../../../modules/nrfx/hal/nrf_gpio.h"
static inline void nrf_gpio_pin_write(uint32_t pin_number, uint32_t value);
# 304 "../../../../../../modules/nrfx/hal/nrf_gpio.h"
static inline uint32_t nrf_gpio_pin_read(uint32_t pin_number);
# 313 "../../../../../../modules/nrfx/hal/nrf_gpio.h"
static inline uint32_t nrf_gpio_pin_out_read(uint32_t pin_number);
# 322 "../../../../../../modules/nrfx/hal/nrf_gpio.h"
static inline nrf_gpio_pin_sense_t nrf_gpio_pin_sense_get(uint32_t pin_number);
# 331 "../../../../../../modules/nrfx/hal/nrf_gpio.h"
static inline void nrf_gpio_port_dir_output_set(NRF_GPIO_Type * p_reg, uint32_t out_mask);
# 340 "../../../../../../modules/nrfx/hal/nrf_gpio.h"
static inline void nrf_gpio_port_dir_input_set(NRF_GPIO_Type * p_reg, uint32_t in_mask);
# 349 "../../../../../../modules/nrfx/hal/nrf_gpio.h"
static inline void nrf_gpio_port_dir_write(NRF_GPIO_Type * p_reg, uint32_t dir_mask);
# 358 "../../../../../../modules/nrfx/hal/nrf_gpio.h"
static inline uint32_t nrf_gpio_port_dir_read(NRF_GPIO_Type const * p_reg);
# 367 "../../../../../../modules/nrfx/hal/nrf_gpio.h"
static inline uint32_t nrf_gpio_port_in_read(NRF_GPIO_Type const * p_reg);
# 376 "../../../../../../modules/nrfx/hal/nrf_gpio.h"
static inline uint32_t nrf_gpio_port_out_read(NRF_GPIO_Type const * p_reg);
# 385 "../../../../../../modules/nrfx/hal/nrf_gpio.h"
static inline void nrf_gpio_port_out_write(NRF_GPIO_Type * p_reg, uint32_t value);
# 394 "../../../../../../modules/nrfx/hal/nrf_gpio.h"
static inline void nrf_gpio_port_out_set(NRF_GPIO_Type * p_reg, uint32_t set_mask);
# 403 "../../../../../../modules/nrfx/hal/nrf_gpio.h"
static inline void nrf_gpio_port_out_clear(NRF_GPIO_Type * p_reg, uint32_t clr_mask);
# 412 "../../../../../../modules/nrfx/hal/nrf_gpio.h"
static inline void nrf_gpio_ports_read(uint32_t start_port, uint32_t length, uint32_t * p_masks);
# 422 "../../../../../../modules/nrfx/hal/nrf_gpio.h"
static inline void nrf_gpio_latches_read(uint32_t start_port, uint32_t length,
                                           uint32_t * p_masks);
# 432 "../../../../../../modules/nrfx/hal/nrf_gpio.h"
static inline uint32_t nrf_gpio_pin_latch_get(uint32_t pin_number);







static inline void nrf_gpio_pin_latch_clear(uint32_t pin_number);
# 453 "../../../../../../modules/nrfx/hal/nrf_gpio.h"
static inline NRF_GPIO_Type * nrf_gpio_pin_port_decode(uint32_t * p_pin)
{
    if (1) { if (*p_pin < (32)) { } else { assert_nrf_callback((uint16_t)455, (uint8_t *)"../../../../../../modules/nrfx/hal/nrf_gpio.h"); } };


    return ((NRF_GPIO_Type *) 0x50000000UL);
# 470 "../../../../../../modules/nrfx/hal/nrf_gpio.h"
}


static inline void nrf_gpio_range_cfg_output(uint32_t pin_range_start, uint32_t pin_range_end)
{

    for (; pin_range_start <= pin_range_end; pin_range_start++)
    {
        nrf_gpio_cfg_output(pin_range_start);
    }
}


static inline void nrf_gpio_range_cfg_input(uint32_t pin_range_start,
                                              uint32_t pin_range_end,
                                              nrf_gpio_pin_pull_t pull_config)
{

    for (; pin_range_start <= pin_range_end; pin_range_start++)
    {
        nrf_gpio_cfg_input(pin_range_start, pull_config);
    }
}


static inline void nrf_gpio_cfg(
    uint32_t pin_number,
    nrf_gpio_pin_dir_t dir,
    nrf_gpio_pin_input_t input,
    nrf_gpio_pin_pull_t pull,
    nrf_gpio_pin_drive_t drive,
    nrf_gpio_pin_sense_t sense)
{
    NRF_GPIO_Type * reg = nrf_gpio_pin_port_decode(&pin_number);

    reg->PIN_CNF[pin_number] = ((uint32_t)dir << (0UL))
                               | ((uint32_t)input << (1UL))
                               | ((uint32_t)pull << (2UL))
                               | ((uint32_t)drive << (8UL))
                               | ((uint32_t)sense << (16UL));
}


static inline void nrf_gpio_cfg_output(uint32_t pin_number)
{
    nrf_gpio_cfg(
        pin_number,
        NRF_GPIO_PIN_DIR_OUTPUT,
        NRF_GPIO_PIN_INPUT_DISCONNECT,
        NRF_GPIO_PIN_NOPULL,
        NRF_GPIO_PIN_S0S1,
        NRF_GPIO_PIN_NOSENSE);
}


static inline void nrf_gpio_cfg_input(uint32_t pin_number, nrf_gpio_pin_pull_t pull_config)
{
    nrf_gpio_cfg(
        pin_number,
        NRF_GPIO_PIN_DIR_INPUT,
        NRF_GPIO_PIN_INPUT_CONNECT,
        pull_config,
        NRF_GPIO_PIN_S0S1,
        NRF_GPIO_PIN_NOSENSE);
}


static inline void nrf_gpio_cfg_default(uint32_t pin_number)
{
    nrf_gpio_cfg(
        pin_number,
        NRF_GPIO_PIN_DIR_INPUT,
        NRF_GPIO_PIN_INPUT_DISCONNECT,
        NRF_GPIO_PIN_NOPULL,
        NRF_GPIO_PIN_S0S1,
        NRF_GPIO_PIN_NOSENSE);
}


static inline void nrf_gpio_cfg_watcher(uint32_t pin_number)
{
    NRF_GPIO_Type * reg = nrf_gpio_pin_port_decode(&pin_number);

    uint32_t cnf = reg->PIN_CNF[pin_number] & ~(0x1UL << (1UL));

    reg->PIN_CNF[pin_number] = cnf | ((0UL) << (1UL));
}


static inline void nrf_gpio_input_disconnect(uint32_t pin_number)
{
    NRF_GPIO_Type * reg = nrf_gpio_pin_port_decode(&pin_number);

    uint32_t cnf = reg->PIN_CNF[pin_number] & ~(0x1UL << (1UL));

    reg->PIN_CNF[pin_number] = cnf | ((1UL) << (1UL));
}


static inline void nrf_gpio_cfg_sense_input(uint32_t pin_number,
                                              nrf_gpio_pin_pull_t pull_config,
                                              nrf_gpio_pin_sense_t sense_config)
{
    nrf_gpio_cfg(
        pin_number,
        NRF_GPIO_PIN_DIR_INPUT,
        NRF_GPIO_PIN_INPUT_CONNECT,
        pull_config,
        NRF_GPIO_PIN_S0S1,
        sense_config);
}


static inline void nrf_gpio_cfg_sense_set(uint32_t pin_number, nrf_gpio_pin_sense_t sense_config)
{
    NRF_GPIO_Type * reg = nrf_gpio_pin_port_decode(&pin_number);


    reg->PIN_CNF[pin_number] &= ~(0x3UL << (16UL));
    reg->PIN_CNF[pin_number] |= (sense_config << (16UL));
}


static inline void nrf_gpio_pin_dir_set(uint32_t pin_number, nrf_gpio_pin_dir_t direction)
{
    if (direction == NRF_GPIO_PIN_DIR_INPUT)
    {
        nrf_gpio_cfg(
            pin_number,
            NRF_GPIO_PIN_DIR_INPUT,
            NRF_GPIO_PIN_INPUT_CONNECT,
            NRF_GPIO_PIN_NOPULL,
            NRF_GPIO_PIN_S0S1,
            NRF_GPIO_PIN_NOSENSE);
    }
    else
    {
        NRF_GPIO_Type * reg = nrf_gpio_pin_port_decode(&pin_number);
        reg->DIRSET = (1UL << pin_number);
    }
}


static inline void nrf_gpio_pin_set(uint32_t pin_number)
{
    NRF_GPIO_Type * reg = nrf_gpio_pin_port_decode(&pin_number);

    nrf_gpio_port_out_set(reg, 1UL << pin_number);
}


static inline void nrf_gpio_pin_clear(uint32_t pin_number)
{
    NRF_GPIO_Type * reg = nrf_gpio_pin_port_decode(&pin_number);

    nrf_gpio_port_out_clear(reg, 1UL << pin_number);
}


static inline void nrf_gpio_pin_toggle(uint32_t pin_number)
{
    NRF_GPIO_Type * reg = nrf_gpio_pin_port_decode(&pin_number);
    uint32_t pins_state = reg->OUT;

    reg->OUTSET = (~pins_state & (1UL << pin_number));
    reg->OUTCLR = (pins_state & (1UL << pin_number));
}


static inline void nrf_gpio_pin_write(uint32_t pin_number, uint32_t value)
{
    if (value == 0)
    {
        nrf_gpio_pin_clear(pin_number);
    }
    else
    {
        nrf_gpio_pin_set(pin_number);
    }
}


static inline uint32_t nrf_gpio_pin_read(uint32_t pin_number)
{
    NRF_GPIO_Type * reg = nrf_gpio_pin_port_decode(&pin_number);

    return ((nrf_gpio_port_in_read(reg) >> pin_number) & 1UL);
}


static inline uint32_t nrf_gpio_pin_out_read(uint32_t pin_number)
{
    NRF_GPIO_Type * reg = nrf_gpio_pin_port_decode(&pin_number);

    return ((nrf_gpio_port_out_read(reg) >> pin_number) & 1UL);
}


static inline nrf_gpio_pin_sense_t nrf_gpio_pin_sense_get(uint32_t pin_number)
{
    NRF_GPIO_Type * reg = nrf_gpio_pin_port_decode(&pin_number);

    return (nrf_gpio_pin_sense_t)((reg->PIN_CNF[pin_number] &
                                   (0x3UL << (16UL))) >> (16UL));
}


static inline void nrf_gpio_port_dir_output_set(NRF_GPIO_Type * p_reg, uint32_t out_mask)
{
    p_reg->DIRSET = out_mask;
}


static inline void nrf_gpio_port_dir_input_set(NRF_GPIO_Type * p_reg, uint32_t in_mask)
{
    p_reg->DIRCLR = in_mask;
}


static inline void nrf_gpio_port_dir_write(NRF_GPIO_Type * p_reg, uint32_t value)
{
    p_reg->DIR = value;
}


static inline uint32_t nrf_gpio_port_dir_read(NRF_GPIO_Type const * p_reg)
{
    return p_reg->DIR;
}


static inline uint32_t nrf_gpio_port_in_read(NRF_GPIO_Type const * p_reg)
{
    return p_reg->IN;
}


static inline uint32_t nrf_gpio_port_out_read(NRF_GPIO_Type const * p_reg)
{
    return p_reg->OUT;
}


static inline void nrf_gpio_port_out_write(NRF_GPIO_Type * p_reg, uint32_t value)
{
    p_reg->OUT = value;
}


static inline void nrf_gpio_port_out_set(NRF_GPIO_Type * p_reg, uint32_t set_mask)
{
    p_reg->OUTSET = set_mask;
}


static inline void nrf_gpio_port_out_clear(NRF_GPIO_Type * p_reg, uint32_t clr_mask)
{
    p_reg->OUTCLR = clr_mask;
}


static inline void nrf_gpio_ports_read(uint32_t start_port, uint32_t length, uint32_t * p_masks)
{
    NRF_GPIO_Type * gpio_regs[1] = {((NRF_GPIO_Type *) 0x50000000UL)};

    if (1) { if (start_port + length <= 1) { } else { assert_nrf_callback((uint16_t)735, (uint8_t *)"../../../../../../modules/nrfx/hal/nrf_gpio.h"); } };
    uint32_t i;

    for (i = start_port; i < (start_port + length); i++)
    {
        *p_masks = nrf_gpio_port_in_read(gpio_regs[i]);
        p_masks++;
    }
}



static inline void nrf_gpio_latches_read(uint32_t start_port, uint32_t length, uint32_t * p_masks)
{
    NRF_GPIO_Type * gpio_regs[1] = {((NRF_GPIO_Type *) 0x50000000UL)};
    uint32_t i;

    for (i = start_port; i < (start_port + length); i++)
    {
        *p_masks = gpio_regs[i]->LATCH;
        p_masks++;
    }
}


static inline uint32_t nrf_gpio_pin_latch_get(uint32_t pin_number)
{
    NRF_GPIO_Type * reg = nrf_gpio_pin_port_decode(&pin_number);

    return (reg->LATCH & (1 << pin_number)) ? 1 : 0;
}


static inline void nrf_gpio_pin_latch_clear(uint32_t pin_number)
{
    NRF_GPIO_Type * reg = nrf_gpio_pin_port_decode(&pin_number);

    reg->LATCH = (1 << pin_number);
}
# 47 "../../../../../../modules/nrfx/drivers/include/nrfx_gpiote.h" 2
# 60 "../../../../../../modules/nrfx/drivers/include/nrfx_gpiote.h"
typedef struct
{
    nrf_gpiote_polarity_t sense;
    nrf_gpio_pin_pull_t pull;
    
# 64 "../../../../../../modules/nrfx/drivers/include/nrfx_gpiote.h" 3 4
   _Bool 
# 64 "../../../../../../modules/nrfx/drivers/include/nrfx_gpiote.h"
                         is_watcher : 1;
    
# 65 "../../../../../../modules/nrfx/drivers/include/nrfx_gpiote.h" 3 4
   _Bool 
# 65 "../../../../../../modules/nrfx/drivers/include/nrfx_gpiote.h"
                         hi_accuracy : 1;
    
# 66 "../../../../../../modules/nrfx/drivers/include/nrfx_gpiote.h" 3 4
   _Bool 
# 66 "../../../../../../modules/nrfx/drivers/include/nrfx_gpiote.h"
                         skip_gpio_setup : 1;
} nrfx_gpiote_in_config_t;
# 137 "../../../../../../modules/nrfx/drivers/include/nrfx_gpiote.h"
typedef struct
{
    nrf_gpiote_polarity_t action;
    nrf_gpiote_outinit_t init_state;
    
# 141 "../../../../../../modules/nrfx/drivers/include/nrfx_gpiote.h" 3 4
   _Bool 
# 141 "../../../../../../modules/nrfx/drivers/include/nrfx_gpiote.h"
                         task_pin;
} nrfx_gpiote_out_config_t;
# 179 "../../../../../../modules/nrfx/drivers/include/nrfx_gpiote.h"
typedef uint32_t nrfx_gpiote_pin_t;







typedef void (*nrfx_gpiote_evt_handler_t)(nrfx_gpiote_pin_t pin, nrf_gpiote_polarity_t action);
# 198 "../../../../../../modules/nrfx/drivers/include/nrfx_gpiote.h"
nrfx_err_t nrfx_gpiote_init(void);
# 209 "../../../../../../modules/nrfx/drivers/include/nrfx_gpiote.h"

# 209 "../../../../../../modules/nrfx/drivers/include/nrfx_gpiote.h" 3 4
_Bool 
# 209 "../../../../../../modules/nrfx/drivers/include/nrfx_gpiote.h"
    nrfx_gpiote_is_init(void);




void nrfx_gpiote_uninit(void);
# 230 "../../../../../../modules/nrfx/drivers/include/nrfx_gpiote.h"
nrfx_err_t nrfx_gpiote_out_init(nrfx_gpiote_pin_t pin,
                                nrfx_gpiote_out_config_t const * p_config);







void nrfx_gpiote_out_uninit(nrfx_gpiote_pin_t pin);






void nrfx_gpiote_out_set(nrfx_gpiote_pin_t pin);






void nrfx_gpiote_out_clear(nrfx_gpiote_pin_t pin);






void nrfx_gpiote_out_toggle(nrfx_gpiote_pin_t pin);






void nrfx_gpiote_out_task_enable(nrfx_gpiote_pin_t pin);






void nrfx_gpiote_out_task_disable(nrfx_gpiote_pin_t pin);
# 283 "../../../../../../modules/nrfx/drivers/include/nrfx_gpiote.h"
uint32_t nrfx_gpiote_out_task_addr_get(nrfx_gpiote_pin_t pin);
# 293 "../../../../../../modules/nrfx/drivers/include/nrfx_gpiote.h"
uint32_t nrfx_gpiote_set_task_addr_get(nrfx_gpiote_pin_t pin);
# 304 "../../../../../../modules/nrfx/drivers/include/nrfx_gpiote.h"
uint32_t nrfx_gpiote_clr_task_addr_get(nrfx_gpiote_pin_t pin);
# 330 "../../../../../../modules/nrfx/drivers/include/nrfx_gpiote.h"
nrfx_err_t nrfx_gpiote_in_init(nrfx_gpiote_pin_t pin,
                               nrfx_gpiote_in_config_t const * p_config,
                               nrfx_gpiote_evt_handler_t evt_handler);







void nrfx_gpiote_in_uninit(nrfx_gpiote_pin_t pin);
# 353 "../../../../../../modules/nrfx/drivers/include/nrfx_gpiote.h"
void nrfx_gpiote_in_event_enable(nrfx_gpiote_pin_t pin, 
# 353 "../../../../../../modules/nrfx/drivers/include/nrfx_gpiote.h" 3 4
                                                       _Bool 
# 353 "../../../../../../modules/nrfx/drivers/include/nrfx_gpiote.h"
                                                            int_enable);






void nrfx_gpiote_in_event_disable(nrfx_gpiote_pin_t pin);
# 370 "../../../../../../modules/nrfx/drivers/include/nrfx_gpiote.h"

# 370 "../../../../../../modules/nrfx/drivers/include/nrfx_gpiote.h" 3 4
_Bool 
# 370 "../../../../../../modules/nrfx/drivers/include/nrfx_gpiote.h"
    nrfx_gpiote_in_is_set(nrfx_gpiote_pin_t pin);







uint32_t nrfx_gpiote_in_event_addr_get(nrfx_gpiote_pin_t pin);







void nrfx_gpiote_out_task_force(nrfx_gpiote_pin_t pin, uint8_t state);






void nrfx_gpiote_out_task_trigger(nrfx_gpiote_pin_t pin);







void nrfx_gpiote_set_task_trigger(nrfx_gpiote_pin_t pin);
# 410 "../../../../../../modules/nrfx/drivers/include/nrfx_gpiote.h"
void nrfx_gpiote_clr_task_trigger(nrfx_gpiote_pin_t pin);



void GPIOTE_IRQHandler(void);
# 14 "../../../drivers/encoder.h" 2
# 1 "../../../../../../modules/nrfx/drivers/include/nrfx_timer.h" 1
# 45 "../../../../../../modules/nrfx/drivers/include/nrfx_timer.h"
# 1 "../../../../../../modules/nrfx/hal/nrf_timer.h" 1
# 101 "../../../../../../modules/nrfx/hal/nrf_timer.h"
typedef enum
{

    NRF_TIMER_TASK_START = __builtin_offsetof (NRF_TIMER_Type, TASKS_START),
    NRF_TIMER_TASK_STOP = __builtin_offsetof (NRF_TIMER_Type, TASKS_STOP),
    NRF_TIMER_TASK_COUNT = __builtin_offsetof (NRF_TIMER_Type, TASKS_COUNT),
    NRF_TIMER_TASK_CLEAR = __builtin_offsetof (NRF_TIMER_Type, TASKS_CLEAR),
    NRF_TIMER_TASK_SHUTDOWN = __builtin_offsetof (NRF_TIMER_Type, TASKS_SHUTDOWN),
    NRF_TIMER_TASK_CAPTURE0 = __builtin_offsetof (NRF_TIMER_Type, TASKS_CAPTURE[0]),
    NRF_TIMER_TASK_CAPTURE1 = __builtin_offsetof (NRF_TIMER_Type, TASKS_CAPTURE[1]),
    NRF_TIMER_TASK_CAPTURE2 = __builtin_offsetof (NRF_TIMER_Type, TASKS_CAPTURE[2]),
    NRF_TIMER_TASK_CAPTURE3 = __builtin_offsetof (NRF_TIMER_Type, TASKS_CAPTURE[3]),

    NRF_TIMER_TASK_CAPTURE4 = __builtin_offsetof (NRF_TIMER_Type, TASKS_CAPTURE[4]),


    NRF_TIMER_TASK_CAPTURE5 = __builtin_offsetof (NRF_TIMER_Type, TASKS_CAPTURE[5]),


} nrf_timer_task_t;




typedef enum
{

    NRF_TIMER_EVENT_COMPARE0 = __builtin_offsetof (NRF_TIMER_Type, EVENTS_COMPARE[0]),
    NRF_TIMER_EVENT_COMPARE1 = __builtin_offsetof (NRF_TIMER_Type, EVENTS_COMPARE[1]),
    NRF_TIMER_EVENT_COMPARE2 = __builtin_offsetof (NRF_TIMER_Type, EVENTS_COMPARE[2]),
    NRF_TIMER_EVENT_COMPARE3 = __builtin_offsetof (NRF_TIMER_Type, EVENTS_COMPARE[3]),

    NRF_TIMER_EVENT_COMPARE4 = __builtin_offsetof (NRF_TIMER_Type, EVENTS_COMPARE[4]),


    NRF_TIMER_EVENT_COMPARE5 = __builtin_offsetof (NRF_TIMER_Type, EVENTS_COMPARE[5]),


} nrf_timer_event_t;




typedef enum
{
    NRF_TIMER_SHORT_COMPARE0_STOP_MASK = (0x1UL << (8UL)),
    NRF_TIMER_SHORT_COMPARE1_STOP_MASK = (0x1UL << (9UL)),
    NRF_TIMER_SHORT_COMPARE2_STOP_MASK = (0x1UL << (10UL)),
    NRF_TIMER_SHORT_COMPARE3_STOP_MASK = (0x1UL << (11UL)),

    NRF_TIMER_SHORT_COMPARE4_STOP_MASK = (0x1UL << (12UL)),


    NRF_TIMER_SHORT_COMPARE5_STOP_MASK = (0x1UL << (13UL)),

    NRF_TIMER_SHORT_COMPARE0_CLEAR_MASK = (0x1UL << (0UL)),
    NRF_TIMER_SHORT_COMPARE1_CLEAR_MASK = (0x1UL << (1UL)),
    NRF_TIMER_SHORT_COMPARE2_CLEAR_MASK = (0x1UL << (2UL)),
    NRF_TIMER_SHORT_COMPARE3_CLEAR_MASK = (0x1UL << (3UL)),

    NRF_TIMER_SHORT_COMPARE4_CLEAR_MASK = (0x1UL << (4UL)),


    NRF_TIMER_SHORT_COMPARE5_CLEAR_MASK = (0x1UL << (5UL)),

} nrf_timer_short_mask_t;




typedef enum
{
    NRF_TIMER_MODE_TIMER = (0UL),
    NRF_TIMER_MODE_COUNTER = (1UL),

    NRF_TIMER_MODE_LOW_POWER_COUNTER = (2UL),

} nrf_timer_mode_t;




typedef enum
{
    NRF_TIMER_BIT_WIDTH_8 = (1UL),
    NRF_TIMER_BIT_WIDTH_16 = (0UL),
    NRF_TIMER_BIT_WIDTH_24 = (2UL),
    NRF_TIMER_BIT_WIDTH_32 = (3UL)
} nrf_timer_bit_width_t;




typedef enum
{
    NRF_TIMER_FREQ_16MHz = 0,
    NRF_TIMER_FREQ_8MHz,
    NRF_TIMER_FREQ_4MHz,
    NRF_TIMER_FREQ_2MHz,
    NRF_TIMER_FREQ_1MHz,
    NRF_TIMER_FREQ_500kHz,
    NRF_TIMER_FREQ_250kHz,
    NRF_TIMER_FREQ_125kHz,
    NRF_TIMER_FREQ_62500Hz,
    NRF_TIMER_FREQ_31250Hz
} nrf_timer_frequency_t;




typedef enum
{
    NRF_TIMER_CC_CHANNEL0 = 0,
    NRF_TIMER_CC_CHANNEL1,
    NRF_TIMER_CC_CHANNEL2,
    NRF_TIMER_CC_CHANNEL3,

    NRF_TIMER_CC_CHANNEL4,


    NRF_TIMER_CC_CHANNEL5,

} nrf_timer_cc_channel_t;




typedef enum
{
    NRF_TIMER_INT_COMPARE0_MASK = (0x1UL << (16UL)),
    NRF_TIMER_INT_COMPARE1_MASK = (0x1UL << (17UL)),
    NRF_TIMER_INT_COMPARE2_MASK = (0x1UL << (18UL)),
    NRF_TIMER_INT_COMPARE3_MASK = (0x1UL << (19UL)),

    NRF_TIMER_INT_COMPARE4_MASK = (0x1UL << (20UL)),


    NRF_TIMER_INT_COMPARE5_MASK = (0x1UL << (21UL)),

} nrf_timer_int_mask_t;
# 249 "../../../../../../modules/nrfx/hal/nrf_timer.h"
static inline void nrf_timer_task_trigger(NRF_TIMER_Type * p_reg,
                                            nrf_timer_task_t task);
# 260 "../../../../../../modules/nrfx/hal/nrf_timer.h"
static inline uint32_t * nrf_timer_task_address_get(NRF_TIMER_Type * p_reg,
                                                      nrf_timer_task_t task);







static inline void nrf_timer_event_clear(NRF_TIMER_Type * p_reg,
                                           nrf_timer_event_t event);
# 281 "../../../../../../modules/nrfx/hal/nrf_timer.h"
static inline 
# 281 "../../../../../../modules/nrfx/hal/nrf_timer.h" 3 4
               _Bool 
# 281 "../../../../../../modules/nrfx/hal/nrf_timer.h"
                    nrf_timer_event_check(NRF_TIMER_Type * p_reg,
                                           nrf_timer_event_t event);
# 292 "../../../../../../modules/nrfx/hal/nrf_timer.h"
static inline uint32_t * nrf_timer_event_address_get(NRF_TIMER_Type * p_reg,
                                                       nrf_timer_event_t event);







static inline void nrf_timer_shorts_enable(NRF_TIMER_Type * p_reg,
                                             uint32_t timer_shorts_mask);







static inline void nrf_timer_shorts_disable(NRF_TIMER_Type * p_reg,
                                              uint32_t timer_shorts_mask);







static inline void nrf_timer_int_enable(NRF_TIMER_Type * p_reg,
                                          uint32_t timer_int_mask);







static inline void nrf_timer_int_disable(NRF_TIMER_Type * p_reg,
                                           uint32_t timer_int_mask);
# 340 "../../../../../../modules/nrfx/hal/nrf_timer.h"
static inline 
# 340 "../../../../../../modules/nrfx/hal/nrf_timer.h" 3 4
               _Bool 
# 340 "../../../../../../modules/nrfx/hal/nrf_timer.h"
                    nrf_timer_int_enable_check(NRF_TIMER_Type * p_reg,
                                                uint32_t timer_int);







static inline void nrf_timer_mode_set(NRF_TIMER_Type * p_reg,
                                        nrf_timer_mode_t mode);
# 359 "../../../../../../modules/nrfx/hal/nrf_timer.h"
static inline nrf_timer_mode_t nrf_timer_mode_get(NRF_TIMER_Type * p_reg);







static inline void nrf_timer_bit_width_set(NRF_TIMER_Type * p_reg,
                                             nrf_timer_bit_width_t bit_width);
# 377 "../../../../../../modules/nrfx/hal/nrf_timer.h"
static inline nrf_timer_bit_width_t nrf_timer_bit_width_get(NRF_TIMER_Type * p_reg);







static inline void nrf_timer_frequency_set(NRF_TIMER_Type * p_reg,
                                             nrf_timer_frequency_t frequency);
# 395 "../../../../../../modules/nrfx/hal/nrf_timer.h"
static inline nrf_timer_frequency_t nrf_timer_frequency_get(NRF_TIMER_Type * p_reg);
# 404 "../../../../../../modules/nrfx/hal/nrf_timer.h"
static inline void nrf_timer_cc_write(NRF_TIMER_Type * p_reg,
                                        nrf_timer_cc_channel_t cc_channel,
                                        uint32_t cc_value);
# 416 "../../../../../../modules/nrfx/hal/nrf_timer.h"
static inline uint32_t nrf_timer_cc_read(NRF_TIMER_Type * p_reg,
                                           nrf_timer_cc_channel_t cc_channel);
# 426 "../../../../../../modules/nrfx/hal/nrf_timer.h"
static inline nrf_timer_task_t nrf_timer_capture_task_get(uint32_t channel);
# 435 "../../../../../../modules/nrfx/hal/nrf_timer.h"
static inline nrf_timer_event_t nrf_timer_compare_event_get(uint32_t channel);
# 444 "../../../../../../modules/nrfx/hal/nrf_timer.h"
static inline nrf_timer_int_mask_t nrf_timer_compare_int_get(uint32_t channel);
# 455 "../../../../../../modules/nrfx/hal/nrf_timer.h"
static inline uint32_t nrf_timer_us_to_ticks(uint32_t time_us,
                                               nrf_timer_frequency_t frequency);
# 467 "../../../../../../modules/nrfx/hal/nrf_timer.h"
static inline uint32_t nrf_timer_ms_to_ticks(uint32_t time_ms,
                                               nrf_timer_frequency_t frequency);




static inline void nrf_timer_task_trigger(NRF_TIMER_Type * p_reg,
                                            nrf_timer_task_t task)
{
    *((volatile uint32_t *)((uint8_t *)p_reg + (uint32_t)task)) = 0x1UL;
}

static inline uint32_t * nrf_timer_task_address_get(NRF_TIMER_Type * p_reg,
                                                      nrf_timer_task_t task)
{
    return (uint32_t *)((uint8_t *)p_reg + (uint32_t)task);
}

static inline void nrf_timer_event_clear(NRF_TIMER_Type * p_reg,
                                           nrf_timer_event_t event)
{
    *((volatile uint32_t *)((uint8_t *)p_reg + (uint32_t)event)) = 0x0UL;

    volatile uint32_t dummy = *((volatile uint32_t *)((uint8_t *)p_reg + (uint32_t)event));
    (void)dummy;

}

static inline 
# 495 "../../../../../../modules/nrfx/hal/nrf_timer.h" 3 4
               _Bool 
# 495 "../../../../../../modules/nrfx/hal/nrf_timer.h"
                    nrf_timer_event_check(NRF_TIMER_Type * p_reg,
                                           nrf_timer_event_t event)
{
    return (
# 498 "../../../../../../modules/nrfx/hal/nrf_timer.h" 3 4
           _Bool
# 498 "../../../../../../modules/nrfx/hal/nrf_timer.h"
               )*(volatile uint32_t *)((uint8_t *)p_reg + (uint32_t)event);
}

static inline uint32_t * nrf_timer_event_address_get(NRF_TIMER_Type * p_reg,
                                                       nrf_timer_event_t event)
{
    return (uint32_t *)((uint8_t *)p_reg + (uint32_t)event);
}

static inline void nrf_timer_shorts_enable(NRF_TIMER_Type * p_reg,
                                             uint32_t timer_shorts_mask)
{
    p_reg->SHORTS |= timer_shorts_mask;
}

static inline void nrf_timer_shorts_disable(NRF_TIMER_Type * p_reg,
                                              uint32_t timer_shorts_mask)
{
    p_reg->SHORTS &= ~(timer_shorts_mask);
}

static inline void nrf_timer_int_enable(NRF_TIMER_Type * p_reg,
                                          uint32_t timer_int_mask)
{
    p_reg->INTENSET = timer_int_mask;
}

static inline void nrf_timer_int_disable(NRF_TIMER_Type * p_reg,
                                           uint32_t timer_int_mask)
{
    p_reg->INTENCLR = timer_int_mask;
}

static inline 
# 531 "../../../../../../modules/nrfx/hal/nrf_timer.h" 3 4
               _Bool 
# 531 "../../../../../../modules/nrfx/hal/nrf_timer.h"
                    nrf_timer_int_enable_check(NRF_TIMER_Type * p_reg,
                                                uint32_t timer_int)
{
    return (
# 534 "../../../../../../modules/nrfx/hal/nrf_timer.h" 3 4
           _Bool
# 534 "../../../../../../modules/nrfx/hal/nrf_timer.h"
               )(p_reg->INTENSET & timer_int);
}

static inline void nrf_timer_mode_set(NRF_TIMER_Type * p_reg,
                                        nrf_timer_mode_t mode)
{
    p_reg->MODE = (p_reg->MODE & ~(0x3UL << (0UL))) |
                    ((mode << (0UL)) & (0x3UL << (0UL)));
}

static inline nrf_timer_mode_t nrf_timer_mode_get(NRF_TIMER_Type * p_reg)
{
    return (nrf_timer_mode_t)(p_reg->MODE);
}

static inline void nrf_timer_bit_width_set(NRF_TIMER_Type * p_reg,
                                             nrf_timer_bit_width_t bit_width)
{
    p_reg->BITMODE = (p_reg->BITMODE & ~(0x3UL << (0UL))) |
                       ((bit_width << (0UL)) &
                            (0x3UL << (0UL)));
}

static inline nrf_timer_bit_width_t nrf_timer_bit_width_get(NRF_TIMER_Type * p_reg)
{
    return (nrf_timer_bit_width_t)(p_reg->BITMODE);
}

static inline void nrf_timer_frequency_set(NRF_TIMER_Type * p_reg,
                                             nrf_timer_frequency_t frequency)
{
    p_reg->PRESCALER = (p_reg->PRESCALER & ~(0xFUL << (0UL))) |
                         ((frequency << (0UL)) &
                              (0xFUL << (0UL)));
}

static inline nrf_timer_frequency_t nrf_timer_frequency_get(NRF_TIMER_Type * p_reg)
{
    return (nrf_timer_frequency_t)(p_reg->PRESCALER);
}

static inline void nrf_timer_cc_write(NRF_TIMER_Type * p_reg,
                                        nrf_timer_cc_channel_t cc_channel,
                                        uint32_t cc_value)
{
    p_reg->CC[cc_channel] = cc_value;
}

static inline uint32_t nrf_timer_cc_read(NRF_TIMER_Type * p_reg,
                                           nrf_timer_cc_channel_t cc_channel)
{
    return (uint32_t)p_reg->CC[cc_channel];
}

static inline nrf_timer_task_t nrf_timer_capture_task_get(uint32_t channel)
{
    return (nrf_timer_task_t)
        ((uint32_t)NRF_TIMER_TASK_CAPTURE0 + (channel * sizeof(uint32_t)));
}

static inline nrf_timer_event_t nrf_timer_compare_event_get(uint32_t channel)
{
    return (nrf_timer_event_t)
        ((uint32_t)NRF_TIMER_EVENT_COMPARE0 + (channel * sizeof(uint32_t)));
}

static inline nrf_timer_int_mask_t nrf_timer_compare_int_get(uint32_t channel)
{
    return (nrf_timer_int_mask_t)
        ((uint32_t)NRF_TIMER_INT_COMPARE0_MASK << channel);
}

static inline uint32_t nrf_timer_us_to_ticks(uint32_t time_us,
                                               nrf_timer_frequency_t frequency)
{


    uint32_t prescaler = (uint32_t)frequency;
    if (1) { if (time_us <= (
# 612 "../../../../../../modules/nrfx/hal/nrf_timer.h" 3 4
   4294967295UL 
# 612 "../../../../../../modules/nrfx/hal/nrf_timer.h"
   / 16UL)) { } else { assert_nrf_callback((uint16_t)612, (uint8_t *)"../../../../../../modules/nrfx/hal/nrf_timer.h"); } };
    return ((time_us * 16UL) >> prescaler);
}

static inline uint32_t nrf_timer_ms_to_ticks(uint32_t time_ms,
                                               nrf_timer_frequency_t frequency)
{


    uint32_t prescaler = (uint32_t)frequency;
    if (1) { if (time_ms <= (
# 622 "../../../../../../modules/nrfx/hal/nrf_timer.h" 3 4
   4294967295UL 
# 622 "../../../../../../modules/nrfx/hal/nrf_timer.h"
   / 16000UL)) { } else { assert_nrf_callback((uint16_t)622, (uint8_t *)"../../../../../../modules/nrfx/hal/nrf_timer.h"); } };
    return ((time_ms * 16000UL) >> prescaler);
}
# 46 "../../../../../../modules/nrfx/drivers/include/nrfx_timer.h" 2
# 61 "../../../../../../modules/nrfx/drivers/include/nrfx_timer.h"
typedef struct
{
    NRF_TIMER_Type * p_reg;
    uint8_t instance_id;
    uint8_t cc_channel_count;
} nrfx_timer_t;
# 78 "../../../../../../modules/nrfx/drivers/include/nrfx_timer.h"
enum {




    NRFX_TIMER1_INST_IDX,


    NRFX_TIMER2_INST_IDX,


    NRFX_TIMER3_INST_IDX,


    NRFX_TIMER4_INST_IDX,

    NRFX_TIMER_ENABLED_COUNT
};




typedef struct
{
    nrf_timer_frequency_t frequency;
    nrf_timer_mode_t mode;
    nrf_timer_bit_width_t bit_width;
    uint8_t interrupt_priority;
    void * p_context;
} nrfx_timer_config_t;
# 130 "../../../../../../modules/nrfx/drivers/include/nrfx_timer.h"
typedef void (* nrfx_timer_event_handler_t)(nrf_timer_event_t event_type,
                                            void * p_context);
# 144 "../../../../../../modules/nrfx/drivers/include/nrfx_timer.h"
nrfx_err_t nrfx_timer_init(nrfx_timer_t const * const p_instance,
                           nrfx_timer_config_t const * p_config,
                           nrfx_timer_event_handler_t timer_event_handler);






void nrfx_timer_uninit(nrfx_timer_t const * const p_instance);






void nrfx_timer_enable(nrfx_timer_t const * const p_instance);
# 170 "../../../../../../modules/nrfx/drivers/include/nrfx_timer.h"
void nrfx_timer_disable(nrfx_timer_t const * const p_instance);
# 179 "../../../../../../modules/nrfx/drivers/include/nrfx_timer.h"

# 179 "../../../../../../modules/nrfx/drivers/include/nrfx_timer.h" 3 4
_Bool 
# 179 "../../../../../../modules/nrfx/drivers/include/nrfx_timer.h"
    nrfx_timer_is_enabled(nrfx_timer_t const * const p_instance);






void nrfx_timer_pause(nrfx_timer_t const * const p_instance);






void nrfx_timer_resume(nrfx_timer_t const * const p_instance);






void nrfx_timer_clear(nrfx_timer_t const * const p_instance);






void nrfx_timer_increment(nrfx_timer_t const * const p_instance);
# 217 "../../../../../../modules/nrfx/drivers/include/nrfx_timer.h"
static inline uint32_t nrfx_timer_task_address_get(nrfx_timer_t const * const p_instance,
                                                     nrf_timer_task_t timer_task);
# 228 "../../../../../../modules/nrfx/drivers/include/nrfx_timer.h"
static inline uint32_t nrfx_timer_capture_task_address_get(nrfx_timer_t const * const p_instance,
                                                             uint32_t channel);
# 239 "../../../../../../modules/nrfx/drivers/include/nrfx_timer.h"
static inline uint32_t nrfx_timer_event_address_get(nrfx_timer_t const * const p_instance,
                                                      nrf_timer_event_t timer_event);
# 250 "../../../../../../modules/nrfx/drivers/include/nrfx_timer.h"
static inline uint32_t nrfx_timer_compare_event_address_get(nrfx_timer_t const * const p_instance,
                                                              uint32_t channel);
# 261 "../../../../../../modules/nrfx/drivers/include/nrfx_timer.h"
uint32_t nrfx_timer_capture(nrfx_timer_t const * const p_instance,
                            nrf_timer_cc_channel_t cc_channel);
# 274 "../../../../../../modules/nrfx/drivers/include/nrfx_timer.h"
static inline uint32_t nrfx_timer_capture_get(nrfx_timer_t const * const p_instance,
                                                nrf_timer_cc_channel_t cc_channel);
# 285 "../../../../../../modules/nrfx/drivers/include/nrfx_timer.h"
void nrfx_timer_compare(nrfx_timer_t const * const p_instance,
                        nrf_timer_cc_channel_t cc_channel,
                        uint32_t cc_value,
                        
# 288 "../../../../../../modules/nrfx/drivers/include/nrfx_timer.h" 3 4
                       _Bool 
# 288 "../../../../../../modules/nrfx/drivers/include/nrfx_timer.h"
                                                  enable_int);
# 301 "../../../../../../modules/nrfx/drivers/include/nrfx_timer.h"
void nrfx_timer_extended_compare(nrfx_timer_t const * const p_instance,
                                 nrf_timer_cc_channel_t cc_channel,
                                 uint32_t cc_value,
                                 nrf_timer_short_mask_t timer_short_mask,
                                 
# 305 "../../../../../../modules/nrfx/drivers/include/nrfx_timer.h" 3 4
                                _Bool 
# 305 "../../../../../../modules/nrfx/drivers/include/nrfx_timer.h"
                                                           enable_int);
# 315 "../../../../../../modules/nrfx/drivers/include/nrfx_timer.h"
static inline uint32_t nrfx_timer_us_to_ticks(nrfx_timer_t const * const p_instance,
                                                uint32_t time_us);
# 326 "../../../../../../modules/nrfx/drivers/include/nrfx_timer.h"
static inline uint32_t nrfx_timer_ms_to_ticks(nrfx_timer_t const * const p_instance,
                                                uint32_t time_ms);







void nrfx_timer_compare_int_enable(nrfx_timer_t const * const p_instance,
                                   uint32_t channel);







void nrfx_timer_compare_int_disable(nrfx_timer_t const * const p_instance,
                                    uint32_t channel);




static inline uint32_t nrfx_timer_task_address_get(nrfx_timer_t const * const p_instance,
                                                     nrf_timer_task_t timer_task)
{
    return (uint32_t)nrf_timer_task_address_get(p_instance->p_reg, timer_task);
}

static inline uint32_t nrfx_timer_capture_task_address_get(nrfx_timer_t const * const p_instance,
                                                             uint32_t channel)
{
    if (1) { if (channel < p_instance->cc_channel_count) { } else { assert_nrf_callback((uint16_t)359, (uint8_t *)"../../../../../../modules/nrfx/drivers/include/nrfx_timer.h"); } };
    return (uint32_t)nrf_timer_task_address_get(p_instance->p_reg,
                         nrf_timer_capture_task_get(channel));
}

static inline uint32_t nrfx_timer_event_address_get(nrfx_timer_t const * const p_instance,
                                                      nrf_timer_event_t timer_event)
{
    return (uint32_t)nrf_timer_event_address_get(p_instance->p_reg, timer_event);
}

static inline uint32_t nrfx_timer_compare_event_address_get(nrfx_timer_t const * const p_instance,
                                                              uint32_t channel)
{
    if (1) { if (channel < p_instance->cc_channel_count) { } else { assert_nrf_callback((uint16_t)373, (uint8_t *)"../../../../../../modules/nrfx/drivers/include/nrfx_timer.h"); } };
    return (uint32_t)nrf_timer_event_address_get(p_instance->p_reg,
                         nrf_timer_compare_event_get(channel));
}

static inline uint32_t nrfx_timer_capture_get(nrfx_timer_t const * const p_instance,
                                                nrf_timer_cc_channel_t cc_channel)
{
    return nrf_timer_cc_read(p_instance->p_reg, cc_channel);
}

static inline uint32_t nrfx_timer_us_to_ticks(nrfx_timer_t const * const p_instance,
                                                uint32_t timer_us)
{
    return nrf_timer_us_to_ticks(timer_us, nrf_timer_frequency_get(p_instance->p_reg));
}

static inline uint32_t nrfx_timer_ms_to_ticks(nrfx_timer_t const * const p_instance,
                                                uint32_t timer_ms)
{
    return nrf_timer_ms_to_ticks(timer_ms, nrf_timer_frequency_get(p_instance->p_reg));
}




void TIMER0_IRQHandler(void);
void TIMER1_IRQHandler(void);
void TIMER2_IRQHandler(void);
void TIMER3_IRQHandler(void);
void TIMER4_IRQHandler(void);
# 15 "../../../drivers/encoder.h" 2


typedef enum {
 ENCODER_LEFT,
 ENCODER_RIGHT
}EncoderSide_t;


typedef struct {
    long left;
    long right;
}encoderTicks;
# 40 "../../../drivers/encoder.h"
void encoder_init_ppi(EncoderSide_t side, const nrfx_timer_t* counter);
# 52 "../../../drivers/encoder.h"
void encoder_init_int();

encoderTicks encoder_get_ticks();
encoderTicks encoder_get_all_ticks();
# 52 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\main.c" 2
# 1 "../../../drivers/i2c.h" 1
# 13 "../../../drivers/i2c.h"
void i2cInit();
void i2cRecive(uint8_t device, uint8_t addr, uint8_t* data, uint8_t len);
void i2cSend(uint8_t device, uint8_t addr, uint8_t* data, uint8_t len);
void i2cSendNOADDR(uint8_t device,uint8_t* data,uint8_t len);
void i2cReciveNOADDR(uint8_t device, uint8_t* data, uint8_t len);
const nrf_twi_mngr_t* getTWIManagerAddress();
const nrf_drv_twi_config_t* getBusConfig();
# 53 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\main.c" 2
# 1 "../../../drivers/ir.h" 1
# 10 "../../../drivers/ir.h"
typedef enum {
 IR_SENSOR_1,
 IR_SENSOR_2,
 IR_SENSOR_3,
 IR_SENSOR_4
} IR_Sensor_t;


typedef enum {
 IR_RESOLUTION_8,
 IR_RESOLUTION_10,
 IR_RESOLUTION_12
} IR_Resolution_t;


typedef void(* ir_cb_t)(uint16_t reading);
# 34 "../../../drivers/ir.h"
void ir_init();
# 43 "../../../drivers/ir.h"
uint16_t ir_read_blocking(IR_Sensor_t sensor);
# 53 "../../../drivers/ir.h"
void ir_read(IR_Sensor_t sensor, ir_cb_t ir_cb);







void ir_calibrate();
# 73 "../../../drivers/ir.h"
uint8_t ui8DistSens_readCM(IR_Sensor_t sensor);

int16_t i16DistSens_readMM(IR_Sensor_t sensor);

uint8_t IrAnalogToCM(uint16_t reading);

int16_t IrAnalogToMM(uint16_t reading, IR_Sensor_t sensor);
# 54 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\main.c" 2
# 1 "../../../drivers/mag3110.h" 1



typedef enum {
 MAG_OS_16,
 MAG_OS_32,
 MAG_OS_64,
 MAG_OS_128
} mag_oversampling_t;
typedef struct{
int16_t x;
int16_t y;
int16_t z;
}MAG_reading_t;
# 24 "../../../drivers/mag3110.h"
void mag_init(mag_oversampling_t os);







void mag_calibrate();







float mag_heading();
MAG_reading_t mag_read();
# 55 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\main.c" 2
# 1 "../../../drivers/microsd.h" 1



typedef struct {
 char* filename;
 char* content;
} microsd_write_operation_t;
# 18 "../../../drivers/microsd.h"
void microsd_write(char* filename, char* data);
void microsd_task();
# 56 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\main.c" 2
# 1 "../../../drivers/motor.h" 1






void motor_init();






void motor_left_forward(int duty);






void motor_right_forward(int duty);






void motor_forward(int duty);






void motor_stop(void);






void motor_brake(void);

void vMotorMovementSwitch(int leftSpeed, int rightSpeed);
# 57 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\main.c" 2
# 1 "../../../communication/network.h" 1
# 14 "../../../communication/network.h"
void network_set_callback(uint8_t protocol, void (*cb)(uint8_t, uint8_t*, uint16_t));
uint8_t network_send(uint8_t remote_address, uint8_t protocol, uint8_t *data, uint16_t len);
uint8_t network_get_address(void);
void network_receive( uint8_t* frame, uint8_t len);
void network_ReciveFromBle(const uint8_t* data, uint8_t length);
void network_getMessage();
# 58 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\main.c" 2
# 1 "../../../communication/server_communication.h" 1
# 25 "../../../communication/server_communication.h"
typedef struct {
  uint8_t name_length;
  uint8_t name[3];
  uint16_t width;
  uint16_t length;
  uint8_t tower_offset_x;
  uint8_t tower_offset_y;
  uint8_t axel_offset;
  uint8_t sensor_offset1;
  uint8_t sensor_offset2;
  uint8_t sensor_offset3;
  uint8_t sensor_offset4;
  uint16_t sensor_heading1;
  uint16_t sensor_heading2;
  uint16_t sensor_heading3;
  uint16_t sensor_heading4;
  uint16_t deadline;
} __attribute__((packed)) handshake_message_t;

typedef struct {
  int16_t x;
  int16_t y;
  int16_t heading;
  int16_t tower_angle;
  uint8_t sensor1;
  uint8_t sensor2;
  uint8_t sensor3;
  uint8_t sensor4;
} __attribute__((packed)) update_message_t;

typedef struct {
  int16_t x;
  int16_t y;
} __attribute__((packed)) order_message_t;

union Message {
  update_message_t update;
  handshake_message_t handshake;
  order_message_t order;
};

typedef struct {
  uint8_t type;
  union Message message;
} __attribute__((packed)) message_t;

void server_communication_init(void);
uint8_t server_connect(void);
uint8_t send_handshake(void);
void send_update(int16_t x_cm, int16_t y_cm, int16_t heading_deg, int16_t towerAngle_deg, uint8_t S1_cm, uint8_t S2_cm, uint8_t S3_cm, uint8_t S4_cm);
void send_idle(void);
void send_ping_response(void);
void server_receiver(uint8_t *data, uint16_t len);
void debug(const char *fmt, ...);
# 59 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\main.c" 2
# 1 "../../../drivers/servo.h" 1






void servo_init();
# 18 "../../../drivers/servo.h"
void vServo_setAngle(int angle);
# 60 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\main.c" 2
# 1 "../../../communication/simple_protocol.h" 1





void simple_p_init(void (*cb)(uint8_t*, uint16_t));
uint8_t simple_p_send(uint8_t address, uint8_t *data, uint16_t length);
# 61 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\main.c" 2
# 1 "../../../software/SensorTowerTask.h" 1
# 11 "../../../software/SensorTowerTask.h"
void vMainSensorTowerTask(void *pvParameters);
# 62 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\main.c" 2
# 1 "../../../software/ControllerTask.h" 1
# 14 "../../../software/ControllerTask.h"
void vMainPoseControllerTask(void *pvParameters);
float getThetaTarget(void);
void runDistanceController(float distanceErr, float thetaErr, float thetaDer);
void runThetaController(float thetaDiff);
# 63 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\main.c" 2
# 1 "../../../software/EstimatorTask.h" 1
# 11 "../../../software/EstimatorTask.h"
void vMainPoseEstimatorTask(void *pvParameters);
# 64 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\main.c" 2
# 1 "../../../software/DebugFunctions.h" 1
static void ir_task(void *arg);
static void mag_task(void *arg);
void vMainSensorCalibrationTask(void *pvParameters);
# 65 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\main.c" 2
# 1 "../../../software/MainComTask.h" 1
# 16 "../../../software/MainComTask.h"
void vMainCommunicationTask(void *pvParameters);
# 66 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\main.c" 2
# 1 "../../../software/globals.h" 1
# 17 "../../../software/globals.h"
extern TaskHandle_t handle_display_task,
    handle_user_task,
    handle_microsd_task,
    pose_estimator_task,
    pose_controller_task,
    communication_task,
    sensor_tower_task,
    arq_task;


extern SemaphoreHandle_t xScanLock;
extern SemaphoreHandle_t xPoseMutex;
extern SemaphoreHandle_t xTickMutex;
extern SemaphoreHandle_t xControllerBSem;
extern SemaphoreHandle_t xCommandReadyBSem;
extern SemaphoreHandle_t mutex_spi;




extern QueueHandle_t poseControllerQ;
extern QueueHandle_t scanStatusQ;
extern QueueHandle_t queue_microsd;


extern uint8_t gHandshook;
extern uint8_t gPaused;



extern 
# 47 "../../../software/globals.h" 3 4
      _Bool 
# 47 "../../../software/globals.h"
           USEBLUETOOTH;
extern 
# 48 "../../../software/globals.h" 3 4
      _Bool 
# 48 "../../../software/globals.h"
           newServer;
extern 
# 49 "../../../software/globals.h" 3 4
      _Bool 
# 49 "../../../software/globals.h"
           validateWP;




extern float gTheta_hat;
extern int16_t gX_hat;
extern int16_t gY_hat;
extern float gLeft;
extern float gRight;


extern int16_t gRightWheelTicks;
extern int16_t gLeftWheelTicks;



struct sPolar {
    float heading;
    int16_t distance;
};

struct sCartesian {
    float x;
    float y;
};
# 67 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\main.c" 2







# 73 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\main.c" 3 4
_Bool 
# 73 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\main.c"
    USEBLUETOOTH = 
# 73 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\main.c" 3 4
                   0
# 73 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\main.c"
                        ;

# 74 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\main.c" 3 4
_Bool 
# 74 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\main.c"
    newServer = 
# 74 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\main.c" 3 4
                0
# 74 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\main.c"
                     ;

# 75 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\main.c" 3 4
_Bool 
# 75 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\main.c"
    validateWP = 
# 75 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\main.c" 3 4
                 0
# 75 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\main.c"
                      ;



TaskHandle_t handle_display_task,
    handle_user_task,
    handle_microsd_task,
    pose_estimator_task,
    pose_controller_task,
    communication_task,
    sensor_tower_task,
    arq_task;


SemaphoreHandle_t xScanLock;
SemaphoreHandle_t xPoseMutex;
SemaphoreHandle_t xTickMutex;
SemaphoreHandle_t xControllerBSem;
SemaphoreHandle_t xCommandReadyBSem;
SemaphoreHandle_t mutex_spi;




QueueHandle_t poseControllerQ = 0;
QueueHandle_t scanStatusQ = 0;
QueueHandle_t queue_microsd = 0;



uint8_t gHandshook = 
# 105 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\main.c" 3 4
                    0
# 105 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\main.c"
                         ;
uint8_t gPaused = 
# 106 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\main.c" 3 4
                 0
# 106 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\main.c"
                      ;





float gTheta_hat = 0;
int16_t gX_hat = 0;
int16_t gY_hat = 0;
float gLeft = 0;
float gRight = 0;


int16_t gRightWheelTicks = 0;
int16_t gLeftWheelTicks = 0;



# 123 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\main.c" 3 4
_Bool 
# 123 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\main.c"
    shared_SPI_init = 
# 123 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\main.c" 3 4
                      0
# 123 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\main.c"
                           ;




void vApplicationIdleHook(void) {



}



static void clock_init(void) {
    ret_code_t err_code = nrf_drv_clock_init();
    do { const uint32_t LOCAL_ERR_CODE = (err_code); if (LOCAL_ERR_CODE != ((0x0) + 0)) { do { app_error_handler((LOCAL_ERR_CODE), 138, (uint8_t*) "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\main.c"); } while (0); } } while (0);
}


volatile int RightMotorDirection = 1;
volatile int LeftMotorDirection = 1;
# 153 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\main.c"
static void user_task(void *arg) {
# 163 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\main.c"
    vPortEnterCritical();
    motor_init();
    servo_init();
    encoder_init_int();
    vPortExitCritical();
    i2cInit();
    vTaskDelay(30);
    IMU_init();



    vTaskPrioritySet(handle_user_task, 1);
    vTaskDelay(5000);


    char str1[20];
    char str2[20];
    char str3[20];



 int targetX = 50;
 int targetY = 0;
 
# 186 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\main.c" 3 4
_Bool 
# 186 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\main.c"
     sent = 
# 186 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\main.c" 3 4
            0
# 186 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\main.c"
                 ;
 
# 187 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\main.c" 3 4
_Bool 
# 187 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\main.c"
     testWaypoint = 
# 187 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\main.c" 3 4
                    0
# 187 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\main.c"
                         ;

    while(
# 189 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\main.c" 3 4
         1
# 189 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\main.c"
             ){
        vTaskDelay(1000);
        sprintf(str1,"X: %i Y: %i",(int)gX_hat, (int)gY_hat);
        display_text_on_line(1, str1);
        sprintf(str2,"HEADING: %i",(int) ((gTheta_hat)*180.0 / 
# 193 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\main.c" 3 4
                                                      3.14159265358979323846
# 193 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\main.c"
                                                             ));
        display_text_on_line(2, str2);







  if(testWaypoint){
   int time = (xTaskGetTickCount()/1000);


   if ((time > 40) && (sent == 
# 206 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\main.c" 3 4
                              0
# 206 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\main.c"
                                   )){
    struct sCartesian target = {targetX, targetY};
    xQueueGenericSend( ( poseControllerQ ), ( &target ), ( 100 ), ( ( BaseType_t ) 0 ) );
    sent = 
# 209 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\main.c" 3 4
          1
# 209 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\main.c"
              ;
    time = 0;
   }
  }

    }
}
# 226 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\main.c"
static void log_init(void) {
    ret_code_t err_code = nrf_log_init(
# 227 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\main.c" 3 4
                         0
# 227 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\main.c"
                         , 32768);
    do { const uint32_t LOCAL_ERR_CODE = (err_code); if (LOCAL_ERR_CODE != ((0x0) + 0)) { do { app_error_handler((LOCAL_ERR_CODE), 228, (uint8_t*) "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\main.c"); } while (0); } } while (0);


}

int main(void) {

    
# 235 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\main.c" 3 4
   _Bool 
# 235 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\main.c"
        erase_bonds;
    log_init();
    clock_init();

    ir_init();
# 284 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\main.c"
    BLE_init();
    arq_init();


 queue_display = xQueueGenericCreate( ( 5 ), ( sizeof(display_operation_t) ), ( ( ( uint8_t ) 0U ) ) );
 queue_microsd = xQueueGenericCreate( ( 5 ), ( sizeof(microsd_write_operation_t) ), ( ( ( uint8_t ) 0U ) ) );
 poseControllerQ = xQueueGenericCreate( ( 1 ), ( sizeof(struct sCartesian) ), ( ( ( uint8_t ) 0U ) ) );
 scanStatusQ = xQueueGenericCreate( ( 1 ), ( sizeof(uint8_t) ), ( ( ( uint8_t ) 0U ) ) );


 mutex_spi = xQueueCreateMutex( ( ( uint8_t ) 1U ) );
 xPoseMutex = xQueueCreateMutex( ( ( uint8_t ) 1U ) );
 xTickMutex = xQueueCreateMutex( ( ( uint8_t ) 1U ) );
 xControllerBSem = xQueueGenericCreate( ( UBaseType_t ) 1, ( ( uint8_t ) 0U ), ( ( uint8_t ) 3U ) );
 xCommandReadyBSem = xQueueGenericCreate( ( UBaseType_t ) 1, ( ( uint8_t ) 0U ), ( ( uint8_t ) 3U ) );







    if (( ( ( BaseType_t ) 1 ) ) != xTaskCreate(display_task, "DISP", 128, 
# 306 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\main.c" 3 4
                                                        0
# 306 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\main.c"
                                                            , 1, &handle_display_task))
        do { app_error_handler((((0x0) + 4)), 307, (uint8_t*) "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\main.c"); } while (0);

    if (( ( ( BaseType_t ) 1 ) ) != xTaskCreate(user_task, "USER", 128, 
# 309 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\main.c" 3 4
                                                     0
# 309 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\main.c"
                                                         , 4, &handle_user_task))
        do { app_error_handler((((0x0) + 4)), 310, (uint8_t*) "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\main.c"); } while (0);

    if (( ( ( BaseType_t ) 1 ) ) != xTaskCreate(microsd_task, "SD", 256, 
# 312 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\main.c" 3 4
                                                      0
# 312 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\main.c"
                                                          , 1, &handle_microsd_task))
        do { app_error_handler((((0x0) + 4)), 313, (uint8_t*) "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\main.c"); } while (0);

    if (( ( ( BaseType_t ) 1 ) ) != xTaskCreate(vMainPoseEstimatorTask, "POSE", 256, 
# 315 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\main.c" 3 4
                                                                  0
# 315 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\main.c"
                                                                      , 3, &pose_estimator_task))
        do { app_error_handler((((0x0) + 4)), 316, (uint8_t*) "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\main.c"); } while (0);

    if (( ( ( BaseType_t ) 1 ) ) != xTaskCreate(vMainPoseControllerTask, "POSC", 512, 
# 318 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\main.c" 3 4
                                                                   0
# 318 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\main.c"
                                                                       , 1, &pose_controller_task))
        do { app_error_handler((((0x0) + 4)), 319, (uint8_t*) "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\main.c"); } while (0);

    if (( ( ( BaseType_t ) 1 ) ) != xTaskCreate(vMainSensorTowerTask, "SnsT", 256, 
# 321 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\main.c" 3 4
                                                                0
# 321 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\main.c"
                                                                    , 1, &sensor_tower_task))
  do { app_error_handler((((0x0) + 4)), 322, (uint8_t*) "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\main.c"); } while (0);

 if (( ( ( BaseType_t ) 1 ) ) != xTaskCreate(vMainCommunicationTask, "COM", 256, 
# 324 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\main.c" 3 4
                                                              0
# 324 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\main.c"
                                                                  , 1, &communication_task))
            do { app_error_handler((((0x0) + 4)), 325, (uint8_t*) "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\main.c"); } while (0);


    if (USEBLUETOOTH){
        if(( ( ( BaseType_t ) 1 ) ) != xTaskCreate(vARQTask, "ARQ", 256, 
# 329 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\main.c" 3 4
                                                      0
# 329 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\main.c"
                                                          , 2, &arq_task)) {
            if (1 && (3 >= NRF_LOG_SEVERITY_INFO) && (NRF_LOG_SEVERITY_INFO <= 3)) { if (NRF_LOG_SEVERITY_DEBUG >= NRF_LOG_SEVERITY_INFO) { nrf_log_frontend_std_0(((NRF_LOG_SEVERITY_INFO) | m_nrf_log_app_logs_data_dynamic.module_id << 16), "vARQTask Creation Failed"); } }
            do { app_error_handler((((0x0) + 4)), 331, (uint8_t*) "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\main.c"); } while (0);
        }
        vTaskSuspend(arq_task);


        nrf_sdh_freertos_init((nrf_sdh_freertos_task_hook_t) advertising_start,&erase_bonds);
 }
    if (1 && (3 >= NRF_LOG_SEVERITY_INFO) && (NRF_LOG_SEVERITY_INFO <= 3)) { if (NRF_LOG_SEVERITY_DEBUG >= NRF_LOG_SEVERITY_INFO) { nrf_log_frontend_std_0(((NRF_LOG_SEVERITY_INFO) | m_nrf_log_app_logs_data_dynamic.module_id << 16), "\nInitialization done. SLAM application now starting.\n."); } };

    vTaskStartScheduler();

    for (;;) {





        do { app_error_handler((((0x0) + 15)), 348, (uint8_t*) "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\main.c"); } while (0);
    }
}
