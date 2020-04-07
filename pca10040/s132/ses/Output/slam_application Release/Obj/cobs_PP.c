# 1 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\communication\\cobs.c"
# 1 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\pca10040\\s132\\ses//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\communication\\cobs.c"







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
# 9 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\communication\\cobs.c" 2
# 1 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\communication\\cobs.h" 1
# 18 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\communication\\cobs.h"
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
# 19 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\communication\\cobs.h" 2
# 34 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\communication\\cobs.h"

# 34 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\communication\\cobs.h"
typedef enum
{
    COBS_ENCODE_OK = 0x00,
    COBS_ENCODE_NULL_POINTER = 0x01,
    COBS_ENCODE_OUT_BUFFER_OVERFLOW = 0x02
} cobs_encode_status;

typedef struct
{
    size_t out_len;
    cobs_encode_status status;
} cobs_encode_result;


typedef enum
{
    COBS_DECODE_OK = 0x00,
    COBS_DECODE_NULL_POINTER = 0x01,
    COBS_DECODE_OUT_BUFFER_OVERFLOW = 0x02,
    COBS_DECODE_ZERO_BYTE_IN_INPUT = 0x04,
    COBS_DECODE_INPUT_TOO_SHORT = 0x08
} cobs_decode_status;

typedef struct
{
    size_t out_len;
    cobs_decode_status status;
} cobs_decode_result;
# 72 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\communication\\cobs.h"
cobs_encode_result cobs_encode(uint8_t *dst_buf_ptr, size_t dst_buf_len, const uint8_t * src_ptr, size_t src_len);
cobs_decode_result cobs_decode(uint8_t *dst_buf_ptr, size_t dst_buf_len, const uint8_t * src_ptr, size_t src_len);
# 10 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\communication\\cobs.c" 2
# 29 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\communication\\cobs.c"
cobs_encode_result cobs_encode(uint8_t *dst_buf_ptr, size_t dst_buf_len, const uint8_t * src_ptr, size_t src_len)
{
    cobs_encode_result result = { 0, COBS_ENCODE_OK };
    const uint8_t * src_end_ptr = src_ptr + src_len;
    uint8_t * dst_buf_end_ptr = dst_buf_ptr + dst_buf_len;
    uint8_t * dst_code_write_ptr = dst_buf_ptr;
    uint8_t * dst_write_ptr = dst_code_write_ptr + 1;
    uint8_t src_byte = 0;
    uint8_t search_len = 1;



    if ((dst_buf_ptr == 
# 41 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\communication\\cobs.c" 3 4
                       0
# 41 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\communication\\cobs.c"
                           ) || (src_ptr == 
# 41 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\communication\\cobs.c" 3 4
                                            0
# 41 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\communication\\cobs.c"
                                                ))
    {
        result.status = COBS_ENCODE_NULL_POINTER;
        return result;
    }

    if (src_len != 0)
    {

        for (;;)
        {

            if (dst_write_ptr >= dst_buf_end_ptr)
            {
                result.status |= COBS_ENCODE_OUT_BUFFER_OVERFLOW;
                break;
            }

            src_byte = *src_ptr++;
            if (src_byte == 0)
            {

                *dst_code_write_ptr = search_len;
                dst_code_write_ptr = dst_write_ptr++;
                search_len = 1;
                if (src_ptr >= src_end_ptr)
                {
                    break;
                }
            }
            else
            {

                *dst_write_ptr++ = src_byte;
                search_len++;
                if (src_ptr >= src_end_ptr)
                {
                    break;
                }
                if (search_len == 0xFF)
                {


                    *dst_code_write_ptr = search_len;
                    dst_code_write_ptr = dst_write_ptr++;
                    search_len = 1;
                }
            }
        }
    }





    if (dst_code_write_ptr >= dst_buf_end_ptr)
    {

        result.status |= COBS_ENCODE_OUT_BUFFER_OVERFLOW;
        dst_write_ptr = dst_buf_end_ptr;
    }
    else
    {

        *dst_code_write_ptr = search_len;
    }


    result.out_len = dst_write_ptr - dst_buf_ptr;

    return result;
}


cobs_decode_result cobs_decode(uint8_t *dst_buf_ptr, size_t dst_buf_len, const uint8_t * src_ptr, size_t src_len)
{
    cobs_decode_result result = { 0, COBS_DECODE_OK };
    const uint8_t * src_end_ptr = src_ptr + src_len;
    uint8_t * dst_buf_end_ptr = dst_buf_ptr + dst_buf_len;
    uint8_t * dst_write_ptr = dst_buf_ptr;
    size_t remaining_bytes;
    uint8_t src_byte;
    uint8_t i;
    uint8_t len_code;



    if ((dst_buf_ptr == 
# 128 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\communication\\cobs.c" 3 4
                       0
# 128 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\communication\\cobs.c"
                           ) || (src_ptr == 
# 128 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\communication\\cobs.c" 3 4
                                            0
# 128 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\communication\\cobs.c"
                                                ))
    {
        result.status = COBS_DECODE_NULL_POINTER;
        return result;
    }

    if (src_len != 0)
    {
        for (;;)
        {
            len_code = *src_ptr++;
            if (len_code == 0)
            {
                result.status |= COBS_DECODE_ZERO_BYTE_IN_INPUT;
                break;
            }
            len_code--;


            remaining_bytes = src_end_ptr - src_ptr;
            if (len_code > remaining_bytes)
            {
                result.status |= COBS_DECODE_INPUT_TOO_SHORT;
                len_code = remaining_bytes;
            }


            remaining_bytes = dst_buf_end_ptr - dst_write_ptr;
            if (len_code > remaining_bytes)
            {
                result.status |= COBS_DECODE_OUT_BUFFER_OVERFLOW;
                len_code = remaining_bytes;
            }

            for (i = len_code; i != 0; i--)
            {
                src_byte = *src_ptr++;
                if (src_byte == 0)
                {
                    result.status |= COBS_DECODE_ZERO_BYTE_IN_INPUT;
                }
                *dst_write_ptr++ = src_byte;
            }

            if (src_ptr >= src_end_ptr)
            {
                break;
            }


            if (len_code != 0xFE)
            {
                if (dst_write_ptr >= dst_buf_end_ptr)
                {
                    result.status |= COBS_DECODE_OUT_BUFFER_OVERFLOW;
                    break;
                }
                *dst_write_ptr++ = 0;
            }
        }
    }

    result.out_len = dst_write_ptr - dst_buf_ptr;

    return result;
}
