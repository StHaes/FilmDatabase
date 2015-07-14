package be.vdab.controller;


import be.vdab.domain.User;
import be.vdab.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


import javax.validation.Valid;
import java.util.Map;

/**
 * Created by jeansmits on 14/07/15.
 */
@Controller
public class UserController {
@Autowired
private UserRepository userRepository;

    // create and update below
    @RequestMapping(value="/userform",method = RequestMethod.GET)
    public String form(Map<String,Object> model,User user){
        model.put("user", new User());
        return"/userform";
    }
    @RequestMapping(value ="/makeUser", method = RequestMethod.POST)
    public String makeUser(@Valid User user, BindingResult bindingResult){
        if(bindingResult.hasErrors()){
            return "/userform";
        }else {
            userRepository.save(user);
            return "redirect:/films";
        }
    }

}
