# 1 "C:\\nRF5_SDK_15.0.0_a53641a\\external\\thedotfactory_fonts\\orkney8pts.c"
# 1 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\pca10040\\s132\\ses//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "C:\\nRF5_SDK_15.0.0_a53641a\\external\\thedotfactory_fonts\\orkney8pts.c"
# 16 "C:\\nRF5_SDK_15.0.0_a53641a\\external\\thedotfactory_fonts\\orkney8pts.c"
# 1 "C:\\nRF5_SDK_15.0.0_a53641a\\external\\thedotfactory_fonts\\nrf_font.h" 1
# 25 "C:\\nRF5_SDK_15.0.0_a53641a\\external\\thedotfactory_fonts\\nrf_font.h"
# 1 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stdint.h" 1 3 4
# 47 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stdint.h" 3 4

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
# 26 "C:\\nRF5_SDK_15.0.0_a53641a\\external\\thedotfactory_fonts\\nrf_font.h" 2
# 39 "C:\\nRF5_SDK_15.0.0_a53641a\\external\\thedotfactory_fonts\\nrf_font.h"

# 39 "C:\\nRF5_SDK_15.0.0_a53641a\\external\\thedotfactory_fonts\\nrf_font.h"
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
# 17 "C:\\nRF5_SDK_15.0.0_a53641a\\external\\thedotfactory_fonts\\orkney8pts.c" 2


const uint8_t orkney_8ptBitmaps[] =
{

    0x00,
    0x00,
    0xC0,
    0x80,
    0x80,
    0x80,
    0x80,
    0x80,
    0x80,
    0x00,
    0x00,
    0xC0,
    0x00,
    0x00,
    0x00,
    0x00,


    0x00,
    0x00,
    0xA0,
    0xA0,
    0xA0,
    0xA0,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,


    0x00,
    0x00,
    0x22,
    0x22,
    0x22,
    0xFF,
    0x24,
    0x24,
    0x24,
    0xFF,
    0x44,
    0x44,
    0x00,
    0x00,
    0x00,
    0x00,


    0x10,
    0x38,
    0x44,
    0x80,
    0xC0,
    0x60,
    0x38,
    0x0C,
    0x04,
    0x84,
    0xC4,
    0x78,
    0x10,
    0x00,
    0x00,
    0x00,


    0x00,
    0x00,
    0xE3,
    0xA2,
    0xA4,
    0xE8,
    0x08,
    0x10,
    0x26,
    0x29,
    0x49,
    0x86,
    0x00,
    0x00,
    0x00,
    0x00,


    0x00,
    0x00,
    0x38,
    0x48,
    0x40,
    0x40,
    0x20,
    0x50,
    0x89,
    0x86,
    0x46,
    0x39,
    0x00,
    0x00,
    0x00,
    0x00,


    0x00,
    0x00,
    0x80,
    0x80,
    0x80,
    0x80,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,


    0x20,
    0x20,
    0x40,
    0x40,
    0x80,
    0x80,
    0x80,
    0x80,
    0x80,
    0x80,
    0x80,
    0x80,
    0x80,
    0x40,
    0x40,
    0x20,


    0x80,
    0xC0,
    0x40,
    0x20,
    0x20,
    0x20,
    0x20,
    0x20,
    0x20,
    0x20,
    0x20,
    0x20,
    0x20,
    0x20,
    0x40,
    0x80,


    0x00,
    0x00,
    0xC0,
    0xE0,
    0xC0,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,


    0x00,
    0x00,
    0x00,
    0x08,
    0x08,
    0x08,
    0x08,
    0xFF,
    0x08,
    0x08,
    0x08,
    0x08,
    0x00,
    0x00,
    0x00,
    0x00,


    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x80,
    0x80,
    0x80,
    0x80,
    0x00,


    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0xF8,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,


    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0xC0,
    0x00,
    0x00,
    0x00,
    0x00,


    0x00,
    0x00,
    0x03,
    0x02,
    0x04,
    0x04,
    0x08,
    0x08,
    0x10,
    0x10,
    0x20,
    0x20,
    0x40,
    0x40,
    0x80,
    0x00,


    0x00,
    0x00,
    0x38,
    0x44,
    0xC6,
    0x82,
    0x82,
    0x82,
    0x82,
    0xC6,
    0x44,
    0x38,
    0x00,
    0x00,
    0x00,
    0x00,


    0x00,
    0x00,
    0x30,
    0x70,
    0xB0,
    0x30,
    0x30,
    0x30,
    0x30,
    0x30,
    0x30,
    0x30,
    0x00,
    0x00,
    0x00,
    0x00,


    0x00,
    0x00,
    0x78,
    0xC8,
    0x84,
    0x04,
    0x08,
    0x10,
    0x30,
    0x60,
    0xC0,
    0xFC,
    0x00,
    0x00,
    0x00,
    0x00,


    0x00,
    0x00,
    0x70,
    0xC8,
    0x08,
    0x08,
    0x30,
    0x08,
    0x04,
    0x84,
    0xC8,
    0x78,
    0x00,
    0x00,
    0x00,
    0x00,


    0x00,
    0x00,
    0x0C,
    0x0C,
    0x14,
    0x14,
    0x24,
    0x44,
    0x44,
    0xFE,
    0x04,
    0x04,
    0x00,
    0x00,
    0x00,
    0x00,


    0x00,
    0x00,
    0x7C,
    0x80,
    0x80,
    0xF8,
    0x8C,
    0x04,
    0x04,
    0x04,
    0x8C,
    0x78,
    0x00,
    0x00,
    0x00,
    0x00,


    0x00,
    0x00,
    0x08,
    0x10,
    0x20,
    0x78,
    0x44,
    0x86,
    0x82,
    0x86,
    0xC4,
    0x78,
    0x00,
    0x00,
    0x00,
    0x00,


    0x00,
    0x00,
    0xFE,
    0x06,
    0x04,
    0x0C,
    0x08,
    0x10,
    0x10,
    0x20,
    0x20,
    0x40,
    0x00,
    0x00,
    0x00,
    0x00,


    0x00,
    0x00,
    0x70,
    0xC8,
    0x88,
    0xC8,
    0x70,
    0x88,
    0x84,
    0x84,
    0x88,
    0x78,
    0x00,
    0x00,
    0x00,
    0x00,


    0x00,
    0x00,
    0x78,
    0xC4,
    0x86,
    0x82,
    0x84,
    0xC4,
    0x78,
    0x10,
    0x30,
    0x60,
    0x00,
    0x00,
    0x00,
    0x00,


    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0xC0,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0xC0,
    0x00,
    0x00,
    0x00,
    0x00,


    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0xC0,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0xC0,
    0x40,
    0x40,
    0x80,
    0x00,


    0x00,
    0x00,
    0x00,
    0x02,
    0x0C,
    0x30,
    0x60,
    0xC0,
    0x60,
    0x18,
    0x06,
    0x02,
    0x00,
    0x00,
    0x00,
    0x00,


    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0xFF,
    0x00,
    0x00,
    0xFF,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,


    0x00,
    0x00,
    0x00,
    0x80,
    0x60,
    0x18,
    0x06,
    0x02,
    0x0C,
    0x30,
    0xC0,
    0x80,
    0x00,
    0x00,
    0x00,
    0x00,


    0x00,
    0x00,
    0x70,
    0x88,
    0x88,
    0x08,
    0x18,
    0x30,
    0x20,
    0x20,
    0x00,
    0x20,
    0x00,
    0x00,
    0x00,
    0x00,


    0x00,
    0x00,
    0x00,
    0x00,
    0x78,
    0x48,
    0x9C,
    0xA4,
    0xA4,
    0x9C,
    0x40,
    0x3C,
    0x00,
    0x00,
    0x00,
    0x00,


    0x00, 0x00,
    0x00, 0x00,
    0x0C, 0x00,
    0x0C, 0x00,
    0x14, 0x00,
    0x12, 0x00,
    0x32, 0x00,
    0x23, 0x00,
    0x21, 0x00,
    0x7F, 0x00,
    0x40, 0x80,
    0xC0, 0x80,
    0x00, 0x00,
    0x00, 0x00,
    0x00, 0x00,
    0x00, 0x00,


    0x00,
    0x00,
    0xF8,
    0x8C,
    0x84,
    0x8C,
    0xF8,
    0x84,
    0x82,
    0x82,
    0x86,
    0xFC,
    0x00,
    0x00,
    0x00,
    0x00,


    0x00,
    0x00,
    0x3E,
    0x62,
    0xC0,
    0x80,
    0x80,
    0x80,
    0x80,
    0xC0,
    0x62,
    0x3E,
    0x00,
    0x00,
    0x00,
    0x00,


    0x00,
    0x00,
    0xF8,
    0x84,
    0x82,
    0x82,
    0x83,
    0x83,
    0x82,
    0x82,
    0x84,
    0xF8,
    0x00,
    0x00,
    0x00,
    0x00,


    0x00,
    0x00,
    0xF8,
    0x80,
    0x80,
    0x80,
    0xF8,
    0x80,
    0x80,
    0x80,
    0x80,
    0xF8,
    0x00,
    0x00,
    0x00,
    0x00,


    0x00,
    0x00,
    0xF8,
    0x80,
    0x80,
    0x80,
    0xF8,
    0x80,
    0x80,
    0x80,
    0x80,
    0x80,
    0x00,
    0x00,
    0x00,
    0x00,


    0x00,
    0x00,
    0x1E,
    0x61,
    0x40,
    0x80,
    0x8F,
    0x81,
    0x81,
    0x41,
    0x61,
    0x1E,
    0x00,
    0x00,
    0x00,
    0x00,


    0x00,
    0x00,
    0x83,
    0x83,
    0x83,
    0x83,
    0xFF,
    0x83,
    0x83,
    0x83,
    0x83,
    0x83,
    0x00,
    0x00,
    0x00,
    0x00,


    0x00,
    0x00,
    0x80,
    0x80,
    0x80,
    0x80,
    0x80,
    0x80,
    0x80,
    0x80,
    0x80,
    0x80,
    0x00,
    0x00,
    0x00,
    0x00,


    0x00,
    0x00,
    0x20,
    0x20,
    0x20,
    0x20,
    0x20,
    0x20,
    0x20,
    0x20,
    0x20,
    0xC0,
    0x00,
    0x00,
    0x00,
    0x00,


    0x00,
    0x00,
    0x86,
    0x88,
    0x90,
    0xA0,
    0xC0,
    0xA0,
    0x90,
    0x88,
    0x84,
    0x82,
    0x00,
    0x00,
    0x00,
    0x00,


    0x00,
    0x00,
    0x80,
    0x80,
    0x80,
    0x80,
    0x80,
    0x80,
    0x80,
    0x80,
    0x80,
    0xF8,
    0x00,
    0x00,
    0x00,
    0x00,


    0x00, 0x00,
    0x00, 0x00,
    0xC0, 0xC0,
    0xC0, 0xC0,
    0xA1, 0x40,
    0xB3, 0x40,
    0x92, 0x40,
    0x8C, 0x40,
    0x8C, 0x40,
    0x88, 0x40,
    0x80, 0x40,
    0x80, 0x40,
    0x00, 0x00,
    0x00, 0x00,
    0x00, 0x00,
    0x00, 0x00,


    0x00,
    0x00,
    0x81,
    0xC1,
    0xA1,
    0xB1,
    0x91,
    0x89,
    0x8D,
    0x87,
    0x83,
    0x81,
    0x00,
    0x00,
    0x00,
    0x00,


    0x00, 0x00,
    0x00, 0x00,
    0x3E, 0x00,
    0x63, 0x00,
    0xC1, 0x80,
    0x80, 0x80,
    0x80, 0x80,
    0x80, 0x80,
    0x80, 0x80,
    0xC1, 0x80,
    0x63, 0x00,
    0x3E, 0x00,
    0x00, 0x00,
    0x00, 0x00,
    0x00, 0x00,
    0x00, 0x00,


    0x00,
    0x00,
    0xF8,
    0x84,
    0x84,
    0x84,
    0xF8,
    0x80,
    0x80,
    0x80,
    0x80,
    0x80,
    0x00,
    0x00,
    0x00,
    0x00,


    0x00, 0x00,
    0x00, 0x00,
    0x3E, 0x00,
    0x63, 0x00,
    0xC1, 0x80,
    0x80, 0x80,
    0x80, 0x80,
    0x80, 0x80,
    0x84, 0x80,
    0xC3, 0x80,
    0x63, 0x00,
    0x3E, 0xC0,
    0x00, 0x00,
    0x00, 0x00,
    0x00, 0x00,
    0x00, 0x00,


    0x00,
    0x00,
    0xF8,
    0x84,
    0x84,
    0x84,
    0xFC,
    0x90,
    0x88,
    0x88,
    0x84,
    0x86,
    0x00,
    0x00,
    0x00,
    0x00,


    0x00,
    0x00,
    0x78,
    0xC4,
    0x80,
    0xC0,
    0x70,
    0x0C,
    0x04,
    0x86,
    0x84,
    0x78,
    0x00,
    0x00,
    0x00,
    0x00,


    0x00,
    0x00,
    0xFE,
    0x10,
    0x10,
    0x10,
    0x10,
    0x10,
    0x10,
    0x10,
    0x10,
    0x10,
    0x00,
    0x00,
    0x00,
    0x00,


    0x00,
    0x00,
    0x82,
    0x82,
    0x82,
    0x82,
    0x82,
    0x82,
    0x82,
    0x82,
    0x46,
    0x3C,
    0x00,
    0x00,
    0x00,
    0x00,


    0x00, 0x00,
    0x00, 0x00,
    0xC0, 0x80,
    0x41, 0x80,
    0x41, 0x00,
    0x61, 0x00,
    0x22, 0x00,
    0x22, 0x00,
    0x16, 0x00,
    0x14, 0x00,
    0x1C, 0x00,
    0x0C, 0x00,
    0x00, 0x00,
    0x00, 0x00,
    0x00, 0x00,
    0x00, 0x00,


    0x00, 0x00,
    0x00, 0x00,
    0x84, 0x04,
    0xC6, 0x0C,
    0x42, 0x08,
    0x62, 0x18,
    0x23, 0x10,
    0x23, 0x10,
    0x13, 0xB0,
    0x14, 0xA0,
    0x1C, 0xE0,
    0x08, 0x40,
    0x00, 0x00,
    0x00, 0x00,
    0x00, 0x00,
    0x00, 0x00,


    0x00,
    0x00,
    0xC3,
    0x62,
    0x24,
    0x1C,
    0x18,
    0x18,
    0x14,
    0x26,
    0x62,
    0xC1,
    0x00,
    0x00,
    0x00,
    0x00,


    0x00,
    0x00,
    0xC1,
    0x62,
    0x26,
    0x14,
    0x18,
    0x08,
    0x08,
    0x08,
    0x08,
    0x08,
    0x00,
    0x00,
    0x00,
    0x00,


    0x00,
    0x00,
    0xFE,
    0x04,
    0x0C,
    0x08,
    0x10,
    0x30,
    0x20,
    0x40,
    0xC0,
    0xFE,
    0x00,
    0x00,
    0x00,
    0x00,


    0xE0,
    0x80,
    0x80,
    0x80,
    0x80,
    0x80,
    0x80,
    0x80,
    0x80,
    0x80,
    0x80,
    0x80,
    0x80,
    0x80,
    0x80,
    0xE0,


    0x00,
    0x00,
    0x80,
    0x40,
    0x40,
    0x20,
    0x20,
    0x10,
    0x10,
    0x08,
    0x08,
    0x04,
    0x04,
    0x02,
    0x03,
    0x00,


    0xE0,
    0x20,
    0x20,
    0x20,
    0x20,
    0x20,
    0x20,
    0x20,
    0x20,
    0x20,
    0x20,
    0x20,
    0x20,
    0x20,
    0x20,
    0xE0,


    0x00, 0x00,
    0x08, 0x00,
    0x0C, 0x00,
    0x14, 0x00,
    0x16, 0x00,
    0x22, 0x00,
    0x22, 0x00,
    0x41, 0x00,
    0xC1, 0x80,
    0x00, 0x00,
    0x00, 0x00,
    0x00, 0x00,
    0x00, 0x00,
    0x00, 0x00,
    0x00, 0x00,
    0x00, 0x00,


    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0xFE,
    0x00,
    0x00,
    0x00,


    0x00,
    0x00,
    0xC0,
    0x60,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,


    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x70,
    0x88,
    0x08,
    0xF8,
    0x88,
    0x98,
    0xE8,
    0x00,
    0x00,
    0x00,
    0x00,


    0x00,
    0x00,
    0x80,
    0x80,
    0x80,
    0xB8,
    0xCC,
    0x84,
    0x84,
    0x84,
    0xCC,
    0xB8,
    0x00,
    0x00,
    0x00,
    0x00,


    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x70,
    0x90,
    0x80,
    0x80,
    0x80,
    0x90,
    0x70,
    0x00,
    0x00,
    0x00,
    0x00,


    0x00,
    0x00,
    0x04,
    0x04,
    0x04,
    0x74,
    0x8C,
    0x84,
    0x84,
    0x84,
    0x8C,
    0x74,
    0x00,
    0x00,
    0x00,
    0x00,


    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x70,
    0x88,
    0x88,
    0xFC,
    0x80,
    0x88,
    0x70,
    0x00,
    0x00,
    0x00,
    0x00,


    0x00,
    0x00,
    0x70,
    0x40,
    0x40,
    0xE0,
    0x40,
    0x40,
    0x40,
    0x40,
    0x40,
    0x40,
    0x00,
    0x00,
    0x00,
    0x00,


    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x74,
    0x8C,
    0x84,
    0x84,
    0x84,
    0x8C,
    0x74,
    0x04,
    0x88,
    0x70,
    0x00,


    0x00,
    0x00,
    0x80,
    0x80,
    0x80,
    0xB8,
    0xC8,
    0x84,
    0x84,
    0x84,
    0x84,
    0x84,
    0x00,
    0x00,
    0x00,
    0x00,


    0x00,
    0x00,
    0xC0,
    0x00,
    0x00,
    0x80,
    0x80,
    0x80,
    0x80,
    0x80,
    0x80,
    0x80,
    0x00,
    0x00,
    0x00,
    0x00,


    0x00,
    0x00,
    0x60,
    0x00,
    0x00,
    0x60,
    0x60,
    0x60,
    0x60,
    0x60,
    0x60,
    0x60,
    0x60,
    0x40,
    0xC0,
    0x00,


    0x00,
    0x00,
    0x80,
    0x80,
    0x80,
    0x98,
    0xB0,
    0xE0,
    0xE0,
    0xB0,
    0x98,
    0x88,
    0x08,
    0x00,
    0x00,
    0x00,


    0x00,
    0x00,
    0x80,
    0x80,
    0x80,
    0x80,
    0x80,
    0x80,
    0x80,
    0x80,
    0x80,
    0x60,
    0x00,
    0x00,
    0x00,
    0x00,


    0x00, 0x00,
    0x00, 0x00,
    0x00, 0x00,
    0x00, 0x00,
    0x00, 0x00,
    0xFB, 0x80,
    0xCC, 0xC0,
    0x88, 0x40,
    0x88, 0x40,
    0x88, 0x40,
    0x88, 0x40,
    0x88, 0x40,
    0x00, 0x00,
    0x00, 0x00,
    0x00, 0x00,
    0x00, 0x00,


    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0xB8,
    0xC8,
    0x84,
    0x84,
    0x84,
    0x84,
    0x84,
    0x00,
    0x00,
    0x00,
    0x00,


    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x70,
    0x88,
    0x84,
    0x84,
    0x84,
    0x88,
    0x70,
    0x00,
    0x00,
    0x00,
    0x00,


    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0xB8,
    0xCC,
    0x84,
    0x84,
    0x84,
    0xCC,
    0xB8,
    0x80,
    0x80,
    0x80,
    0x00,


    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x74,
    0x8C,
    0x84,
    0x84,
    0x84,
    0x8C,
    0x74,
    0x04,
    0x04,
    0x04,
    0x00,


    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0xB0,
    0xC0,
    0x80,
    0x80,
    0x80,
    0x80,
    0x80,
    0x00,
    0x00,
    0x00,
    0x00,


    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x38,
    0x48,
    0x40,
    0x38,
    0x0C,
    0xCC,
    0x78,
    0x00,
    0x00,
    0x00,
    0x00,


    0x00,
    0x00,
    0x40,
    0x40,
    0x40,
    0xF0,
    0x40,
    0x40,
    0x40,
    0x40,
    0x40,
    0x38,
    0x00,
    0x00,
    0x00,
    0x00,


    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x84,
    0x84,
    0x84,
    0x84,
    0x84,
    0xCC,
    0x74,
    0x00,
    0x00,
    0x00,
    0x00,


    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0xC4,
    0x44,
    0x48,
    0x68,
    0x28,
    0x30,
    0x10,
    0x00,
    0x00,
    0x00,
    0x00,


    0x00, 0x00,
    0x00, 0x00,
    0x00, 0x00,
    0x00, 0x00,
    0x00, 0x00,
    0xD8, 0x80,
    0x49, 0x80,
    0x49, 0x00,
    0x4D, 0x00,
    0x35, 0x00,
    0x36, 0x00,
    0x32, 0x00,
    0x00, 0x00,
    0x00, 0x00,
    0x00, 0x00,
    0x00, 0x00,


    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0xC6,
    0x4C,
    0x38,
    0x10,
    0x38,
    0x4C,
    0xC6,
    0x00,
    0x00,
    0x00,
    0x00,


    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x84,
    0x84,
    0x84,
    0x84,
    0x84,
    0xCC,
    0x74,
    0x04,
    0x88,
    0x70,
    0x00,


    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0xF8,
    0x18,
    0x30,
    0x20,
    0x40,
    0xC0,
    0xF8,
    0x00,
    0x00,
    0x00,
    0x00,


    0x60,
    0x40,
    0x40,
    0x40,
    0x40,
    0x40,
    0x80,
    0x80,
    0x80,
    0x80,
    0x40,
    0x40,
    0x40,
    0x40,
    0x40,
    0x60,


    0x00,
    0x00,
    0x80,
    0x80,
    0x80,
    0x80,
    0x80,
    0x80,
    0x80,
    0x80,
    0x80,
    0x80,
    0x80,
    0x80,
    0x00,
    0x00,


    0x80,
    0x40,
    0x40,
    0x40,
    0x40,
    0x40,
    0x40,
    0x40,
    0x60,
    0x40,
    0x40,
    0x40,
    0x40,
    0x40,
    0x40,
    0x80,


    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x62,
    0x52,
    0x8C,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
};



const FONT_CHAR_INFO orkney_8ptDescriptors[] =
{
    {2, 0},
    {3, 16},
    {8, 32},
    {6, 48},
    {8, 64},
    {8, 80},
    {1, 96},
    {3, 112},
    {3, 128},
    {3, 144},
    {8, 160},
    {1, 176},
    {5, 192},
    {2, 208},
    {8, 224},
    {7, 240},
    {4, 256},
    {6, 272},
    {6, 288},
    {7, 304},
    {6, 320},
    {7, 336},
    {7, 352},
    {6, 368},
    {7, 384},
    {2, 400},
    {2, 416},
    {7, 432},
    {8, 448},
    {7, 464},
    {5, 480},
    {6, 496},
    {9, 512},
    {7, 544},
    {7, 560},
    {8, 576},
    {5, 592},
    {5, 608},
    {8, 624},
    {8, 640},
    {1, 656},
    {3, 672},
    {7, 688},
    {5, 704},
    {10, 720},
    {8, 752},
    {9, 768},
    {6, 800},
    {10, 816},
    {7, 848},
    {7, 864},
    {7, 880},
    {7, 896},
    {9, 912},
    {14, 944},
    {8, 976},
    {8, 992},
    {7, 1008},
    {3, 1024},
    {8, 1040},
    {3, 1056},
    {9, 1072},
    {7, 1104},
    {3, 1120},
    {5, 1136},
    {6, 1152},
    {4, 1168},
    {6, 1184},
    {6, 1200},
    {4, 1216},
    {6, 1232},
    {6, 1248},
    {2, 1264},
    {3, 1280},
    {5, 1296},
    {3, 1312},
    {10, 1328},
    {6, 1360},
    {6, 1376},
    {6, 1392},
    {6, 1408},
    {4, 1424},
    {6, 1440},
    {5, 1456},
    {6, 1472},
    {6, 1488},
    {9, 1504},
    {7, 1536},
    {6, 1552},
    {5, 1568},
    {3, 1584},
    {1, 1600},
    {3, 1616},
    {7, 1632},
};


const FONT_INFO orkney_8ptFontInfo =
{
    15,
    '!',
    '~',
    2,
    orkney_8ptDescriptors,
    orkney_8ptBitmaps,
};
