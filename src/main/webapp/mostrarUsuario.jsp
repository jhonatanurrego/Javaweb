<%-- 
    Document   : mostrarUsuario
    Created on : 7/06/2025, 7:13:39 p. m.
    Author     : jhona
--%>

<%@page import="logica.Usuario"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% 
        List<Usuario> listaUsuarios = (List<Usuario>) request.getSession().getAttribute("listaUsuario");
        if (listaUsuarios != null) {
        int cont = 1;
        for (Usuario usu : listaUsuarios) {
        %>
        <h1>Hello World!</h1>
        <p>Usuario N <%= cont++ %></p>
        <p>Dni: <%= usu.getDni() %></p>
        <p>Nombre: <%= usu.getNombre() %></p>
        <p>Apellido: <%= usu.getApellido() %></p>
        <p>Fecha nacimiento: <%= usu.getFecha_nacimiento() %></p>
        <p>Correo: <%= usu.getCorreo() %></p>
        <p>Telefono: <%= usu.getTelefono() %></p>
        
        <% }
            }%>
    </body>
</html>
