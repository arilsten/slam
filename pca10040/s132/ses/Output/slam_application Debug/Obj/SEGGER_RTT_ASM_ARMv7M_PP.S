# 1 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\systemView\\SEGGER_RTT_ASM_ARMv7M.S"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\systemView\\SEGGER_RTT_ASM_ARMv7M.S"
# 18 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\systemView\\SEGGER_RTT_ASM_ARMv7M.S"
# 1 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\systemView\\SEGGER_RTT.h" 1
# 70 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\systemView\\SEGGER_RTT.h"
# 1 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\systemView\\SEGGER_RTT_Conf.h" 1
# 71 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\systemView\\SEGGER_RTT.h" 2
# 19 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\systemView\\SEGGER_RTT_ASM_ARMv7M.S" 2
# 82 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\systemView\\SEGGER_RTT_ASM_ARMv7M.S"
        .syntax unified
# 94 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\systemView\\SEGGER_RTT_ASM_ARMv7M.S"
        .extern __aeabi_memcpy
        .extern __aeabi_memcpy4
        .extern _SEGGER_RTT

        .global SEGGER_RTT_ASM_WriteSkipNoLock
# 127 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\systemView\\SEGGER_RTT_ASM_ARMv7M.S"
        .section .text, "ax"
        .align 2
        .thumb_func
SEGGER_RTT_ASM_WriteSkipNoLock:
# 151 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\systemView\\SEGGER_RTT_ASM_ARMv7M.S"
        PUSH {R4-R7}
        ADD R3,R0,R0, LSL #+1
        LDR.W R0,=_SEGGER_RTT
        ADD R0,R0,R3, LSL #+3
        ADD R6,R0,#+24
        LDR R0,[R6, #+16]
        LDR R7,[R6, #+12]
        LDR R5,[R6, #+4]
        CMP R7,R0
        BCC.N _CheckCase4



        LDR R3,[R6, #+8]
        SUBS R4,R3,R7
        SUBS R3,R4,#+1
        CMP R3,R2
        BCC.N _CheckCase2
_Case4:
        ADDS R5,R7,R5
        ADDS R0,R2,R7




        .align 2
_LoopCopyStraight:
        LDRB R3,[R1], #+1
        STRB R3,[R5], #+1
        SUBS R2,R2,#+1
        BEQ _CSDone
        LDRB R3,[R1], #+1
        STRB R3,[R5], #+1
        SUBS R2,R2,#+1
        BNE _LoopCopyStraight
_CSDone:
        STR R0,[R6, #+12]
        MOVS R0,#+1
        POP {R4-R7}
        BX LR
_CheckCase2:
        ADDS R0,R0,R3
        CMP R0,R2
        BCC.N _Case3



        ADDS R0,R7,R5
        SUBS R2,R2,R4
_LoopCopyBeforeWrapAround:
        LDRB R3,[R1], #+1
        STRB R3,[R0], #+1
        SUBS R4,R4,#+1
        BNE _LoopCopyBeforeWrapAround






        ADDS R2,R2,#+0
        BEQ.N _No2ChunkNeeded
_LoopCopyAfterWrapAround:
        LDRB R3,[R1], #+1
        STRB R3,[R5], #+1
        SUBS R2,R2,#+1
        BNE _LoopCopyAfterWrapAround
_No2ChunkNeeded:
        STR R2,[R6, #+12]
        MOVS R0,#+1
        POP {R4-R7}
        BX LR
_CheckCase4:
        SUBS R0,R0,R7
        SUBS R0,R0,#+1
        CMP R0,R2
        BCS.N _Case4
_Case3:
        MOVS R0,#+0
        POP {R4-R7}
        BX LR
        .ltorg
        .end
