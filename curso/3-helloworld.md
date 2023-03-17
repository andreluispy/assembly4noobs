<h1>O Hello World!</h1>

<p>Aqui trataremos como fazer um Hello World e iremos explicar cada coisa!<br><br>Em Assembly temos 4 comandos<br><br>- ax, Acumulador para operações numericas<br><br>-bx, Acumulador de registro base<br><br>-cx, Registro de contas realizado com string<br><br>-dx, Registro de dados<br><br>Normalmente são acompanhados da letra E que é compativel com computadores 32 bits e também 64 bits, somente no assembly 64 bits podemos usar a letra R, no curso usarei a letra E para ser compatpivel com os dois tipos de sistemas.
O comando <code>mov</code> é usado para mover valores e normalmente usamos eles pra passar valores para os comandos [eax, ebx, ecx, edx], vejamos os seus usos comentados no Hello World abaixo (lembrando que os scripts Assembly tem a extensão .asm então criei o arquivo <code>hello.asm</code>):</p>

 ```asm
section .data
    msg db 'hello world', 0xA,
    len equ $ - msg

section .text
global _start
_start:
    mov eax, 4  
    mov ebx, 1
    mov ecx, msg
    mov edx, len
    int 0x80

    mov eax, 1
    int 0x80
 ```
 
<p>Quando passamos o método de saída "mov eax, 1", podemos retornar um valor com o "mov ebx," e o valor a ser retornado, isso é equivalente ao "return" do C.
E quando alocamos a variavel `msg`, o 0xA é uma quebra de linha que funciona como o famoso \n de várias linguagens e, o db é o tipo de variavel, isso trataremos depois.</p>

<p>Agora temos que compilar o script .asm para poder ser executado!<br><br>Linux: Abra a pasta onde o arquivo está no terminal e compile com o NASM: <code>nasm -f elf64 hello hello.asm</code>, o hello.asm é nosso arquivo Assembly e o elf64 é a arquitetura do sistema alvo, elf64 é usado para sistemas x64 bits e elf32 é usado para sistemas x32 bits. Esse comando irá gera o arquivo hello.o que é o codigo de maquina, o hello.o compilamos pra executavel digitando: <code>ld -s -o hello hello.o</code>, hello é o arquivo executavel gerado que como sabemos, o linux não precisa de extensão e hello.o é nosso arquivo codigo de maquina gerado pelo nasm. Para executar o arquivo executavel hello no terminal digitamos <code>./hello</code>. Caso seu programa seja 32 bits elf32 o ld deve ser informado, que é 32 bits: <code>ld -m elf_i386 -o hello hello.o</code>
  
Windows: Abra no terminal a pasta em que o script está localizado e digite o comando <code>nasm -f win32 hello.asm -o hello.o</code> (caso seu processador seja 64 bits, utilize win64 ao invés de win32). Será gerado o arquivo hello.o, que contém o script que criamos, porém, em linguagem de máquina. Para gerar o executavel, basta rodar o comando 
<code>ld hello.o -o hello.exe</code>. Você pode executar seu script dando um duplo clique no arquivo .exe ou via terminal.</p>
  
<a href="4-labels.md"><br>Proximo - Labels</a>
