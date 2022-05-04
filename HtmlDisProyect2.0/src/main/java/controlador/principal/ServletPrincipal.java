/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador.principal;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.bean.Carta;
import modelo.dao.CartaDAO;

/**
 *
 * @author Frank
 */
@WebServlet(name = "ServletPrincipal", urlPatterns = {"/ServletPrincipal","/inicio","/acercade","/nosotros","/menu","/Zreparto","/Carrito","/Agregar","/Reserva"})
public class ServletPrincipal extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            String path=request.getServletPath();
            ArrayList<Carta> cart = new ArrayList<Carta>();
            if(path.equals("/acercade")){
                  request.getRequestDispatcher("SobreNosotros.jsp").forward(request, response);
            }
            if(path.equals("/inicio")){
                  request.getRequestDispatcher("principal.jsp").forward(request, response);
            }
            if(path.equals("/menu")){
                  request.getRequestDispatcher("Menu.jsp").forward(request, response);
            }
            if(path.equals("/Zreparto")){
                  request.getRequestDispatcher("reparto.jsp").forward(request, response);
            }
            if(path.equals("/Carrito")){
                  request.getRequestDispatcher("carrito.jsp").forward(request, response);
            }
            if(path.equals("/Reserva")){
                  request.getRequestDispatcher("Reservas.jsp").forward(request, response);
            }
            if(path.equals("/Agregar")){
                    //EN PROCESO NO HAY INTERFAZ PARA CARRITO 
                    /*int codigo = Integer.parseInt(request.getParameter("idart"));
                    cart.add(CartaDAO.buscarCarta(1));
                    request.setAttribute("agre",cart);
                    */
                    request.setAttribute("agre",CartaDAO.listar());
                    request.getRequestDispatcher("carrito.jsp").forward(request, response);
            }
        }
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
