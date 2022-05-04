/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo.bean;

public class Imagen {
    private int idimg;
    private String direccion;
    private int idcarta;

    public Imagen(String direccion, int idcarta) {
        this.direccion = direccion;
        this.idcarta = idcarta;
    }

    public Imagen() {
    }

    public int getIdimg() {
        return idimg;
    }

    public void setIdimg(int idimg) {
        this.idimg = idimg;
    }

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    public int getIdcarta() {
        return idcarta;
    }

    public void setIdcarta(int idcarta) {
        this.idcarta = idcarta;
    }
    
    
    
}
