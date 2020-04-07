# 1 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\systemView\\SEGGER_RTT.c"
# 1 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\pca10040\\s132\\ses//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\systemView\\SEGGER_RTT.c"
# 86 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\systemView\\SEGGER_RTT.c"
# 1 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\systemView\\SEGGER_RTT.h" 1
# 70 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\systemView\\SEGGER_RTT.h"
# 1 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\systemView\\SEGGER_RTT_Conf.h" 1
# 71 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\systemView\\SEGGER_RTT.h" 2
# 89 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\systemView\\SEGGER_RTT.h"
# 1 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stdlib.h" 1 3 4
# 47 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stdlib.h" 3 4
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
# 48 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stdlib.h" 2 3 4







typedef unsigned size_t;





typedef unsigned wchar_t;
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
# 90 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\systemView\\SEGGER_RTT.h" 2
# 1 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stdarg.h" 1 3 4
# 69 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stdarg.h" 3 4
typedef __va_list va_list;
# 91 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\systemView\\SEGGER_RTT.h" 2
# 110 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\systemView\\SEGGER_RTT.h"

# 110 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\systemView\\SEGGER_RTT.h"
typedef struct {
  const char* sName;
            char* pBuffer;
            unsigned SizeOfBuffer;
            unsigned WrOff;
  volatile unsigned RdOff;
            unsigned Flags;
} SEGGER_RTT_BUFFER_UP;





typedef struct {
  const char* sName;
            char* pBuffer;
            unsigned SizeOfBuffer;
  volatile unsigned WrOff;
            unsigned RdOff;
            unsigned Flags;
} SEGGER_RTT_BUFFER_DOWN;






typedef struct {
  char acID[16];
  int MaxNumUpBuffers;
  int MaxNumDownBuffers;
  SEGGER_RTT_BUFFER_UP aUp[(3)];
  SEGGER_RTT_BUFFER_DOWN aDown[(3)];
} SEGGER_RTT_CB;







extern SEGGER_RTT_CB _SEGGER_RTT;
# 162 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\systemView\\SEGGER_RTT.h"
int SEGGER_RTT_AllocDownBuffer (const char* sName, void* pBuffer, unsigned BufferSize, unsigned Flags);
int SEGGER_RTT_AllocUpBuffer (const char* sName, void* pBuffer, unsigned BufferSize, unsigned Flags);
int SEGGER_RTT_ConfigUpBuffer (unsigned BufferIndex, const char* sName, void* pBuffer, unsigned BufferSize, unsigned Flags);
int SEGGER_RTT_ConfigDownBuffer (unsigned BufferIndex, const char* sName, void* pBuffer, unsigned BufferSize, unsigned Flags);
int SEGGER_RTT_GetKey (void);
unsigned SEGGER_RTT_HasData (unsigned BufferIndex);
int SEGGER_RTT_HasKey (void);
unsigned SEGGER_RTT_HasDataUp (unsigned BufferIndex);
void SEGGER_RTT_Init (void);
unsigned SEGGER_RTT_Read (unsigned BufferIndex, void* pBuffer, unsigned BufferSize);
unsigned SEGGER_RTT_ReadNoLock (unsigned BufferIndex, void* pData, unsigned BufferSize);
int SEGGER_RTT_SetNameDownBuffer (unsigned BufferIndex, const char* sName);
int SEGGER_RTT_SetNameUpBuffer (unsigned BufferIndex, const char* sName);
int SEGGER_RTT_SetFlagsDownBuffer (unsigned BufferIndex, unsigned Flags);
int SEGGER_RTT_SetFlagsUpBuffer (unsigned BufferIndex, unsigned Flags);
int SEGGER_RTT_WaitKey (void);
unsigned SEGGER_RTT_Write (unsigned BufferIndex, const void* pBuffer, unsigned NumBytes);
unsigned SEGGER_RTT_WriteNoLock (unsigned BufferIndex, const void* pBuffer, unsigned NumBytes);
unsigned SEGGER_RTT_WriteSkipNoLock (unsigned BufferIndex, const void* pBuffer, unsigned NumBytes);
unsigned SEGGER_RTT_ASM_WriteSkipNoLock (unsigned BufferIndex, const void* pBuffer, unsigned NumBytes);
unsigned SEGGER_RTT_WriteString (unsigned BufferIndex, const char* s);
void SEGGER_RTT_WriteWithOverwriteNoLock(unsigned BufferIndex, const void* pBuffer, unsigned NumBytes);
unsigned SEGGER_RTT_PutChar (unsigned BufferIndex, char c);
unsigned SEGGER_RTT_PutCharSkip (unsigned BufferIndex, char c);
unsigned SEGGER_RTT_PutCharSkipNoLock (unsigned BufferIndex, char c);
# 202 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\systemView\\SEGGER_RTT.h"
int SEGGER_RTT_SetTerminal (char TerminalId);
int SEGGER_RTT_TerminalOut (char TerminalId, const char* s);







int SEGGER_RTT_printf(unsigned BufferIndex, const char * sFormat, ...);
int SEGGER_RTT_vprintf(unsigned BufferIndex, const char * sFormat, va_list * pParamList);
# 87 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\systemView\\SEGGER_RTT.c" 2

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
# 89 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\systemView\\SEGGER_RTT.c" 2
# 243 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\systemView\\SEGGER_RTT.c"

# 243 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\systemView\\SEGGER_RTT.c"
static unsigned char _aTerminalId[16] = { '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F' };
# 254 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\systemView\\SEGGER_RTT.c"
SEGGER_RTT_CB _SEGGER_RTT;

static char _acUpBuffer [(1024)];
static char _acDownBuffer[(16)];

static char _ActiveTerminal;
# 280 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\systemView\\SEGGER_RTT.c"
static void _DoInit(void) {
  SEGGER_RTT_CB* p;



  p = &_SEGGER_RTT;
  p->MaxNumUpBuffers = (3);
  p->MaxNumDownBuffers = (3);



  p->aUp[0].sName = "Terminal";
  p->aUp[0].pBuffer = _acUpBuffer;
  p->aUp[0].SizeOfBuffer = sizeof(_acUpBuffer);
  p->aUp[0].RdOff = 0u;
  p->aUp[0].WrOff = 0u;
  p->aUp[0].Flags = (0U);



  p->aDown[0].sName = "Terminal";
  p->aDown[0].pBuffer = _acDownBuffer;
  p->aDown[0].SizeOfBuffer = sizeof(_acDownBuffer);
  p->aDown[0].RdOff = 0u;
  p->aDown[0].WrOff = 0u;
  p->aDown[0].Flags = (0U);





  strcpy(&p->acID[7], "RTT");
  strcpy(&p->acID[0], "SEGGER");
  p->acID[6] = ' ';
}
# 335 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\systemView\\SEGGER_RTT.c"
static unsigned _WriteBlocking(SEGGER_RTT_BUFFER_UP* pRing, const char* pBuffer, unsigned NumBytes) {
  unsigned NumBytesToWrite;
  unsigned NumBytesWritten;
  unsigned RdOff;
  unsigned WrOff;






  NumBytesWritten = 0u;
  WrOff = pRing->WrOff;
  do {
    RdOff = pRing->RdOff;
    if (RdOff > WrOff) {
      NumBytesToWrite = RdOff - WrOff - 1u;
    } else {
      NumBytesToWrite = pRing->SizeOfBuffer - (WrOff - RdOff + 1u);
    }
    NumBytesToWrite = (((NumBytesToWrite) < ((pRing->SizeOfBuffer - WrOff))) ? (NumBytesToWrite) : ((pRing->SizeOfBuffer - WrOff)));
    NumBytesToWrite = (((NumBytesToWrite) < (NumBytes)) ? (NumBytesToWrite) : (NumBytes));
# 366 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\systemView\\SEGGER_RTT.c"
    memcpy((pRing->pBuffer + WrOff), (pBuffer), (NumBytesToWrite));
    NumBytesWritten += NumBytesToWrite;
    pBuffer += NumBytesToWrite;
    NumBytes -= NumBytesToWrite;
    WrOff += NumBytesToWrite;

    if (WrOff == pRing->SizeOfBuffer) {
      WrOff = 0u;
    }
    pRing->WrOff = WrOff;
  } while (NumBytes);

  return NumBytesWritten;
}
# 399 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\systemView\\SEGGER_RTT.c"
static void _WriteNoCheck(SEGGER_RTT_BUFFER_UP* pRing, const char* pData, unsigned NumBytes) {
  unsigned NumBytesAtOnce;
  unsigned WrOff;
  unsigned Rem;




  WrOff = pRing->WrOff;
  Rem = pRing->SizeOfBuffer - WrOff;
  if (Rem > NumBytes) {
# 421 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\systemView\\SEGGER_RTT.c"
    memcpy((pRing->pBuffer + WrOff), (pData), (NumBytes));
    pRing->WrOff = WrOff + NumBytes;

  } else {
# 441 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\systemView\\SEGGER_RTT.c"
    NumBytesAtOnce = Rem;
    memcpy((pRing->pBuffer + WrOff), (pData), (NumBytesAtOnce));
    NumBytesAtOnce = NumBytes - Rem;
    memcpy((pRing->pBuffer), (pData + Rem), (NumBytesAtOnce));
    pRing->WrOff = NumBytesAtOnce;

  }
}
# 463 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\systemView\\SEGGER_RTT.c"
static void _PostTerminalSwitch(SEGGER_RTT_BUFFER_UP* pRing, unsigned char TerminalId) {
  unsigned char ac[2];

  ac[0] = 0xFFu;
  ac[1] = _aTerminalId[TerminalId];
  _WriteBlocking(pRing, (const char*)ac, 2u);
}
# 485 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\systemView\\SEGGER_RTT.c"
static unsigned _GetAvailWriteSpace(SEGGER_RTT_BUFFER_UP* pRing) {
  unsigned RdOff;
  unsigned WrOff;
  unsigned r;




  RdOff = pRing->RdOff;
  WrOff = pRing->WrOff;
  if (RdOff <= WrOff) {
    r = pRing->SizeOfBuffer - 1u - WrOff + RdOff;
  } else {
    r = RdOff - WrOff - 1u;
  }
  return r;
}
# 526 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\systemView\\SEGGER_RTT.c"
unsigned SEGGER_RTT_ReadNoLock(unsigned BufferIndex, void* pData, unsigned BufferSize) {
  unsigned NumBytesRem;
  unsigned NumBytesRead;
  unsigned RdOff;
  unsigned WrOff;
  unsigned char* pBuffer;
  SEGGER_RTT_BUFFER_DOWN* pRing;




  do { if (_SEGGER_RTT.acID[0] == '\0') { _DoInit(); } } while (0);
  pRing = &_SEGGER_RTT.aDown[BufferIndex];
  pBuffer = (unsigned char*)pData;
  RdOff = pRing->RdOff;
  WrOff = pRing->WrOff;
  NumBytesRead = 0u;



  if (RdOff > WrOff) {
    NumBytesRem = pRing->SizeOfBuffer - RdOff;
    NumBytesRem = (((NumBytesRem) < (BufferSize)) ? (NumBytesRem) : (BufferSize));
# 558 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\systemView\\SEGGER_RTT.c"
    memcpy((pBuffer), (pRing->pBuffer + RdOff), (NumBytesRem));
    NumBytesRead += NumBytesRem;
    pBuffer += NumBytesRem;
    BufferSize -= NumBytesRem;
    RdOff += NumBytesRem;




    if (RdOff == pRing->SizeOfBuffer) {
      RdOff = 0u;
    }
  }



  NumBytesRem = WrOff - RdOff;
  NumBytesRem = (((NumBytesRem) < (BufferSize)) ? (NumBytesRem) : (BufferSize));
  if (NumBytesRem > 0u) {
# 586 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\systemView\\SEGGER_RTT.c"
    memcpy((pBuffer), (pRing->pBuffer + RdOff), (NumBytesRem));
    NumBytesRead += NumBytesRem;
    pBuffer += NumBytesRem;
    BufferSize -= NumBytesRem;
    RdOff += NumBytesRem;

  }
  if (NumBytesRead) {
    pRing->RdOff = RdOff;
  }

  return NumBytesRead;
}
# 616 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\systemView\\SEGGER_RTT.c"
unsigned SEGGER_RTT_Read(unsigned BufferIndex, void* pBuffer, unsigned BufferSize) {
  unsigned NumBytesRead;

  { unsigned int LockState; __asm volatile ("mrs   %0, basepri  \n\t" "mov   r1, %1       \n\t" "msr   basepri, r1  \n\t" : "=r" (LockState) : "i"((0x20)) : "r1" );;



  NumBytesRead = SEGGER_RTT_ReadNoLock(BufferIndex, pBuffer, BufferSize);



  __asm volatile ("msr   basepri, %0  \n\t" : : "r" (LockState) : ); };

  return NumBytesRead;
}
# 655 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\systemView\\SEGGER_RTT.c"
void SEGGER_RTT_WriteWithOverwriteNoLock(unsigned BufferIndex, const void* pBuffer, unsigned NumBytes) {
  const char* pData;
  SEGGER_RTT_BUFFER_UP* pRing;
  unsigned Avail;




  pData = (const char *)pBuffer;



  pRing = &_SEGGER_RTT.aUp[BufferIndex];



  if (pRing->WrOff == pRing->RdOff) {
    Avail = pRing->SizeOfBuffer - 1u;
  } else if ( pRing->WrOff < pRing->RdOff) {
    Avail = pRing->RdOff - pRing->WrOff - 1u;
  } else {
    Avail = pRing->RdOff - pRing->WrOff - 1u + pRing->SizeOfBuffer;
  }
  if (NumBytes > Avail) {
    pRing->RdOff += (NumBytes - Avail);
    while (pRing->RdOff >= pRing->SizeOfBuffer) {
      pRing->RdOff -= pRing->SizeOfBuffer;
    }
  }



  Avail = pRing->SizeOfBuffer - pRing->WrOff;
  do {
    if (Avail > NumBytes) {
# 701 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\systemView\\SEGGER_RTT.c"
      memcpy((pRing->pBuffer + pRing->WrOff), (pData), (NumBytes));
      pRing->WrOff += NumBytes;

      break;
    } else {
# 717 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\systemView\\SEGGER_RTT.c"
      memcpy((pRing->pBuffer + pRing->WrOff), (pData), (Avail));
      pData += Avail;
      pRing->WrOff = 0;
      NumBytes -= Avail;

      Avail = (pRing->SizeOfBuffer - 1);
    }
  } while (NumBytes);
}
# 834 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\systemView\\SEGGER_RTT.c"
unsigned SEGGER_RTT_WriteNoLock(unsigned BufferIndex, const void* pBuffer, unsigned NumBytes) {
  unsigned Status;
  unsigned Avail;
  const char* pData;
  SEGGER_RTT_BUFFER_UP* pRing;

  pData = (const char *)pBuffer;



  pRing = &_SEGGER_RTT.aUp[BufferIndex];



  switch (pRing->Flags) {
  case (0U):




    Avail = _GetAvailWriteSpace(pRing);
    if (Avail < NumBytes) {
      Status = 0u;
    } else {
      Status = NumBytes;
      _WriteNoCheck(pRing, pData, NumBytes);
    }
    break;
  case (1U):



    Avail = _GetAvailWriteSpace(pRing);
    Status = Avail < NumBytes ? Avail : NumBytes;
    _WriteNoCheck(pRing, pData, Status);
    break;
  case (2U):



    Status = _WriteBlocking(pRing, pData, NumBytes);
    break;
  default:
    Status = 0u;
    break;
  }



  return Status;
}
# 905 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\systemView\\SEGGER_RTT.c"
unsigned SEGGER_RTT_Write(unsigned BufferIndex, const void* pBuffer, unsigned NumBytes) {
  unsigned Status;

  do { if (_SEGGER_RTT.acID[0] == '\0') { _DoInit(); } } while (0);
  { unsigned int LockState; __asm volatile ("mrs   %0, basepri  \n\t" "mov   r1, %1       \n\t" "msr   basepri, r1  \n\t" : "=r" (LockState) : "i"((0x20)) : "r1" );;



  Status = SEGGER_RTT_WriteNoLock(BufferIndex, pBuffer, NumBytes);



  __asm volatile ("msr   basepri, %0  \n\t" : : "r" (LockState) : ); };

  return Status;
}
# 942 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\systemView\\SEGGER_RTT.c"
unsigned SEGGER_RTT_WriteString(unsigned BufferIndex, const char* s) {
  unsigned Len;

  Len = strlen((s));
  return SEGGER_RTT_Write(BufferIndex, s, Len);
}
# 972 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\systemView\\SEGGER_RTT.c"
unsigned SEGGER_RTT_PutCharSkipNoLock(unsigned BufferIndex, char c) {
  SEGGER_RTT_BUFFER_UP* pRing;
  unsigned WrOff;
  unsigned Status;



  pRing = &_SEGGER_RTT.aUp[BufferIndex];



  WrOff = pRing->WrOff + 1;
  if (WrOff == pRing->SizeOfBuffer) {
    WrOff = 0;
  }



  if (WrOff != pRing->RdOff) {
    pRing->pBuffer[pRing->WrOff] = c;
    pRing->WrOff = WrOff;
    Status = 1;
  } else {
    Status = 0;
  }

  return Status;
}
# 1019 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\systemView\\SEGGER_RTT.c"
unsigned SEGGER_RTT_PutCharSkip(unsigned BufferIndex, char c) {
  SEGGER_RTT_BUFFER_UP* pRing;
  unsigned WrOff;
  unsigned Status;



  do { if (_SEGGER_RTT.acID[0] == '\0') { _DoInit(); } } while (0);
  { unsigned int LockState; __asm volatile ("mrs   %0, basepri  \n\t" "mov   r1, %1       \n\t" "msr   basepri, r1  \n\t" : "=r" (LockState) : "i"((0x20)) : "r1" );;



  pRing = &_SEGGER_RTT.aUp[BufferIndex];



  WrOff = pRing->WrOff + 1;
  if (WrOff == pRing->SizeOfBuffer) {
    WrOff = 0;
  }



  if (WrOff != pRing->RdOff) {
    pRing->pBuffer[pRing->WrOff] = c;
    pRing->WrOff = WrOff;
    Status = 1;
  } else {
    Status = 0;
  }



  __asm volatile ("msr   basepri, %0  \n\t" : : "r" (LockState) : ); };

  return Status;
}
# 1075 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\systemView\\SEGGER_RTT.c"
unsigned SEGGER_RTT_PutChar(unsigned BufferIndex, char c) {
  SEGGER_RTT_BUFFER_UP* pRing;
  unsigned WrOff;
  unsigned Status;



  do { if (_SEGGER_RTT.acID[0] == '\0') { _DoInit(); } } while (0);
  { unsigned int LockState; __asm volatile ("mrs   %0, basepri  \n\t" "mov   r1, %1       \n\t" "msr   basepri, r1  \n\t" : "=r" (LockState) : "i"((0x20)) : "r1" );;



  pRing = &_SEGGER_RTT.aUp[BufferIndex];



  WrOff = pRing->WrOff + 1;
  if (WrOff == pRing->SizeOfBuffer) {
    WrOff = 0;
  }



  if (pRing->Flags == (2U)) {
    while (WrOff == pRing->RdOff) {
      ;
    }
  }



  if (WrOff != pRing->RdOff) {
    pRing->pBuffer[pRing->WrOff] = c;
    pRing->WrOff = WrOff;
    Status = 1;
  } else {
    Status = 0;
  }



  __asm volatile ("msr   basepri, %0  \n\t" : : "r" (LockState) : ); };

  return Status;
}
# 1136 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\systemView\\SEGGER_RTT.c"
int SEGGER_RTT_GetKey(void) {
  char c;
  int r;

  r = (int)SEGGER_RTT_Read(0u, &c, 1u);
  if (r == 1) {
    r = (int)(unsigned char)c;
  } else {
    r = -1;
  }
  return r;
}
# 1164 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\systemView\\SEGGER_RTT.c"
int SEGGER_RTT_WaitKey(void) {
  int r;

  do {
    r = SEGGER_RTT_GetKey();
  } while (r < 0);
  return r;
}
# 1187 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\systemView\\SEGGER_RTT.c"
int SEGGER_RTT_HasKey(void) {
  unsigned RdOff;
  int r;

  do { if (_SEGGER_RTT.acID[0] == '\0') { _DoInit(); } } while (0);
  RdOff = _SEGGER_RTT.aDown[0].RdOff;
  if (RdOff != _SEGGER_RTT.aDown[0].WrOff) {
    r = 1;
  } else {
    r = 0;
  }
  return r;
}
# 1213 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\systemView\\SEGGER_RTT.c"
unsigned SEGGER_RTT_HasData(unsigned BufferIndex) {
  SEGGER_RTT_BUFFER_DOWN* pRing;
  unsigned v;

  pRing = &_SEGGER_RTT.aDown[BufferIndex];
  v = pRing->WrOff;
  return v - pRing->RdOff;
}
# 1234 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\systemView\\SEGGER_RTT.c"
unsigned SEGGER_RTT_HasDataUp(unsigned BufferIndex) {
  SEGGER_RTT_BUFFER_UP* pRing;
  unsigned v;

  pRing = &_SEGGER_RTT.aUp[BufferIndex];
  v = pRing->RdOff;
  return pRing->WrOff - v;
}
# 1262 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\systemView\\SEGGER_RTT.c"
int SEGGER_RTT_AllocDownBuffer(const char* sName, void* pBuffer, unsigned BufferSize, unsigned Flags) {
  int BufferIndex;

  do { if (_SEGGER_RTT.acID[0] == '\0') { _DoInit(); } } while (0);
  { unsigned int LockState; __asm volatile ("mrs   %0, basepri  \n\t" "mov   r1, %1       \n\t" "msr   basepri, r1  \n\t" : "=r" (LockState) : "i"((0x20)) : "r1" );;
  BufferIndex = 0;
  do {
    if (_SEGGER_RTT.aDown[BufferIndex].pBuffer == 
# 1269 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\systemView\\SEGGER_RTT.c" 3 4
                                                 0
# 1269 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\systemView\\SEGGER_RTT.c"
                                                     ) {
      break;
    }
    BufferIndex++;
  } while (BufferIndex < _SEGGER_RTT.MaxNumDownBuffers);
  if (BufferIndex < _SEGGER_RTT.MaxNumDownBuffers) {
    _SEGGER_RTT.aDown[BufferIndex].sName = sName;
    _SEGGER_RTT.aDown[BufferIndex].pBuffer = (char*)pBuffer;
    _SEGGER_RTT.aDown[BufferIndex].SizeOfBuffer = BufferSize;
    _SEGGER_RTT.aDown[BufferIndex].RdOff = 0u;
    _SEGGER_RTT.aDown[BufferIndex].WrOff = 0u;
    _SEGGER_RTT.aDown[BufferIndex].Flags = Flags;
  } else {
    BufferIndex = -1;
  }
  __asm volatile ("msr   basepri, %0  \n\t" : : "r" (LockState) : ); };
  return BufferIndex;
}
# 1307 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\systemView\\SEGGER_RTT.c"
int SEGGER_RTT_AllocUpBuffer(const char* sName, void* pBuffer, unsigned BufferSize, unsigned Flags) {
  int BufferIndex;

  do { if (_SEGGER_RTT.acID[0] == '\0') { _DoInit(); } } while (0);
  { unsigned int LockState; __asm volatile ("mrs   %0, basepri  \n\t" "mov   r1, %1       \n\t" "msr   basepri, r1  \n\t" : "=r" (LockState) : "i"((0x20)) : "r1" );;
  BufferIndex = 0;
  do {
    if (_SEGGER_RTT.aUp[BufferIndex].pBuffer == 
# 1314 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\systemView\\SEGGER_RTT.c" 3 4
                                               0
# 1314 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\systemView\\SEGGER_RTT.c"
                                                   ) {
      break;
    }
    BufferIndex++;
  } while (BufferIndex < _SEGGER_RTT.MaxNumUpBuffers);
  if (BufferIndex < _SEGGER_RTT.MaxNumUpBuffers) {
    _SEGGER_RTT.aUp[BufferIndex].sName = sName;
    _SEGGER_RTT.aUp[BufferIndex].pBuffer = (char*)pBuffer;
    _SEGGER_RTT.aUp[BufferIndex].SizeOfBuffer = BufferSize;
    _SEGGER_RTT.aUp[BufferIndex].RdOff = 0u;
    _SEGGER_RTT.aUp[BufferIndex].WrOff = 0u;
    _SEGGER_RTT.aUp[BufferIndex].Flags = Flags;
  } else {
    BufferIndex = -1;
  }
  __asm volatile ("msr   basepri, %0  \n\t" : : "r" (LockState) : ); };
  return BufferIndex;
}
# 1358 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\systemView\\SEGGER_RTT.c"
int SEGGER_RTT_ConfigUpBuffer(unsigned BufferIndex, const char* sName, void* pBuffer, unsigned BufferSize, unsigned Flags) {
  int r;

  do { if (_SEGGER_RTT.acID[0] == '\0') { _DoInit(); } } while (0);
  if (BufferIndex < (unsigned)_SEGGER_RTT.MaxNumUpBuffers) {
    { unsigned int LockState; __asm volatile ("mrs   %0, basepri  \n\t" "mov   r1, %1       \n\t" "msr   basepri, r1  \n\t" : "=r" (LockState) : "i"((0x20)) : "r1" );;
    if (BufferIndex > 0u) {
      _SEGGER_RTT.aUp[BufferIndex].sName = sName;
      _SEGGER_RTT.aUp[BufferIndex].pBuffer = (char*)pBuffer;
      _SEGGER_RTT.aUp[BufferIndex].SizeOfBuffer = BufferSize;
      _SEGGER_RTT.aUp[BufferIndex].RdOff = 0u;
      _SEGGER_RTT.aUp[BufferIndex].WrOff = 0u;
    }
    _SEGGER_RTT.aUp[BufferIndex].Flags = Flags;
    __asm volatile ("msr   basepri, %0  \n\t" : : "r" (LockState) : ); };
    r = 0;
  } else {
    r = -1;
  }
  return r;
}
# 1405 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\systemView\\SEGGER_RTT.c"
int SEGGER_RTT_ConfigDownBuffer(unsigned BufferIndex, const char* sName, void* pBuffer, unsigned BufferSize, unsigned Flags) {
  int r;

  do { if (_SEGGER_RTT.acID[0] == '\0') { _DoInit(); } } while (0);
  if (BufferIndex < (unsigned)_SEGGER_RTT.MaxNumDownBuffers) {
    { unsigned int LockState; __asm volatile ("mrs   %0, basepri  \n\t" "mov   r1, %1       \n\t" "msr   basepri, r1  \n\t" : "=r" (LockState) : "i"((0x20)) : "r1" );;
    if (BufferIndex > 0u) {
      _SEGGER_RTT.aDown[BufferIndex].sName = sName;
      _SEGGER_RTT.aDown[BufferIndex].pBuffer = (char*)pBuffer;
      _SEGGER_RTT.aDown[BufferIndex].SizeOfBuffer = BufferSize;
      _SEGGER_RTT.aDown[BufferIndex].RdOff = 0u;
      _SEGGER_RTT.aDown[BufferIndex].WrOff = 0u;
    }
    _SEGGER_RTT.aDown[BufferIndex].Flags = Flags;
    __asm volatile ("msr   basepri, %0  \n\t" : : "r" (LockState) : ); };
    r = 0;
  } else {
    r = -1;
  }
  return r;
}
# 1443 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\systemView\\SEGGER_RTT.c"
int SEGGER_RTT_SetNameUpBuffer(unsigned BufferIndex, const char* sName) {
  int r;

  do { if (_SEGGER_RTT.acID[0] == '\0') { _DoInit(); } } while (0);
  if (BufferIndex < (unsigned)_SEGGER_RTT.MaxNumUpBuffers) {
    { unsigned int LockState; __asm volatile ("mrs   %0, basepri  \n\t" "mov   r1, %1       \n\t" "msr   basepri, r1  \n\t" : "=r" (LockState) : "i"((0x20)) : "r1" );;
    _SEGGER_RTT.aUp[BufferIndex].sName = sName;
    __asm volatile ("msr   basepri, %0  \n\t" : : "r" (LockState) : ); };
    r = 0;
  } else {
    r = -1;
  }
  return r;
}
# 1474 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\systemView\\SEGGER_RTT.c"
int SEGGER_RTT_SetNameDownBuffer(unsigned BufferIndex, const char* sName) {
  int r;

  do { if (_SEGGER_RTT.acID[0] == '\0') { _DoInit(); } } while (0);
  if (BufferIndex < (unsigned)_SEGGER_RTT.MaxNumDownBuffers) {
    { unsigned int LockState; __asm volatile ("mrs   %0, basepri  \n\t" "mov   r1, %1       \n\t" "msr   basepri, r1  \n\t" : "=r" (LockState) : "i"((0x20)) : "r1" );;
    _SEGGER_RTT.aDown[BufferIndex].sName = sName;
    __asm volatile ("msr   basepri, %0  \n\t" : : "r" (LockState) : ); };
    r = 0;
  } else {
    r = -1;
  }
  return r;
}
# 1505 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\systemView\\SEGGER_RTT.c"
int SEGGER_RTT_SetFlagsUpBuffer(unsigned BufferIndex, unsigned Flags) {
  int r;

  do { if (_SEGGER_RTT.acID[0] == '\0') { _DoInit(); } } while (0);
  if (BufferIndex < (unsigned)_SEGGER_RTT.MaxNumUpBuffers) {
    { unsigned int LockState; __asm volatile ("mrs   %0, basepri  \n\t" "mov   r1, %1       \n\t" "msr   basepri, r1  \n\t" : "=r" (LockState) : "i"((0x20)) : "r1" );;
    _SEGGER_RTT.aUp[BufferIndex].Flags = Flags;
    __asm volatile ("msr   basepri, %0  \n\t" : : "r" (LockState) : ); };
    r = 0;
  } else {
    r = -1;
  }
  return r;
}
# 1536 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\systemView\\SEGGER_RTT.c"
int SEGGER_RTT_SetFlagsDownBuffer(unsigned BufferIndex, unsigned Flags) {
  int r;

  do { if (_SEGGER_RTT.acID[0] == '\0') { _DoInit(); } } while (0);
  if (BufferIndex < (unsigned)_SEGGER_RTT.MaxNumDownBuffers) {
    { unsigned int LockState; __asm volatile ("mrs   %0, basepri  \n\t" "mov   r1, %1       \n\t" "msr   basepri, r1  \n\t" : "=r" (LockState) : "i"((0x20)) : "r1" );;
    _SEGGER_RTT.aDown[BufferIndex].Flags = Flags;
    __asm volatile ("msr   basepri, %0  \n\t" : : "r" (LockState) : ); };
    r = 0;
  } else {
    r = -1;
  }
  return r;
}
# 1560 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\systemView\\SEGGER_RTT.c"
void SEGGER_RTT_Init (void) {
  _DoInit();
}
# 1578 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\systemView\\SEGGER_RTT.c"
int SEGGER_RTT_SetTerminal (char TerminalId) {
  unsigned char ac[2];
  SEGGER_RTT_BUFFER_UP* pRing;
  unsigned Avail;
  int r;

  do { if (_SEGGER_RTT.acID[0] == '\0') { _DoInit(); } } while (0);

  r = 0;
  ac[0] = 0xFFu;
  if ((unsigned char)TerminalId < (unsigned char)sizeof(_aTerminalId)) {
    ac[1] = _aTerminalId[(unsigned char)TerminalId];
    pRing = &_SEGGER_RTT.aUp[0];
    { unsigned int LockState; __asm volatile ("mrs   %0, basepri  \n\t" "mov   r1, %1       \n\t" "msr   basepri, r1  \n\t" : "=r" (LockState) : "i"((0x20)) : "r1" );;
    if ((pRing->Flags & (3U)) == (2U)) {
      _ActiveTerminal = TerminalId;
      _WriteBlocking(pRing, (const char*)ac, 2u);
    } else {
      Avail = _GetAvailWriteSpace(pRing);
      if (Avail >= 2) {
        _ActiveTerminal = TerminalId;
        _WriteNoCheck(pRing, (const char*)ac, 2u);
      } else {
        r = -1;
      }
    }
    __asm volatile ("msr   basepri, %0  \n\t" : : "r" (LockState) : ); };
  } else {
    r = -1;
  }
  return r;
}
# 1628 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\systemView\\SEGGER_RTT.c"
int SEGGER_RTT_TerminalOut (char TerminalId, const char* s) {
  int Status;
  unsigned FragLen;
  unsigned Avail;
  SEGGER_RTT_BUFFER_UP* pRing;

  do { if (_SEGGER_RTT.acID[0] == '\0') { _DoInit(); } } while (0);



  if (TerminalId < (char)sizeof(_aTerminalId)) {



    pRing = &_SEGGER_RTT.aUp[0];




    FragLen = strlen((s));



    { unsigned int LockState; __asm volatile ("mrs   %0, basepri  \n\t" "mov   r1, %1       \n\t" "msr   basepri, r1  \n\t" : "=r" (LockState) : "i"((0x20)) : "r1" );;
    Avail = _GetAvailWriteSpace(pRing);
    switch (pRing->Flags & (3U)) {
    case (0U):




      if (Avail < (FragLen + 4u)) {
        Status = 0;
      } else {
        _PostTerminalSwitch(pRing, TerminalId);
        Status = (int)_WriteBlocking(pRing, s, FragLen);
        _PostTerminalSwitch(pRing, _ActiveTerminal);
      }
      break;
    case (1U):





      if (Avail < 4u) {
        Status = -1;
      } else {
        _PostTerminalSwitch(pRing, TerminalId);
        Status = (int)_WriteBlocking(pRing, s, (FragLen < (Avail - 4u)) ? FragLen : (Avail - 4u));
        _PostTerminalSwitch(pRing, _ActiveTerminal);
      }
      break;
    case (2U):



      _PostTerminalSwitch(pRing, TerminalId);
      Status = (int)_WriteBlocking(pRing, s, FragLen);
      _PostTerminalSwitch(pRing, _ActiveTerminal);
      break;
    default:
      Status = -1;
      break;
    }



    __asm volatile ("msr   basepri, %0  \n\t" : : "r" (LockState) : ); };
  } else {
    Status = -1;
  }
  return Status;
}
