/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package beans;

/**
 *
 * @author gpont
 */
// Nova classe Projeto
public class Projeto {
    private int projetoID;
    private int freelancerID;
    private String nome;
    private String descricao; // Corrigido o nome da variável
    private double preco;
    private String status;

    // Getters e Setters para as novas variáveis
    public int getProjetoID() {
        return projetoID;
    }

    public void setProjetoID(int projetoID) {
        this.projetoID = projetoID;
    }

    public int getFreelancerID() {
        return freelancerID;
    }

    public void setFreelancerID(int freelancerID) {
        this.freelancerID = freelancerID;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }

    public double getPreco() {
        return preco;
    }

    public void setPreco(double preco) {
        this.preco = preco;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }
}