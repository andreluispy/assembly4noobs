<h1>Introdução</h1>

<h2>Vantagens</h2>

<p>1 - Você se tornará um programador melhor. Estudar Assembly vai te dar um completo e total entendimento dos computadores, fazendo você um profissional mais completo, mesmo que seja um desenvolvedor web ou programador de jogos... Visando o ensino desta linguagem, mãe de todas as linguagens, criei este curso!</p>
<p>2 - Assembly é leve, por isso é uma das linguagens mais usadas para micro-controladores!<br>Uma prova de que Assembly é leve, é o MenuetOS, um sistema operacional para computadores pessoais de 32 ou 64 bits totalmente escrito em assembly. É capaz de caber em um único disquete. E com ele entramos em outra vantagem:</p>
<p>3 - Assembly é poderoso!<br>Se você conhece o kernel linux você já deve saber que ele foi feito em grande parte, com C, mas mesmo assim foi nescessario 250 mil linhas de Assembly!</p>

<h2>Entendendo Termos</h2>
- Assembly: Linguagem de programação;<br>
- Assembler: Compilador da linguagem Assembly;<br>
- Nasm: Um assembler muito famoso e ele que usaremos aqui!;<br>
- Arquivos .asm: .asm é a extensão para codigos assembly que depois devem ser compilados por um Assembler para poderem ser executados.

<p><br>A programação assembly pode ser um pouco confusa pois:<br><br>Existem muitos montadores diferentes por aí: MASM, NASM, gas, as86, TASM, a86, Terse, etc... Todos usam linguagens de montagem radicalmente diferentes.
Existem diferenças na maneira como você deve codificar para Linux, OS / X, Windows, etc.<br>Porem a diferença entre o assembly do Windows e do Linux é muito menor do que a diferença entre o x86 e o ​​assembly do PIC.<br></p>

<p>Qual arquitetura aprender?
Eu recomendaria a arquitetura x86, por três motivos:
É, provavelmente, a arquitetura do seu computador. Então você poderá usá-la na sua máquina. Além de estudar software que roda na sua máquina.
Aprendendo a arquitetura x86 você poderá fazer engenharia reversa em softwares que foram compilados para essa arquitetura. Ou seja, softwares que rodam no seu PC.</p>

<p>Vejamos os Assemblers mais usados:<br>
-MASM, o Microsoft Assembler. Produz arquivos OMF (mas o *linker* da Microsoft pode convertê-los para o formato win32). Oferece suporte a uma linguagem Assembly enorme e desajeitada. O endereçamento de memória não é intuitivo. As diretivas necessárias para configurar um programa tornam a programação desagradável.

-GAS, o membro do GNU. Utiliza a sintaxe do estilo AT&T, um tanto feia, muitas pessoas não gostam; entretanto, você pode configurá-lo para usar e compreender o estilo Intel. Ele foi projetado para fazer parte do back-end da coleção de compiladores GNU (gcc).

-NASM, o "Netwide Assembler". É gratuito, pequeno e, o melhor de tudo, pode gerar zilhões de diferentes tipos de arquivos de objetos. A linguagem é muito mais sensata do que MASM em muitos aspectos.
</p>

<h2>Preparando o ambiente</h2>
<p>A primeira coisa que vamos precisar é do compilador nasm, para isso vamos em <a href="nasm.us">nasm.us</a>, e depois no menu cliquemos em *Download*, selecionemos a versão mais recente e lá estarão os *downloads* pra Windows, Mac e Linux. Caso você utilize Linux, é recomendavel instalar pelo terminal, distribuições baseadas em Ubuntu digitemos: <code>sudo apt-get install nasm</code>.
Depois precisamos de um editor de texto para criar nossos arquivos, os recomendados são: Notepad++, VsCode, Eclipse e Vim.

Depois de termos o ambiente pronto, vamos aprender um pouco da sintaxe do Assembly. <a href="2-syntax.md">proximo</a></p>
