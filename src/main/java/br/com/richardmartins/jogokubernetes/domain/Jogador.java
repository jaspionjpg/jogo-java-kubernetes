package br.com.richardmartins.jogokubernetes.domain;

import com.sun.istack.NotNull;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import java.time.LocalDate;

@Entity
public class Jogador {

    @GeneratedValue(strategy = GenerationType.AUTO)
    @Id
    @NotNull
    private Long id;

    @NotNull
    private String nick;

    public Jogador() {
    }

    public Jogador(String nick) {
        this.nick = nick;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getNick() {
        return nick;
    }

    public void setNick(String nick) {
        this.nick = nick;
    }
}
