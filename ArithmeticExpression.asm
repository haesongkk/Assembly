INCLUDE Irvine32.inc

.data
    val1 SDWORD 8
    val2 SDWORD -15
    val3 SDWORD 20

.code
main PROC
    mov eax, val2      ; eax = FFFFFFF1h (-15)
    ;call DumpRegs
    
    neg eax            ; eax = 0000000Fh (15)
    ;call DumpRegs

    add eax, 7         ; eax = 00000016h (15 + 7 = 22)
    ;call DumpRegs

    sub eax, val3      ; eax = 00000002h (22 - 20 = 2)
    ;call DumpRegs

    add eax, val1      ; eax = 0000000Ah (2 + 8 = 10)
    call DumpRegs

    exit
main ENDP
END main