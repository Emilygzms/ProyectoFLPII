
package controlador.menu;

import java.util.ArrayList;
import modelo.bean.Carta;
import modelo.bean.Categoria;
import modelo.dao.CartaDAO;
import modelo.dao.CategoriaDAO;
import modelo.dao.ImagenDAO;

public class ControlMenu {
    public String cateMenu(){
        String htmlCode = "";
        htmlCode +="";
    return htmlCode;
    }
    
    public String cartaMenu(){
        
        
        ArrayList<Categoria> categorias = CategoriaDAO.listar();
        String htmlCode = "";
        
        for(Categoria cat : categorias){
            String cart = "";
            ArrayList<Carta> cartas = CartaDAO.listarCartaCategoria(cat.getIdcategoria());
            for(Carta ca : cartas){
                cart += "<div class=\"imagen-port\">\n" +
"                        <img src=\""+ImagenDAO.getImagenDireccion(ca.getIdcarta())+"\" alt=\"\">\n" +
"                        <div class=\"hover-galeria\">\n" +
"                            <p><a href=\"AgregarCarrito?id="+ca.getIdcarta()+"\"><img src=\"img/seleccione.png\" title=\"Pedir\" ></a></p>\n" +
"                        </div>\n" +
"                    </div>";
            }
            htmlCode +="<section>\n" +
"                <h1 class=\"tituloComida\">"+cat.getCategoria().toUpperCase()+"</h1>\n" +
"                <div class=\"contenedor\">\n" +
"                <div class=\"galeria-port\">\n" +
"                    "+cart+"\n"+
"                </div>\n" +
"            </div>\n" +
"            </section>" +
"            <hr class=\"my-4\">";
            
        }
        return htmlCode;
    }
    
    public Carta getCArta(int id){
        return new CartaDAO().buscarCarta(id);
    }
}
