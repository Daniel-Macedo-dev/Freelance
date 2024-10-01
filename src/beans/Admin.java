/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package beans;

/**
 *
 * @author gpont
 */
public class Admin {
    private int adminID ;
    private String nome;

    private String senha;
    
    public int getIadminID () {
        return adminID ;
    }
    
    public void setId(int adminID ) {
        this.adminID  = adminID ;
    }
    
    public String getNome(){
        return nome;
    }
    
    public void setNome(String descricao) {
        this.nome = descricao;
    }
    

    
      public String getSenha(){
    return senha;
    }
    
    public void setSenha(String senha) {
        this.senha = senha;
         
    }
    
    
}