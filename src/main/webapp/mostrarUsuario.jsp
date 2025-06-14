<%@page import="logica.Usuario"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Lista de Campistas</title>
        <link rel="stylesheet" href="usuariosStyle.css">
    </head>
    <body>
        <div class="contenedor">
            <h1>Lista de Campistas 🌲🔥</h1>
            <% 
            List<Usuario> listaUsuarios = (List<Usuario>) request.getSession().getAttribute("listaUsuario");
            if (listaUsuarios != null) {
                int cont = 1;
                for (Usuario usu : listaUsuarios) {
            %>
            <div class="usuario">
                <p>Usuario N° <%= cont++ %></p>
                <p>DNI: <%= usu.getDni() %></p>
                <p>Nombre: <%= usu.getNombre() %></p>
                <p>Apellido: <%= usu.getApellido() %></p>
                <p>Fecha de nacimiento: <%= usu.getFecha_nacimiento() %></p>
                <p>Correo: <%= usu.getCorreo() %></p>
                <p>Teléfono: <%= usu.getTelefono() %></p>
            </div>
            <% } } %>
        </div>
    </body>
</html>