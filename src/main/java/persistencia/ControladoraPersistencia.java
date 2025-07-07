
package persistencia;

import java.util.List;
import logica.Usuario;

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
}
