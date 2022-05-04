
package modelo.bean;

import java.sql.Date;

public class Pedido_detalle {
    private int id_pedidoDetalle;
    private Date fecha;
    private int cliente;
    private float subtotal;
    private int idcliente;

    public int getId_pedidoDetalle() {
        return id_pedidoDetalle;
    }

    public void setId_pedidoDetalle(int id_pedidoDetalle) {
        this.id_pedidoDetalle = id_pedidoDetalle;
    }

    public Date getFecha() {
        return fecha;
    }

    public void setFecha(Date fecha) {
        this.fecha = fecha;
    }

    public int getCliente() {
        return cliente;
    }

    public void setCliente(int cliente) {
        this.cliente = cliente;
    }

    public float getSubtotal() {
        return subtotal;
    }

    public void setSubtotal(float subtotal) {
        this.subtotal = subtotal;
    }

    public int getIdcliente() {
        return idcliente;
    }

    public void setIdcliente(int idcliente) {
        this.idcliente = idcliente;
    }

    public Pedido_detalle(Date fecha, int cliente, float subtotal, int idcliente) {
        this.fecha = fecha;
        this.cliente = cliente;
        this.subtotal = subtotal;
        this.idcliente = idcliente;
    }

    public Pedido_detalle() {
    }
    
    
}
