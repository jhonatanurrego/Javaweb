
package logica;

import java.io.Serializable;
import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Clubs implements Serializable {
    
    @Id
    private int id;
    private String nombre;
    private String monitor;
    private String ubicacion;

    public Clubs() {
    }

    public Clubs(int id, String nombre, String monitor, String ubicacion) {
        this.id = id;
        this.nombre = nombre;
        this.monitor = monitor;
        this.ubicacion = ubicacion;
    }
    
    
    
    
    
    
    
    
}
