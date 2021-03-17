section .data
	msg db 'hello world', 0xA ;Variavel msg que tem a string desejada
	len equ $ - msg           ;Variavel len que recebera o tamanho da string

section .text
global _start
_start:
	mov eax, 4   ;Metodo de escrita(sys_write)
	mov ebx, 1   ;Metodo de saida(std_out)
	mov ecx, msg ;Mensagem
	mov edx, len ;Tamanho
	int 0x80     ;Chamando o kernel

	mov eax, 1   ;Metado de saida(sys_exit)
	int 0x80     ;Chamando Kernell
