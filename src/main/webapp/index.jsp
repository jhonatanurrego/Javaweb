<%-- 
    Document   : index
    Created on : 2/06/2025, 1:38:52 p. m.
    Author     : jhona
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <form action="SvUsuario" method="POST"> 
            <p><label>Dni: </label><input type="text" name="dni"></p>
            <p><label>Nombre: </label><input type="text" name="nombre"></p>
            <p><label>Apellido: </label><input type="text" name="apellido"></p>
            <p><label>Correo: </label><input type="text" name="correo"></p>
            <p><label>Telefono: </label><input type="text" name="telefono"></p>
            <button type="submit">Enviar</button>
        </form>
        
        
    </body>
</html>
