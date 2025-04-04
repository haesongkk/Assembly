TITLE Add Sub (16bit)  (AddSub.asm)

INCLUDE Irvine32.inc

.code
main PROC

    mov ax, 1024
    mov bx, 256
    mov cx, 128

    call DumpRegs
    sub ax, bx
    call DumpRegs
    sub ax, cx
    call DumpRegs

    call WaitMsg
    exit

main ENDP
END main
