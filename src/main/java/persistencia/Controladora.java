/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package persistencia;

import java.util.List;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import logica.Usuario;

/**
 *
 * @author jhona
 */
public class Controladora {
    
    
    ControladoraPersistencia controlpersis = new ControladoraPersistencia();
    
    public void crearUsuario(Usuario usu){
        controlpersis.crearUsuario(usu);
    }
    
    public List<Usuario> traerUsuario (){
        return controlpersis.traerUsuario();
    }
    
    public Usuario Validarlogin(String correo,String clave){
        return controlpersis.validarlogin(correo, clave);
    }
    
   

    public void eliminarUsuario(int id) {
        controlpersis.eliminarUsuario(id);
    }

    public Usuario traerUsuario(int id) {
        return controlpersis.traerUsuario(id);
    }

    public void editarUsuario(Usuario usu) {
       controlpersis.editarUsuario(usu);
    }
    
}
