package conexao;
import java.sql.Connection;
import java.sql.DriverManager;
/**
 *
 * @author guilherme.pcampos
 */

//Fazendo a Conexão
public class Conexao {
    public Connection getConexao(){
    try{
        Connection conn = DriverManager.getConnection(
                "jdbc:mysql://localhost:3306/dbsaintlance",
                "root",
                "");
        return conn;
    }catch(Exception e){
        System.out.println("Erro de conex�o" + e.getMessage());
        return null;
    }
} 
}
