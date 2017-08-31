package analisador_lexico;

import java.io.File;
import java.nio.file.Paths;

/**
 *
 * @author Pedro
 */
public class main_sintatico {
    
    public static void gerarLexer(String path_sint) {
        File file_sint = new File(path_sint);
        jflex.Main.generate(file_sint);
    }
    
    public static void main (String args[]){
        String path_sint = Paths.get("").toAbsolutePath().toString() + "/src/analisador_lexico/Lexer1.flex";        
        //String path_sint = "C:/Users/Pedro/Desktop/CCO007.28502/src/analisador_lexico/Lexer1.flex";
        gerarLexer(path_sint);
    }
}
