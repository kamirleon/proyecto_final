package cl.crojas.model.dto;


import org.springframework.stereotype.Component;

import cl.crojas.model.entity.Usuario;
import cl.crojas.model.dto.UsuarioDto;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;
@AllArgsConstructor
@NoArgsConstructor
@ToString
@Component
@Data
public class UsuarioDto {

    private Usuario usuario;
    
}
