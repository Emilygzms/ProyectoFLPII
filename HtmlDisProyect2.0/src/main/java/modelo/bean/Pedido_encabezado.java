
package modelo.bean;

public class Pedido_encabezado {
    private int id_pedEn; //id_pedidoEncabezado
    private float precio;
    private int cantidad;
    private float subtotal;
    private int idcarta;
    private int id_pedidoDetalle;

    public Pedido_encabezado(float precio, int cantidad, float subtotal, int idcarta, int id_pedidoDetalle) {
        this.precio = precio;
        this.cantidad = cantidad;
        this.subtotal = subtotal;
        this.idcarta = idcarta;
        this.id_pedidoDetalle = id_pedidoDetalle;
    }

    public Pedido_encabezado() {
    }

    public int getId_pedEn() {
        return id_pedEn;
    }

    public void setId_pedEn(int id_pedEn) {
        this.id_pedEn = id_pedEn;
    }

    public float getPrecio() {
        return precio;
    }

    public void setPrecio(float precio) {
        this.precio = precio;
    }

    public int getCantidad() {
        return cantidad;
    }

    public void setCantidad(int cantidad) {
        this.cantidad = cantidad;
    }

    public float getSubtotal() {
        return subtotal;
    }

    public void setSubtotal(float subtotal) {
        this.subtotal = subtotal;
    }

    public int getIdcarta() {
        return idcarta;
    }

    public void setIdcarta(int idcarta) {
        this.idcarta = idcarta;
    }

    public int getId_pedidoDetalle() {
        return id_pedidoDetalle;
    }

    public void setId_pedidoDetalle(int id_pedidoDetalle) {
        this.id_pedidoDetalle = id_pedidoDetalle;
    }
    
    
    
    
}
