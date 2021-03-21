section .data
	n1 dd 25
	n2 dd 50

	msg1 db 'Sao Iguais!', 0xA
	len1 equ $ - msg1

	msg2 db 'Sao Diferentes!', 0xA
	len2 equ $ - msg2

section .text
global _start
_start:
	mov eax, DWORD [n1]
	mov ebx, DWORD [n2]
	cmp eax, ebx
	je iguais
	jne naoiguais

iguais:
	mov eax, 4
	mov ebx, 1
	mov ecx, msg1
	mov edx, len1
	int 0x80

	mov eax, 1
	int 0x80

naoiguais:
	mov eax, 4
	mov ebx, 1
	mov ecx, msg2
	mov edx, len2
	int 0x80

	mov eax, 1
	int 0x80
