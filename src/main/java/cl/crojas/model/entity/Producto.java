package cl.crojas.model.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@AllArgsConstructor
@NoArgsConstructor
@ToString
@Entity
public class Producto {
   
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    
    @Setter @Getter private Integer id;
    @Setter @Getter private String nombre;
    @Setter @Getter private String marca;
    @Setter @Getter private Integer precio;
    @Setter @Getter private String urlimagen;
    
    public String toJson() {
        Producto aux = new Producto(id, nombre, marca, precio, urlimagen);
        ObjectMapper mapper = new ObjectMapper();
        String jsonString = null;
        try {
            jsonString = mapper.writeValueAsString(aux);
        } catch (JsonProcessingException e) {
            e.printStackTrace();
        }
        
        return jsonString;
    }
}
