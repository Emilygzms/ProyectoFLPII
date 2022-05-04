/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador.carrito;

import controlador.menu.ControlMenu;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import modelo.bean.Carta;
import modelo.bean.Listado;

/**
 *
 * @author Frank
 */
public class ServletBorrar extends HttpServlet {
    // /ServletBorrar
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        int idproducto = Integer.parseInt(request.getParameter("idproducto"));
        
        HttpSession sesion = request.getSession();
        ArrayList<Listado> lista = sesion.getAttribute("carrito") == null ? null : (ArrayList)sesion.getAttribute("carrito");
   
        if(lista != null){
            for(Listado a : lista){                
                if(a.getIdplato()== idproducto){
                    lista.remove(a);
                    break;
                }
            }
        }

        double total = 0;
        ControlMenu cp = new ControlMenu();
        for(Listado a : lista){                
            Carta carta = cp.getCArta(a.getIdplato());
            total += a.getCantidad() * carta.getPrecio();            
        }
        
        response.getWriter().print(Math.round(total * 100.0) /100.0); 
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
