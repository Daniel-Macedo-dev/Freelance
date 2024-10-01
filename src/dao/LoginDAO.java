package dao;

import beans.Usuario;
import conexao.Conexao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class LoginDAO {
    // Classe responsável por fazer a conexão com o banco de dados
    private Conexao conexao;
    private Connection conn;

    // Inicializa a conexão com o banco de dados
    public LoginDAO() {
        this.conexao = new Conexao();
        this.conn = this.conexao.getConexao();  // Obter conexão através da classe Conexao
    }

    /**
     * Método para autenticar um usuário com base em seu email e senha.
     * @param email Email do usuário.
     * @param senha Senha do usuário.
     * @return Retorna uma instância de USUARIO se a autenticação for bem-sucedida, ou null se falhar.
     */
    public Usuario autenticar(String email, String senha) {
        PreparedStatement query_autenticar = null;
        ResultSet rs = null;
        Usuario usuario = null;

        try {
            // SQL para consultar o usuário na tabela 'usuarios' com base no email e senha fornecidos
            String sql = "SELECT * FROM usuarios WHERE email = ? AND senha = ?";

            // Preparar a query e inserir os parâmetros
            query_autenticar = conn.prepareStatement(sql);  
            query_autenticar.setString(1, email);
            query_autenticar.setString(2, senha);

            // Executar a consulta
            rs = query_autenticar.executeQuery();

            // Verifica se a consulta retornou algum resultado
            if (rs.next()) {
                // Usuário encontrado, criar uma instância do objeto USUARIO e preencher os dados
                usuario = new Usuario();
                usuario.setId(rs.getInt("id"));
                usuario.setNome(rs.getString("nome"));
                usuario.setEmail(rs.getString("email"));
                usuario.setSenha(rs.getString("senha"));  // Lembrando que, idealmente, a senha deve estar criptografada no banco
            }
        } catch (SQLException ex) {
            System.out.println("Erro ao autenticar usuário: " + ex.getMessage());
        } finally {
            // Fechar o ResultSet e o PreparedStatement
            try {
                if (rs != null) rs.close();
                if (query_autenticar != null) query_autenticar.close();
            } catch (SQLException e) {
                System.out.println("Erro ao fechar recursos: " + e.getMessage());
            }
        }
        return usuario;
    }

    /**
     * Método para cadastrar um novo usuário na base de dados.
     * @param nome Nome do novo usuário.
     * @param email Email do novo usuário.
     * @param senha Senha do novo usuário.
     * @return Retorna uma instância de USUARIO se o cadastro for bem-sucedido, ou null se falhar.
     */
    public Usuario cadastro(String nome, String email, String senha) 
    {
        PreparedStatement query_cadastro = null;
        Usuario usuario = null;
        try 
        {
            // SQL para inserir um novo usuário na tabela 'usuarios'
            String sql = "INSERT INTO usuarios (nome, email, senha) VALUES (?, ?, ?)";

            // Preparar a query e definir os valores para nome, email e senha
            query_cadastro = conn.prepareStatement(sql);  
            query_cadastro.setString(1, nome);
            query_cadastro.setString(2, email);
            query_cadastro.setString(3, senha);  
           //Insere os dados na tabela
           
            int rowsAffected = query_cadastro.executeUpdate();

            // Verificar se a inserção foi bem-sucedida (se ao menos uma linha foi afetada)
            if (rowsAffected > 0) 
            {
                // Criar o objeto usuário com os dados fornecidos
                usuario = new Usuario();
                usuario.setNome(nome);
                usuario.setEmail(email);
                usuario.setSenha(senha);  
            }

        } 
        catch (SQLException ex) 
        {
            System.out.println("Erro ao cadastrar usuário: " + ex.getMessage());
        } 
        finally
        {
            // Fechar o PreparedStatement
                try 
                {
                    if (query_cadastro != null) query_cadastro.close();
                } 
                 catch (SQLException e) 
                {
                System.out.println("Erro ao fechar recursos: " + e.getMessage());
                }
        }
        return usuario;
    }

}
