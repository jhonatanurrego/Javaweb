<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Registro Campamento de Verano</title>
    <link rel="stylesheet" href="registro.css"/>
</head>
<body>
    <div class="contenedor">
        <h1>¡Bienvenido al Campamento de Verano! ☀️🏕️</h1>
        <form action="SvUsuario" method="POST" class="formulario">
            <label>DNI:
                <input type="text" name="dni" required>
            </label>
            <label>Nombre:
                <input type="text" name="nombre" required>
            </label>
            <label>Apellido:
                <input type="text" name="apellido" required>
            </label>
            <label>Fecha de Nacimiento:
                <input type="date" name="nacimiento" required>
            </label>
            <label>Correo:
                <input type="email" name="correo" required>
            </label>
            <label>Teléfono:
                <input type="text" name="telefono" required>
            </label>
            <label>Contraseña:
                <input type="text" name="clave" required>
            </label>
            <button type="submit">⛺ Registrarse</button>
        </form>

        <div class="botones-secundarios">
            <form action="SvUsuario" method="GET">
                <button type="submit">Ver lista de campistas</button>
            </form>
            <form action="iniciarSesion.jsp" >
                <button type="submit">🔑 Iniciar Sesión</button>
            </form>
        </div>
    </div>
</body>
</html>
