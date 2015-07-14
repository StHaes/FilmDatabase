package be.vdab.controller;

import be.vdab.domain.*;
import be.vdab.repository.ActorRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.validation.Valid;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/**
 * Created by jeansmits on 14/07/15.
 */
@Controller
public class ActorController {
    @Autowired
    private ActorRepository actorRepository;

    @RequestMapping("/actor")
    public Actor actor(@RequestParam("id") Integer id){
        return actorRepository.findOne(id) ;
    }


    @RequestMapping("/actors")
    public String actors(Map<String,Object> model){
        model.put("actors", actorRepository.findAll());
        return "/actors";
    }
    // create and update below
    @RequestMapping(value="/actorform",method = RequestMethod.GET)
    public String actorform(Map<String,Object> model,Actor actor,@RequestParam(value ="id",required= false)Integer actorId){
        if (actorId == null){
            model.put("actor", new Actor());
        }else {
            model.put("actor",actorRepository.getOne(actorId));
        }
        return"/actorform";
    }
    @RequestMapping(value ="/makeActor", method = RequestMethod.POST)
    public String makeActor(@Valid Actor actor, BindingResult bindingResult){
        if(bindingResult.hasErrors()){
            return "/actorform";
        }else {
            actorRepository.save(actor);
            return "redirect:/actors";
        }
    }
    @RequestMapping(value="/deleteActor")
    public String deleteActor(@RequestParam(value="id") Integer actorId){
        actorRepository.delete(actorId);
        return "redirect:/actors";
    }
    @ModelAttribute(value = "genders")
    public List<Gender> genders(){
        List <Gender> genders = new ArrayList<>();
        for (Gender gender : Gender.values()) {
            genders.add(gender);
        }
        return genders;
    }
}
