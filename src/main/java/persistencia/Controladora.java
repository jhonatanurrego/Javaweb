/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package persistencia;

import java.util.List;
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
}
