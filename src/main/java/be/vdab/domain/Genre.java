package be.vdab.domain;

/**
 * Created by jeansmits on 13/07/15.
 */
public enum Genre {
    FANTASY("Fantasy"),ACTION("Action"),SCIFI("Sci-fi");

    private String fullGenre;


    public String getFullGenre() {
        return fullGenre;
    }

    Genre(String fullGenre) {
        this.fullGenre = fullGenre;
    }

}
