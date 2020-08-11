package cl.crojas.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import cl.crojas.model.dto.DesayunoDto;
import cl.crojas.model.entity.Producto;
import cl.crojas.services.DesayunoService;
import cl.crojas.services.ProductoService;

@Controller
@RequestMapping("/crearmenu")
public class MenuController {
    
    @Autowired
    private ProductoService servicioProducto;
    
    @Autowired
    private DesayunoService servicioDesayuno;
    
    @GetMapping
    public String crearHome(
        ModelMap mapa,
        @ModelAttribute("mensaje") String mensaje) {
        if (mensaje != null)
            mapa.put("mensaje", mensaje);
        
        List<Producto> productos_ = servicioProducto.obtenerTodos();
        String productos = servicioProducto.productosToJson(productos_);
        
        mapa.put("productosJ", productos);
        return"menues/crear";
    }
    
    @PostMapping
    public String ingresar(
        ModelMap mapa, @ModelAttribute DesayunoDto desayuno,
        @RequestParam("imagen") MultipartFile archivo, RedirectAttributes redirectAttrs) {
        servicioDesayuno.ingresar(desayuno);
        // falta la gestión de la imagen :)
        String mensaje = "Desayuno: " + desayuno.getNombre() + " ingresado exitosamente";
        redirectAttrs.addFlashAttribute("mensaje", mensaje);
        
        return "redirect:/crearmenu";
    }
    


}
