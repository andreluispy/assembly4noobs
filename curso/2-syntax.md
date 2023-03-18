<h1>Aqui iremos aprender sobre alguns elementos dos scripts Assembly</h1>

<p>Sobre as diferenças do assembly, temos sintaxes diferentes!
Esta tabela resume as principais diferenças das sintaxes Assembly INTEL e AT&T:</p>

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
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"> </font></font><code>add</code></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"></font></font><code>addq</code></td>
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
<p><br>Nesse curso trataremos da sintaxe Intel e Assembly x86 usando o sistema Linux, alguns codigo podem não funcionar no Windows, caso queira mostrar um codigo que não funciona no Windows, abra uma Issue!</p>

<p>No assembly usamos o <code>;</code> para criar comentarios no codigo!<br>Além disso, dividimos nosso codigo em seções, vejamos:<br><h2>.DATA</h2><br>Na .data, como o nome sugere, é uma região do código que será usada para tratar as informações, os dados, as variáveis.<

Nesse trecho (geralmente o inicial), declaramos e inicializamos as variáveis.

<b>OBS: Na .bss section, fazemos algo parecido, porém não inicializamos as informações de imediato.</b>

<h2>.TEXT</h2><br>
Por fim, a .text section é o local onde irá ficar armazenado suas instruções, que irão trabalhar com os dados previamente declarados.
Essa é a única seção obrigatória, pois conterá a label (rótulo) _start, que é o local onde os executáveis são inicializados, _start é como o main() do C.</p>

<p><b>Comando global:</b> Usado para declarar labels globais, ou seja, passíveis de uso externo.

Geralmente usamos para declarar o label principal, o _start.

Portanto, o nosso esqueleto de código será:</p>

<p align="center"><img src="estrutura.png"></p>

<p>Lembrando que a identação não é nescessária no compilador NASM.</p>

<a href="3-helloworld.md">proximo - Hello World</a>
