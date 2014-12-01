.data
string: .asciz "Hello"
.text
.globl _start
        ldr    r0, =flash_sdata
        ldr    r1, =ram_sdata
        ldr    r2, =data_size
copy:
        ldrb  r4, [r0], #1
        strb  r4, [r1], #1
        subs  r2, r2, #1
        bne   copy
_start:
        ldr     r0, =string
        ldr     r1, =0x40100000
loop:   ldrb    r2, [r0]
        str     r2, [r1]
        add     r0, r0, #1
        cmp     r2, #0
        bne loop
stop:   b stop


    
