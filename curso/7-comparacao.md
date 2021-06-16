# Aqui aprenderemos sobre comparações em Assembly

Primeiro os dois valores a serem comparados devem ser passados para `eax` e `ebx` mas juntos DWORD, ex: `mov eax, DWORD [value]`

Depois criamos a comparação usando `cmp eax, ebx`

E então passamos o tipo de comparação usando o comando `j` seguido de um prefixo para tipo de comparação:

`je` usado para comparação de igualdade ==

`jg` mesma lógica de >

`jge` mesma lógica de =>

`jl` mesma lógica de <

`jle` mesma lógica de <=

`jne` mesma lógica de !=

E seguido do que deve acontecer se a comparação for verdadeira, por exemplo pular pra uma Label chamada "resultado": `je resultado`

Lembrando que caso o resultado da comparação seja falso, o codigo segue normal, no exemplo abaixo, crio duas variaveis "n1 e n2" e depois comparo que se n1 for igual a n2, mostre "SÃO IGUAIS", senão, mostre "NÃO SÃO IGUAIS":

```asm
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
```

Vimos que nesse codigo não sabemos o que é DWORD e porque eax recebeu o n1 entre colchetes, vamos entender:

-DWORD significa 32 bits;

-[] significa desreferência (pegar o valor na memoria).

Então a instrução dessa linha é: Pegue o valor de 32 bits apontado por n1 e coloque-o em eax.

[PROXIMO - Despedida](8-despedida.md)
