/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo.bean;

/**
 *
 * @author carlo
 */
public class Comentario {
    private int idcomentario;
    private String comentario;
    private int idcarta;

    public Comentario(String comentario, int idcarta) {
        this.comentario = comentario;
        this.idcarta = idcarta;
    }

    

    

    public Comentario() {
    }

    public int getIdcomentario() {
        return idcomentario;
    }

    public void setIdcomentario(int idcomentario) {
        this.idcomentario = idcomentario;
    }

    public int getIdcarta() {
        return idcarta;
    }

    public void setIdcarta(int idcarta) {
        this.idcarta = idcarta;
    }

    public String getComentario() {
        return comentario;
    }

    public void setComentario(String comentario) {
        this.comentario = comentario;
    }
    
    
    
    
    
    
}
