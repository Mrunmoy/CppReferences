__cxx_global_var_init:
        push    {r11, lr}
        mov     r11, sp
        ldr     r0, .LCPI0_3
.LPC0_3:
        add     r0, pc, r0
        bl      std::ios_base::Init::Init() [complete object constructor]
        ldr     r0, .LCPI0_0
.LPC0_0:
        ldr     r0, [pc, r0]
        ldr     r1, .LCPI0_1
.LPC0_1:
        add     r1, pc, r1
        ldr     r2, .LCPI0_2
.LPC0_2:
        add     r2, pc, r2
        bl      __cxa_atexit
        pop     {r11, pc}
.LCPI0_0:
.Ltmp3:
        .long   _ZNSt8ios_base4InitD1Ev(GOT_PREL)-(.LPC0_0+8-.Ltmp3)
.LCPI0_1:
        .long   _ZStL8__ioinit-(.LPC0_1+8)
.LCPI0_2:
        .long   __dso_handle-(.LPC0_2+8)
.LCPI0_3:
        .long   _ZStL8__ioinit-(.LPC0_3+8)

foobar(Data const&):
        push    {r11, lr}
        mov     r11, sp
        sub     sp, sp, #16
        str     r0, [sp, #8]
        ldr     r0, [sp, #8]
        ldr     r0, [r0]
        cmp     r0, #0
        beq     .LBB1_2
        ldr     r0, [sp, #8]
        ldr     r0, [r0, #4]
        cmp     r0, #0
        bne     .LBB1_3
.LBB1_2:
        mov     r0, #0
        strb    r0, [r11, #-1]
        b       .LBB1_4
.LBB1_3:
        ldr     r0, [sp, #8]
        ldr     r1, [r0]
        ldr     r0, [r0, #4]
        bl      __aeabi_uidivmod
        str     r1, [sp, #4]
        ldr     r0, [sp, #4]
        cmp     r0, #0
        ldr     r0, .LCPI1_0
        moveq   r0, #1
        and     r0, r0, #1
        strb    r0, [r11, #-1]
.LBB1_4:
        ldrb    r0, [r11, #-1]
        and     r0, r0, #1
        mov     sp, r11
        pop     {r11, pc}
.LCPI1_0:
        .long   0

main:
        push    {r11, lr}
        mov     r11, sp
        sub     sp, sp, #16
        ldr     r0, .LCPI2_1
        str     r0, [r11, #-4]
        ldr     r0, .LCPI2_0
.LPC2_0:
        add     r0, pc, r0
        ldr     r1, [r0]
        str     r1, [sp, #4]
        ldr     r0, [r0, #4]
        str     r0, [sp, #8]
        add     r0, sp, #4
        bl      foobar(Data const&)
        and     r0, r0, #1
        strb    r0, [sp, #3]
        ldrb    r0, [sp, #3]
        and     r0, r0, #1
        mov     sp, r11
        pop     {r11, pc}
.LCPI2_0:
.LCPI2_1:
        .long   0

_GLOBAL__sub_I_example.cpp:
        push    {r11, lr}
        mov     r11, sp
        bl      __cxx_global_var_init
        pop     {r11, pc}

.L__const.main.data:
        .long   5
        .long   55
