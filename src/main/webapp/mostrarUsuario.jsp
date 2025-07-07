<%@page import="logica.Usuario"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Lista de Campistas</title>
    <style>
        body {
            margin: 0;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(135deg, #6c3483, #9b59b6, #4b0082);
            color: #fff;
            display: flex;
            justify-content: center;
            align-items: flex-start;
            padding-top: 60px;
            min-height: 100vh;
            animation: fondoAnimado 10s infinite alternate;
        }

        @keyframes fondoAnimado {
            0% { background-position: left top; }
            100% { background-position: right bottom; }
        }

        .contenedor {
            background: rgba(255, 255, 255, 0.1);
            padding: 40px;
            border-radius: 20px;
            box-shadow: 0 10px 25px rgba(0, 0, 0, 0.3);
            text-align: center;
            max-width: 800px;
            width: 95%;
            backdrop-filter: blur(10px);
            animation: aparecer 1s ease-out;
        }

        @keyframes aparecer {
            from {
                opacity: 0;
                transform: translateY(-20px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        h1 {
            font-size: 2.2em;
            color: #ffe4ff;
            margin-bottom: 30px;
        }

        .usuario {
            background: rgba(255, 255, 255, 0.15);
            border-radius: 12px;
            padding: 20px;
            margin-bottom: 20px;
            text-align: left;
            color: #f0e8ff;
            box-shadow: 0 6px 14px rgba(0, 0, 0, 0.2);
        }

        .usuario p {
            margin: 5px 0;
            font-size: 1em;
        }

        .botones-secundarios {
            display: flex;
            justify-content: center;
            gap: 10px;
            margin-top: 30px;
        }

        .botones-secundarios form button {
            background: #7a4da1;
            color: white;
            border: none;
            padding: 10px 16px;
            border-radius: 10px;
            font-size: 1em;
            cursor: pointer;
            transition: transform 0.2s, background 0.3s;
            box-shadow: 0 6px 14px rgba(0, 0, 0, 0.25);
        }

        .botones-secundarios form button:hover {
            transform: scale(1.05);
            background: #a278c7;
        }
    </style>
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

        <div class="botones-secundarios">
            <form action="index.jsp">
                <button type="submit">🏠 Volver al inicio</button>
            </form>
            <form action="iniciarSesion.jsp">
                <button type="submit">🔑 Iniciar Sesión</button>
            </form>
        </div>
    </div>
</body>
</html>
