<%-- 
    Document   : ReporteExcel
    Created on : 30-dic-2021, 6:00:00
    Author     : Frank
--%>

<%@page import="modelo.dao.CategoriaDAO"%>
<%@page import="modelo.bean.Carta"%>
<%@page import="controlador.menu.ControlMenu"%>
<%@page import="modelo.bean.Listado"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="application/vnd.ms-excel"%>
<% 
    String nombreArchivo = "Reporte.xls";
    response.setHeader("Content-Disposition","attachment;filename"+nombreArchivo);
%>
<%
    HttpSession sesion = request.getSession();
    ArrayList<Listado> lista = sesion.getAttribute("carrito") == null ? null : (ArrayList)sesion.getAttribute("carrito");
%>
<!DOCTYPE html>
<html>
    <head>
        <title>Reporte Excel</title>
    </head>
    <body>
        <h1>REPORTE DE LA VENTA</h1>
        <table border="1">
            <tr>
                    <th>ÍTEM</th>
                    <th>CATEGORIA</th>
                    <th>PLATO</th>
                    <th>PRECIO</th>
                    <th>CANTIDAD</th>
                    <th>SUB TOTAL</th>
            </tr>
                <%
                    ControlMenu cp = new ControlMenu();
                    double total =0;
                    for(Listado a : lista){
                        Carta carta = cp.getCArta(a.getIdplato());
                        total += carta.getPrecio()*a.getCantidad();
                %>
                  <tr class="table-active">
                      <td><%=carta.getIdcarta()%></td>
                      <td><%=CategoriaDAO.buscarCateID(carta.getIdcategoria())%></td>
                      <td><%=carta.getNom_carta()%></td>
                      <td><%=carta.getPrecio()%></td>
                      <td><%=a.getCantidad()%></td>
                      <td><%=Math.round(carta.getPrecio()*a.getCantidad()*100.0/100.0)%></td>
                  </tr>
                    <%}%>
        </table>
        <br>
        <table border="1">
                    <tr>
                        <th>Costo Subtotal S/.</th>
                        <td><%=Math.round((total-(total*(18.0/100.0)))*100.0/100.0)%></td>
                    </tr>
                    <tr>
                        <th>Impuestos S/.</th>
                        <td><%=Math.round(total*(18.0/100.0))%></td>
                    </tr>
                    
                    <tr>
                        <th>Total S/.</th>
                        <td><%=Math.round(total*100.0/100.0)%></td>
                    </tr>
        </table>
    </body>
</html>
