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
