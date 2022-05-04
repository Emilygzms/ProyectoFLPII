
package modelo.dao;

import accesoDB.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import modelo.bean.Cliente;

public class ClienteDAO {
    
    public static Cliente buscarClienteID(int codigo){
        Cliente emp = null;
        String sql ="Select * from cliente where idcliente = ?";
        
       //conexion a la bd
        Connection cn = Conexion.abrir();
        
        try{
            PreparedStatement ps=cn.prepareCall(sql);
            ps.setInt(1,codigo);
            ResultSet rs = ps.executeQuery();
            
            if(rs.next()){
                emp = new Cliente();
                emp.setIdcliente(rs.getInt("idcliente"));
                emp.setNombre(rs.getString("nombre"));
             
            }
            
        } catch (SQLException ex) {
            Logger.getLogger(ClienteDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return emp;
    }
    
     public static void registrarDatosCliente(Cliente cli){
          String sql ="insert into cliente(nombre,email,celular)values(?,?,?)"; 
          Connection cn = Conexion.abrir();
        try {        
            PreparedStatement ps=cn.prepareStatement(sql);
            ps.setString(1, cli.getNombre());
            ps.setString(2, cli.getEmail());
            ps.setInt(3, cli.getCelular());
            //ejecutar 
            ps.executeUpdate();
            cn.close();
            ps.close();
        } catch (SQLException ex) {
            Logger.getLogger(ClienteDAO.class.getName()).log(Level.SEVERE, null, ex);
        
        }
          
     }
     
     public static Cliente buscarIDMax(){
 
        Cliente cl=null;
        String sql="SELECT MAX(idcliente) AS idcliente FROM cliente";
        Connection cn = Conexion.abrir();
        try {
        
            PreparedStatement stm = cn.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            if(rs.next()){
                cl = new Cliente();
                cl.setIdcliente(rs.getInt("idcliente"));

            }
            
            cn.close();
            stm.close();
        } catch (SQLException ex) {
            Logger.getLogger(ClienteDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return cl;
    }
     
}
