<%@page import="logica.Usuario"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Lista de Campistas</title>
    <link rel="stylesheet" href="mostrarUsuariosStyle.css"/>
    
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
        
        <div class="form-eliminar">
            <form action="SvEliminar"  method="POST" >
                <label for="dni">Eliminar usuario por DNI:</label><br><br>
                <input type="text" name="id" id="id" placeholder="Ingrese ID" required />
                <button type="submit">🗑️ Eliminar Usuario</button>
            </form>
        </div>
        
        <div class="form-eliminar">
            <form action="SvEditar"  method="GET" >
                <label for="dni">Editar usuario por DNI:</label><br><br>
                <input type="text" name="id" id="id" placeholder="Ingrese ID" required />
                <button type="submit">🗑️ Editar Usuario</button>
            </form>
        </div>

        <div class="botones-secundarios">
            <form action="index.jsp">
                <button type="submit">🏠 Volver al inicio</button>
            </form>
            <form action="iniciarSesion.jsp">
                <button type="submit">🔑 Iniciar Sesión</button>
            </form>
            <form action="SvUsuario" method="GET">
                <button type="submit">Ver usuarios</button>
            </form>
        </div>
    </div>
</body>
</html>
