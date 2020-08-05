package cl.crojas.controller;

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

import cl.crojas.model.entity.Producto;
import cl.crojas.services.ProductoService;

@Controller
@RequestMapping("/productos")
public class ProductoController {

     @Autowired
    ProductoService servicio;  


  
   
    @GetMapping
    public String productos(@ModelAttribute("mensaje") String mensaje,
        ModelMap mapa) {
        System.out.println("mensaje:" + mensaje);
        if (mensaje != null)
            mapa.put("mensaje", mensaje);
        mapa.put("productos", servicio.obtenerTodos());

        return "/productos/index";

    }

    @PostMapping("/actualizar")
    public String actualizar(ModelMap mapa, RedirectAttributes atributos,
        @ModelAttribute Producto producto,
        @RequestParam(name = "imagen", required = false) MultipartFile archivo) {
        if (archivo.isEmpty())
            servicio.actualizar(producto);

        else
            servicio.actualizar(producto, archivo);

        atributos.addFlashAttribute("mensaje", "Producto actualizado");

        return "redirect:/prodcutos";

    }

    @PostMapping
    public String ingresar(RedirectAttributes atributos,
        @ModelAttribute Producto producto,
        @RequestParam("imagen") MultipartFile archivo) {
        Producto Productorespuesta = servicio.ingresar(producto, archivo);

        atributos.addFlashAttribute("mensaje",
                "Producto: " + Productorespuesta.getNombre() + ", ingresado");

        return "redirect:/productos";

    }

    @GetMapping(value = "/eliminar")
    public String eliminar(@RequestParam Integer id,
        RedirectAttributes atributos) {
        Producto producto = servicio.buscar(id);
        servicio.eliminar(producto);
        String mensaje = "Producto: " + producto.getNombre() + " eliminado";
        atributos.addFlashAttribute("mensaje", mensaje);

        return "redirect:/prodcutos";

    }

}
