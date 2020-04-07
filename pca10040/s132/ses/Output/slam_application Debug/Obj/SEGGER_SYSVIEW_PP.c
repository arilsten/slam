# 1 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER_SYSVIEW.c"
# 1 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\pca10040\\s132\\ses//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER_SYSVIEW.c"
# 148 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER_SYSVIEW.c"
# 1 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER_SYSVIEW_Int.h" 1
# 74 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER_SYSVIEW_Int.h"
# 1 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER_SYSVIEW.h" 1
# 74 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER_SYSVIEW.h"
# 1 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER.h" 1
# 67 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER.h"
# 1 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stdarg.h" 1 3 4
# 48 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stdarg.h" 3 4
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
# 49 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stdarg.h" 2 3 4
# 69 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stdarg.h" 3 4
typedef __va_list va_list;
# 68 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER.h" 2
# 1 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\Global.h" 1
# 69 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER.h" 2
# 149 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER.h"

# 149 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER.h"
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
# 194 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER.h"
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
# 75 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER_SYSVIEW.h" 2
# 189 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER_SYSVIEW.h"
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
# 216 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER_SYSVIEW.h"
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
# 75 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER_SYSVIEW_Int.h" 2
# 1 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER_SYSVIEW_Conf.h" 1
# 76 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER_SYSVIEW_Int.h" 2
# 1 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER_SYSVIEW_ConfDefaults.h" 1
# 76 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER_SYSVIEW_ConfDefaults.h"
# 1 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER_RTT_Conf.h" 1
# 77 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER_SYSVIEW_ConfDefaults.h" 2
# 77 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER_SYSVIEW_Int.h" 2
# 92 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER_SYSVIEW_Int.h"
typedef enum {
  SEGGER_SYSVIEW_COMMAND_ID_START = 1,
  SEGGER_SYSVIEW_COMMAND_ID_STOP,
  SEGGER_SYSVIEW_COMMAND_ID_GET_SYSTIME,
  SEGGER_SYSVIEW_COMMAND_ID_GET_TASKLIST,
  SEGGER_SYSVIEW_COMMAND_ID_GET_SYSDESC,
  SEGGER_SYSVIEW_COMMAND_ID_GET_NUMMODULES,
  SEGGER_SYSVIEW_COMMAND_ID_GET_MODULEDESC,

  SEGGER_SYSVIEW_COMMAND_ID_GET_MODULE = 128
} SEGGER_SYSVIEW_COMMAND_ID;
# 149 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER_SYSVIEW.c" 2
# 1 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER_RTT.h" 1
# 89 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER_RTT.h"
# 1 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stdlib.h" 1 3 4
# 55 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stdlib.h" 3 4

# 55 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stdlib.h" 3 4
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
# 90 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER_RTT.h" 2
# 110 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER_RTT.h"

# 110 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER_RTT.h"
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
# 162 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER_RTT.h"
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
# 202 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER_RTT.h"
int SEGGER_RTT_SetTerminal (char TerminalId);
int SEGGER_RTT_TerminalOut (char TerminalId, const char* s);







int SEGGER_RTT_printf(unsigned BufferIndex, const char * sFormat, ...);
int SEGGER_RTT_vprintf(unsigned BufferIndex, const char * sFormat, va_list * pParamList);
# 150 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER_SYSVIEW.c" 2
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
# 151 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER_SYSVIEW.c" 2
# 216 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER_SYSVIEW.c"

# 216 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER_SYSVIEW.c"
typedef struct {
  unsigned char* pBuffer;
  unsigned char* pPayload;
  unsigned char* pPayloadStart;
  unsigned long Options;
  unsigned Cnt;
} SEGGER_SYSVIEW_PRINTF_DESC;

typedef struct {
        unsigned char EnableState;
        unsigned char UpChannel;
        unsigned char RecursionCnt;
        unsigned long SysFreq;
        unsigned long CPUFreq;
        unsigned long LastTxTimeStamp;
        unsigned long RAMBaseAddress;



        unsigned long DropCount;
        unsigned char DownChannel;

        unsigned long DisabledEvents;
  const SEGGER_SYSVIEW_OS_API* pOSAPI;
        SEGGER_SYSVIEW_SEND_SYS_DESC_FUNC* pfSendSysDesc;
} SEGGER_SYSVIEW_GLOBALS;







static void _SendPacket(unsigned char* pStartPacket, unsigned char* pEndPacket, unsigned int EventId);







static const unsigned char _abSync[10] = { 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00};
# 282 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER_SYSVIEW.c"
    static char _UpBuffer [4096];

    static char _DownBuffer[8];



static SEGGER_SYSVIEW_GLOBALS _SYSVIEW_Globals;

static SEGGER_SYSVIEW_MODULE* _pFirstModule;
static unsigned char _NumModules;
# 316 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER_SYSVIEW.c"
static unsigned char _aPacket[9 + 128 + 2 * 5 + 16 * 5];
# 354 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER_SYSVIEW.c"
static unsigned char* _EncodeData(unsigned char* pPayload, const char* pSrc, unsigned int NumBytes) {
  unsigned int n;

  n = 0;
  *pPayload++ = NumBytes;
  while (n < NumBytes) {
    *pPayload++ = *pSrc++;
    n++;
  }
  return pPayload;
}
# 388 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER_SYSVIEW.c"
static unsigned char *_EncodeStr(unsigned char *pPayload, const char *pText, unsigned int Limit) {
  unsigned int n;
  unsigned int Len;



  Len = 0;
  while(*(pText + Len) != 0) {
    Len++;
  }
  if (Len > Limit) {
    Len = Limit;
  }



  if (Len < 255) {
    *pPayload++ = Len;
  } else {
    *pPayload++ = 255;
    *pPayload++ = (Len & 255);
    *pPayload++ = ((Len >> 8) & 255);
  }



  n = 0;
  while (n < Len) {
    *pPayload++ = *pText++;
    n++;
  }
  return pPayload;
}
# 440 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER_SYSVIEW.c"
static unsigned char* _PreparePacket(unsigned char* pPacket) {
  return pPacket + 4;
}
# 457 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER_SYSVIEW.c"
static void _HandleIncomingPacket(void) {
  unsigned char Cmd;
  int Status;

  Status = SEGGER_RTT_ReadNoLock(1, &Cmd, 1);
  if (Status > 0) {
    switch (Cmd) {
    case SEGGER_SYSVIEW_COMMAND_ID_START:
      SEGGER_SYSVIEW_Start();
      break;
    case SEGGER_SYSVIEW_COMMAND_ID_STOP:
      SEGGER_SYSVIEW_Stop();
      break;
    case SEGGER_SYSVIEW_COMMAND_ID_GET_SYSTIME:
      SEGGER_SYSVIEW_RecordSystime();
      break;
    case SEGGER_SYSVIEW_COMMAND_ID_GET_TASKLIST:
      SEGGER_SYSVIEW_SendTaskList();
      break;
    case SEGGER_SYSVIEW_COMMAND_ID_GET_SYSDESC:
      SEGGER_SYSVIEW_GetSysDesc();
      break;
    case SEGGER_SYSVIEW_COMMAND_ID_GET_NUMMODULES:
      SEGGER_SYSVIEW_SendNumModules();
      break;
    case SEGGER_SYSVIEW_COMMAND_ID_GET_MODULEDESC:
      SEGGER_SYSVIEW_SendModuleDescription();
      break;
    case SEGGER_SYSVIEW_COMMAND_ID_GET_MODULE:
      Status = SEGGER_RTT_ReadNoLock(1, &Cmd, 1);
      if (Status > 0) {
        SEGGER_SYSVIEW_SendModule(Cmd);
      }
      break;
    default:
      if (Cmd >= 128) {
        SEGGER_RTT_ReadNoLock(1, &Cmd, 1);
      }
      break;
    }
  }
}
# 522 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER_SYSVIEW.c"
static int _TrySendOverflowPacket(void) {
  unsigned long TimeStamp;
  signed long Delta;
  int Status;
  unsigned char aPacket[11];
  unsigned char* pPayload;

  aPacket[0] = 1;
  pPayload = &aPacket[1];
  { unsigned char* pSysviewPointer; unsigned long SysViewData; pSysviewPointer = pPayload; SysViewData = _SYSVIEW_Globals.DropCount; while(SysViewData > 0x7F) { *pSysviewPointer++ = (unsigned char)(SysViewData | 0x80); SysViewData >>= 7; }; *pSysviewPointer++ = (unsigned char)SysViewData; pPayload = pSysviewPointer; };;



  TimeStamp = (*(unsigned long *)(0xE0001004));
  Delta = TimeStamp - _SYSVIEW_Globals.LastTxTimeStamp;
  ;
  { unsigned char* pSysviewPointer; unsigned long SysViewData; pSysviewPointer = pPayload; SysViewData = Delta; while(SysViewData > 0x7F) { *pSysviewPointer++ = (unsigned char)(SysViewData | 0x80); SysViewData >>= 7; }; *pSysviewPointer++ = (unsigned char)SysViewData; pPayload = pSysviewPointer; };;



  Status = SEGGER_RTT_ASM_WriteSkipNoLock(1, aPacket, pPayload - aPacket);
  if (Status) {
    _SYSVIEW_Globals.LastTxTimeStamp = TimeStamp;
    _SYSVIEW_Globals.EnableState--;
  } else {
    _SYSVIEW_Globals.DropCount++;
  }

  return Status;
}
# 625 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER_SYSVIEW.c"
static void _SendPacket(unsigned char* pStartPacket, unsigned char* pEndPacket, unsigned int EventId) {
  unsigned int NumBytes;
  unsigned long TimeStamp;
  unsigned long Delta;

  int Status;
# 642 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER_SYSVIEW.c"
  if (_SYSVIEW_Globals.EnableState == 1) {
    goto Send;
  }
  if (_SYSVIEW_Globals.EnableState == 0) {
    goto SendDone;
  }





  if (_SYSVIEW_Globals.EnableState == 2) {
    _TrySendOverflowPacket();
    if (_SYSVIEW_Globals.EnableState != 1) {
      goto SendDone;
    }
  }
Send:




  if (EventId < 32) {
    if (_SYSVIEW_Globals.DisabledEvents & ((unsigned long)1u << EventId)) {
      goto SendDone;
    }
  }





  if (EventId < 24) {
    *--pStartPacket = EventId;
  } else {
    NumBytes = pEndPacket - pStartPacket;
    if (NumBytes > 127) {
      *--pStartPacket = (NumBytes >> 7);
      *--pStartPacket = NumBytes | 0x80;
    } else {
      *--pStartPacket = NumBytes;
    }
    if (EventId > 127) {
      *--pStartPacket = (EventId >> 7);
      *--pStartPacket = EventId | 0x80;
    } else {
      *--pStartPacket = EventId;
    }
  }



  TimeStamp = (*(unsigned long *)(0xE0001004));
  Delta = TimeStamp - _SYSVIEW_Globals.LastTxTimeStamp;
  ;
  { unsigned char* pSysviewPointer; unsigned long SysViewData; pSysviewPointer = pEndPacket; SysViewData = Delta; while(SysViewData > 0x7F) { *pSysviewPointer++ = (unsigned char)(SysViewData | 0x80); SysViewData >>= 7; }; *pSysviewPointer++ = (unsigned char)SysViewData; pEndPacket = pSysviewPointer; };;
# 708 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER_SYSVIEW.c"
  Status = SEGGER_RTT_ASM_WriteSkipNoLock(1, pStartPacket, pEndPacket - pStartPacket);
  if (Status) {
    _SYSVIEW_Globals.LastTxTimeStamp = TimeStamp;
  } else {
    _SYSVIEW_Globals.EnableState++;
  }
# 731 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER_SYSVIEW.c"
SendDone:





  if ((_SEGGER_RTT.aDown[1].WrOff - _SEGGER_RTT.aDown[1].RdOff)) {
    if (_SYSVIEW_Globals.RecursionCnt == 0) {
      _SYSVIEW_Globals.RecursionCnt = 1;
      _HandleIncomingPacket();
      _SYSVIEW_Globals.RecursionCnt = 0;
    }
  }





}
# 764 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER_SYSVIEW.c"
static int _VPrintHost(const char* s, unsigned long Options, va_list* pParamList) {
  unsigned long aParas[16];
  unsigned long* pParas;
  unsigned long NumArguments;
  const char* p;
  char c;
  unsigned char* pPayload;
  unsigned char* pPayloadStart;
# 781 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER_SYSVIEW.c"
  p = s;
  NumArguments = 0;
  for (;;) {
    c = *p++;
    if (c == 0) {
      break;
    }
    if (c == '%') {
      c = *p;

      aParas[NumArguments++] = 
# 791 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER_SYSVIEW.c" 3 4
                              __builtin_va_arg
# 791 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER_SYSVIEW.c"
                                    (*pParamList, int);
      if (NumArguments == 16) {
        break;
      }
# 806 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER_SYSVIEW.c"
    }
  }
# 817 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER_SYSVIEW.c"
  {
    { unsigned int LockState; __asm volatile ("mrs   %0, basepri  \n\t" "mov   r1, %1       \n\t" "msr   basepri, r1  \n\t" : "=r" (LockState) : "i"((0x20)) : "r1" );; pPayloadStart = _PreparePacket(_aPacket);;
    pPayload = _EncodeStr(pPayloadStart, s, 128);
    { unsigned char* pSysviewPointer; unsigned long SysViewData; pSysviewPointer = pPayload; SysViewData = Options; while(SysViewData > 0x7F) { *pSysviewPointer++ = (unsigned char)(SysViewData | 0x80); SysViewData >>= 7; }; *pSysviewPointer++ = (unsigned char)SysViewData; pPayload = pSysviewPointer; };;
    { unsigned char* pSysviewPointer; unsigned long SysViewData; pSysviewPointer = pPayload; SysViewData = NumArguments; while(SysViewData > 0x7F) { *pSysviewPointer++ = (unsigned char)(SysViewData | 0x80); SysViewData >>= 7; }; *pSysviewPointer++ = (unsigned char)SysViewData; pPayload = pSysviewPointer; };;
    pParas = aParas;
    while (NumArguments--) {
      { unsigned char* pSysviewPointer; unsigned long SysViewData; pSysviewPointer = pPayload; SysViewData = (*pParas); while(SysViewData > 0x7F) { *pSysviewPointer++ = (unsigned char)(SysViewData | 0x80); SysViewData >>= 7; }; *pSysviewPointer++ = (unsigned char)SysViewData; pPayload = pSysviewPointer; };;
      pParas++;
    }
    _SendPacket(pPayloadStart, pPayload, 26);
    __asm volatile ("msr   basepri, %0  \n\t" : : "r" (LockState) : ); };
  }
  return 0;
}
# 845 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER_SYSVIEW.c"
static void _StoreChar(SEGGER_SYSVIEW_PRINTF_DESC * p, char c) {
  unsigned int Cnt;
  unsigned char* pPayload;
  unsigned long Options;

  Cnt = p->Cnt;
  if ((Cnt + 1u) <= 128) {
    *(p->pPayload++) = c;
    p->Cnt = Cnt + 1u;
  }



  if (p->Cnt == 128) {
    *(p->pPayloadStart) = p->Cnt;
    pPayload = p->pPayload;
    Options = p->Options;
    { unsigned char* pSysviewPointer; unsigned long SysViewData; pSysviewPointer = pPayload; SysViewData = Options; while(SysViewData > 0x7F) { *pSysviewPointer++ = (unsigned char)(SysViewData | 0x80); SysViewData >>= 7; }; *pSysviewPointer++ = (unsigned char)SysViewData; pPayload = pSysviewPointer; };;
    { unsigned char* pSysviewPointer; unsigned long SysViewData; pSysviewPointer = pPayload; SysViewData = 0; while(SysViewData > 0x7F) { *pSysviewPointer++ = (unsigned char)(SysViewData | 0x80); SysViewData >>= 7; }; *pSysviewPointer++ = (unsigned char)SysViewData; pPayload = pSysviewPointer; };;
    _SendPacket(p->pPayloadStart, pPayload, 26);
    p->pPayloadStart = _PreparePacket(p->pBuffer);
    p->pPayload = p->pPayloadStart + 1u;
    p->Cnt = 0u;
  }
}
# 887 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER_SYSVIEW.c"
static void _PrintUnsigned(SEGGER_SYSVIEW_PRINTF_DESC * pBufferDesc, unsigned int v, unsigned int Base, unsigned int NumDigits, unsigned int FieldWidth, unsigned int FormatFlags) {
  static const char _aV2C[16] = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F' };
  unsigned int Div;
  unsigned int Digit;
  unsigned int Number;
  unsigned int Width;
  char c;

  Number = v;
  Digit = 1u;



  Width = 1u;
  while (Number >= Base) {
    Number = (Number / Base);
    Width++;
  }
  if (NumDigits > Width) {
    Width = NumDigits;
  }



  if ((FormatFlags & (1u << 0)) == 0u) {
    if (FieldWidth != 0u) {
      if (((FormatFlags & (1u << 1)) == (1u << 1)) && (NumDigits == 0u)) {
        c = '0';
      } else {
        c = ' ';
      }
      while ((FieldWidth != 0u) && (Width < FieldWidth)) {
        FieldWidth--;
        _StoreChar(pBufferDesc, c);
      }
    }
  }





  while (1) {
    if (NumDigits > 1u) {
      NumDigits--;
    } else {
      Div = v / Digit;
      if (Div < Base) {
        break;
      }
    }
    Digit *= Base;
  }



  do {
    Div = v / Digit;
    v -= Div * Digit;
    _StoreChar(pBufferDesc, _aV2C[Div]);
    Digit /= Base;
  } while (Digit);



  if ((FormatFlags & (1u << 0)) == (1u << 0)) {
    if (FieldWidth != 0u) {
      while ((FieldWidth != 0u) && (Width < FieldWidth)) {
        FieldWidth--;
        _StoreChar(pBufferDesc, ' ');
      }
    }
  }
}
# 978 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER_SYSVIEW.c"
static void _PrintInt(SEGGER_SYSVIEW_PRINTF_DESC * pBufferDesc, int v, unsigned int Base, unsigned int NumDigits, unsigned int FieldWidth, unsigned int FormatFlags) {
  unsigned int Width;
  int Number;

  Number = (v < 0) ? -v : v;




  Width = 1u;
  while (Number >= (int)Base) {
    Number = (Number / (int)Base);
    Width++;
  }
  if (NumDigits > Width) {
    Width = NumDigits;
  }
  if ((FieldWidth > 0u) && ((v < 0) || ((FormatFlags & (1u << 2)) == (1u << 2)))) {
    FieldWidth--;
  }




  if ((((FormatFlags & (1u << 1)) == 0u) || (NumDigits != 0u)) && ((FormatFlags & (1u << 0)) == 0u)) {
    if (FieldWidth != 0u) {
      while ((FieldWidth != 0u) && (Width < FieldWidth)) {
        FieldWidth--;
        _StoreChar(pBufferDesc, ' ');
      }
    }
  }



  if (v < 0) {
    v = -v;
    _StoreChar(pBufferDesc, '-');
  } else if ((FormatFlags & (1u << 2)) == (1u << 2)) {
    _StoreChar(pBufferDesc, '+');
  } else {

  }



  if (((FormatFlags & (1u << 1)) == (1u << 1)) && ((FormatFlags & (1u << 0)) == 0u) && (NumDigits == 0u)) {
    if (FieldWidth != 0u) {
      while ((FieldWidth != 0u) && (Width < FieldWidth)) {
        FieldWidth--;
        _StoreChar(pBufferDesc, '0');
      }
    }
  }



  _PrintUnsigned(pBufferDesc, (unsigned int)v, Base, NumDigits, FieldWidth, FormatFlags);
}
# 1051 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER_SYSVIEW.c"
static void _VPrintTarget(const char* sFormat, unsigned long Options, va_list* pParamList) {
  SEGGER_SYSVIEW_PRINTF_DESC BufferDesc;
  char c;
  int v;
  unsigned int NumDigits;
  unsigned int FormatFlags;
  unsigned int FieldWidth;
  unsigned char* pPayloadStart;




  { unsigned int LockState; __asm volatile ("mrs   %0, basepri  \n\t" "mov   r1, %1       \n\t" "msr   basepri, r1  \n\t" : "=r" (LockState) : "i"((0x20)) : "r1" );; pPayloadStart = _PreparePacket(_aPacket);;





  BufferDesc.pBuffer = _aPacket;

  BufferDesc.Cnt = 0u;
  BufferDesc.pPayloadStart = pPayloadStart;
  BufferDesc.pPayload = BufferDesc.pPayloadStart + 1u;
  BufferDesc.Options = Options;

  do {
    c = *sFormat;
    sFormat++;
    if (c == 0u) {
      break;
    }
    if (c == '%') {



      FormatFlags = 0u;
      v = 1;
      do {
        c = *sFormat;
        switch (c) {
        case '-': FormatFlags |= (1u << 0); sFormat++; break;
        case '0': FormatFlags |= (1u << 1); sFormat++; break;
        case '+': FormatFlags |= (1u << 2); sFormat++; break;
        case '#': FormatFlags |= (1u << 3); sFormat++; break;
        default: v = 0; break;
        }
      } while (v);



      FieldWidth = 0u;
      do {
        c = *sFormat;
        if ((c < '0') || (c > '9')) {
          break;
        }
        sFormat++;
        FieldWidth = (FieldWidth * 10u) + ((unsigned int)c - '0');
      } while (1);




      NumDigits = 0u;
      c = *sFormat;
      if (c == '.') {
        sFormat++;
        do {
          c = *sFormat;
          if ((c < '0') || (c > '9')) {
            break;
          }
          sFormat++;
          NumDigits = NumDigits * 10u + ((unsigned int)c - '0');
        } while (1);
      }



      c = *sFormat;
      do {
        if ((c == 'l') || (c == 'h')) {
          c = *sFormat;
          sFormat++;
        } else {
          break;
        }
      } while (1);



      switch (c) {
      case 'c': {
        char c0;
        v = 
# 1145 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER_SYSVIEW.c" 3 4
           __builtin_va_arg
# 1145 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER_SYSVIEW.c"
                 (*pParamList, int);
        c0 = (char)v;
        _StoreChar(&BufferDesc, c0);
        break;
      }
      case 'd':
        v = 
# 1151 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER_SYSVIEW.c" 3 4
           __builtin_va_arg
# 1151 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER_SYSVIEW.c"
                 (*pParamList, int);
        _PrintInt(&BufferDesc, v, 10u, NumDigits, FieldWidth, FormatFlags);
        break;
      case 'u':
        v = 
# 1155 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER_SYSVIEW.c" 3 4
           __builtin_va_arg
# 1155 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER_SYSVIEW.c"
                 (*pParamList, int);
        _PrintUnsigned(&BufferDesc, (unsigned int)v, 10u, NumDigits, FieldWidth, FormatFlags);
        break;
      case 'x':
      case 'X':
        v = 
# 1160 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER_SYSVIEW.c" 3 4
           __builtin_va_arg
# 1160 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER_SYSVIEW.c"
                 (*pParamList, int);
        _PrintUnsigned(&BufferDesc, (unsigned int)v, 16u, NumDigits, FieldWidth, FormatFlags);
        break;
      case 'p':
        v = 
# 1164 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER_SYSVIEW.c" 3 4
           __builtin_va_arg
# 1164 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER_SYSVIEW.c"
                 (*pParamList, int);
        _PrintUnsigned(&BufferDesc, (unsigned int)v, 16u, 8u, 8u, 0u);
        break;
      case '%':
        _StoreChar(&BufferDesc, '%');
        break;
      default:
        break;
      }
      sFormat++;
    } else {
      _StoreChar(&BufferDesc, c);
    }
  } while (*sFormat);




  if (BufferDesc.Cnt != 0u) {
    *(BufferDesc.pPayloadStart) = BufferDesc.Cnt;
    { unsigned char* pSysviewPointer; unsigned long SysViewData; pSysviewPointer = BufferDesc.pPayload; SysViewData = BufferDesc.Options; while(SysViewData > 0x7F) { *pSysviewPointer++ = (unsigned char)(SysViewData | 0x80); SysViewData >>= 7; }; *pSysviewPointer++ = (unsigned char)SysViewData; BufferDesc.pPayload = pSysviewPointer; };;
    { unsigned char* pSysviewPointer; unsigned long SysViewData; pSysviewPointer = BufferDesc.pPayload; SysViewData = 0; while(SysViewData > 0x7F) { *pSysviewPointer++ = (unsigned char)(SysViewData | 0x80); SysViewData >>= 7; }; *pSysviewPointer++ = (unsigned char)SysViewData; BufferDesc.pPayload = pSysviewPointer; };;
    _SendPacket(BufferDesc.pPayloadStart, BufferDesc.pPayload, 26);
  }




  __asm volatile ("msr   basepri, %0  \n\t" : : "r" (LockState) : ); };

}
# 1227 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER_SYSVIEW.c"
void SEGGER_SYSVIEW_Init(unsigned long SysFreq, unsigned long CPUFreq, const SEGGER_SYSVIEW_OS_API *pOSAPI, SEGGER_SYSVIEW_SEND_SYS_DESC_FUNC pfSendSysDesc) {
# 1250 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER_SYSVIEW.c"
  SEGGER_RTT_ConfigUpBuffer (1, "SysView", &_UpBuffer[0], sizeof(_UpBuffer), (0U));
  SEGGER_RTT_ConfigDownBuffer (1, "SysView", &_DownBuffer[0], sizeof(_DownBuffer), (0U));
# 1260 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER_SYSVIEW.c"
  _SYSVIEW_Globals.RAMBaseAddress = 0x10000000;
  _SYSVIEW_Globals.LastTxTimeStamp = (*(unsigned long *)(0xE0001004));
  _SYSVIEW_Globals.pOSAPI = pOSAPI;
  _SYSVIEW_Globals.SysFreq = SysFreq;
  _SYSVIEW_Globals.CPUFreq = CPUFreq;
  _SYSVIEW_Globals.pfSendSysDesc = pfSendSysDesc;
  _SYSVIEW_Globals.EnableState = 0;

}
# 1281 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER_SYSVIEW.c"
void SEGGER_SYSVIEW_SetRAMBase(unsigned long RAMBaseAddress) {
  _SYSVIEW_Globals.RAMBaseAddress = RAMBaseAddress;
}
# 1295 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER_SYSVIEW.c"
void SEGGER_SYSVIEW_RecordVoid(unsigned int EventID) {
  unsigned char* pPayloadStart;
  { unsigned int LockState; __asm volatile ("mrs   %0, basepri  \n\t" "mov   r1, %1       \n\t" "msr   basepri, r1  \n\t" : "=r" (LockState) : "i"((0x20)) : "r1" );; pPayloadStart = _PreparePacket(_aPacket);;

  _SendPacket(pPayloadStart, pPayloadStart, EventID);
  __asm volatile ("msr   basepri, %0  \n\t" : : "r" (LockState) : ); };
}
# 1315 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER_SYSVIEW.c"
void SEGGER_SYSVIEW_RecordU32(unsigned int EventID, unsigned long Value) {
  unsigned char* pPayload;
  unsigned char* pPayloadStart;
  { unsigned int LockState; __asm volatile ("mrs   %0, basepri  \n\t" "mov   r1, %1       \n\t" "msr   basepri, r1  \n\t" : "=r" (LockState) : "i"((0x20)) : "r1" );; pPayloadStart = _PreparePacket(_aPacket);;

  pPayload = pPayloadStart;
  { unsigned char* pSysviewPointer; unsigned long SysViewData; pSysviewPointer = pPayload; SysViewData = Value; while(SysViewData > 0x7F) { *pSysviewPointer++ = (unsigned char)(SysViewData | 0x80); SysViewData >>= 7; }; *pSysviewPointer++ = (unsigned char)SysViewData; pPayload = pSysviewPointer; };;
  _SendPacket(pPayloadStart, pPayload, EventID);
  __asm volatile ("msr   basepri, %0  \n\t" : : "r" (LockState) : ); };
}
# 1338 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER_SYSVIEW.c"
void SEGGER_SYSVIEW_RecordU32x2(unsigned int EventID, unsigned long Para0, unsigned long Para1) {
  unsigned char* pPayload;
  unsigned char* pPayloadStart;
  { unsigned int LockState; __asm volatile ("mrs   %0, basepri  \n\t" "mov   r1, %1       \n\t" "msr   basepri, r1  \n\t" : "=r" (LockState) : "i"((0x20)) : "r1" );; pPayloadStart = _PreparePacket(_aPacket);;

  pPayload = pPayloadStart;
  { unsigned char* pSysviewPointer; unsigned long SysViewData; pSysviewPointer = pPayload; SysViewData = Para0; while(SysViewData > 0x7F) { *pSysviewPointer++ = (unsigned char)(SysViewData | 0x80); SysViewData >>= 7; }; *pSysviewPointer++ = (unsigned char)SysViewData; pPayload = pSysviewPointer; };;
  { unsigned char* pSysviewPointer; unsigned long SysViewData; pSysviewPointer = pPayload; SysViewData = Para1; while(SysViewData > 0x7F) { *pSysviewPointer++ = (unsigned char)(SysViewData | 0x80); SysViewData >>= 7; }; *pSysviewPointer++ = (unsigned char)SysViewData; pPayload = pSysviewPointer; };;
  _SendPacket(pPayloadStart, pPayload, EventID);
  __asm volatile ("msr   basepri, %0  \n\t" : : "r" (LockState) : ); };
}
# 1363 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER_SYSVIEW.c"
void SEGGER_SYSVIEW_RecordU32x3(unsigned int EventID, unsigned long Para0, unsigned long Para1, unsigned long Para2) {
  unsigned char* pPayload;
  unsigned char* pPayloadStart;
  { unsigned int LockState; __asm volatile ("mrs   %0, basepri  \n\t" "mov   r1, %1       \n\t" "msr   basepri, r1  \n\t" : "=r" (LockState) : "i"((0x20)) : "r1" );; pPayloadStart = _PreparePacket(_aPacket);;

  pPayload = pPayloadStart;
  { unsigned char* pSysviewPointer; unsigned long SysViewData; pSysviewPointer = pPayload; SysViewData = Para0; while(SysViewData > 0x7F) { *pSysviewPointer++ = (unsigned char)(SysViewData | 0x80); SysViewData >>= 7; }; *pSysviewPointer++ = (unsigned char)SysViewData; pPayload = pSysviewPointer; };;
  { unsigned char* pSysviewPointer; unsigned long SysViewData; pSysviewPointer = pPayload; SysViewData = Para1; while(SysViewData > 0x7F) { *pSysviewPointer++ = (unsigned char)(SysViewData | 0x80); SysViewData >>= 7; }; *pSysviewPointer++ = (unsigned char)SysViewData; pPayload = pSysviewPointer; };;
  { unsigned char* pSysviewPointer; unsigned long SysViewData; pSysviewPointer = pPayload; SysViewData = Para2; while(SysViewData > 0x7F) { *pSysviewPointer++ = (unsigned char)(SysViewData | 0x80); SysViewData >>= 7; }; *pSysviewPointer++ = (unsigned char)SysViewData; pPayload = pSysviewPointer; };;
  _SendPacket(pPayloadStart, pPayload, EventID);
  __asm volatile ("msr   basepri, %0  \n\t" : : "r" (LockState) : ); };
}
# 1390 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER_SYSVIEW.c"
void SEGGER_SYSVIEW_RecordU32x4(unsigned int EventID, unsigned long Para0, unsigned long Para1, unsigned long Para2, unsigned long Para3) {
  unsigned char* pPayload;
  unsigned char* pPayloadStart;
  { unsigned int LockState; __asm volatile ("mrs   %0, basepri  \n\t" "mov   r1, %1       \n\t" "msr   basepri, r1  \n\t" : "=r" (LockState) : "i"((0x20)) : "r1" );; pPayloadStart = _PreparePacket(_aPacket);;

  pPayload = pPayloadStart;
  { unsigned char* pSysviewPointer; unsigned long SysViewData; pSysviewPointer = pPayload; SysViewData = Para0; while(SysViewData > 0x7F) { *pSysviewPointer++ = (unsigned char)(SysViewData | 0x80); SysViewData >>= 7; }; *pSysviewPointer++ = (unsigned char)SysViewData; pPayload = pSysviewPointer; };;
  { unsigned char* pSysviewPointer; unsigned long SysViewData; pSysviewPointer = pPayload; SysViewData = Para1; while(SysViewData > 0x7F) { *pSysviewPointer++ = (unsigned char)(SysViewData | 0x80); SysViewData >>= 7; }; *pSysviewPointer++ = (unsigned char)SysViewData; pPayload = pSysviewPointer; };;
  { unsigned char* pSysviewPointer; unsigned long SysViewData; pSysviewPointer = pPayload; SysViewData = Para2; while(SysViewData > 0x7F) { *pSysviewPointer++ = (unsigned char)(SysViewData | 0x80); SysViewData >>= 7; }; *pSysviewPointer++ = (unsigned char)SysViewData; pPayload = pSysviewPointer; };;
  { unsigned char* pSysviewPointer; unsigned long SysViewData; pSysviewPointer = pPayload; SysViewData = Para3; while(SysViewData > 0x7F) { *pSysviewPointer++ = (unsigned char)(SysViewData | 0x80); SysViewData >>= 7; }; *pSysviewPointer++ = (unsigned char)SysViewData; pPayload = pSysviewPointer; };;
  _SendPacket(pPayloadStart, pPayload, EventID);
  __asm volatile ("msr   basepri, %0  \n\t" : : "r" (LockState) : ); };
}
# 1419 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER_SYSVIEW.c"
void SEGGER_SYSVIEW_RecordU32x5(unsigned int EventID, unsigned long Para0, unsigned long Para1, unsigned long Para2, unsigned long Para3, unsigned long Para4) {
  unsigned char* pPayload;
  unsigned char* pPayloadStart;
  { unsigned int LockState; __asm volatile ("mrs   %0, basepri  \n\t" "mov   r1, %1       \n\t" "msr   basepri, r1  \n\t" : "=r" (LockState) : "i"((0x20)) : "r1" );; pPayloadStart = _PreparePacket(_aPacket);;

  pPayload = pPayloadStart;
  { unsigned char* pSysviewPointer; unsigned long SysViewData; pSysviewPointer = pPayload; SysViewData = Para0; while(SysViewData > 0x7F) { *pSysviewPointer++ = (unsigned char)(SysViewData | 0x80); SysViewData >>= 7; }; *pSysviewPointer++ = (unsigned char)SysViewData; pPayload = pSysviewPointer; };;
  { unsigned char* pSysviewPointer; unsigned long SysViewData; pSysviewPointer = pPayload; SysViewData = Para1; while(SysViewData > 0x7F) { *pSysviewPointer++ = (unsigned char)(SysViewData | 0x80); SysViewData >>= 7; }; *pSysviewPointer++ = (unsigned char)SysViewData; pPayload = pSysviewPointer; };;
  { unsigned char* pSysviewPointer; unsigned long SysViewData; pSysviewPointer = pPayload; SysViewData = Para2; while(SysViewData > 0x7F) { *pSysviewPointer++ = (unsigned char)(SysViewData | 0x80); SysViewData >>= 7; }; *pSysviewPointer++ = (unsigned char)SysViewData; pPayload = pSysviewPointer; };;
  { unsigned char* pSysviewPointer; unsigned long SysViewData; pSysviewPointer = pPayload; SysViewData = Para3; while(SysViewData > 0x7F) { *pSysviewPointer++ = (unsigned char)(SysViewData | 0x80); SysViewData >>= 7; }; *pSysviewPointer++ = (unsigned char)SysViewData; pPayload = pSysviewPointer; };;
  { unsigned char* pSysviewPointer; unsigned long SysViewData; pSysviewPointer = pPayload; SysViewData = Para4; while(SysViewData > 0x7F) { *pSysviewPointer++ = (unsigned char)(SysViewData | 0x80); SysViewData >>= 7; }; *pSysviewPointer++ = (unsigned char)SysViewData; pPayload = pSysviewPointer; };;
  _SendPacket(pPayloadStart, pPayload, EventID);
  __asm volatile ("msr   basepri, %0  \n\t" : : "r" (LockState) : ); };
}
# 1450 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER_SYSVIEW.c"
void SEGGER_SYSVIEW_RecordU32x6(unsigned int EventID, unsigned long Para0, unsigned long Para1, unsigned long Para2, unsigned long Para3, unsigned long Para4, unsigned long Para5) {
  unsigned char* pPayload;
  unsigned char* pPayloadStart;
  { unsigned int LockState; __asm volatile ("mrs   %0, basepri  \n\t" "mov   r1, %1       \n\t" "msr   basepri, r1  \n\t" : "=r" (LockState) : "i"((0x20)) : "r1" );; pPayloadStart = _PreparePacket(_aPacket);;

  pPayload = pPayloadStart;
  { unsigned char* pSysviewPointer; unsigned long SysViewData; pSysviewPointer = pPayload; SysViewData = Para0; while(SysViewData > 0x7F) { *pSysviewPointer++ = (unsigned char)(SysViewData | 0x80); SysViewData >>= 7; }; *pSysviewPointer++ = (unsigned char)SysViewData; pPayload = pSysviewPointer; };;
  { unsigned char* pSysviewPointer; unsigned long SysViewData; pSysviewPointer = pPayload; SysViewData = Para1; while(SysViewData > 0x7F) { *pSysviewPointer++ = (unsigned char)(SysViewData | 0x80); SysViewData >>= 7; }; *pSysviewPointer++ = (unsigned char)SysViewData; pPayload = pSysviewPointer; };;
  { unsigned char* pSysviewPointer; unsigned long SysViewData; pSysviewPointer = pPayload; SysViewData = Para2; while(SysViewData > 0x7F) { *pSysviewPointer++ = (unsigned char)(SysViewData | 0x80); SysViewData >>= 7; }; *pSysviewPointer++ = (unsigned char)SysViewData; pPayload = pSysviewPointer; };;
  { unsigned char* pSysviewPointer; unsigned long SysViewData; pSysviewPointer = pPayload; SysViewData = Para3; while(SysViewData > 0x7F) { *pSysviewPointer++ = (unsigned char)(SysViewData | 0x80); SysViewData >>= 7; }; *pSysviewPointer++ = (unsigned char)SysViewData; pPayload = pSysviewPointer; };;
  { unsigned char* pSysviewPointer; unsigned long SysViewData; pSysviewPointer = pPayload; SysViewData = Para4; while(SysViewData > 0x7F) { *pSysviewPointer++ = (unsigned char)(SysViewData | 0x80); SysViewData >>= 7; }; *pSysviewPointer++ = (unsigned char)SysViewData; pPayload = pSysviewPointer; };;
  { unsigned char* pSysviewPointer; unsigned long SysViewData; pSysviewPointer = pPayload; SysViewData = Para5; while(SysViewData > 0x7F) { *pSysviewPointer++ = (unsigned char)(SysViewData | 0x80); SysViewData >>= 7; }; *pSysviewPointer++ = (unsigned char)SysViewData; pPayload = pSysviewPointer; };;
  _SendPacket(pPayloadStart, pPayload, EventID);
  __asm volatile ("msr   basepri, %0  \n\t" : : "r" (LockState) : ); };
}
# 1483 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER_SYSVIEW.c"
void SEGGER_SYSVIEW_RecordU32x7(unsigned int EventID, unsigned long Para0, unsigned long Para1, unsigned long Para2, unsigned long Para3, unsigned long Para4, unsigned long Para5, unsigned long Para6) {
  unsigned char* pPayload;
  unsigned char* pPayloadStart;
  { unsigned int LockState; __asm volatile ("mrs   %0, basepri  \n\t" "mov   r1, %1       \n\t" "msr   basepri, r1  \n\t" : "=r" (LockState) : "i"((0x20)) : "r1" );; pPayloadStart = _PreparePacket(_aPacket);;

  pPayload = pPayloadStart;
  { unsigned char* pSysviewPointer; unsigned long SysViewData; pSysviewPointer = pPayload; SysViewData = Para0; while(SysViewData > 0x7F) { *pSysviewPointer++ = (unsigned char)(SysViewData | 0x80); SysViewData >>= 7; }; *pSysviewPointer++ = (unsigned char)SysViewData; pPayload = pSysviewPointer; };;
  { unsigned char* pSysviewPointer; unsigned long SysViewData; pSysviewPointer = pPayload; SysViewData = Para1; while(SysViewData > 0x7F) { *pSysviewPointer++ = (unsigned char)(SysViewData | 0x80); SysViewData >>= 7; }; *pSysviewPointer++ = (unsigned char)SysViewData; pPayload = pSysviewPointer; };;
  { unsigned char* pSysviewPointer; unsigned long SysViewData; pSysviewPointer = pPayload; SysViewData = Para2; while(SysViewData > 0x7F) { *pSysviewPointer++ = (unsigned char)(SysViewData | 0x80); SysViewData >>= 7; }; *pSysviewPointer++ = (unsigned char)SysViewData; pPayload = pSysviewPointer; };;
  { unsigned char* pSysviewPointer; unsigned long SysViewData; pSysviewPointer = pPayload; SysViewData = Para3; while(SysViewData > 0x7F) { *pSysviewPointer++ = (unsigned char)(SysViewData | 0x80); SysViewData >>= 7; }; *pSysviewPointer++ = (unsigned char)SysViewData; pPayload = pSysviewPointer; };;
  { unsigned char* pSysviewPointer; unsigned long SysViewData; pSysviewPointer = pPayload; SysViewData = Para4; while(SysViewData > 0x7F) { *pSysviewPointer++ = (unsigned char)(SysViewData | 0x80); SysViewData >>= 7; }; *pSysviewPointer++ = (unsigned char)SysViewData; pPayload = pSysviewPointer; };;
  { unsigned char* pSysviewPointer; unsigned long SysViewData; pSysviewPointer = pPayload; SysViewData = Para5; while(SysViewData > 0x7F) { *pSysviewPointer++ = (unsigned char)(SysViewData | 0x80); SysViewData >>= 7; }; *pSysviewPointer++ = (unsigned char)SysViewData; pPayload = pSysviewPointer; };;
  { unsigned char* pSysviewPointer; unsigned long SysViewData; pSysviewPointer = pPayload; SysViewData = Para6; while(SysViewData > 0x7F) { *pSysviewPointer++ = (unsigned char)(SysViewData | 0x80); SysViewData >>= 7; }; *pSysviewPointer++ = (unsigned char)SysViewData; pPayload = pSysviewPointer; };;
  _SendPacket(pPayloadStart, pPayload, EventID);
  __asm volatile ("msr   basepri, %0  \n\t" : : "r" (LockState) : ); };
}
# 1518 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER_SYSVIEW.c"
void SEGGER_SYSVIEW_RecordU32x8(unsigned int EventID, unsigned long Para0, unsigned long Para1, unsigned long Para2, unsigned long Para3, unsigned long Para4, unsigned long Para5, unsigned long Para6, unsigned long Para7) {
  unsigned char* pPayload;
  unsigned char* pPayloadStart;
  { unsigned int LockState; __asm volatile ("mrs   %0, basepri  \n\t" "mov   r1, %1       \n\t" "msr   basepri, r1  \n\t" : "=r" (LockState) : "i"((0x20)) : "r1" );; pPayloadStart = _PreparePacket(_aPacket);;

  pPayload = pPayloadStart;
  { unsigned char* pSysviewPointer; unsigned long SysViewData; pSysviewPointer = pPayload; SysViewData = Para0; while(SysViewData > 0x7F) { *pSysviewPointer++ = (unsigned char)(SysViewData | 0x80); SysViewData >>= 7; }; *pSysviewPointer++ = (unsigned char)SysViewData; pPayload = pSysviewPointer; };;
  { unsigned char* pSysviewPointer; unsigned long SysViewData; pSysviewPointer = pPayload; SysViewData = Para1; while(SysViewData > 0x7F) { *pSysviewPointer++ = (unsigned char)(SysViewData | 0x80); SysViewData >>= 7; }; *pSysviewPointer++ = (unsigned char)SysViewData; pPayload = pSysviewPointer; };;
  { unsigned char* pSysviewPointer; unsigned long SysViewData; pSysviewPointer = pPayload; SysViewData = Para2; while(SysViewData > 0x7F) { *pSysviewPointer++ = (unsigned char)(SysViewData | 0x80); SysViewData >>= 7; }; *pSysviewPointer++ = (unsigned char)SysViewData; pPayload = pSysviewPointer; };;
  { unsigned char* pSysviewPointer; unsigned long SysViewData; pSysviewPointer = pPayload; SysViewData = Para3; while(SysViewData > 0x7F) { *pSysviewPointer++ = (unsigned char)(SysViewData | 0x80); SysViewData >>= 7; }; *pSysviewPointer++ = (unsigned char)SysViewData; pPayload = pSysviewPointer; };;
  { unsigned char* pSysviewPointer; unsigned long SysViewData; pSysviewPointer = pPayload; SysViewData = Para4; while(SysViewData > 0x7F) { *pSysviewPointer++ = (unsigned char)(SysViewData | 0x80); SysViewData >>= 7; }; *pSysviewPointer++ = (unsigned char)SysViewData; pPayload = pSysviewPointer; };;
  { unsigned char* pSysviewPointer; unsigned long SysViewData; pSysviewPointer = pPayload; SysViewData = Para5; while(SysViewData > 0x7F) { *pSysviewPointer++ = (unsigned char)(SysViewData | 0x80); SysViewData >>= 7; }; *pSysviewPointer++ = (unsigned char)SysViewData; pPayload = pSysviewPointer; };;
  { unsigned char* pSysviewPointer; unsigned long SysViewData; pSysviewPointer = pPayload; SysViewData = Para6; while(SysViewData > 0x7F) { *pSysviewPointer++ = (unsigned char)(SysViewData | 0x80); SysViewData >>= 7; }; *pSysviewPointer++ = (unsigned char)SysViewData; pPayload = pSysviewPointer; };;
  { unsigned char* pSysviewPointer; unsigned long SysViewData; pSysviewPointer = pPayload; SysViewData = Para7; while(SysViewData > 0x7F) { *pSysviewPointer++ = (unsigned char)(SysViewData | 0x80); SysViewData >>= 7; }; *pSysviewPointer++ = (unsigned char)SysViewData; pPayload = pSysviewPointer; };;
  _SendPacket(pPayloadStart, pPayload, EventID);
  __asm volatile ("msr   basepri, %0  \n\t" : : "r" (LockState) : ); };
}
# 1555 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER_SYSVIEW.c"
void SEGGER_SYSVIEW_RecordU32x9(unsigned int EventID, unsigned long Para0, unsigned long Para1, unsigned long Para2, unsigned long Para3, unsigned long Para4, unsigned long Para5, unsigned long Para6, unsigned long Para7, unsigned long Para8) {
  unsigned char* pPayload;
  unsigned char* pPayloadStart;
  { unsigned int LockState; __asm volatile ("mrs   %0, basepri  \n\t" "mov   r1, %1       \n\t" "msr   basepri, r1  \n\t" : "=r" (LockState) : "i"((0x20)) : "r1" );; pPayloadStart = _PreparePacket(_aPacket);;

  pPayload = pPayloadStart;
  { unsigned char* pSysviewPointer; unsigned long SysViewData; pSysviewPointer = pPayload; SysViewData = Para0; while(SysViewData > 0x7F) { *pSysviewPointer++ = (unsigned char)(SysViewData | 0x80); SysViewData >>= 7; }; *pSysviewPointer++ = (unsigned char)SysViewData; pPayload = pSysviewPointer; };;
  { unsigned char* pSysviewPointer; unsigned long SysViewData; pSysviewPointer = pPayload; SysViewData = Para1; while(SysViewData > 0x7F) { *pSysviewPointer++ = (unsigned char)(SysViewData | 0x80); SysViewData >>= 7; }; *pSysviewPointer++ = (unsigned char)SysViewData; pPayload = pSysviewPointer; };;
  { unsigned char* pSysviewPointer; unsigned long SysViewData; pSysviewPointer = pPayload; SysViewData = Para2; while(SysViewData > 0x7F) { *pSysviewPointer++ = (unsigned char)(SysViewData | 0x80); SysViewData >>= 7; }; *pSysviewPointer++ = (unsigned char)SysViewData; pPayload = pSysviewPointer; };;
  { unsigned char* pSysviewPointer; unsigned long SysViewData; pSysviewPointer = pPayload; SysViewData = Para3; while(SysViewData > 0x7F) { *pSysviewPointer++ = (unsigned char)(SysViewData | 0x80); SysViewData >>= 7; }; *pSysviewPointer++ = (unsigned char)SysViewData; pPayload = pSysviewPointer; };;
  { unsigned char* pSysviewPointer; unsigned long SysViewData; pSysviewPointer = pPayload; SysViewData = Para4; while(SysViewData > 0x7F) { *pSysviewPointer++ = (unsigned char)(SysViewData | 0x80); SysViewData >>= 7; }; *pSysviewPointer++ = (unsigned char)SysViewData; pPayload = pSysviewPointer; };;
  { unsigned char* pSysviewPointer; unsigned long SysViewData; pSysviewPointer = pPayload; SysViewData = Para5; while(SysViewData > 0x7F) { *pSysviewPointer++ = (unsigned char)(SysViewData | 0x80); SysViewData >>= 7; }; *pSysviewPointer++ = (unsigned char)SysViewData; pPayload = pSysviewPointer; };;
  { unsigned char* pSysviewPointer; unsigned long SysViewData; pSysviewPointer = pPayload; SysViewData = Para6; while(SysViewData > 0x7F) { *pSysviewPointer++ = (unsigned char)(SysViewData | 0x80); SysViewData >>= 7; }; *pSysviewPointer++ = (unsigned char)SysViewData; pPayload = pSysviewPointer; };;
  { unsigned char* pSysviewPointer; unsigned long SysViewData; pSysviewPointer = pPayload; SysViewData = Para7; while(SysViewData > 0x7F) { *pSysviewPointer++ = (unsigned char)(SysViewData | 0x80); SysViewData >>= 7; }; *pSysviewPointer++ = (unsigned char)SysViewData; pPayload = pSysviewPointer; };;
  { unsigned char* pSysviewPointer; unsigned long SysViewData; pSysviewPointer = pPayload; SysViewData = Para8; while(SysViewData > 0x7F) { *pSysviewPointer++ = (unsigned char)(SysViewData | 0x80); SysViewData >>= 7; }; *pSysviewPointer++ = (unsigned char)SysViewData; pPayload = pSysviewPointer; };;
  _SendPacket(pPayloadStart, pPayload, EventID);
  __asm volatile ("msr   basepri, %0  \n\t" : : "r" (LockState) : ); };
}
# 1594 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER_SYSVIEW.c"
void SEGGER_SYSVIEW_RecordU32x10(unsigned int EventID, unsigned long Para0, unsigned long Para1, unsigned long Para2, unsigned long Para3, unsigned long Para4, unsigned long Para5, unsigned long Para6, unsigned long Para7, unsigned long Para8, unsigned long Para9) {
  unsigned char* pPayload;
  unsigned char* pPayloadStart;
  { unsigned int LockState; __asm volatile ("mrs   %0, basepri  \n\t" "mov   r1, %1       \n\t" "msr   basepri, r1  \n\t" : "=r" (LockState) : "i"((0x20)) : "r1" );; pPayloadStart = _PreparePacket(_aPacket);;

  pPayload = pPayloadStart;
  { unsigned char* pSysviewPointer; unsigned long SysViewData; pSysviewPointer = pPayload; SysViewData = Para0; while(SysViewData > 0x7F) { *pSysviewPointer++ = (unsigned char)(SysViewData | 0x80); SysViewData >>= 7; }; *pSysviewPointer++ = (unsigned char)SysViewData; pPayload = pSysviewPointer; };;
  { unsigned char* pSysviewPointer; unsigned long SysViewData; pSysviewPointer = pPayload; SysViewData = Para1; while(SysViewData > 0x7F) { *pSysviewPointer++ = (unsigned char)(SysViewData | 0x80); SysViewData >>= 7; }; *pSysviewPointer++ = (unsigned char)SysViewData; pPayload = pSysviewPointer; };;
  { unsigned char* pSysviewPointer; unsigned long SysViewData; pSysviewPointer = pPayload; SysViewData = Para2; while(SysViewData > 0x7F) { *pSysviewPointer++ = (unsigned char)(SysViewData | 0x80); SysViewData >>= 7; }; *pSysviewPointer++ = (unsigned char)SysViewData; pPayload = pSysviewPointer; };;
  { unsigned char* pSysviewPointer; unsigned long SysViewData; pSysviewPointer = pPayload; SysViewData = Para3; while(SysViewData > 0x7F) { *pSysviewPointer++ = (unsigned char)(SysViewData | 0x80); SysViewData >>= 7; }; *pSysviewPointer++ = (unsigned char)SysViewData; pPayload = pSysviewPointer; };;
  { unsigned char* pSysviewPointer; unsigned long SysViewData; pSysviewPointer = pPayload; SysViewData = Para4; while(SysViewData > 0x7F) { *pSysviewPointer++ = (unsigned char)(SysViewData | 0x80); SysViewData >>= 7; }; *pSysviewPointer++ = (unsigned char)SysViewData; pPayload = pSysviewPointer; };;
  { unsigned char* pSysviewPointer; unsigned long SysViewData; pSysviewPointer = pPayload; SysViewData = Para5; while(SysViewData > 0x7F) { *pSysviewPointer++ = (unsigned char)(SysViewData | 0x80); SysViewData >>= 7; }; *pSysviewPointer++ = (unsigned char)SysViewData; pPayload = pSysviewPointer; };;
  { unsigned char* pSysviewPointer; unsigned long SysViewData; pSysviewPointer = pPayload; SysViewData = Para6; while(SysViewData > 0x7F) { *pSysviewPointer++ = (unsigned char)(SysViewData | 0x80); SysViewData >>= 7; }; *pSysviewPointer++ = (unsigned char)SysViewData; pPayload = pSysviewPointer; };;
  { unsigned char* pSysviewPointer; unsigned long SysViewData; pSysviewPointer = pPayload; SysViewData = Para7; while(SysViewData > 0x7F) { *pSysviewPointer++ = (unsigned char)(SysViewData | 0x80); SysViewData >>= 7; }; *pSysviewPointer++ = (unsigned char)SysViewData; pPayload = pSysviewPointer; };;
  { unsigned char* pSysviewPointer; unsigned long SysViewData; pSysviewPointer = pPayload; SysViewData = Para8; while(SysViewData > 0x7F) { *pSysviewPointer++ = (unsigned char)(SysViewData | 0x80); SysViewData >>= 7; }; *pSysviewPointer++ = (unsigned char)SysViewData; pPayload = pSysviewPointer; };;
  { unsigned char* pSysviewPointer; unsigned long SysViewData; pSysviewPointer = pPayload; SysViewData = Para9; while(SysViewData > 0x7F) { *pSysviewPointer++ = (unsigned char)(SysViewData | 0x80); SysViewData >>= 7; }; *pSysviewPointer++ = (unsigned char)SysViewData; pPayload = pSysviewPointer; };;
  _SendPacket(pPayloadStart, pPayload, EventID);
  __asm volatile ("msr   basepri, %0  \n\t" : : "r" (LockState) : ); };
}
# 1629 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER_SYSVIEW.c"
void SEGGER_SYSVIEW_RecordString(unsigned int EventID, const char* pString) {
  unsigned char* pPayload;
  unsigned char* pPayloadStart;
  { unsigned int LockState; __asm volatile ("mrs   %0, basepri  \n\t" "mov   r1, %1       \n\t" "msr   basepri, r1  \n\t" : "=r" (LockState) : "i"((0x20)) : "r1" );; pPayloadStart = _PreparePacket(_aPacket);;

  pPayload = _EncodeStr(pPayloadStart, pString, 128);
  _SendPacket(pPayloadStart, pPayload, EventID);
  __asm volatile ("msr   basepri, %0  \n\t" : : "r" (LockState) : ); };
}
# 1658 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER_SYSVIEW.c"
void SEGGER_SYSVIEW_Start(void) {
  if (_SYSVIEW_Globals.EnableState == 0) {
    _SYSVIEW_Globals.EnableState = 1;



    { unsigned int LockState; __asm volatile ("mrs   %0, basepri  \n\t" "mov   r1, %1       \n\t" "msr   basepri, r1  \n\t" : "=r" (LockState) : "i"((0x20)) : "r1" );;
    SEGGER_RTT_ASM_WriteSkipNoLock(1, _abSync, 10);
    __asm volatile ("msr   basepri, %0  \n\t" : : "r" (LockState) : ); };
    SEGGER_SYSVIEW_RecordVoid(10);
    {
      unsigned char* pPayload;
      unsigned char* pPayloadStart;
      { unsigned int LockState; __asm volatile ("mrs   %0, basepri  \n\t" "mov   r1, %1       \n\t" "msr   basepri, r1  \n\t" : "=r" (LockState) : "i"((0x20)) : "r1" );; pPayloadStart = _PreparePacket(_aPacket);;

      pPayload = pPayloadStart;
      { unsigned char* pSysviewPointer; unsigned long SysViewData; pSysviewPointer = pPayload; SysViewData = _SYSVIEW_Globals.SysFreq; while(SysViewData > 0x7F) { *pSysviewPointer++ = (unsigned char)(SysViewData | 0x80); SysViewData >>= 7; }; *pSysviewPointer++ = (unsigned char)SysViewData; pPayload = pSysviewPointer; };;
      { unsigned char* pSysviewPointer; unsigned long SysViewData; pSysviewPointer = pPayload; SysViewData = _SYSVIEW_Globals.CPUFreq; while(SysViewData > 0x7F) { *pSysviewPointer++ = (unsigned char)(SysViewData | 0x80); SysViewData >>= 7; }; *pSysviewPointer++ = (unsigned char)SysViewData; pPayload = pSysviewPointer; };;
      { unsigned char* pSysviewPointer; unsigned long SysViewData; pSysviewPointer = pPayload; SysViewData = _SYSVIEW_Globals.RAMBaseAddress; while(SysViewData > 0x7F) { *pSysviewPointer++ = (unsigned char)(SysViewData | 0x80); SysViewData >>= 7; }; *pSysviewPointer++ = (unsigned char)SysViewData; pPayload = pSysviewPointer; };;
      { unsigned char* pSysviewPointer; unsigned long SysViewData; pSysviewPointer = pPayload; SysViewData = 2; while(SysViewData > 0x7F) { *pSysviewPointer++ = (unsigned char)(SysViewData | 0x80); SysViewData >>= 7; }; *pSysviewPointer++ = (unsigned char)SysViewData; pPayload = pSysviewPointer; };;
      _SendPacket(pPayloadStart, pPayload, 24);
      __asm volatile ("msr   basepri, %0  \n\t" : : "r" (LockState) : ); };
    }
    if (_SYSVIEW_Globals.pfSendSysDesc) {
      _SYSVIEW_Globals.pfSendSysDesc();
    }
    SEGGER_SYSVIEW_RecordSystime();
    SEGGER_SYSVIEW_SendTaskList();
    SEGGER_SYSVIEW_SendNumModules();

  }
}
# 1704 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER_SYSVIEW.c"
void SEGGER_SYSVIEW_Stop(void) {
  unsigned char* pPayloadStart;
  { unsigned int LockState; __asm volatile ("mrs   %0, basepri  \n\t" "mov   r1, %1       \n\t" "msr   basepri, r1  \n\t" : "=r" (LockState) : "i"((0x20)) : "r1" );; pPayloadStart = _PreparePacket(_aPacket);;

  if (_SYSVIEW_Globals.EnableState) {
    _SendPacket(pPayloadStart, pPayloadStart, 11);
    _SYSVIEW_Globals.EnableState = 0;
  }
  __asm volatile ("msr   basepri, %0  \n\t" : : "r" (LockState) : ); };
}
# 1723 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER_SYSVIEW.c"
void SEGGER_SYSVIEW_GetSysDesc(void) {
  unsigned char* pPayload;
  unsigned char* pPayloadStart;
  { unsigned int LockState; __asm volatile ("mrs   %0, basepri  \n\t" "mov   r1, %1       \n\t" "msr   basepri, r1  \n\t" : "=r" (LockState) : "i"((0x20)) : "r1" );; pPayloadStart = _PreparePacket(_aPacket);;

  pPayload = pPayloadStart;
  { unsigned char* pSysviewPointer; unsigned long SysViewData; pSysviewPointer = pPayload; SysViewData = _SYSVIEW_Globals.SysFreq; while(SysViewData > 0x7F) { *pSysviewPointer++ = (unsigned char)(SysViewData | 0x80); SysViewData >>= 7; }; *pSysviewPointer++ = (unsigned char)SysViewData; pPayload = pSysviewPointer; };;
  { unsigned char* pSysviewPointer; unsigned long SysViewData; pSysviewPointer = pPayload; SysViewData = _SYSVIEW_Globals.CPUFreq; while(SysViewData > 0x7F) { *pSysviewPointer++ = (unsigned char)(SysViewData | 0x80); SysViewData >>= 7; }; *pSysviewPointer++ = (unsigned char)SysViewData; pPayload = pSysviewPointer; };;
  { unsigned char* pSysviewPointer; unsigned long SysViewData; pSysviewPointer = pPayload; SysViewData = _SYSVIEW_Globals.RAMBaseAddress; while(SysViewData > 0x7F) { *pSysviewPointer++ = (unsigned char)(SysViewData | 0x80); SysViewData >>= 7; }; *pSysviewPointer++ = (unsigned char)SysViewData; pPayload = pSysviewPointer; };;
  { unsigned char* pSysviewPointer; unsigned long SysViewData; pSysviewPointer = pPayload; SysViewData = 2; while(SysViewData > 0x7F) { *pSysviewPointer++ = (unsigned char)(SysViewData | 0x80); SysViewData >>= 7; }; *pSysviewPointer++ = (unsigned char)SysViewData; pPayload = pSysviewPointer; };;
  _SendPacket(pPayloadStart, pPayload, 24);
  __asm volatile ("msr   basepri, %0  \n\t" : : "r" (LockState) : ); };
  if (_SYSVIEW_Globals.pfSendSysDesc) {
    _SYSVIEW_Globals.pfSendSysDesc();
  }
}
# 1751 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER_SYSVIEW.c"
void SEGGER_SYSVIEW_SendTaskInfo(const SEGGER_SYSVIEW_TASKINFO *pInfo) {
  unsigned char* pPayload;
  unsigned char* pPayloadStart;
  { unsigned int LockState; __asm volatile ("mrs   %0, basepri  \n\t" "mov   r1, %1       \n\t" "msr   basepri, r1  \n\t" : "=r" (LockState) : "i"((0x20)) : "r1" );; pPayloadStart = _PreparePacket(_aPacket);;

  pPayload = pPayloadStart;
  { unsigned char* pSysviewPointer; unsigned long SysViewData; pSysviewPointer = pPayload; SysViewData = (((pInfo->TaskID) - _SYSVIEW_Globals.RAMBaseAddress) >> 2); while(SysViewData > 0x7F) { *pSysviewPointer++ = (unsigned char)(SysViewData | 0x80); SysViewData >>= 7; }; *pSysviewPointer++ = (unsigned char)SysViewData; pPayload = pSysviewPointer; };;
  { unsigned char* pSysviewPointer; unsigned long SysViewData; pSysviewPointer = pPayload; SysViewData = pInfo->Prio; while(SysViewData > 0x7F) { *pSysviewPointer++ = (unsigned char)(SysViewData | 0x80); SysViewData >>= 7; }; *pSysviewPointer++ = (unsigned char)SysViewData; pPayload = pSysviewPointer; };;
  pPayload = _EncodeStr(pPayload, pInfo->sName, 32);
  _SendPacket(pPayloadStart, pPayload, 9);

  pPayload = pPayloadStart;
  { unsigned char* pSysviewPointer; unsigned long SysViewData; pSysviewPointer = pPayload; SysViewData = (((pInfo->TaskID) - _SYSVIEW_Globals.RAMBaseAddress) >> 2); while(SysViewData > 0x7F) { *pSysviewPointer++ = (unsigned char)(SysViewData | 0x80); SysViewData >>= 7; }; *pSysviewPointer++ = (unsigned char)SysViewData; pPayload = pSysviewPointer; };;
  { unsigned char* pSysviewPointer; unsigned long SysViewData; pSysviewPointer = pPayload; SysViewData = pInfo->StackBase; while(SysViewData > 0x7F) { *pSysviewPointer++ = (unsigned char)(SysViewData | 0x80); SysViewData >>= 7; }; *pSysviewPointer++ = (unsigned char)SysViewData; pPayload = pSysviewPointer; };;
  { unsigned char* pSysviewPointer; unsigned long SysViewData; pSysviewPointer = pPayload; SysViewData = pInfo->StackSize; while(SysViewData > 0x7F) { *pSysviewPointer++ = (unsigned char)(SysViewData | 0x80); SysViewData >>= 7; }; *pSysviewPointer++ = (unsigned char)SysViewData; pPayload = pSysviewPointer; };;
  { unsigned char* pSysviewPointer; unsigned long SysViewData; pSysviewPointer = pPayload; SysViewData = 0; while(SysViewData > 0x7F) { *pSysviewPointer++ = (unsigned char)(SysViewData | 0x80); SysViewData >>= 7; }; *pSysviewPointer++ = (unsigned char)SysViewData; pPayload = pSysviewPointer; };;
  _SendPacket(pPayloadStart, pPayload, 21);
  __asm volatile ("msr   basepri, %0  \n\t" : : "r" (LockState) : ); };
}
# 1778 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER_SYSVIEW.c"
void SEGGER_SYSVIEW_SendTaskList(void) {
  if (_SYSVIEW_Globals.pOSAPI && _SYSVIEW_Globals.pOSAPI->pfSendTaskList) {
    _SYSVIEW_Globals.pOSAPI->pfSendTaskList();
  }
}
# 1803 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER_SYSVIEW.c"
void SEGGER_SYSVIEW_SendSysDesc(const char *sSysDesc) {
  unsigned char* pPayload;
  unsigned char* pPayloadStart;
  { unsigned int LockState; __asm volatile ("mrs   %0, basepri  \n\t" "mov   r1, %1       \n\t" "msr   basepri, r1  \n\t" : "=r" (LockState) : "i"((0x20)) : "r1" );; pPayloadStart = _PreparePacket(_aPacket);;

  pPayload = _EncodeStr(pPayloadStart, sSysDesc, 128);
  _SendPacket(pPayloadStart, pPayload, 14);
  __asm volatile ("msr   basepri, %0  \n\t" : : "r" (LockState) : ); };
}
# 1821 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER_SYSVIEW.c"
void SEGGER_SYSVIEW_RecordSystime(void) {
  unsigned long long Systime;

  if (_SYSVIEW_Globals.pOSAPI && _SYSVIEW_Globals.pOSAPI->pfGetTime) {
    Systime = _SYSVIEW_Globals.pOSAPI->pfGetTime();
    SEGGER_SYSVIEW_RecordU32x2(13,
                               (unsigned long)(Systime),
                               (unsigned long)(Systime >> 32));
  } else {
    SEGGER_SYSVIEW_RecordU32(12, (*(unsigned long *)(0xE0001004)));
  }
}
# 1845 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER_SYSVIEW.c"
void SEGGER_SYSVIEW_RecordEnterISR(void) {
  unsigned v;
  unsigned char* pPayload;
  unsigned char* pPayloadStart;
  { unsigned int LockState; __asm volatile ("mrs   %0, basepri  \n\t" "mov   r1, %1       \n\t" "msr   basepri, r1  \n\t" : "=r" (LockState) : "i"((0x20)) : "r1" );; pPayloadStart = _PreparePacket(_aPacket);;

  pPayload = pPayloadStart;
  v = ((*(unsigned long *)(0xE000ED04)) & 0x1FF);
  { unsigned char* pSysviewPointer; unsigned long SysViewData; pSysviewPointer = pPayload; SysViewData = v; while(SysViewData > 0x7F) { *pSysviewPointer++ = (unsigned char)(SysViewData | 0x80); SysViewData >>= 7; }; *pSysviewPointer++ = (unsigned char)SysViewData; pPayload = pSysviewPointer; };;
  _SendPacket(pPayloadStart, pPayload, 2);
  __asm volatile ("msr   basepri, %0  \n\t" : : "r" (LockState) : ); };
}
# 1872 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER_SYSVIEW.c"
void SEGGER_SYSVIEW_RecordExitISR(void) {
  unsigned char* pPayloadStart;
  { unsigned int LockState; __asm volatile ("mrs   %0, basepri  \n\t" "mov   r1, %1       \n\t" "msr   basepri, r1  \n\t" : "=r" (LockState) : "i"((0x20)) : "r1" );; pPayloadStart = _PreparePacket(_aPacket);;

  _SendPacket(pPayloadStart, pPayloadStart, 3);
  __asm volatile ("msr   basepri, %0  \n\t" : : "r" (LockState) : ); };
}
# 1894 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER_SYSVIEW.c"
void SEGGER_SYSVIEW_RecordExitISRToScheduler(void) {
  unsigned char* pPayloadStart;
  { unsigned int LockState; __asm volatile ("mrs   %0, basepri  \n\t" "mov   r1, %1       \n\t" "msr   basepri, r1  \n\t" : "=r" (LockState) : "i"((0x20)) : "r1" );; pPayloadStart = _PreparePacket(_aPacket);;

  _SendPacket(pPayloadStart, pPayloadStart, 18);
  __asm volatile ("msr   basepri, %0  \n\t" : : "r" (LockState) : ); };
}
# 1912 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER_SYSVIEW.c"
void SEGGER_SYSVIEW_RecordEnterTimer(unsigned long TimerId) {
  unsigned char* pPayload;
  unsigned char* pPayloadStart;
  { unsigned int LockState; __asm volatile ("mrs   %0, basepri  \n\t" "mov   r1, %1       \n\t" "msr   basepri, r1  \n\t" : "=r" (LockState) : "i"((0x20)) : "r1" );; pPayloadStart = _PreparePacket(_aPacket);;

  pPayload = pPayloadStart;
  { unsigned char* pSysviewPointer; unsigned long SysViewData; pSysviewPointer = pPayload; SysViewData = (((TimerId) - _SYSVIEW_Globals.RAMBaseAddress) >> 2); while(SysViewData > 0x7F) { *pSysviewPointer++ = (unsigned char)(SysViewData | 0x80); SysViewData >>= 7; }; *pSysviewPointer++ = (unsigned char)SysViewData; pPayload = pSysviewPointer; };;
  _SendPacket(pPayloadStart, pPayload, 19);
  __asm volatile ("msr   basepri, %0  \n\t" : : "r" (LockState) : ); };
}
# 1930 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER_SYSVIEW.c"
void SEGGER_SYSVIEW_RecordExitTimer(void) {
  unsigned char* pPayloadStart;
  { unsigned int LockState; __asm volatile ("mrs   %0, basepri  \n\t" "mov   r1, %1       \n\t" "msr   basepri, r1  \n\t" : "=r" (LockState) : "i"((0x20)) : "r1" );; pPayloadStart = _PreparePacket(_aPacket);;

  _SendPacket(pPayloadStart, pPayloadStart, 20);
  __asm volatile ("msr   basepri, %0  \n\t" : : "r" (LockState) : ); };
}
# 1948 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER_SYSVIEW.c"
void SEGGER_SYSVIEW_RecordEndCall(unsigned int EventID) {
  unsigned char* pPayload;
  unsigned char* pPayloadStart;
  { unsigned int LockState; __asm volatile ("mrs   %0, basepri  \n\t" "mov   r1, %1       \n\t" "msr   basepri, r1  \n\t" : "=r" (LockState) : "i"((0x20)) : "r1" );; pPayloadStart = _PreparePacket(_aPacket);;

  pPayload = pPayloadStart;
  { unsigned char* pSysviewPointer; unsigned long SysViewData; pSysviewPointer = pPayload; SysViewData = EventID; while(SysViewData > 0x7F) { *pSysviewPointer++ = (unsigned char)(SysViewData | 0x80); SysViewData >>= 7; }; *pSysviewPointer++ = (unsigned char)SysViewData; pPayload = pSysviewPointer; };;
  _SendPacket(pPayloadStart, pPayload, 28);
  __asm volatile ("msr   basepri, %0  \n\t" : : "r" (LockState) : ); };
}
# 1970 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER_SYSVIEW.c"
void SEGGER_SYSVIEW_RecordEndCallU32(unsigned int EventID, unsigned long Para0) {
  unsigned char* pPayload;
  unsigned char* pPayloadStart;
  { unsigned int LockState; __asm volatile ("mrs   %0, basepri  \n\t" "mov   r1, %1       \n\t" "msr   basepri, r1  \n\t" : "=r" (LockState) : "i"((0x20)) : "r1" );; pPayloadStart = _PreparePacket(_aPacket);;

  pPayload = pPayloadStart;
  { unsigned char* pSysviewPointer; unsigned long SysViewData; pSysviewPointer = pPayload; SysViewData = EventID; while(SysViewData > 0x7F) { *pSysviewPointer++ = (unsigned char)(SysViewData | 0x80); SysViewData >>= 7; }; *pSysviewPointer++ = (unsigned char)SysViewData; pPayload = pSysviewPointer; };;
  { unsigned char* pSysviewPointer; unsigned long SysViewData; pSysviewPointer = pPayload; SysViewData = Para0; while(SysViewData > 0x7F) { *pSysviewPointer++ = (unsigned char)(SysViewData | 0x80); SysViewData >>= 7; }; *pSysviewPointer++ = (unsigned char)SysViewData; pPayload = pSysviewPointer; };;
  _SendPacket(pPayloadStart, pPayload, 28);
  __asm volatile ("msr   basepri, %0  \n\t" : : "r" (LockState) : ); };
}
# 1989 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER_SYSVIEW.c"
void SEGGER_SYSVIEW_OnIdle(void) {
  unsigned char* pPayloadStart;
  { unsigned int LockState; __asm volatile ("mrs   %0, basepri  \n\t" "mov   r1, %1       \n\t" "msr   basepri, r1  \n\t" : "=r" (LockState) : "i"((0x20)) : "r1" );; pPayloadStart = _PreparePacket(_aPacket);;

  _SendPacket(pPayloadStart, pPayloadStart, 17);
  __asm volatile ("msr   basepri, %0  \n\t" : : "r" (LockState) : ); };
}
# 2008 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER_SYSVIEW.c"
void SEGGER_SYSVIEW_OnTaskCreate(unsigned long TaskId) {
  unsigned char* pPayload;
  unsigned char* pPayloadStart;
  { unsigned int LockState; __asm volatile ("mrs   %0, basepri  \n\t" "mov   r1, %1       \n\t" "msr   basepri, r1  \n\t" : "=r" (LockState) : "i"((0x20)) : "r1" );; pPayloadStart = _PreparePacket(_aPacket);;

  pPayload = pPayloadStart;
  TaskId = (((TaskId) - _SYSVIEW_Globals.RAMBaseAddress) >> 2);
  { unsigned char* pSysviewPointer; unsigned long SysViewData; pSysviewPointer = pPayload; SysViewData = TaskId; while(SysViewData > 0x7F) { *pSysviewPointer++ = (unsigned char)(SysViewData | 0x80); SysViewData >>= 7; }; *pSysviewPointer++ = (unsigned char)SysViewData; pPayload = pSysviewPointer; };;
  _SendPacket(pPayloadStart, pPayload, 8);
  __asm volatile ("msr   basepri, %0  \n\t" : : "r" (LockState) : ); };
}
# 2033 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER_SYSVIEW.c"
void SEGGER_SYSVIEW_OnTaskTerminate(unsigned long TaskId) {
  unsigned char* pPayload;
  unsigned char* pPayloadStart;
  { unsigned int LockState; __asm volatile ("mrs   %0, basepri  \n\t" "mov   r1, %1       \n\t" "msr   basepri, r1  \n\t" : "=r" (LockState) : "i"((0x20)) : "r1" );; pPayloadStart = _PreparePacket(_aPacket);;

  pPayload = pPayloadStart;
  TaskId = (((TaskId) - _SYSVIEW_Globals.RAMBaseAddress) >> 2);
  { unsigned char* pSysviewPointer; unsigned long SysViewData; pSysviewPointer = pPayload; SysViewData = TaskId; while(SysViewData > 0x7F) { *pSysviewPointer++ = (unsigned char)(SysViewData | 0x80); SysViewData >>= 7; }; *pSysviewPointer++ = (unsigned char)SysViewData; pPayload = pSysviewPointer; };;
  _SendPacket(pPayloadStart, pPayload, 29);
  __asm volatile ("msr   basepri, %0  \n\t" : : "r" (LockState) : ); };
}
# 2057 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER_SYSVIEW.c"
void SEGGER_SYSVIEW_OnTaskStartExec(unsigned long TaskId) {
  unsigned char* pPayload;
  unsigned char* pPayloadStart;
  { unsigned int LockState; __asm volatile ("mrs   %0, basepri  \n\t" "mov   r1, %1       \n\t" "msr   basepri, r1  \n\t" : "=r" (LockState) : "i"((0x20)) : "r1" );; pPayloadStart = _PreparePacket(_aPacket);;

  pPayload = pPayloadStart;
  TaskId = (((TaskId) - _SYSVIEW_Globals.RAMBaseAddress) >> 2);
  { unsigned char* pSysviewPointer; unsigned long SysViewData; pSysviewPointer = pPayload; SysViewData = TaskId; while(SysViewData > 0x7F) { *pSysviewPointer++ = (unsigned char)(SysViewData | 0x80); SysViewData >>= 7; }; *pSysviewPointer++ = (unsigned char)SysViewData; pPayload = pSysviewPointer; };;
  _SendPacket(pPayloadStart, pPayload, 4);
  __asm volatile ("msr   basepri, %0  \n\t" : : "r" (LockState) : ); };
}
# 2077 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER_SYSVIEW.c"
void SEGGER_SYSVIEW_OnTaskStopExec(void) {
  unsigned char* pPayloadStart;
  { unsigned int LockState; __asm volatile ("mrs   %0, basepri  \n\t" "mov   r1, %1       \n\t" "msr   basepri, r1  \n\t" : "=r" (LockState) : "i"((0x20)) : "r1" );; pPayloadStart = _PreparePacket(_aPacket);;

  _SendPacket(pPayloadStart, pPayloadStart, 5);
  __asm volatile ("msr   basepri, %0  \n\t" : : "r" (LockState) : ); };
}
# 2095 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER_SYSVIEW.c"
void SEGGER_SYSVIEW_OnTaskStartReady(unsigned long TaskId) {
  unsigned char* pPayload;
  unsigned char* pPayloadStart;
  { unsigned int LockState; __asm volatile ("mrs   %0, basepri  \n\t" "mov   r1, %1       \n\t" "msr   basepri, r1  \n\t" : "=r" (LockState) : "i"((0x20)) : "r1" );; pPayloadStart = _PreparePacket(_aPacket);;

  pPayload = pPayloadStart;
  TaskId = (((TaskId) - _SYSVIEW_Globals.RAMBaseAddress) >> 2);
  { unsigned char* pSysviewPointer; unsigned long SysViewData; pSysviewPointer = pPayload; SysViewData = TaskId; while(SysViewData > 0x7F) { *pSysviewPointer++ = (unsigned char)(SysViewData | 0x80); SysViewData >>= 7; }; *pSysviewPointer++ = (unsigned char)SysViewData; pPayload = pSysviewPointer; };;
  _SendPacket(pPayloadStart, pPayload, 6);
  __asm volatile ("msr   basepri, %0  \n\t" : : "r" (LockState) : ); };
}
# 2118 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER_SYSVIEW.c"
void SEGGER_SYSVIEW_OnTaskStopReady(unsigned long TaskId, unsigned int Cause) {
  unsigned char* pPayload;
  unsigned char* pPayloadStart;
  { unsigned int LockState; __asm volatile ("mrs   %0, basepri  \n\t" "mov   r1, %1       \n\t" "msr   basepri, r1  \n\t" : "=r" (LockState) : "i"((0x20)) : "r1" );; pPayloadStart = _PreparePacket(_aPacket);;

  pPayload = pPayloadStart;
  TaskId = (((TaskId) - _SYSVIEW_Globals.RAMBaseAddress) >> 2);
  { unsigned char* pSysviewPointer; unsigned long SysViewData; pSysviewPointer = pPayload; SysViewData = TaskId; while(SysViewData > 0x7F) { *pSysviewPointer++ = (unsigned char)(SysViewData | 0x80); SysViewData >>= 7; }; *pSysviewPointer++ = (unsigned char)SysViewData; pPayload = pSysviewPointer; };;
  { unsigned char* pSysviewPointer; unsigned long SysViewData; pSysviewPointer = pPayload; SysViewData = Cause; while(SysViewData > 0x7F) { *pSysviewPointer++ = (unsigned char)(SysViewData | 0x80); SysViewData >>= 7; }; *pSysviewPointer++ = (unsigned char)SysViewData; pPayload = pSysviewPointer; };;
  _SendPacket(pPayloadStart, pPayload, 7);
  __asm volatile ("msr   basepri, %0  \n\t" : : "r" (LockState) : ); };
}
# 2141 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER_SYSVIEW.c"
void SEGGER_SYSVIEW_OnUserStart(unsigned UserId) {
  unsigned char* pPayload;
  unsigned char* pPayloadStart;
  { unsigned int LockState; __asm volatile ("mrs   %0, basepri  \n\t" "mov   r1, %1       \n\t" "msr   basepri, r1  \n\t" : "=r" (LockState) : "i"((0x20)) : "r1" );; pPayloadStart = _PreparePacket(_aPacket);;

  pPayload = pPayloadStart;
  { unsigned char* pSysviewPointer; unsigned long SysViewData; pSysviewPointer = pPayload; SysViewData = UserId; while(SysViewData > 0x7F) { *pSysviewPointer++ = (unsigned char)(SysViewData | 0x80); SysViewData >>= 7; }; *pSysviewPointer++ = (unsigned char)SysViewData; pPayload = pSysviewPointer; };;
  _SendPacket(pPayloadStart, pPayload, 15);
  __asm volatile ("msr   basepri, %0  \n\t" : : "r" (LockState) : ); };
}
# 2162 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER_SYSVIEW.c"
void SEGGER_SYSVIEW_OnUserStop(unsigned UserId) {
  unsigned char * pPayload;
  unsigned char * pPayloadStart;
  { unsigned int LockState; __asm volatile ("mrs   %0, basepri  \n\t" "mov   r1, %1       \n\t" "msr   basepri, r1  \n\t" : "=r" (LockState) : "i"((0x20)) : "r1" );; pPayloadStart = _PreparePacket(_aPacket);;

  pPayload = pPayloadStart;
  { unsigned char* pSysviewPointer; unsigned long SysViewData; pSysviewPointer = pPayload; SysViewData = UserId; while(SysViewData > 0x7F) { *pSysviewPointer++ = (unsigned char)(SysViewData | 0x80); SysViewData >>= 7; }; *pSysviewPointer++ = (unsigned char)SysViewData; pPayload = pSysviewPointer; };;
  _SendPacket(pPayloadStart, pPayload, 16);
  __asm volatile ("msr   basepri, %0  \n\t" : : "r" (LockState) : ); };
}
# 2184 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER_SYSVIEW.c"
void SEGGER_SYSVIEW_NameResource(unsigned long ResourceId, const char* sName) {
  unsigned char* pPayload;
  unsigned char* pPayloadStart;
  { unsigned int LockState; __asm volatile ("mrs   %0, basepri  \n\t" "mov   r1, %1       \n\t" "msr   basepri, r1  \n\t" : "=r" (LockState) : "i"((0x20)) : "r1" );; pPayloadStart = _PreparePacket(_aPacket);;

  pPayload = pPayloadStart;
  { unsigned char* pSysviewPointer; unsigned long SysViewData; pSysviewPointer = pPayload; SysViewData = (((ResourceId) - _SYSVIEW_Globals.RAMBaseAddress) >> 2); while(SysViewData > 0x7F) { *pSysviewPointer++ = (unsigned char)(SysViewData | 0x80); SysViewData >>= 7; }; *pSysviewPointer++ = (unsigned char)SysViewData; pPayload = pSysviewPointer; };;
  pPayload = _EncodeStr(pPayload, sName, 128);
  _SendPacket(pPayloadStart, pPayload, 25);
  __asm volatile ("msr   basepri, %0  \n\t" : : "r" (LockState) : ); };
}
# 2213 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER_SYSVIEW.c"
int SEGGER_SYSVIEW_SendPacket(unsigned char* pPacket, unsigned char* pPayloadEnd, unsigned int EventId) {

  { unsigned int LockState; __asm volatile ("mrs   %0, basepri  \n\t" "mov   r1, %1       \n\t" "msr   basepri, r1  \n\t" : "=r" (LockState) : "i"((0x20)) : "r1" );;

  _SendPacket(pPacket + 4, pPayloadEnd, EventId);

  __asm volatile ("msr   basepri, %0  \n\t" : : "r" (LockState) : ); };

  return 0;
}
# 2240 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER_SYSVIEW.c"
unsigned char* SEGGER_SYSVIEW_EncodeU32(unsigned char* pPayload, unsigned long Value) {
  { unsigned char* pSysviewPointer; unsigned long SysViewData; pSysviewPointer = pPayload; SysViewData = Value; while(SysViewData > 0x7F) { *pSysviewPointer++ = (unsigned char)(SysViewData | 0x80); SysViewData >>= 7; }; *pSysviewPointer++ = (unsigned char)SysViewData; pPayload = pSysviewPointer; };;
  return pPayload;
}
# 2267 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER_SYSVIEW.c"
unsigned char* SEGGER_SYSVIEW_EncodeString(unsigned char* pPayload, const char* s, unsigned int MaxLen) {
  return _EncodeStr(pPayload, s, MaxLen);
}
# 2293 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER_SYSVIEW.c"
unsigned char* SEGGER_SYSVIEW_EncodeData(unsigned char *pPayload, const char* pSrc, unsigned int NumBytes) {
  return _EncodeData(pPayload, pSrc, NumBytes);
}
# 2321 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER_SYSVIEW.c"
unsigned char* SEGGER_SYSVIEW_EncodeId(unsigned char* pPayload, unsigned long Id) {
  Id = (((Id) - _SYSVIEW_Globals.RAMBaseAddress) >> 2);
  { unsigned char* pSysviewPointer; unsigned long SysViewData; pSysviewPointer = pPayload; SysViewData = Id; while(SysViewData > 0x7F) { *pSysviewPointer++ = (unsigned char)(SysViewData | 0x80); SysViewData >>= 7; }; *pSysviewPointer++ = (unsigned char)SysViewData; pPayload = pSysviewPointer; };;
  return pPayload;
}
# 2349 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER_SYSVIEW.c"
unsigned long SEGGER_SYSVIEW_ShrinkId(unsigned long Id) {
  return (((Id) - _SYSVIEW_Globals.RAMBaseAddress) >> 2);
}
# 2371 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER_SYSVIEW.c"
void SEGGER_SYSVIEW_RegisterModule(SEGGER_SYSVIEW_MODULE* pModule) {
  { unsigned int LockState; __asm volatile ("mrs   %0, basepri  \n\t" "mov   r1, %1       \n\t" "msr   basepri, r1  \n\t" : "=r" (LockState) : "i"((0x20)) : "r1" );;
  if (_pFirstModule == 0) {





    pModule->EventOffset = (512);
    pModule->pNext = 0;
    _pFirstModule = pModule;
    _NumModules = 1;
  } else {





    pModule->EventOffset = _pFirstModule->EventOffset + _pFirstModule->NumEvents;
    pModule->pNext = _pFirstModule;
    _pFirstModule = pModule;
    _NumModules++;
  }
  SEGGER_SYSVIEW_SendModule(0);
  if (pModule->pfSendModuleDesc) {
    pModule->pfSendModuleDesc();
  }
  __asm volatile ("msr   basepri, %0  \n\t" : : "r" (LockState) : ); };
}
# 2412 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER_SYSVIEW.c"
void SEGGER_SYSVIEW_RecordModuleDescription(const SEGGER_SYSVIEW_MODULE* pModule, const char* sDescription) {
  unsigned char ModuleId;
  SEGGER_SYSVIEW_MODULE* p;

  p = _pFirstModule;
  ModuleId = 0;
  do {
    if (p == pModule) {
      break;
    }
    ModuleId++;
    p = p->pNext;
  } while (p);
  {
    unsigned char* pPayload;
    unsigned char* pPayloadStart;
    { unsigned int LockState; __asm volatile ("mrs   %0, basepri  \n\t" "mov   r1, %1       \n\t" "msr   basepri, r1  \n\t" : "=r" (LockState) : "i"((0x20)) : "r1" );; pPayloadStart = _PreparePacket(_aPacket);;

    pPayload = pPayloadStart;




    { unsigned char* pSysviewPointer; unsigned long SysViewData; pSysviewPointer = pPayload; SysViewData = ModuleId; while(SysViewData > 0x7F) { *pSysviewPointer++ = (unsigned char)(SysViewData | 0x80); SysViewData >>= 7; }; *pSysviewPointer++ = (unsigned char)SysViewData; pPayload = pSysviewPointer; };;
    { unsigned char* pSysviewPointer; unsigned long SysViewData; pSysviewPointer = pPayload; SysViewData = (pModule->EventOffset); while(SysViewData > 0x7F) { *pSysviewPointer++ = (unsigned char)(SysViewData | 0x80); SysViewData >>= 7; }; *pSysviewPointer++ = (unsigned char)SysViewData; pPayload = pSysviewPointer; };;
    pPayload = _EncodeStr(pPayload, sDescription, 128);
    _SendPacket(pPayloadStart, pPayload, 22);
    __asm volatile ("msr   basepri, %0  \n\t" : : "r" (LockState) : ); };
  }
}
# 2453 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER_SYSVIEW.c"
void SEGGER_SYSVIEW_SendModule(unsigned char ModuleId) {
  SEGGER_SYSVIEW_MODULE* pModule;
  unsigned long n;

  if (_pFirstModule != 0) {
    pModule = _pFirstModule;
    for (n = 0; n < ModuleId; n++) {
      pModule = pModule->pNext;
      if (pModule == 0) {
        break;
      }
    }
    if (pModule != 0) {
      unsigned char* pPayload;
      unsigned char* pPayloadStart;
      { unsigned int LockState; __asm volatile ("mrs   %0, basepri  \n\t" "mov   r1, %1       \n\t" "msr   basepri, r1  \n\t" : "=r" (LockState) : "i"((0x20)) : "r1" );; pPayloadStart = _PreparePacket(_aPacket);;

      pPayload = pPayloadStart;




      { unsigned char* pSysviewPointer; unsigned long SysViewData; pSysviewPointer = pPayload; SysViewData = ModuleId; while(SysViewData > 0x7F) { *pSysviewPointer++ = (unsigned char)(SysViewData | 0x80); SysViewData >>= 7; }; *pSysviewPointer++ = (unsigned char)SysViewData; pPayload = pSysviewPointer; };;
      { unsigned char* pSysviewPointer; unsigned long SysViewData; pSysviewPointer = pPayload; SysViewData = (pModule->EventOffset); while(SysViewData > 0x7F) { *pSysviewPointer++ = (unsigned char)(SysViewData | 0x80); SysViewData >>= 7; }; *pSysviewPointer++ = (unsigned char)SysViewData; pPayload = pSysviewPointer; };;
      pPayload = _EncodeStr(pPayload, pModule->sModule, 128);
      _SendPacket(pPayloadStart, pPayload, 22);
      __asm volatile ("msr   basepri, %0  \n\t" : : "r" (LockState) : ); };
    }
  }
}
# 2492 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER_SYSVIEW.c"
void SEGGER_SYSVIEW_SendModuleDescription(void) {
  SEGGER_SYSVIEW_MODULE* pModule;

  if (_pFirstModule != 0) {
    pModule = _pFirstModule;
    do {
      if (pModule->pfSendModuleDesc) {
        pModule->pfSendModuleDesc();
      }
      pModule = pModule->pNext;
    } while (pModule);
  }
}
# 2513 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER_SYSVIEW.c"
void SEGGER_SYSVIEW_SendNumModules(void) {
  unsigned char* pPayload;
  unsigned char* pPayloadStart;
  { unsigned int LockState; __asm volatile ("mrs   %0, basepri  \n\t" "mov   r1, %1       \n\t" "msr   basepri, r1  \n\t" : "=r" (LockState) : "i"((0x20)) : "r1" );; pPayloadStart = _PreparePacket(_aPacket);;
  pPayload = pPayloadStart;
  { unsigned char* pSysviewPointer; unsigned long SysViewData; pSysviewPointer = pPayload; SysViewData = _NumModules; while(SysViewData > 0x7F) { *pSysviewPointer++ = (unsigned char)(SysViewData | 0x80); SysViewData >>= 7; }; *pSysviewPointer++ = (unsigned char)SysViewData; pPayload = pSysviewPointer; };;
  _SendPacket(pPayloadStart, pPayload, 27);
  __asm volatile ("msr   basepri, %0  \n\t" : : "r" (LockState) : ); };
}
# 2540 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER_SYSVIEW.c"
void SEGGER_SYSVIEW_PrintfHostEx(const char* s, unsigned long Options, ...) {
  va_list ParamList;
# 2555 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER_SYSVIEW.c"
  
# 2555 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER_SYSVIEW.c" 3 4
 __builtin_va_start((
# 2555 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER_SYSVIEW.c"
 ParamList
# 2555 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER_SYSVIEW.c" 3 4
 ),
# 2555 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER_SYSVIEW.c"
 Options
# 2555 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER_SYSVIEW.c" 3 4
 )
# 2555 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER_SYSVIEW.c"
                             ;
  _VPrintHost(s, Options, &ParamList);
  
# 2557 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER_SYSVIEW.c" 3 4
 __builtin_va_end(
# 2557 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER_SYSVIEW.c"
 ParamList
# 2557 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER_SYSVIEW.c" 3 4
 )
# 2557 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER_SYSVIEW.c"
                  ;

}
# 2574 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER_SYSVIEW.c"
void SEGGER_SYSVIEW_PrintfHost(const char* s, ...) {
  va_list ParamList;
# 2589 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER_SYSVIEW.c"
  
# 2589 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER_SYSVIEW.c" 3 4
 __builtin_va_start((
# 2589 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER_SYSVIEW.c"
 ParamList
# 2589 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER_SYSVIEW.c" 3 4
 ),
# 2589 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER_SYSVIEW.c"
 s
# 2589 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER_SYSVIEW.c" 3 4
 )
# 2589 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER_SYSVIEW.c"
                       ;
  _VPrintHost(s, (0u), &ParamList);
  
# 2591 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER_SYSVIEW.c" 3 4
 __builtin_va_end(
# 2591 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER_SYSVIEW.c"
 ParamList
# 2591 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER_SYSVIEW.c" 3 4
 )
# 2591 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER_SYSVIEW.c"
                  ;

}
# 2609 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER_SYSVIEW.c"
void SEGGER_SYSVIEW_WarnfHost(const char* s, ...) {
  va_list ParamList;
# 2624 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER_SYSVIEW.c"
  
# 2624 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER_SYSVIEW.c" 3 4
 __builtin_va_start((
# 2624 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER_SYSVIEW.c"
 ParamList
# 2624 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER_SYSVIEW.c" 3 4
 ),
# 2624 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER_SYSVIEW.c"
 s
# 2624 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER_SYSVIEW.c" 3 4
 )
# 2624 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER_SYSVIEW.c"
                       ;
  _VPrintHost(s, (1u), &ParamList);
  
# 2626 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER_SYSVIEW.c" 3 4
 __builtin_va_end(
# 2626 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER_SYSVIEW.c"
 ParamList
# 2626 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER_SYSVIEW.c" 3 4
 )
# 2626 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER_SYSVIEW.c"
                  ;

}
# 2644 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER_SYSVIEW.c"
void SEGGER_SYSVIEW_ErrorfHost(const char* s, ...) {
  va_list ParamList;
# 2659 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER_SYSVIEW.c"
  
# 2659 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER_SYSVIEW.c" 3 4
 __builtin_va_start((
# 2659 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER_SYSVIEW.c"
 ParamList
# 2659 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER_SYSVIEW.c" 3 4
 ),
# 2659 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER_SYSVIEW.c"
 s
# 2659 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER_SYSVIEW.c" 3 4
 )
# 2659 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER_SYSVIEW.c"
                       ;
  _VPrintHost(s, (2u), &ParamList);
  
# 2661 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER_SYSVIEW.c" 3 4
 __builtin_va_end(
# 2661 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER_SYSVIEW.c"
 ParamList
# 2661 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER_SYSVIEW.c" 3 4
 )
# 2661 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER_SYSVIEW.c"
                  ;

}
# 2677 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER_SYSVIEW.c"
void SEGGER_SYSVIEW_PrintfTargetEx(const char* s, unsigned long Options, ...) {
  va_list ParamList;

  
# 2680 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER_SYSVIEW.c" 3 4
 __builtin_va_start((
# 2680 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER_SYSVIEW.c"
 ParamList
# 2680 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER_SYSVIEW.c" 3 4
 ),
# 2680 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER_SYSVIEW.c"
 Options
# 2680 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER_SYSVIEW.c" 3 4
 )
# 2680 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER_SYSVIEW.c"
                             ;
  _VPrintTarget(s, Options, &ParamList);
  
# 2682 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER_SYSVIEW.c" 3 4
 __builtin_va_end(
# 2682 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER_SYSVIEW.c"
 ParamList
# 2682 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER_SYSVIEW.c" 3 4
 )
# 2682 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER_SYSVIEW.c"
                  ;
}
# 2696 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER_SYSVIEW.c"
void SEGGER_SYSVIEW_PrintfTarget(const char* s, ...) {
  va_list ParamList;

  
# 2699 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER_SYSVIEW.c" 3 4
 __builtin_va_start((
# 2699 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER_SYSVIEW.c"
 ParamList
# 2699 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER_SYSVIEW.c" 3 4
 ),
# 2699 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER_SYSVIEW.c"
 s
# 2699 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER_SYSVIEW.c" 3 4
 )
# 2699 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER_SYSVIEW.c"
                       ;
  _VPrintTarget(s, (0u), &ParamList);
  
# 2701 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER_SYSVIEW.c" 3 4
 __builtin_va_end(
# 2701 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER_SYSVIEW.c"
 ParamList
# 2701 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER_SYSVIEW.c" 3 4
 )
# 2701 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER_SYSVIEW.c"
                  ;
}
# 2715 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER_SYSVIEW.c"
void SEGGER_SYSVIEW_WarnfTarget(const char* s, ...) {
  va_list ParamList;

  
# 2718 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER_SYSVIEW.c" 3 4
 __builtin_va_start((
# 2718 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER_SYSVIEW.c"
 ParamList
# 2718 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER_SYSVIEW.c" 3 4
 ),
# 2718 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER_SYSVIEW.c"
 s
# 2718 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER_SYSVIEW.c" 3 4
 )
# 2718 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER_SYSVIEW.c"
                       ;
  _VPrintTarget(s, (1u), &ParamList);
  
# 2720 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER_SYSVIEW.c" 3 4
 __builtin_va_end(
# 2720 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER_SYSVIEW.c"
 ParamList
# 2720 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER_SYSVIEW.c" 3 4
 )
# 2720 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER_SYSVIEW.c"
                  ;
}
# 2734 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER_SYSVIEW.c"
void SEGGER_SYSVIEW_ErrorfTarget(const char* s, ...) {
  va_list ParamList;

  
# 2737 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER_SYSVIEW.c" 3 4
 __builtin_va_start((
# 2737 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER_SYSVIEW.c"
 ParamList
# 2737 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER_SYSVIEW.c" 3 4
 ),
# 2737 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER_SYSVIEW.c"
 s
# 2737 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER_SYSVIEW.c" 3 4
 )
# 2737 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER_SYSVIEW.c"
                       ;
  _VPrintTarget(s, (2u), &ParamList);
  
# 2739 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER_SYSVIEW.c" 3 4
 __builtin_va_end(
# 2739 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER_SYSVIEW.c"
 ParamList
# 2739 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER_SYSVIEW.c" 3 4
 )
# 2739 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER_SYSVIEW.c"
                  ;
}
# 2753 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER_SYSVIEW.c"
void SEGGER_SYSVIEW_Print(const char* s) {
  unsigned char* pPayload;
  unsigned char* pPayloadStart;
  { unsigned int LockState; __asm volatile ("mrs   %0, basepri  \n\t" "mov   r1, %1       \n\t" "msr   basepri, r1  \n\t" : "=r" (LockState) : "i"((0x20)) : "r1" );; pPayloadStart = _PreparePacket(_aPacket);;

  pPayload = _EncodeStr(pPayloadStart, s, 128);
  { unsigned char* pSysviewPointer; unsigned long SysViewData; pSysviewPointer = pPayload; SysViewData = (0u); while(SysViewData > 0x7F) { *pSysviewPointer++ = (unsigned char)(SysViewData | 0x80); SysViewData >>= 7; }; *pSysviewPointer++ = (unsigned char)SysViewData; pPayload = pSysviewPointer; };;
  { unsigned char* pSysviewPointer; unsigned long SysViewData; pSysviewPointer = pPayload; SysViewData = 0; while(SysViewData > 0x7F) { *pSysviewPointer++ = (unsigned char)(SysViewData | 0x80); SysViewData >>= 7; }; *pSysviewPointer++ = (unsigned char)SysViewData; pPayload = pSysviewPointer; };;
  _SendPacket(pPayloadStart, pPayload, 26);
  __asm volatile ("msr   basepri, %0  \n\t" : : "r" (LockState) : ); };
}
# 2775 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER_SYSVIEW.c"
void SEGGER_SYSVIEW_Warn(const char* s) {
  unsigned char* pPayload;
  unsigned char* pPayloadStart;
  { unsigned int LockState; __asm volatile ("mrs   %0, basepri  \n\t" "mov   r1, %1       \n\t" "msr   basepri, r1  \n\t" : "=r" (LockState) : "i"((0x20)) : "r1" );; pPayloadStart = _PreparePacket(_aPacket);;

  pPayload = _EncodeStr(pPayloadStart, s, 128);
  { unsigned char* pSysviewPointer; unsigned long SysViewData; pSysviewPointer = pPayload; SysViewData = (1u); while(SysViewData > 0x7F) { *pSysviewPointer++ = (unsigned char)(SysViewData | 0x80); SysViewData >>= 7; }; *pSysviewPointer++ = (unsigned char)SysViewData; pPayload = pSysviewPointer; };;
  { unsigned char* pSysviewPointer; unsigned long SysViewData; pSysviewPointer = pPayload; SysViewData = 0; while(SysViewData > 0x7F) { *pSysviewPointer++ = (unsigned char)(SysViewData | 0x80); SysViewData >>= 7; }; *pSysviewPointer++ = (unsigned char)SysViewData; pPayload = pSysviewPointer; };;
  _SendPacket(pPayloadStart, pPayload, 26);
  __asm volatile ("msr   basepri, %0  \n\t" : : "r" (LockState) : ); };
}
# 2797 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER_SYSVIEW.c"
void SEGGER_SYSVIEW_Error(const char* s) {
  unsigned char* pPayload;
  unsigned char* pPayloadStart;
  { unsigned int LockState; __asm volatile ("mrs   %0, basepri  \n\t" "mov   r1, %1       \n\t" "msr   basepri, r1  \n\t" : "=r" (LockState) : "i"((0x20)) : "r1" );; pPayloadStart = _PreparePacket(_aPacket);;

  pPayload = _EncodeStr(pPayloadStart, s, 128);
  { unsigned char* pSysviewPointer; unsigned long SysViewData; pSysviewPointer = pPayload; SysViewData = (2u); while(SysViewData > 0x7F) { *pSysviewPointer++ = (unsigned char)(SysViewData | 0x80); SysViewData >>= 7; }; *pSysviewPointer++ = (unsigned char)SysViewData; pPayload = pSysviewPointer; };;
  { unsigned char* pSysviewPointer; unsigned long SysViewData; pSysviewPointer = pPayload; SysViewData = 0; while(SysViewData > 0x7F) { *pSysviewPointer++ = (unsigned char)(SysViewData | 0x80); SysViewData >>= 7; }; *pSysviewPointer++ = (unsigned char)SysViewData; pPayload = pSysviewPointer; };;
  _SendPacket(pPayloadStart, pPayload, 26);
  __asm volatile ("msr   basepri, %0  \n\t" : : "r" (LockState) : ); };
}
# 2819 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER_SYSVIEW.c"
void SEGGER_SYSVIEW_EnableEvents(unsigned long EnableMask) {
  _SYSVIEW_Globals.DisabledEvents &= ~EnableMask;
}
# 2833 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER_SYSVIEW.c"
void SEGGER_SYSVIEW_DisableEvents(unsigned long DisableMask) {
  _SYSVIEW_Globals.DisabledEvents |= DisableMask;
}
# 2848 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\systemView\\SEGGER_SYSVIEW.c"
int SEGGER_SYSVIEW_IsStarted(void) {




  if ((_SEGGER_RTT.aDown[1].WrOff - _SEGGER_RTT.aDown[1].RdOff)) {
    if (_SYSVIEW_Globals.RecursionCnt == 0) {
      _SYSVIEW_Globals.RecursionCnt = 1;
      _HandleIncomingPacket();
      _SYSVIEW_Globals.RecursionCnt = 0;
    }
  }

  return _SYSVIEW_Globals.EnableState;
}
