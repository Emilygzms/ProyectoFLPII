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
import modelo.bean.Imagen;

/**
 *
 * @author Frank
 */
public class ImagenDAO {
    public static Imagen getImagen(int codigo){
        Imagen car = null;
       String sql ="select * from img_carta where idcarta= ?";
       Connection cn = Conexion.abrir();
        try {
            PreparedStatement ps=cn.prepareCall(sql);
            ps.setInt(1,codigo);
            ResultSet rs=ps.executeQuery();
            if(rs.next()){
                car = new Imagen();
                car.setIdimg(rs.getInt("idimg"));           
                car.setDireccion(rs.getString("direccion"));
                car.setIdcarta(rs.getInt("idcarta"));   
            }
        } catch (SQLException ex) {
            Logger.getLogger(ImagenDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return car;
    }
    public static String getImagenDireccion(int codigo){
        Imagen car = null;
       String sql ="select * from img_carta where idcarta= ?";
       Connection cn = Conexion.abrir();
        try {
            PreparedStatement ps=cn.prepareCall(sql);
            ps.setInt(1,codigo);
            ResultSet rs=ps.executeQuery();
            if(rs.next()){
                car = new Imagen();
                car.setIdimg(rs.getInt("idimg"));           
                car.setDireccion(rs.getString("direccion"));
                car.setIdcarta(rs.getInt("idcarta"));   
            }
        } catch (SQLException ex) {
            Logger.getLogger(ImagenDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return car.getDireccion();
    }
}
