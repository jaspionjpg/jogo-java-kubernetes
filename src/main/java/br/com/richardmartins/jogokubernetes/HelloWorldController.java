package br.com.richardmartins.jogokubernetes;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.net.InetAddress;
import java.net.UnknownHostException;

@RestController
public class HelloWorldController {

    @RequestMapping("/hello")
    public String sayHello() throws UnknownHostException {
        InetAddress ip = InetAddress.getLocalHost();
        System.out.println("Your current host/IP address : " + ip);
        return "Hello " + ip;
    }
}

