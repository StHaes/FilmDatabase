package be.vdab.controller;

import be.vdab.domain.Film;
import be.vdab.domain.Gender;
import be.vdab.repository.FilmRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;


import javax.validation.Valid;
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

   // create and update below
   @RequestMapping(value="/form",method = RequestMethod.GET)
    public String form(Map<String,Object> model,Film film,@RequestParam(value = "id",required = false) Integer filmId){
        if (filmId == null){
            model.put("film", new Film());
        }else {
            model.put("film",filmRepository.getOne(filmId));
        }
        return"/form";
    }
    @RequestMapping(value ="/makeFilm", method = RequestMethod.POST)
    public String makeFilm(@Valid Film film, BindingResult bindingResult){
        if(bindingResult.hasErrors()){
            return "/form";
        }else {
            filmRepository.save(film);
            return "redirect:/films";
        }
    }

    @RequestMapping(value="/deleteFilm")
    public String deleteFilm(@RequestParam(value="id") Integer filmId){
        filmRepository.delete(filmId);
        return "redirect:/films";
    }


}
