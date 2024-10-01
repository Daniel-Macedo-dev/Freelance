  package dao;

import beans.Admin;
import conexao.Conexao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class AdminDAO {
    // Classe responsável por fazer a conexão com o banco de dados
    private Conexao conexao;
    private Connection conn;

    // Inicializa a conexão com o banco de dados
    public AdminDAO() {
        this.conexao = new Conexao();
        this.conn = this.conexao.getConexao();  // Obter conexão através da classe Conexao
    }

    /**
     * Método para autenticar um usuário com base em seu email e senha.
     * @param nome
     * @param senha Senha do usuário.
     * @return Retorna uma instância de USUARIO se a autenticação for bem-sucedida, ou null se falhar.
     */
    public Admin autenticar(String nome, String senha) {
        PreparedStatement query_autenticar = null;
        ResultSet ResultSet = null;
        Admin admin = null;

        try {
            // SQL para consultar o usuário na tabela 'usuarios' com base no email e senha fornecidos
            String sql = "SELECT * FROM adminLogin WHERE nome = ? AND senha = ?";

            // Preparar a query e inserir os parâmetros
            query_autenticar = conn.prepareStatement(sql);  
            query_autenticar.setString(1, nome);
            query_autenticar.setString(2, senha);

            // Executar a consulta
            ResultSet = query_autenticar.executeQuery();

            // Verifica se a consulta retornou algum resultado
            if (ResultSet.next()) {
                // Usuário encontrado, criar uma instância do objeto USUARIO e preencher os dados
                admin = new Admin();
                admin.setId(ResultSet.getInt("adminID"));
                admin.setNome(ResultSet.getString("nome"));
                admin.setSenha(ResultSet.getString("senha"));  // Lembrando que, idealmente, a senha deve estar criptografada no banco
            }
        } catch (SQLException ex) {
            System.out.println("Erro ao autenticar usuário: " + ex.getMessage());
        } finally {
            // Fechar o ResultSet e o PreparedStatement
            try {
                if (ResultSet != null) ResultSet.close();
                if (query_autenticar != null) query_autenticar.close();
            } catch (SQLException e) {
                System.out.println("Erro ao fechar recursos: " + e.getMessage());
            }
        }
        return admin;
    }

    /**
     * Método para cadastrar um novo usuário na base de dados.
     * @param nome Nome do novo usuário.
     * @param email Email do novo usuário.
     * @param senha Senha do novo usuário.
     * @return Retorna uma instância de USUARIO se o cadastro for bem-sucedido, ou null se falhar.
     */


}
