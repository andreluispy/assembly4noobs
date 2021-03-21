section .data
    msg db  'Hello World', 0xA
    len equ $ - msg

section .text
global _start
_start:
    call out

    mov eax, 1
    int 0x80

out:
    mov eax, 4
    mov ebx, 1
    mov ecx, msg
    mov edx, len
    int 0x80
    ret
