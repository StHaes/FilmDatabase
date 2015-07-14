package be.vdab.domain;

import javax.persistence.*;

/**
 * Created by jeansmits on 10/07/15.
 */
@Entity
public class FilmCharacter {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
    private String name;
    @OneToOne
    private Actor actor;

    public FilmCharacter() {
    }

    public FilmCharacter(String name, Actor actor) {
        this.name = name;
        this.actor = actor;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}
