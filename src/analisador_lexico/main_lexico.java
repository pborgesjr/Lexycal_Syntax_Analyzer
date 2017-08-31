package analisador_lexico;

/**
 *
 * @author Pedro
 */

import java.io.File;
import java.nio.file.Paths;
import javax.swing.JOptionPane;

public class main_lexico {
    
    public static void gerarLexer(String path) {
        File file = new File(path); /*abre o arquivo Lexer.flex*/
        jflex.Main.generate(file); /*gera a classe Lexer.java*/
    }
    
    public static void main(String args[]) {
        String path = Paths.get("").toAbsolutePath().toString() + "/src/analisador_lexico/Lexer.flex";
        //String path = "C:/Users/Pedro/Desktop/CCO007.28502/src/analisador_lexico/Lexer.flex";
        gerarLexer(path);
    }
}
