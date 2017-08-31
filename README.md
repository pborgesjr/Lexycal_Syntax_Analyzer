/* Informações importantes*/

Para o desenvolvimento desse projeto, foram usados:
	- Windows 10;
	- Netbeans 8.0.2;
	- JFLEX 1.6.1 (http://jflex.de/installing.html); 
	- JAVACUP 11a (http://www.java2s.com/Code/Jar/c/Downloadcup11ajar.htm).

/* ... */

1. Após o descompactamento, deve-se abrir o projeto com o Netbeans;
2. Executar o arquivo Interface.java;
3. Selecionar o exemplo que deseja ser executado;
4. Após a execução de cada exemplo, será criado um arquivo .java no mesmo diretório do projeto com o nome do exemplo pronto para ser executado;
5. Execute o exemplo.java desejado para observar os resultados.


/* Observações */

As informações abaixo informam o que foi feito para produção dos analisador.

/* ... */

Ao executar o arquivo main_lexico.java irá gerar o arquivo Lexer.java a partir das especificações das expressões regulares no arquivo Lexer.flex. O Lexer.java será responsável pela análise léxica dos exemplos e disponibilizará as informações na área de texto à direita da interface.

Ao executar o arquivo main_sintático.java irá gerar o arquivo Yylex.java. Após isso, deve-se realizar os seguintes passos:

1. Ir através do prompt de comando para a pasta do projeto "CCO007.28502.354/src/analisador_lexico/";
2. Executar o seguinte comando: "java -cp java-cup-11a.jar java_cup.Main Parser.cup", tal comando será responsável por gerar o arquivo parser.java e o arquivo sym.java. O arquivo parser.java é o responsável pelo parser, a análise sintática. O arquivo sym.java possui todos os tokens e suas constantes. Ambos arquivos são gerados automaticamente pelo JAVACUP;
3. Deve-se resolver o problema de dependência de biblioteca no arquivo parser.java do projeto e então seguir os passos apresentados no início desse arquivo README.txt.


