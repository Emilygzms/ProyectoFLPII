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
import modelo.bean.Categoria;

/**
 *
 * @author Frank
 */
public class CategoriaDAO {
    public static Categoria buscarCate(int codigo){
        Categoria car = null;
       String sql ="select * from categoria where idcategoria  = ?";
       Connection cn = Conexion.abrir();
       
        try {
            PreparedStatement ps=cn.prepareCall(sql);
            ps.setInt(1,codigo);
            ResultSet rs=ps.executeQuery();
            if(rs.next()){
                car = new Categoria();
                car.setIdcategoria(rs.getInt("idcategoria"));           
                car.setCategoria(rs.getString("categoria"));
            }
        } catch (SQLException ex) {
            Logger.getLogger(CartaDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return car;
    }
    public static String buscarCateID(int codigo){
        Categoria car = null;
       String sql ="select * from categoria where idcategoria  = ?";
       Connection cn = Conexion.abrir();
       
        try {
            PreparedStatement ps=cn.prepareCall(sql);
            ps.setInt(1,codigo);
            ResultSet rs=ps.executeQuery();
            if(rs.next()){
                car = new Categoria();
                car.setIdcategoria(rs.getInt("idcategoria"));           
                car.setCategoria(rs.getString("categoria"));
            }
        } catch (SQLException ex) {
            Logger.getLogger(CartaDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return car.getCategoria();
    }
    //LISTAT Carta
    public static ArrayList<Categoria> listar() {
        ArrayList<Categoria> cartas = new ArrayList<>();
        Connection cn = Conexion.abrir();
        String sql = "SELECT*FROM categoria";
        try {
            PreparedStatement ps = cn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            Categoria art;
            while (rs.next()) {
                Categoria car = new Categoria();
                car.setIdcategoria(rs.getInt("idcategoria"));           
                car.setCategoria(rs.getString("categoria"));
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
