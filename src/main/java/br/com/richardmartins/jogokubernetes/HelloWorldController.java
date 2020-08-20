package br.com.richardmartins.jogokubernetes;

import br.com.richardmartins.jogokubernetes.domain.Jogador;
import br.com.richardmartins.jogokubernetes.domain.JogadorRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.net.InetAddress;
import java.net.UnknownHostException;

@RestController
public class HelloWorldController {

    @RequestMapping("/meu-ip")
    public String sayHello() throws UnknownHostException {
        InetAddress ip = InetAddress.getLocalHost();
        System.out.println("Your current host/IP address : " + ip);
        return "Hello " + ip;
    }

    @Autowired
    private JogadorRepository jogadorRepository;

    @RequestMapping("/lista")
    public ResponseEntity lista() throws UnknownHostException {
        return new ResponseEntity(jogadorRepository.findAll(), HttpStatus.ACCEPTED);
    }

    @RequestMapping("/insere-nomes")
    public void insereNomes() throws UnknownHostException {
        jogadorRepository.save(new Jogador("Richard"));
        jogadorRepository.save(new Jogador("Zé"));
        jogadorRepository.save(new Jogador("Lais"));
    }
}

