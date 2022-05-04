
package modelo.bean;

public class Carta {
    private int idcarta;
    private String nom_carta;
    private String descripcion;
    private float precio;
    private int idcategoria;

    public Carta() {
    }
    
    public Carta(String nom_carta, String descripcion, float precio, int idcategoria) {
        this.nom_carta = nom_carta;
        this.descripcion = descripcion;
        this.precio = precio;
        this.idcategoria = idcategoria;
    }
    
    public int getIdcarta() {
        return idcarta;
    }

    public void setIdcarta(int idcarta) {
        this.idcarta = idcarta;
    }

    public String getNom_carta() {
        return nom_carta;
    }

    public void setNom_carta(String nom_carta) {
        this.nom_carta = nom_carta;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public float getPrecio() {
        return precio;
    }

    public void setPrecio(float precio) {
        this.precio = precio;
    }

    public int getIdcategoria() {
        return idcategoria;
    }

    public void setIdcategoria(int idcategoria) {
        this.idcategoria = idcategoria;
    }
    
}
