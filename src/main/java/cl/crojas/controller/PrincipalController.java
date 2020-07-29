package cl.crojas.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/")
public class PrincipalController {

    @GetMapping
    public String index() {
        System.out.println("soy yo");
        return "principal/index";
    }
}
