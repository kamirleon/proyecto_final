package cl.crojas.model.entity;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

@AllArgsConstructor
@NoArgsConstructor
@ToString
@Data
@Entity
public class Desayuno {
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    
    private Integer id;
    private String nombre;
    private Integer precio;
    private String detalle;
    private String urlimagen;

    @OneToMany(
        cascade = CascadeType.ALL,
        mappedBy = "desayuno", orphanRemoval = true)
    private List<Producto> productos = new ArrayList<>();

    public Desayuno ingresarProducto(Producto producto) {
        producto.setDesayuno(this);
        productos.add(producto);
        return this;
    }

}
