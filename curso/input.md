# Inputs em assembly

 Aqui trataremos sobre inputs em assembly, para uma variavel guardar o valor do nosso input em assembly nos primeiro precisamos criar ela sem valor, mas para criar uma variavel sem valor devemos coloca-la no `section .bss` para reservar seu espaço na memoria

 Para criar uma variavel na `section .bss` primeiro devemos colocar o nome dela com o res(recebe) e junto do res o tipo que ela vai receber por enquanto quero que receba o tipo db que é igual a 1 byte no caso então o res ficará `resb` pois o b é referente ao db(define byte) que veremos na proxima aula, e depois do resb passaremos o tanto de bytes que ela terá reservada por enquanto, eu vou passar que ela terá somente 1 byte reservado na memoria, depois eu mostro a mensagem de input e depois passo a instrução de input

```
section .data
    msg db 'Digite seu nome:' ;Sem 0xA pois não queremos quebra de linha
    len equ $ - msg

section .bss
    name resb 1

section .text
global _start
_start:
    mov eax, 4   ;SYS_WRITE
    mov ebx, 1   ;STD_OUT
    mov ecx, msg ;Mensage
    mov edx, len ;Len of menssage

    mov eax, 3    ;SYS_READ
    mov ebx, 0    ;STD_IN
    mov ecx, name ;Variavel que recebe input
    mov edx, 60   ;Tamanho maximo do input
    int 0x80      ;chamar kernell

    mov eax, 1    ;SYS_EXIT
    int 0x80      ;CHAMAR KERNELL
```

 Além disso podemos mostrar a variavel do input como passamos a variavel msg, porém para passar variaveis que são inputs não precisamos passar o tamanho dela, vejamos:

```
section .data
    msg db 'Digite seu nome:' ;Sem 0xA pois não queremos quebra de linha
    len equ $ - msg

section .bss
    name resb 1

section .text
global _start
_start:
    mov eax, 4   ;SYS_WRITE
    mov ebx, 1   ;STD_OUT
    mov ecx, msg ;Mensage
    mov edx, len ;Len of menssage
    int 0x80      ;CHAMAR KERNELL

    mov eax, 3    ;SYS_READ
    mov ebx, 0    ;STD_IN
    mov ecx, name ;Variavel que recebe input
    mov edx, 60   ;Tamanho maximo do input
    int 0x80      ;CHAMAR KERNELL

    mov eax, 4    ;SYS_WRITE
    mov ebx, 1    ;STD_OUT
    mov ecx, name ;Variavel
    int 0x80      ;CHAMAR KERNELL

    mov eax, 1    ;SYS_EXIT
    int 0x80      ;CHAMAR KERNELL
```

 
