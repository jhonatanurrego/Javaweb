/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.mycompany.webpages.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import logica.Usuario;
import persistencia.Controladora;

/**
 *
 * @author PC Lenovo
 */
public class Svlogin extends HttpServlet {

    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
           
        }
    }


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
       
        
    }

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
         Controladora control = new Controladora();
         
         String correo = request.getParameter("correo");
         String clave = request.getParameter("clave");
         
         
         Usuario logueado = control.Validarlogin(correo, clave);
         
         if(logueado != null){
            HttpSession miSesion = request.getSession(true);
            miSesion.setAttribute("usuario", logueado);
            response.sendRedirect("principal.jsp");
           
         }else{
              // Login fallido: establece un mensaje de error y redirige de vuelta al login
            request.setAttribute("mensajeError", "Correo o contraseña incorrectos.");
            request.getRequestDispatcher("iniciarSesion.jsp").forward(request, response);
         }
       
    }

    
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
