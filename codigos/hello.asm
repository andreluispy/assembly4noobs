;Hello World em Assembly!

section .data

msg db 'Hello World', 0xa ;Declarando a string
len equ $ - msg ;Declarando o tamanho da string

section .text
global _start ;Criando metodo inicial
_start: ;Rodando metodo inicial
	mov edx, len ;passando o tamanho da mensagem
	mov ecx, msg ;passando a mensagem
	mov ebx, 1 ;Passando o metodo 1 de saida(stdout)
	mov eax, 4 ;Chamando sistema para escreve
	int 0x80 ;Chamando kernell

	mov eax, 1 ;Chamando sistema para sair do programa
	int 0x80 ;Chamando kernell
