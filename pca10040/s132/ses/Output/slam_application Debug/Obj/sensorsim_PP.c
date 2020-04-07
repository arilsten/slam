# 1 "C:\\nRF5_SDK_15.0.0_a53641a\\components\\libraries\\sensorsim\\sensorsim.c"
# 1 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\pca10040\\s132\\ses//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "C:\\nRF5_SDK_15.0.0_a53641a\\components\\libraries\\sensorsim\\sensorsim.c"
# 40 "C:\\nRF5_SDK_15.0.0_a53641a\\components\\libraries\\sensorsim\\sensorsim.c"
# 1 "C:\\nRF5_SDK_15.0.0_a53641a\\components\\libraries\\sensorsim\\sensorsim.h" 1
# 53 "C:\\nRF5_SDK_15.0.0_a53641a\\components\\libraries\\sensorsim\\sensorsim.h"
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
# 54 "C:\\nRF5_SDK_15.0.0_a53641a\\components\\libraries\\sensorsim\\sensorsim.h" 2
# 1 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stdbool.h" 1 3 4
# 55 "C:\\nRF5_SDK_15.0.0_a53641a\\components\\libraries\\sensorsim\\sensorsim.h" 2







# 61 "C:\\nRF5_SDK_15.0.0_a53641a\\components\\libraries\\sensorsim\\sensorsim.h"
typedef struct
{
    uint32_t min;
    uint32_t max;
    uint32_t incr;
    
# 66 "C:\\nRF5_SDK_15.0.0_a53641a\\components\\libraries\\sensorsim\\sensorsim.h" 3 4
   _Bool 
# 66 "C:\\nRF5_SDK_15.0.0_a53641a\\components\\libraries\\sensorsim\\sensorsim.h"
            start_at_max;
} sensorsim_cfg_t;


typedef struct
{
    uint32_t current_val;
    
# 73 "C:\\nRF5_SDK_15.0.0_a53641a\\components\\libraries\\sensorsim\\sensorsim.h" 3 4
   _Bool 
# 73 "C:\\nRF5_SDK_15.0.0_a53641a\\components\\libraries\\sensorsim\\sensorsim.h"
            is_increasing;
} sensorsim_state_t;






void sensorsim_init(sensorsim_state_t * p_state,
                        const sensorsim_cfg_t * p_cfg);
# 91 "C:\\nRF5_SDK_15.0.0_a53641a\\components\\libraries\\sensorsim\\sensorsim.h"
uint32_t sensorsim_measure(sensorsim_state_t * p_state,
                               const sensorsim_cfg_t * p_cfg);
# 101 "C:\\nRF5_SDK_15.0.0_a53641a\\components\\libraries\\sensorsim\\sensorsim.h"
void sensorsim_increment(sensorsim_state_t * p_state,
                         const sensorsim_cfg_t * p_cfg);
# 111 "C:\\nRF5_SDK_15.0.0_a53641a\\components\\libraries\\sensorsim\\sensorsim.h"
void sensorsim_decrement(sensorsim_state_t * p_state,
                         const sensorsim_cfg_t * p_cfg);
# 41 "C:\\nRF5_SDK_15.0.0_a53641a\\components\\libraries\\sensorsim\\sensorsim.c" 2


void sensorsim_init(sensorsim_state_t * p_state,
                    const sensorsim_cfg_t * p_cfg)
{
    if (p_cfg->start_at_max)
    {
        p_state->current_val = p_cfg->max;
        p_state->is_increasing = 
# 49 "C:\\nRF5_SDK_15.0.0_a53641a\\components\\libraries\\sensorsim\\sensorsim.c" 3 4
                                0
# 49 "C:\\nRF5_SDK_15.0.0_a53641a\\components\\libraries\\sensorsim\\sensorsim.c"
                                     ;
    }
    else
    {
        p_state->current_val = p_cfg->min;
        p_state->is_increasing = 
# 54 "C:\\nRF5_SDK_15.0.0_a53641a\\components\\libraries\\sensorsim\\sensorsim.c" 3 4
                                1
# 54 "C:\\nRF5_SDK_15.0.0_a53641a\\components\\libraries\\sensorsim\\sensorsim.c"
                                    ;
    }
}


uint32_t sensorsim_measure(sensorsim_state_t * p_state,
                           const sensorsim_cfg_t * p_cfg)
{
    if (p_state->is_increasing)
    {
        sensorsim_increment(p_state, p_cfg);
    }
    else
    {
        sensorsim_decrement(p_state, p_cfg);
    }
    return p_state->current_val;
}

void sensorsim_increment(sensorsim_state_t * p_state,
                         const sensorsim_cfg_t * p_cfg)
{
    if (p_cfg->max - p_state->current_val > p_cfg->incr)
    {
        p_state->current_val += p_cfg->incr;
    }
    else
    {
        p_state->current_val = p_cfg->max;
        p_state->is_increasing = 
# 83 "C:\\nRF5_SDK_15.0.0_a53641a\\components\\libraries\\sensorsim\\sensorsim.c" 3 4
                                0
# 83 "C:\\nRF5_SDK_15.0.0_a53641a\\components\\libraries\\sensorsim\\sensorsim.c"
                                     ;
    }
}


void sensorsim_decrement(sensorsim_state_t * p_state,
                         const sensorsim_cfg_t * p_cfg)
{
    if (p_state->current_val - p_cfg->min > p_cfg->incr)
    {
        p_state->current_val -= p_cfg->incr;
    }
    else
    {
        p_state->current_val = p_cfg->min;
        p_state->is_increasing = 
# 98 "C:\\nRF5_SDK_15.0.0_a53641a\\components\\libraries\\sensorsim\\sensorsim.c" 3 4
                                1
# 98 "C:\\nRF5_SDK_15.0.0_a53641a\\components\\libraries\\sensorsim\\sensorsim.c"
                                    ;
    }
}
