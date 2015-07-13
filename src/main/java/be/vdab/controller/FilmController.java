package be.vdab.controller;

import be.vdab.domain.Film;
import be.vdab.repository.FilmRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;
import java.util.Map;


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
    public String films(Map<String,Object> model){
        model.put("films",filmRepository.findAll());
        return "/films";
    }
}
