/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.mycompany.webpages.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.time.LocalDate;
import java.time.ZoneId;
import java.time.format.DateTimeFormatter;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import persistencia.Controladora;
import logica.Usuario;


@WebServlet(name = "SvEditar", urlPatterns = {"/SvEditar"})
public class SvEditar extends HttpServlet {

    Controladora control = new Controladora();
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
           
        }
    }

   
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        
        int id = Integer.parseInt(request.getParameter("id"));
        
        Usuario usu = control.traerUsuario(id);
        
        HttpSession misesion = request.getSession();
        misesion.setAttribute("usuEditar", usu);
        
        response.sendRedirect("editarUsuario.jsp");
        
        
        
    }

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            
        String dni = request.getParameter("dni");
        String nombre = request.getParameter("nombre");
        String apellido = request.getParameter("apellido");
        String fechaString = request.getParameter("nacimiento");
        String correo = request.getParameter("correo");
        String telefono = request.getParameter("telefono");
        String clave = request.getParameter("clave");
        
        Usuario usu = (Usuario) request.getSession().getAttribute("usuEditar");
        
        LocalDate fecha_nacimiento_localdate = null; 
        Date fecha_nacimiento_util_date = null;      

        
        if (fechaString != null && !fechaString.isEmpty()) {
            try {
                fecha_nacimiento_localdate = LocalDate.parse(fechaString, DateTimeFormatter.ofPattern("yyyy-MM-dd"));
                
                
                fecha_nacimiento_util_date = Date.from(fecha_nacimiento_localdate.atStartOfDay(ZoneId.systemDefault()).toInstant());

            } catch (java.time.format.DateTimeParseException e) {
                System.err.println("Error al parsear la fecha de nacimiento: " + e.getMessage());
                
                response.sendRedirect("error.jsp?mensaje=Formato de fecha inválido");
                return; 
            }
        } else {
            System.out.println("El campo de fecha de nacimiento está vacío.");
            
        }
        
        usu.setDni(dni);
        usu.setNombre(nombre);
        usu.setApellido(apellido);
        usu.setCorreo(correo);
        usu.setFecha_nacimiento(fecha_nacimiento_util_date);
        usu.setTelefono(telefono);
        usu.setClave(clave);
        
        
        
        control.editarUsuario(usu);
        
        response.sendRedirect("mostrarUsuario.jsp");
        
    }

   
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
