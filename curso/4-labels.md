## Labels

 *Label* é um bloco de codigo que podemos chamar no _start, é como uma função em C ou Python. Usamos quando temos um codigo que será repetido varias vezes, chamando somente a *label* que contem ele quando precisarmos.

#### Definindo um *label*:

 ```asm
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
 ```

 É assim que criamos um *label*! [Proximo - Input de usuario](5-input.md)
