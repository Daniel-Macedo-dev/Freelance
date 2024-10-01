/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package beans;

/**
 *
 * @author gpont
 */
public class Freelancer {
    private int usuarioID ;
    private int freelancerID;
    private String habilidades;
    private String Profissao;

    public int getUsuarioID () {
        return usuarioID ;
    }
    
    public void setUsuarioID (int usuarioID ) {
        this.usuarioID  = usuarioID ;
    }
    
    public int getFreelancerID(){
        return freelancerID;
    }
    
    public void setFreelancerID(int freelancerId) {
        this.freelancerID = freelancerId;
    }
    
    public String getHabilidades(){
        return habilidades;
    }
    
    public void setHabilidades(String habilidades) {
        this.habilidades = habilidades;
    }
    
    public String getProfissao(){
        return Profissao;
    }
    
    public void setProfissao(String profissao) {
        this.Profissao = profissao;
    }
    
 
}