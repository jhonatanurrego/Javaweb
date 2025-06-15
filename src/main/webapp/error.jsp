<%@page contentType="text.html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Error</title>
    </head>
    <body>
        <h1>¡Lo sentimos, ha ocurrido un error!</h1>
        <p>Por favor, inténtelo de nuevo más tarde o contacte al soporte.</p>
        <%
            // Recuperar el mensaje de error de la URL si se envió (ej., error.jsp?mensaje=...)
            String mensaje = request.getParameter("mensaje");
            if (mensaje != null && !mensaje.isEmpty()) {
        %>
                <p>Detalles: <%= mensaje %></p>
        <%
            }
        %>
        <p><a href="index.jsp">Volver al Inicio</a></p>
    </body>
</html>