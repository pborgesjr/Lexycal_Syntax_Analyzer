package analisador_lexico;

import static analisador_lexico.Token.*;
import java_cup.runtime.Symbol;

%%
%type java_cup.runtime.Symbol
%cup
%full
%line
%char
%eofval{
    return new Symbol (sym.EOF, new String("Fim do arquivo"));
%eofval}



L = [a-zA-Z_]
D = [0-9]
E = " "
WHITE=[ \t\r\n]

%%

{WHITE} {/*Ignore*/}

("for")  {return new Symbol (sym.FOR, yychar, yyline, yytext());}
//("while")  {return new Symbol (sym.WHILE, yychar, yyline, yytext());}
( "JOptionPane.showInputDialog" ) {return new Symbol (sym.ENTRADA, yychar, yyline, yytext());}
( "System.out.println" ) {return new Symbol (sym.SAIDA, yychar, yyline, yytext());}
( "String" | "int" | "double" | "float" | "char" | "short" | "Integer" ) {return new Symbol (sym.TIPO_VARIAVEL, yychar, yyline, yytext());}  
("if")  {return new Symbol (sym.IF, yychar, yyline, yytext());}
("else") {return new Symbol (sym.ELSE, yychar, yyline, yytext());}
( "+" | "-" | "*" | "/" | "%" ) {return new Symbol (sym.OP_ARITMETICO, yychar, yyline, yytext());}
//( "\n" )    {return new Symbol (sym.LINHA, yychar, yyline, yytext());}
/*Operadores Relacionais */
(">" | "<" | "==" | "!=" | ">=" | "<=" | "<<" | ">>") {return new Symbol (sym.OP_RELACIONAL, yychar, yyline, yytext());}



( "(" ) {return new Symbol (sym.ABRE_PARENTESE, yychar, yyline, yytext());}
( ")" ) {return new Symbol (sym.FECHA_PARENTESE, yychar, yyline, yytext());}

( ";" ) {return new Symbol (sym.PONTOEVIRGULA, yychar, yyline, yytext());}
( "{" ) {return new Symbol (sym.ABRE_CHAVE, yychar, yyline, yytext());}

{L}({L}|{D})*  {return new Symbol (sym.ID, yychar, yyline, yytext());}
("-"?){D}+ {return new Symbol (sym.NUMERO, yychar, yyline, yytext());}
({D}*"."{D}+) {return new Symbol (sym.FLOAT, yychar, yyline, yytext());}
("&&" | "||" | "!" | "&" | "|" )  {return new Symbol (sym.OP_LOGICO, yychar, yyline, yytext());}
("=" | "++" | "*=" | "+=" | "\=" | "%=" ) {return new Symbol (sym.OP_ATRIBUICAO, yychar, yyline, yytext());}
("[" | "]" | "," |  "." |  "\"" | "}") {return new Symbol (sym.SEPARADOR, yychar, yyline, yytext());}
("\b" | "\t" | "\f")   {return new Symbol (sym.ESPECIAL, yychar, yyline, yytext());}
/* ... */


. {return new Symbol (sym.ERROR, yychar, yyline, yytext());} 