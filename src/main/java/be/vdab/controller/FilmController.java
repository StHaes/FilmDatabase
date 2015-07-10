package be.vdab.controller;

import be.vdab.domain.Film;
import be.vdab.repository.FilmRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;


/**
 * Created by jeansmits on 10/07/15.
 */
@Controller
public class FilmController {
    @Autowired
    private FilmRepository filmRepository;
    
    @RequestMapping("/film")
    public Film film(@RequestParam("id") Integer id){
        return filmRepository.findOne(id) ;
    }

    @RequestMapping("/films")
    public List<Film> films(){ return filmRepository.findAll();}
}
