/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.mycompany.webpages.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.time.ZoneId;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import logica.Usuario;
import persistencia.Controladora;

/**
 *
 * @author jhona
 */
@WebServlet(name = "SvUsuario", urlPatterns = {"/SvUsuario"})
public class SvUsuario extends HttpServlet {

    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        
        
    }

   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        Controladora control = new Controladora();
        List<Usuario> listaUsuario = new ArrayList<>();
        listaUsuario = control.traerUsuario();
        
        HttpSession misesion = request.getSession();
        misesion.setAttribute("listaUsuario", listaUsuario);
        
        response.sendRedirect("mostrarUsuario.jsp");
       
    }

   
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        Controladora control = new Controladora();
        String dni = request.getParameter("dni");
        String nombre = request.getParameter("nombre");
        String apellido = request.getParameter("apellido");
        String fechaString = request.getParameter("nacimiento");
        String correo = request.getParameter("correo");
        String telefono = request.getParameter("telefono");
        String clave = request.getParameter("clave");
        
        

        
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
        
        
        
        
        
        Usuario usu = new Usuario();
        usu.setDni(dni);
        usu.setNombre(nombre);
        usu.setApellido(apellido);
        usu.setCorreo(correo);
        usu.setFecha_nacimiento(fecha_nacimiento_util_date);
        usu.setTelefono(telefono);
        usu.setClave(clave);
        control.crearUsuario(usu);
        
        HttpSession misesion = request.getSession();
        response.sendRedirect("principal.jsp");
        
    }

    
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
