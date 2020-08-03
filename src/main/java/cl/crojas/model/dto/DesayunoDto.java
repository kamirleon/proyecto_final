package cl.crojas.model.dto;

import java.util.List;

import org.springframework.stereotype.Component;

import cl.crojas.model.entity.Desayuno;
import cl.crojas.model.dto.DesayunoDto;
import cl.crojas.model.entity.Desayuno;
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

    private Desayuno desayuno;
    private List<Desayuno>desayunos;
    
}
