<h1> Assembly4Noobs </h1>
<p align="center"> <img src="header-4noobs.svg"> </p>

<p> Assembly4Noobs faz parte do projeto <a href="https://github.com/he4rt/4noobs">4noobs</a> da comunidade He4rt!</p>

<h1>Sobre o Projeto</h1>

<p>Aprenda a linguagem Assembly do zero!</p>
<p align = "center"> <img src = "asm_data.png"></p>

<p>Requisitos: Nenhum requisito é necessário, mas é recomendável lógica de programação<br><br>A programação assembly pode ser um pouco confuso porque:<br><br>Existem muitos montadores diferentes por aí: MASM, NASM, gas, as86, TASM, a86, Terse, etc. Todos usam linguagens de montagem radicalmente diferentes.
Existem diferenças na maneira como você deve codificar para Linux, OS / X, Windows, etc. <br><br>A diferença entre o assembly do Windows e do Linux é muito menor do que a diferença entre o x86 e o ​​assembly do PIC<br>Essa tabela resume as principais diferenças das syntax assembly INTEL e AT&T :</p>

<table><thead>
<tr>
<th></th>
<th><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Intel</font></font></th>
<th><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">AT&amp;T</font></font></th>
</tr>
</thead><tbody>
<tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Comentários</font></font></td>
<td><code>;</code></td>
<td><code>//</code></td>
</tr>
<tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Instruções</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Sem etiqueta </font></font><code>add</code></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Marcado com tamanhos de operando: </font></font><code>addq</code></td>
</tr>
<tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Registros</font></font></td>
<td><code>eax</code><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">, </font></font><code>ebx</code><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">, Etc.</font></font></td>
<td><code>%eax</code><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">, </font></font><code>%ebx</code><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">, Etc.</font></font></td>
</tr>
<tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Imediatos</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">0x100</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">$ 0x100</font></font></td>
</tr>
<tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Indireto</font></font></td>
<td><code>[eax]</code></td>
<td><code>(%eax)</code></td>
</tr>
<tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Indireta geral</font></font></td>
<td><code>[base + reg + reg * scale + displacement]</code></td>
<td><code>displacement(reg, reg, scale)</code></td>
</tr>
</tbody></table>
<p>Nesse curso trataremos da syntax Intel e Assembly x86 usando o sistema Linux, alguns codigo podem não funcionar no windows, caso queira mostrar um codigo que não funciona no windows abra uma Issue!</p>
<hr>
<p>Conteudo:</p>
<ol>
<li><a href="curso/introducao.md">Introdução</a></li>
<li><a href="curso/syntax.md">Syntax</a></li>
</ol>
<hr>
<h2>Autores:</h2>
<p>André Luís - <a src="https://github.com/andreluispy">github</a></p>
<hr>
<p align="center"><img src="footer-4noobs.svg"></p>