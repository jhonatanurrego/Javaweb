<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Inicio de Sesión - Campamento</title>
        <link rel="stylesheet" href="loginStyle.css">
    </head>
    <body>
        <div class="contenedor">
            <h1>🔑 Iniciar Sesión</h1>
            <p>Accede a tu cuenta para disfrutar de todas las aventuras del campamento.</p>
            
            <form action="SvLogin" method="POST" class="formulario">
                <label>Correo electrónico:<input type="email" name="correo" required></label>
                <label>Contraseña:<input type="password" name="password" required></label>
                <button type="submit">Ingresar</button>
            </form>
            
            <p>¿Aún no tienes cuenta?</p>
            <form action="registro.jsp">
                <button class="boton-secundario" type="submit">⛺ Registrarse</button>
            </form>
        </div>
    </body>
</html>
