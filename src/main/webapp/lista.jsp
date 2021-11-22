<%-- 
    Document   : lista
    Created on : 15-nov-2021, 17:59:07
    Author     : SergioCaballeroSáez
--%>

<%@page import="java.util.List"%>
<%@page import="modelo.Productos"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            .tr, td{
                background-color: lightpink;
            }
            
        </style>
    </head>
    <%
        List<Productos> listaProductos = (List<Productos>) request.getAttribute("listado");
        %>
    <body>
        <h1>Listado de Productos por nombre</h1>
        <table>
            <tr>
                <%
                    for(Productos p: listaProductos){
                        %>
            <tr>
                <td><%=p.getNombre() %></td>
                <td><%=p.getPrecio() %></td>
                <td><%=p.getCategoria() %></td>
                <td>
                    <a href="Servlet?op=borrar&id=<%=p.getId() %>">Borrar</a>
                </td>
            </tr>
                        
                  <%  } %>
            </tr>
        </table>
    </body>
</html>
