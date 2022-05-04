
package modelo.dao;

import accesoDB.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import modelo.bean.Usuario;

public class UsuarioDAO {
    public static Usuario validarUsuario(String us, String psw){
        Usuario user = null;
       //SLQ INSTRUCITION 
       String sql ="select * from usuario where usuario = ? and password = ?";
        
       //conexion a la bd
       Connection cn = Conexion.abrir();
       
        try {
            //ejecutar instruccion sql con su metodo excte query
            PreparedStatement ps=cn.prepareCall(sql);
            //asginar valro a losparamtrep
            ps.setString(1,us);
            ps.setString(2, psw);
            
            ResultSet rs=ps.executeQuery();
            
            if(rs.next()){
                user = new Usuario();
                user.setIdusuario(rs.getInt("idusuario"));           
                user.setUsuario(rs.getString("usuario"));
                user.setPassword(rs.getString("password"));        
                user.setEstado(rs.getString("estado"));
                user.setIdcliente(rs.getInt("idcliente"));
                
            }
            
        } catch (SQLException ex) {
            Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return user;
    }
    
    public static void registrarDatosUsuario(Usuario user){
          String sql ="insert into usuario(usuario,password,estado,idcliente)values(?,?,?,?)"; 
          Connection cn = Conexion.abrir();
        try {        
            PreparedStatement ps=cn.prepareStatement(sql);
            ps.setString(1, user.getUsuario());
            ps.setString(2, user.getPassword());
            ps.setString(3, "a");
            ps.setInt(4,user.getIdcliente());
            //ejecutar 
            ps.executeUpdate();
            cn.close();
            ps.close();
        } catch (SQLException ex) {
            Logger.getLogger(ClienteDAO.class.getName()).log(Level.SEVERE, null, ex);
        
        }
          
     }
}
