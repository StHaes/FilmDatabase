package be.vdab.controller;

import be.vdab.domain.*;
import be.vdab.repository.CharacterRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.validation.Valid;
import java.util.Map;

/**
 * Created by jeansmits on 13/07/15.
 */
@Controller
public class CharacterController {
    @Autowired
    private CharacterRepository characterRepository;

    @RequestMapping("/character")
    public FilmCharacter character(@RequestParam("id") Integer id){
        return characterRepository.findOne(id) ;
    }


    @RequestMapping("/characters")
    public String characters(Map<String,Object> model){
        model.put("characters",characterRepository.findAll());
        return "/characters";
    }

}
