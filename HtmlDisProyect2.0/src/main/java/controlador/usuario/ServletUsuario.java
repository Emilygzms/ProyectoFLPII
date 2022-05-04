
package controlador.usuario;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.bean.Cliente;
import modelo.bean.Usuario;
import modelo.dao.ClienteDAO;
import modelo.dao.UsuarioDAO;

@WebServlet(name = "ServletUsuario", urlPatterns = {"/ServletUsuario","/login","/exit","/create","/open","/grabar"})
public class ServletUsuario extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
        
            String path=request.getServletPath();
            
            if(path.equals("/login")){
                  
                  request.getRequestDispatcher("Login.jsp").forward(request, response);
            }
            
            if(path.equals("/open")){

               //capturar valores de los input del login 
                String usuario=request.getParameter("txtusuario");
                String password=request.getParameter("txtpassword");
                
                //verificarsi ususuario ey passworn esta en la bd
                Usuario user = UsuarioDAO.validarUsuario(usuario, password);
                if(user!=null){       
                       request.getRequestDispatcher("Menu.jsp").forward(request, response);
                    }else{
                        //asiganr valor aL ATRIBUTO                         
                        request.setAttribute("mensaje","USUARIO y/o PASSWORD INCORRECTO...!");
                        request.getRequestDispatcher("Login.jsp").forward(request, response);
                    }
            }
            
            if(path.equals("/create")){
                request.getRequestDispatcher("CrearCuenta.jsp").forward(request, response);
  
            }
            
            if(path.equals("/grabar")){
                String nom=request.getParameter("txtnombre");
                String ape=request.getParameter("txtapellido");  
                String corr=request.getParameter("txtcorreo");
                int num=Integer.parseInt(request.getParameter("txtnumero")); 
                String user=request.getParameter("txtusuario");
                String pass1=request.getParameter("txtpassword1");
                String pass2=request.getParameter("txtpassword2");
      
                
                Cliente clie = new Cliente();
                clie.setNombre(nom+ape);
                clie.setEmail(corr);
                clie.setCelular(num);

                Usuario us = new Usuario();

                
                if(pass1.equals(pass2)){
                    //CREA CLIENTE: MANDAR DATOS DE CLIENTE
                    ClienteDAO.registrarDatosCliente(clie);
                    //CREAE USURIO: MANDAR DATOS DE REGISTAR USUARIO
                    Cliente cli = ClienteDAO.buscarIDMax();
                    int idmax =cli.getIdcliente();
                    
                    us.setUsuario(user);
                    us.setPassword(pass1);
                    us.setIdcliente(idmax);
                    
                    UsuarioDAO.registrarDatosUsuario(us);
                    response.sendRedirect("login");
                }else{
                    request.setAttribute("mensaje","DATOS VACIOS O CONTRASEÑAS NO COINCIDEN...!");
                    request.getRequestDispatcher("CrearCuenta.jsp").forward(request, response);
                }
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
