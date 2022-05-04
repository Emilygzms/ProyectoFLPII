/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo.dao;
import accesoDB.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import modelo.bean.Carta;
import modelo.bean.Comentario;

public class ComentarioDAO {
    
    public static ArrayList<Comentario> listar() {
        ArrayList<Comentario> comentarios = new ArrayList<>();
        Connection cn = Conexion.abrir();
        String sql = "SELECT*FROM comentarios";
        try {
            PreparedStatement ps = cn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            Carta art;
            while (rs.next()) {
                Comentario com = new Comentario();
                               
                com.setIdcomentario(rs.getInt("idcomentario"));
                com.setComentario(rs.getString("comentario"));
                com.setIdcarta(rs.getInt("idcarta")); 
                
                
                comentarios.add(com);
            }
            cn.close();
            ps.close();
            rs.close();
        } catch (SQLException ex) {
            System.out.println("Error:" + ex.getMessage());
        }
        return comentarios;
    }
    
    public static ArrayList<Comentario> listarPorCarta(int codigo) {
        ArrayList<Comentario> comentarios = new ArrayList<>();
        Connection cn = Conexion.abrir();
        String sql = "SELECT*FROM comentarios where idcarta= ?";
        try {
            PreparedStatement ps = cn.prepareStatement(sql);
            ps.setInt(1,codigo);
            ResultSet rs = ps.executeQuery();
            Carta art;
            while (rs.next()) {
                Comentario com = new Comentario();
                               
                com.setIdcomentario(rs.getInt("idcomentario"));
                com.setComentario(rs.getString("comentario"));
                com.setIdcarta(rs.getInt("idcarta")); 
                
                
                comentarios.add(com);
            }
            cn.close();
            ps.close();
            rs.close();
        } catch (SQLException ex) {
            System.out.println("Error:" + ex.getMessage());
        }
        return comentarios;
    }
    
    public static Comentario buscarComentario(int codigo){
        Comentario com = null;
       String sql ="select * from comentarios where idcarta  = ?";
       Connection cn = Conexion.abrir();
       
        try {
            PreparedStatement ps=cn.prepareCall(sql);
            ps.setInt(1,codigo);
            ResultSet rs=ps.executeQuery();
            if(rs.next()){
                com = new Comentario();
                
                com.setIdcomentario(rs.getInt("idcomentario"));
                com.setComentario(rs.getString("comentario"));
                com.setIdcarta(rs.getInt("idcarta"));
            }
        } catch (SQLException ex) {
            Logger.getLogger(ComentarioDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return com;
    }
    
    public static void insertarComentario(Comentario com){
        //sql para insertar un empleado
        String sql="insert into comentarios(cometario, idcarta) value (?, ?) ";
        Connection cn=Conexion.abrir();
        
        try {
            PreparedStatement ps=cn.prepareStatement(sql);
            
            ps.setString(1, com.getComentario());
            
            ps.setInt(2, com.getIdcarta());
            
            //executeUpdate() para insertar, eliminar, etc
            ps.executeUpdate();
            
            cn.close();
            ps.close();
            
        } catch (SQLException ex) {
            Logger.getLogger(ComentarioDAO.class.getName()).log(Level.SEVERE, null, ex);
        } 
        
    }
    
}
