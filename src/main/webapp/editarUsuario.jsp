<%-- 
    Document   : editarUsuario
    Created on : 9/07/2025, 5:22:47 p. m.
    Author     : jhona
--%>

<%@page import="logica.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Editar Usuario</title>
    </head>
    <body>
        <% Usuario usu = (Usuario) request.getSession().getAttribute("usuEditar");%>
        <form action="SvEditar" method="POST" class="formulario">
            <label>DNI:
                <input type="text" name="dni" required value="<%=usu.getDni()%>">  
            </label>
            <label>Nombre:
                <input type="text" name="nombre" required value="<%=usu.getNombre()%>">
            </label>
            <label>Apellido:
                <input type="text" name="apellido" required value="<%=usu.getApellido()%>>
            </label>
            <label>Fecha de Nacimiento:
                <input type="date" name="nacimiento" required value="<%=usu.getFecha_nacimiento()%>">
            </label>
            <label>Correo:
                <input type="email" name="correo" required value="<%=usu.getCorreo()%>">
            </label>
            <label>Teléfono:
                <input type="text" name="telefono" required value="<%=usu.getTelefono()%>">
            </label>
            <label>Contraseña:
                <input type="text" name="clave" required value="<%=usu.getClave()%>">
            </label>
            <button type="submit">Actualizar</button>
        </form>
    </body>
</html>
