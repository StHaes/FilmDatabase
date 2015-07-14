package be.vdab.controller;

import be.vdab.domain.Actor;
import be.vdab.repository.ActorRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

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
}
