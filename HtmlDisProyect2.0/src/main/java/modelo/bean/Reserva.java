
package modelo.bean;

import java.sql.Time;
import java.util.Date;

public class Reserva {
    private int idreserva;
    private String fecha;
    private String hora;
    private int cantidad;
    private int idusuario;

    public Reserva() {
    }

    public Reserva(String fecha, String hora, int cantidad, int idusuario) {
        this.fecha = fecha;
        this.hora = hora;
        this.cantidad = cantidad;
        this.idusuario = idusuario;
    }
    
    public int getIdreserva() {
        return idreserva;
    }

    public void setIdreserva(int idreserva) {
        this.idreserva = idreserva;
    }

    public String getFecha() {
        return fecha;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }

    public String getHora() {
        return hora;
    }

    public void setHora(String hora) {
        this.hora = hora;
    }

    public int getCantidad() {
        return cantidad;
    }

    public void setCantidad(int cantidad) {
        this.cantidad = cantidad;
    }

    public int getIdusuario() {
        return idusuario;
    }

    public void setIdusuario(int idusuario) {
        this.idusuario = idusuario;
    }
    
    
}
