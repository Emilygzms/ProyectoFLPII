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

/**
 *
 * @author Frank
 */
public class CartaDAO {
    public static Carta buscarCarta(int codigo){
        Carta car = null;
       String sql ="select * from Carta where idcarta  = ?";
       Connection cn = Conexion.abrir();
       
        try {
            PreparedStatement ps=cn.prepareCall(sql);
            ps.setInt(1,codigo);
            ResultSet rs=ps.executeQuery();
            if(rs.next()){
                car = new Carta();
                car.setIdcarta(rs.getInt("idcarta"));           
                car.setNom_carta(rs.getString("nom_carta"));
                car.setDescripcion(rs.getString("descripcion"));        
                car.setPrecio(rs.getFloat("precio"));
                car.setIdcategoria(rs.getInt("idcategoria"));
            }
        } catch (SQLException ex) {
            Logger.getLogger(CartaDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return car;
    }
    
    //LISTAT Carta
    public static ArrayList<Carta> listar() {
        ArrayList<Carta> cartas = new ArrayList<>();
        Connection cn = Conexion.abrir();
        String sql = "SELECT*FROM carta";
        try {
            PreparedStatement ps = cn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            Carta art;
            while (rs.next()) {
                Carta car = new Carta();
                car.setIdcarta(rs.getInt("idcarta"));           
                car.setNom_carta(rs.getString("nom_carta"));
                car.setDescripcion(rs.getString("descripcion"));        
                car.setPrecio(rs.getFloat("precio"));
                car.setIdcategoria(rs.getInt("idcategoria"));
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
    
    public static ArrayList<Carta> listarCartaCategoria(int codigo){
        ArrayList<Carta> cartas = new ArrayList<>();
        Connection cn = Conexion.abrir();
        String sql = "select * from Carta where idcategoria  = ?";
        try {
            PreparedStatement ps = cn.prepareStatement(sql);
            ps.setInt(1,codigo);
            ResultSet rs = ps.executeQuery();
            Carta art;
            while (rs.next()) {
                Carta car = new Carta();
                car.setIdcarta(rs.getInt("idcarta"));           
                car.setNom_carta(rs.getString("nom_carta"));
                car.setDescripcion(rs.getString("descripcion"));        
                car.setPrecio(rs.getFloat("precio"));
                car.setIdcategoria(rs.getInt("idcategoria"));
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
    
    public static Carta buscarCartaCategoria(int codigo){
        Carta car = null;
       String sql ="select * from Carta where idcategoria  = ?";
       Connection cn = Conexion.abrir();
       
        try {
            PreparedStatement ps=cn.prepareCall(sql);
            ps.setInt(1,codigo);
            ResultSet rs=ps.executeQuery();
            if(rs.next()){
                car = new Carta();
                car.setIdcarta(rs.getInt("idcarta"));           
                car.setNom_carta(rs.getString("nom_carta"));
                car.setDescripcion(rs.getString("descripcion"));        
                car.setPrecio(rs.getFloat("precio"));
                car.setIdcategoria(rs.getInt("idcategoria"));
            }
        } catch (SQLException ex) {
            Logger.getLogger(CartaDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return car;
    }
}
