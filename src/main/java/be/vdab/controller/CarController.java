package be.vdab.controller;

import be.vdab.domain.Car;
import be.vdab.repository.CarRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class CarController {
    @Autowired
    private CarRepository carRepository;

    /**
     * In this example: there is no return "viewid" nor any model being used.
     * In this case Spring MVC does this:
     *   - Put the return value on the model Map using the lower case classname as attribute (so Car -> car -> model.put("car", returnValue))
     *   - Deduct the view name from the url pattern (so car.html -> car -> /WEB-INF/views/car.jsp)
     */
    @RequestMapping("car.html")
    public Car car(@RequestParam("id") int id) {
        return carRepository.findOne(id);
    }
}
