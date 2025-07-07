<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Inicio de Sesión - Campamento</title>
    <<link rel="stylesheet" href="iniciarSesionStyle.css"/>
</head>
<body>
    <div class="contenedor">
        <h1>🔑 Iniciar Sesión</h1>
        <p>Accede a tu cuenta para disfrutar de todas las aventuras del campamento.</p>

        
        <% 
            String mensajeError = (String) request.getAttribute("mensajeError");
            if (mensajeError != null && !mensajeError.isEmpty()) {
        %>
                <div class="mensaje-error"><%= mensajeError %></div>
        <%
            }
        %>
        
        <form action="Svlogin" method="POST" class="formulario">
            <label>Correo electrónico:
                <input type="email" name="correo" required>
            </label>
            <label>Contraseña:
                <input type="text" name="clave" required>
            </label>
            <button type="submit">Ingresar</button>
        </form>

        <p>¿Aún no tienes cuenta?</p>
        <div class="botones-secundarios">
            <form action="registro.jsp">
                <button type="submit">⛺ Registrarse</button>
            </form>
            <form action="index.jsp">
                <button type="submit">🏠 Volver al inicio</button>
            </form>
        </div>
    </div>
</body>
</html>