package be.vdab.domain;

import javax.persistence.*;
import java.util.Date;

/**
 * Created by jeansmits on 14/07/15.
 */
@Entity
public class Actor {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
    private String firstName;
    private String lastName;
    @Lob
    private String bio;
    @Enumerated(value =EnumType.STRING)
    private Gender gender;
    private String img;
    @ManyToOne
    @JoinColumn(name="filmId")
    private Film film;
    @OneToOne
    private FilmCharacter filmCharacter;


    public Actor() {
    }

    public Actor(String firstName, String lastName, String bio, Gender gender,Film film, FilmCharacter filmCharacter, String img) {
        this.firstName = firstName;
        this.lastName = lastName;
        this.bio = bio;
        this.gender = gender;
        this.film = film;
        this.filmCharacter = filmCharacter;
        this.img=img;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getBio() {
        return bio;
    }

    public void setBio(String bio) {
        this.bio = bio;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Gender getGender() {
        return gender;
    }

    public void setGender(Gender gender) {
        this.gender = gender;
    }

    public FilmCharacter getFilmCharacter() {
        return filmCharacter;
    }

    public void setFilmCharacter(FilmCharacter filmCharacter) {
        this.filmCharacter = filmCharacter;

    }
    public Film getFilm() {
        return film;
    }

    public void setFilm(Film film) {
        this.film = film;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }
}
