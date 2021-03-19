section .data
	msg db "Digite seu nome: "
	len equ $ msg

	msg2 db "Ola, "
	len2 equ $ - msg2

	vazio db 0xA

section .bss
	name resb 1

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
	mov ecx, msg2
	mov edx, len2
	int 0x80

	mov eax, 4
	mov ebx, 1
	mov ecx, name
	int 0x80

	mov eax, 4
	mov ebx, 1
	mov ecx, vazio
	int 0x80

	mov eax, 1
	int 0x80
