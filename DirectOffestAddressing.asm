INCLUDE Irvine32.inc

.data
    Uarray WORD 1000h, 2000h, 3000h, 4000h
    Sarray SWORD -1, -2, -3, -4

.code
main PROC
    ; Uarray의 값 → zero-extend 해서 넣기
    movzx eax, Uarray         ; eax = 00001000h
    movzx ebx, Uarray + 2     ; ebx = 00002000h
    movzx ecx, Uarray + 4     ; ecx = 00003000h
    movzx edx, Uarray + 6     ; edx = 00004000h

    call DumpRegs

    ; Sarray의 값 → sign-extend 해서 넣기
    movsx eax, Sarray         ; eax = FFFFFFFFh  (-1)
    movsx ebx, Sarray + 2     ; ebx = FFFFFFFEh  (-2)
    movsx ecx, Sarray + 4     ; ecx = FFFFFFFDh  (-3)
    movsx edx, Sarray + 6     ; edx = FFFFFFFCh  (-4)

    call DumpRegs

    exit
main ENDP
END main