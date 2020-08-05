package cl.crojas.service.util;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.UUID;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;

@Component
public class UtileriaDeArchivos {
    private final Logger logger = LoggerFactory
            .getLogger(UtileriaDeArchivos.class);
    private static String IMG_PATH = "src/main/resources/static/productos";

    private String nombrarArchivo(MultipartFile archivo) {
        return UUID.randomUUID() + "_" + archivo.getOriginalFilename();

    }

    public String subirArchivo(MultipartFile archivo) {
        String nombreUnico = nombrarArchivo(archivo);
        String imagenConRuta = IMG_PATH + File.separator + nombreUnico;
        Path path = Paths.get(imagenConRuta);
        try {
            byte[] fileBytes = archivo.getBytes();
            Files.write(path, fileBytes);
            logger.info("imagen guardada" + imagenConRuta);
        } catch (IOException e) {
            logger.error(e.getMessage());
        }

        return nombreUnico;

    }
    
    public boolean eliminarArchivoPorNombre(String nombre) {
        
        File archivo = new File(IMG_PATH + File.separator + nombre);
        return archivo.delete();
        
    }

}
