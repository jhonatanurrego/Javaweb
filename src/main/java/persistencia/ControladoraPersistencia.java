
package persistencia;

import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import logica.Usuario;
import persistencia.exceptions.NonexistentEntityException;

/**
 *
 * @author jhona
 */
public class ControladoraPersistencia {
    
    UsuarioJpaController usuJpa = new UsuarioJpaController();
 
    // Crear usuario
    public void crearUsuario(Usuario usu){
        usuJpa.create(usu);
    }
    
    // Leer usuario
    public List<Usuario> traerUsuario (){
        return usuJpa.findUsuarioEntities();
    }
    
    public Usuario validarlogin(String email, String clave) {
        return usuJpa.Validarlogin(email, clave);
    }

    void eliminarUsuario(int id) {
        try {
            usuJpa.destroy(id);
        } catch (NonexistentEntityException ex) {
            Logger.getLogger(ControladoraPersistencia.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public Usuario traerUsuario(int id) {
        return usuJpa.findUsuario(id);
    }

    void editarUsuario(Usuario usu) {
        try {  
            usuJpa.edit(usu);
        } catch (Exception ex) {
            Logger.getLogger(ControladoraPersistencia.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
} 
