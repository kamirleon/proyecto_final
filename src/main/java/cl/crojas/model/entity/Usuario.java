package cl.crojas.model.entity;

import javax.persistence.Entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@AllArgsConstructor
@NoArgsConstructor
@ToString
@Data 
@Entity 
public class Usuario {

    
    @Setter @Getter private Integer id;
    @Setter @Getter private String nombre;
    @Setter @Getter private String username;
    @Setter @Getter private String password;
    
}
