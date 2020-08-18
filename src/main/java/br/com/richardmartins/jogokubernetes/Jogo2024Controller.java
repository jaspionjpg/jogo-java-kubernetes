package br.com.richardmartins.jogokubernetes;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class Jogo2024Controller {

    @GetMapping("/")
    public String getIndex() {
        return "index";
    }

}
