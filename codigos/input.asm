section .data
	msg db "Digite algo: ", 0xA, 0xD
	len equ $ - msg

segment .bss
	nome resb 2

section .text
global _start

_start:
	mov eax, 4   ;Operação de escrita na tela
	mov ebx, 1   ;Registro de saida do console
	mov ecx, msg ;A string de saida
	mov ebx, len ;Tamanho da string
	int 0x80
