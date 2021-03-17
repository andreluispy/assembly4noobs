section .data
    msg db 'Hello World', 0xA
    len equ $ - msg

 section .text
 global _start
 _start:
    call hello_world ; Usando o call para chamar um Label

 hello_world:
    mov eax, 4
    mov ebx, 1
    mov ecx, msg
    mov edx, len
    int 0x80

    mov eax, 1
    int 0x80