/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import beans.Projeto; // Importando a nova classe Projeto
import conexao.Conexao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author gpont
 */
public class ProjetoDAO {
    private Conexao conexao;
    private Connection conn;

    // Inicializa a conexão com o banco de dados
    public ProjetoDAO() {
        this.conexao = new Conexao();
        this.conn = this.conexao.getConexao();  // Obter conexão através da classe Conexao
    }

    public void inserir(Projeto projeto) {
        String sql = "INSERT INTO projetos (freelancerID, Nome, Descricao, Preco, Status) VALUES (?, ?, ?, ?, ?)";
        
        try {
            PreparedStatement stmt = this.conn.prepareStatement(sql);
            stmt.setInt(1, projeto.getFreelancerID());
            stmt.setString(2, projeto.getNome());
            stmt.setString(3, projeto.getDescricao());
            stmt.setDouble(4, projeto.getPreco());
            stmt.setString(5, projeto.getStatus());
            stmt.execute();
        } catch (SQLException e) {
            System.out.println("Erro ao inserir projeto: " + e.getMessage());
        }
    }

    public void alterar(Projeto projeto) {
        String sql = "UPDATE projetos SET Nome=?, Descricao=?, Preco=?, Status=? WHERE projetoID=?";
        try {
            PreparedStatement stmt = this.conn.prepareStatement(sql);
            stmt.setString(1, projeto.getNome());
            stmt.setString(2, projeto.getDescricao());
            stmt.setDouble(3, projeto.getPreco());
            stmt.setString(4, projeto.getStatus());
            stmt.setInt(5, projeto.getProjetoID());
            stmt.execute();
        } catch (SQLException e) {
            System.out.println("Erro ao atualizar projeto: " + e.getMessage());
        }
    }

    public void excluir(int projetoID) {
        String sql = "DELETE FROM projetos WHERE projetoID=?";
        try {
            PreparedStatement stmt = this.conn.prepareStatement(sql);
            stmt.setInt(1, projetoID);
            stmt.execute();
        } catch (Exception e) {
            System.out.println("Erro ao excluir projeto: " + e.getMessage());
        }
    }

    public Projeto getProjeto(String projet_o) {
        String sql = "SELECT * FROM projetos WHERE projetoID=?";
        
        try {
            PreparedStatement stmt = this.conn.prepareStatement(sql);
            stmt.setString(1, projet_o);
            ResultSet rs = stmt.executeQuery();
            if (rs.next()) {
                Projeto projeto = new Projeto();
                projeto.setProjetoID(rs.getInt("projetoID"));
                projeto.setFreelancerID(rs.getInt("freelancerID"));
                projeto.setNome(rs.getString("Nome"));
                projeto.setDescricao(rs.getString("Descricao"));
                projeto.setPreco(rs.getDouble("Preco"));
                projeto.setStatus(rs.getString("Status"));
                return projeto;
            }
        } catch (Exception e) {
            System.out.println("Erro ao buscar projeto: " + e.getMessage());
        }
        return null;
    }

    public List<Projeto> getProjetos() {
        String sql = "SELECT * FROM projetos";
        try {
            PreparedStatement stmt = this.conn.prepareStatement(sql);
            ResultSet rs = stmt.executeQuery();
            List<Projeto> listaProjetos = new ArrayList<>();
            while (rs.next()) {
                Projeto p = new Projeto();
                p.setProjetoID(rs.getInt("projetoID"));
                p.setFreelancerID(rs.getInt("freelancerID"));
                p.setNome(rs.getString("Nome"));
                p.setDescricao(rs.getString("Descricao"));
                p.setPreco(rs.getDouble("Preco"));
                p.setStatus(rs.getString("Status"));
                listaProjetos.add(p);
            }
            return listaProjetos;
        } catch (Exception e) {
            System.out.println("Erro ao buscar projetos: " + e.getMessage());
            return null;
        }
    }
}