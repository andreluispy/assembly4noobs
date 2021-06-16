# Inputs em assembly

 Aqui trataremos sobre inputs em Assembly, para uma variavel guardar o valor do nosso input, nós primeiro precisamos declarar ela, mas para criar uma variável não inicializada devemos coloca-la no `section .bss` para reservar seu espaço na memoria.

 Para criar uma variável na `section .bss` primeiro devemos colocar o nome dela com o res (recebe) e junto do res o tipo que ela irá receber, por enquanto quero que receba o tipo db que é igual a 1 byte, então o res ficará `resb`, pois o b é referente ao db (define byte) que veremos na próxima aula, e depois do resb passaremos o tanto de bytes que ela terá reservada por enquanto, eu vou passar que ela terá somente 1 byte reservado na memoria, depois eu mostro a mensagem de input e depois passo a instrução de input

```asm
section .data
    msg db 'Digite seu nome:' ;Sem 0xA, pois não queremos quebra de linha
    len equ $ - msg

section .bss
    name resb 1

section .text
global _start
_start:
    mov eax, 4   ;SYS_WRITE
    mov ebx, 1   ;STD_OUT
    mov ecx, msg ;Mensagem
    mov edx, len ;Tamanho da mensagem

    mov eax, 3    ;SYS_READ
    mov ebx, 0    ;STD_IN
    mov ecx, name ;Variável que recebe input
    mov edx, 60   ;Tamanho máximo do input
    int 0x80      ;Chamar Kernell

    mov eax, 1    ;SYS_EXIT
    int 0x80      ;Chamar Kernell
```

Além disso, podemos mostrar a variàvel do input como passamos a variàvel msg, porém para passar variaveis que são inputs, não precisamos passar o tamanho dela, vejamos:

```asm
section .data
    msg db 'Digite seu nome:' ;Sem 0xA, pois não queremos quebra de linha
    len equ $ - msg

section .bss
    name resb 1

section .text
global _start
_start:
    mov eax, 4   ;SYS_WRITE
    mov ebx, 1   ;STD_OUT
    mov ecx, msg ;Mensagem
    mov edx, len ;Tamanho da mensagem
    int 0x80      ;Chamar Kernell

    mov eax, 3    ;SYS_READ
    mov ebx, 0    ;STD_IN
    mov ecx, name ;Variavel que recebe input
    mov edx, 60   ;Tamanho maximo do input
    int 0x80      ;Chamar Kernell

    mov eax, 4    ;SYS_WRITE
    mov ebx, 1    ;STD_OUT
    mov ecx, name ;Variável
    int 0x80      ;Chamar Kernell

    mov eax, 1    ;SYS_EXIT
    int 0x80      ;Chamar Kernell
```

[PROXIMO - Tipos de dados](6-dados.md)
