section .data
	msg db "Digite seu nome: ", 0xA
	len equ $ - msg

section .bss
	name resb 2

section .text
global _start
_start:
	;mensagem de input
	mov eax, 4
	mov ebx, 1
	mov ecx, msg
	mov edx, len
	int 0x80

	;recebendo input
	mov eax, 3
	mov ebx, 0
	mov ecx, name
	mov edx, 60
	int 0x80

	;mostrando input
	mov eax, 4
	mov ebx, 1
	mov ecx, name
	int 0x80

	mov eax, 1
	int 0x80
