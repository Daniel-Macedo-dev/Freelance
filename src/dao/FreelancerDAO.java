/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import beans.Freelancer;
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
public class FreelancerDAO {
     private Conexao conexao;
    private Connection conn;

    // Inicializa a conexão com o banco de dados
    public FreelancerDAO() {
        this.conexao = new Conexao();
        this.conn = this.conexao.getConexao();  // Obter conexão através da classe Conexao
    }

    
   public void inserir(Freelancer  freelancer){
        String sql = "INSERT INTO freelancer (UsuarioID, Profissao, Habilidades) VALUES (?,?,?) ";
        
        try{
            PreparedStatement stmt = this.conn.prepareStatement(sql);
            stmt.setInt(1,  freelancer.getUsuarioID());
             stmt.setString(2,  freelancer.getProfissao());
            stmt.setString(3,  freelancer.getHabilidades());
            stmt.execute();
        }catch(SQLException e){
            System.out.println("Erro ao inserir perfil: "+ e.getMessage());
        }
    }
   
       
     public void alterar(Freelancer freelancer){
        String sql = "UPDATE freelancer SET Profissao=?, Habilidades = ? WHERE UsuarioID=?";
        try{
            PreparedStatement stmt = this.conn.prepareStatement(sql);
            stmt.setString(1, freelancer.getProfissao());
            stmt.setString(2, freelancer.getHabilidades());
            stmt.setInt(3,freelancer.getUsuarioID());
            stmt.execute();
        }catch(SQLException e){
            System.out.println("Erro ao atualizar perfil: "+ e.getMessage());
        }
    }
     
      public void excluir(int UsuarioID){
        String sql = "DELETE FROM freelancer WHERE UsuarioID= ?";
        try{
            PreparedStatement stmt = this.conn.prepareStatement(sql);
            stmt.setInt(1,UsuarioID);
            stmt.execute();
        }catch(Exception e){
            System.out.println("Erro ao perfil: "+ e.getMessage());
        }
    }

      
      public Freelancer getFreelancer(int UsuarioID){
        String sql = "SELECT * FROM freelancer WHERE UsuarioID =?";
        
        try{
            PreparedStatement stmt = this.conn.prepareStatement(sql);
            stmt.setInt(1, UsuarioID);
            ResultSet rs = stmt.executeQuery();
            Freelancer freelancer = new Freelancer();
            rs.next();
            freelancer.setUsuarioID(rs.getInt("UsuarioID"));
            freelancer.setProfissao(rs.getString("profissao"));
            freelancer.setHabilidades(rs.getString("Habilidades"));
            return freelancer;
        }
            catch(Exception e){
            System.out.println("Erro ao atualizar freelancer: "+ e.getMessage());
            return null;
                }
        }
      
      
      
      
    public List<Freelancer>  getFreelance(){
        String sql = "SELECT * FROM freelancer";
        try{
          PreparedStatement stmt = this.conn.prepareStatement(sql);
          ResultSet rs = stmt.executeQuery();
          List<Freelancer> listaFreelancer = new ArrayList<>();
          while(rs.next()){
              Freelancer f = new Freelancer();
             f.setUsuarioID(rs.getInt("UsuarioID"));
            f.setProfissao(rs.getString("profissao"));
            f.setHabilidades(rs.getString("Habilidades"));
             listaFreelancer.add(f);
          }
          return listaFreelancer;
        }catch(Exception e){
            return null;
        }
    }
    
    
    
    
    
      }
