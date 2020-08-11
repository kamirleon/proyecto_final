package cl.crojas.model.dto;

import java.util.List;

import org.springframework.stereotype.Component;

import cl.crojas.model.dto.DesayunoDto;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;
@AllArgsConstructor
@NoArgsConstructor
@ToString
@Component
@Data
public class DesayunoDto {
    private Integer id;
    private String nombre;
    private Integer precio;
    private String detalle;
    private String urlimagen;
    private List<Integer> productos;

}
