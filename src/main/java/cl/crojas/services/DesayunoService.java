package cl.crojas.services;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cl.crojas.model.dao.DesayunoDao;
import cl.crojas.model.dao.ProductoDao;
import cl.crojas.model.dto.DesayunoDto;
import cl.crojas.model.entity.Desayuno;
import cl.crojas.model.entity.Producto;
import cl.crojas.service.util.UtileriaDeArchivos;

@Service
public class DesayunoService {
    
//    private final Logger logger = LoggerFactory.getLogger(DesayunoService.class);

    @Autowired
    private DesayunoDao daoDesayuno;
    
    @Autowired
    private ProductoDao daoProducto;

    @Autowired
    private UtileriaDeArchivos archivos;
    
    public Desayuno ingresar(DesayunoDto desayunoDto) {
        Desayuno desayuno = new Desayuno();
        desayuno.setNombre(desayunoDto.getNombre());
        
        desayuno.setDetalle(desayunoDto.getDetalle());
        
        desayuno.setPrecio(desayunoDto.getPrecio());
        
        for(Integer idProducto: desayunoDto.getProductos()) {
            Producto producto_ = daoProducto.findById(idProducto).orElse(null);
            
            if(producto_ != null)
                desayuno.ingresarProducto(producto_);
        }
        
        daoDesayuno.save(desayuno);
        
        return desayuno;
    }
}
