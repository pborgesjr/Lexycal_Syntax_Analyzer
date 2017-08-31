/* Informa��es importantes*/

Para o desenvolvimento desse projeto, foram usados:
	- Windows 10;
	- Netbeans 8.0.2;
	- JFLEX 1.6.1 (http://jflex.de/installing.html); 
	- JAVACUP 11a (http://www.java2s.com/Code/Jar/c/Downloadcup11ajar.htm).

/* ... */

1. Ap�s o descompactamento, deve-se abrir o projeto com o Netbeans;
2. Executar o arquivo Interface.java;
3. Selecionar o exemplo que deseja ser executado;
4. Ap�s a execu��o de cada exemplo, ser� criado um arquivo .java no mesmo diret�rio do projeto com o nome do exemplo pronto para ser executado;
5. Execute o exemplo.java desejado para observar os resultados.


/* Observa��es */

As informa��es abaixo informam o que foi feito para produ��o dos analisador.

/* ... */

Ao executar o arquivo main_lexico.java ir� gerar o arquivo Lexer.java a partir das especifica��es das express�es regulares no arquivo Lexer.flex. O Lexer.java ser� respons�vel pela an�lise l�xica dos exemplos e disponibilizar� as informa��es na �rea de texto � direita da interface.

Ao executar o arquivo main_sint�tico.java ir� gerar o arquivo Yylex.java. Ap�s isso, deve-se realizar os seguintes passos:

1. Ir atrav�s do prompt de comando para a pasta do projeto "CCO007.28502.354/src/analisador_lexico/";
2. Executar o seguinte comando: "java -cp java-cup-11a.jar java_cup.Main Parser.cup", tal comando ser� respons�vel por gerar o arquivo parser.java e o arquivo sym.java. O arquivo parser.java � o respons�vel pelo parser, a an�lise sint�tica. O arquivo sym.java possui todos os tokens e suas constantes. Ambos arquivos s�o gerados automaticamente pelo JAVACUP;
3. Deve-se resolver o problema de depend�ncia de biblioteca no arquivo parser.java do projeto e ent�o seguir os passos apresentados no in�cio desse arquivo README.txt.


