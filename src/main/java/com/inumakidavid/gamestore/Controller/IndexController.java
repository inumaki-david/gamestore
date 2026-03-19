package com.inumakidavid.gamestore.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class IndexController {
    
    //Rotas de Navegação do Site
    @GetMapping("/")
    public String getIndex() {
       return "index";
    }

    @GetMapping("/home")
    public String getHome() {
        return "index";
    }
    @GetMapping("/game-add")
    public String getGameAdd() {
        return "/games/add";
    }
}
