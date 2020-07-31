package cl.crojas.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/crearmenu")
public class MenuController {
    
    @GetMapping
    public String crearMenu() {
        
        return"menues/crear";
    }

}
