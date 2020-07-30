package cl.crojas.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/crearMenu")
public class MenuController {
    
    @GetMapping
    public String crearMenu() {
        
        return"principal/crearMenu";
        
    }

}