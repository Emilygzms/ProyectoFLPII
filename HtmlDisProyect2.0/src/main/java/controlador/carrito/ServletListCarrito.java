/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador.carrito;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import modelo.bean.Listado;

/**
 *
 * @author Frank
 */
public class ServletListCarrito extends HttpServlet {
    // /ServletListCarrito
   
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
       
         int cantidad = Integer.parseInt(request.getParameter("cantidad"));
         int idcarta = Integer.parseInt(request.getParameter("idcarta"));
         ArrayList<Listado> asd= new ArrayList();
        // response.getWriter().print(""+cantidad+""+idcarta);
        HttpSession sesion = request.getSession();
        ArrayList<Listado> lista = sesion.getAttribute("carrito") == null ? new ArrayList() : (ArrayList)sesion.getAttribute("carrito");
        
        boolean flag = false;        
        if(lista.size() > 0){
            for(Listado a : lista){
                //validar si el articulo esta, con la finalidad de no repetir
                if(idcarta == a.getIdplato()){
                    //actualiza la cantidad
                    a.setCantidad(a.getCantidad() + cantidad);
                    flag = true;
                    break;
                }
            }
        }
        
        if(!flag){
            lista.add(new Listado(idcarta, cantidad));
        }
        
        sesion.setAttribute("carrito", lista);
        //request.getRequestDispatcher("listaCarrito.jsp").forward(request, response);
        response.sendRedirect("listaCarrito.jsp");
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
