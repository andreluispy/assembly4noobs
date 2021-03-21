section .data
	n1 dd "5"

section .text
global _start
_start:
	mov eax, [n1]
	sub eax, '0'  ;Converte para int
	add eax, 2    ;Adiciona 5
	add eax, '0'  ;Converte para string
	mov [n1], eax

	mov eax, 4    ;SYS_WRITE
	mov ebx, 1    ;STD_OUT
	mov ecx, n1   ;SAIDA
	mov edx, 1    ;TAMANHO
	int 0x80

	mov eax, 1
	int 0x80
