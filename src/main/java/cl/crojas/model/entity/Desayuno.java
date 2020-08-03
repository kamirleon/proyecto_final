package cl.crojas.model.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@AllArgsConstructor
@NoArgsConstructor
@ToString
@Entity
public class Desayuno {
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    
    @Setter @Getter private Integer id;
    @Setter @Getter private String nombre;
    @Setter @Getter private Integer precio;
    @Setter @Getter private String detalle;
    @Setter @Getter private String urlimagen;
    

}
