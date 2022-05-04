
package modelo.dao;

import accesoDB.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import modelo.bean.Reserva;


public class ReservaDAO {
    public static void registrarReserva(Reserva user){
          String sql ="insert into reserva(fecha,hora,cantidad,idusuario)values(?,?,?,?)"; 
          Connection cn = Conexion.abrir();
        try {        
            PreparedStatement ps=cn.prepareStatement(sql);
            ps.setString(1, user.getFecha());
            ps.setString(2, user.getHora());
            ps.setInt(3,user.getCantidad());
            ps.setInt(4,user.getIdusuario());
            //ejecutar 
            ps.executeUpdate();
            cn.close();
            ps.close();
        } catch (SQLException ex) {
            Logger.getLogger(ReservaDAO.class.getName()).log(Level.SEVERE, null, ex);
        
        }
          
     }
    
    public static ArrayList<Reserva> listar() {
        ArrayList<Reserva> cartas = new ArrayList<>();
        Connection cn = Conexion.abrir();
        String sql = "SELECT*FROM Reserva";
        try {
            PreparedStatement ps = cn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            Reserva art;
            while (rs.next()) {
                Reserva car = new Reserva();
                car.setIdreserva(rs.getInt("idreserva"));           
                car.setCantidad(rs.getInt("cantidad"));           
                car.setFecha(rs.getString("fecha"));
                car.setHora(rs.getString("hora"));
                car.setIdusuario(rs.getInt("idusuario"));
                //agregar objeto empleado al arreglo
                cartas.add(car);
            }
            cn.close();
            ps.close();
            rs.close();
        } catch (SQLException ex) {
            System.out.println("Error:" + ex.getMessage());
        }
        return cartas;
    }
}
