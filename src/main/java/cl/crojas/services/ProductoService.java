package cl.crojas.services;

import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import cl.crojas.model.dao.ProductoDao;
import cl.crojas.model.entity.Producto;
import cl.crojas.service.util.UtileriaDeArchivos;

@Service 
public class ProductoService {
    private final Logger logger = LoggerFactory
            .getLogger(ProductoService.class);

    @Autowired
    private ProductoDao dao;

    @Autowired
    private UtileriaDeArchivos archivos;

    public List<Producto> obtenerTodos() {
        return dao.findAll();
    }

    public Producto ingresar(Producto producto, MultipartFile archivo) {
        logger.info("Ingresando el producto:" + producto.toString());
        String nombreArchivo = archivos.subirArchivo(archivo);
        producto.setUrlimagen(nombreArchivo);
        producto.setId(null);
        return dao.save(producto);
    }

    public Producto buscar(Integer id) {
        return dao.findById(id).orElse(null);

    }

    public Producto eliminar(Producto producto) {
        String nombreArchivo = producto.getUrlimagen();
        boolean Archivoeliminado = archivos
                .eliminarArchivoPorNombre(nombreArchivo);

        if (!Archivoeliminado) {
            logger.error(
                    "El archvio:" + nombreArchivo + "no pudo ser eliminado.");

        }
        
        dao.delete(producto);
        return producto;
    }
    
    public Producto actualizar(Producto producto) {
        return dao.save(producto);
    }
    
    public Producto actualizar(Producto producto, MultipartFile archivo) {
        Producto productoAnterior = dao.findById(producto.getId()).orElse(null);
        //eliminamos la imagen anterior
        archivos.eliminarArchivoPorNombre(productoAnterior.getUrlimagen());
        //subimos la nueva
        String nombreArchivo = archivos.subirArchivo(archivo);
        //actualizamos e; registro en la base de datos
        producto.setUrlimagen(nombreArchivo);
        
        return dao.save(producto);
        
    }

    /**
     * este método parede raro, pero en realidad el json
     * que muestra los productos en las tarjetas
     * explota cuando se lo mando con los
     * desayunos, asi que creo una copia
     * con ellos en null, es todo :) 
     */
    public String productosToJson(List<Producto> productos) {
        List<Producto> productos_ = new ArrayList<>();
        productos_.addAll(productos);
        productos_.forEach(producto -> producto.setDesayuno(null));
        
        ObjectMapper mapper = new ObjectMapper();
        String jsonString = null;
        try {
            jsonString = mapper.writeValueAsString(productos_);
        } catch (JsonProcessingException e) {
            e.printStackTrace();
        }

        return jsonString;
    }

}
