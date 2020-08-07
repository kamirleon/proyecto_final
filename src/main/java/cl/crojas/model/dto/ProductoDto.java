package cl.crojas.model.dto;

import java.util.List;

import org.springframework.stereotype.Component;

import cl.crojas.model.entity.Producto;
import cl.crojas.model.dto.ProductoDto;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;
@AllArgsConstructor
@NoArgsConstructor
@ToString
@Component
@Data
public class ProductoDto {

    private Producto producto;
    
    private List<Producto>productos;
    
  
}
