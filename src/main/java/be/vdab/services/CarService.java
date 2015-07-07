package be.vdab.services;

import be.vdab.domain.Car;
import be.vdab.repository.CarRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class CarService {
    @Autowired
    private CarRepository repository;

    @RequestMapping("car/{carId}")
    public Car findById(@PathVariable("carId") int id) {
        return repository.findOne(id);
    }

    @RequestMapping("cars")
    public List<Car> findAll() {
        return repository.findAll();
    }
}
