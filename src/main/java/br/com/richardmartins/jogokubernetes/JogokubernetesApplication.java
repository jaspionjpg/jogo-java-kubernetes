package br.com.richardmartins.jogokubernetes;

import br.com.richardmartins.jogokubernetes.domain.Jogador;
import br.com.richardmartins.jogokubernetes.domain.JogadorRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ConfigurableApplicationContext;

import static org.springframework.boot.SpringApplication.run;

@SpringBootApplication
public class JogokubernetesApplication {

	@Autowired
	private JogadorRepository jogadorRepository;

	public static void main(String[] args) {
		ConfigurableApplicationContext run = run(JogokubernetesApplication.class, args);

	}

}
