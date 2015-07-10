package be.vdab.controller;

import be.vdab.domain.Film;
import be.vdab.repository.FilmRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * Created by jeansmits on 10/07/15.
 */
@Controller
public class FilmHomePageController {
 @Autowired
 private FilmRepository filmRepository;

 @RequestMapping("/")
    public String filmHomePage() {
     return "filmHomePage";
 }
}
