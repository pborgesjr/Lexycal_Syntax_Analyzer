    package analisador_lexico;

import static analisador_lexico.Token.*;

%%
%class Lexer
%type Token


L = [a-zA-Z_]
D = [0-9]
WHITE=[ \t\r\n]

%{
public String lexeme;
%}

%%

{WHITE} {/*Ignore*/}

//( "\n" ) {lexeme = yytext(); return LINHA;}

/* Operadores Aritméticos */
( "+" | "-" | "*" | "/" | "%" )    {lexeme = yytext(); return OP_ARITMETICO;}

/* Operadores Lógicos */
("&&" | "||" | "!" | "&" | "|" )    {lexeme = yytext(); return OP_LOGICO;}

/*Operadores Relacionais */
(">" | "<" | "==" | "!=" | ">=" | "<=" | "<<" | ">>")   {lexeme = yytext(); return OP_RELACIONAL;}

/* Operadores Atribuição */
("+=" | "-="  | "*=" | "/=" | "%=" | "++" | "--" | "=")      {lexeme = yytext(); return OP_ATRIBUICAO;}

/* Operadores Condicionais */
("if" | "else")      {lexeme = yytext(); return OP_CONDICIONAL;}

/*Operadores Booleanos*/
(true | false)      {lexeme=yytext(); return OP_BOOLEANO;}

/*Separadores */
("(" | ")" | "{" | "}" | "[" | "]" | ";" | "," |  "." |  "\"")      {lexeme = yytext(); return SEPARADOR;}

/* Caracteres Especiais */
/*(\b | "\t" | "\n" | "\f")   {lexeme = yytext(); return ESPECIAL;} */

/* Comentarios */
( "//" | "/*" | "*/")     {lexeme = yytext(); return COMENTARIO;}



/* Operadores de Repetição */
( for | while ) {lexeme = yytext(); return OP_REPETICAO;}

/* Palavras Reservadas do Java */
 ( case | protected| default | do  | public | private | package
 | return | switch | import | println | System | printf | print
 | import | boolean | char | double | String
 | float | int | long | short | JOptionPane) {lexeme = yytext(); return PALAVRARESERVADA;}

{L} {lexeme=yytext(); return LETRA;}
{L}{L}+ {lexeme=yytext(); return PALAVRA;}
{L}({L}|{D})+ {lexeme=yytext(); return ID;}
("-"{D}+)|{D}+ {lexeme=yytext(); return NUMERO;}
({D}*"."{D}+) | ("-"{D}*"."{D}+) {lexeme=yytext(); return FLOAT;}

. {return ERROR;}