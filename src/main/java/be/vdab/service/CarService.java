package be.vdab.service;

import be.vdab.domain.Car;
import be.vdab.repository.CarRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

import static org.springframework.http.HttpStatus.NOT_FOUND;
import static org.springframework.http.HttpStatus.OK;
import static org.springframework.http.MediaType.APPLICATION_JSON_VALUE;
import static org.springframework.web.bind.annotation.RequestMethod.*;

@RestController
public class CarService {
    @Autowired
    private CarRepository repository;

    @RequestMapping(value = "create/car", method = POST, consumes = APPLICATION_JSON_VALUE)
    public ResponseEntity<Void> create(@RequestBody Car car) {
        repository.save(car);
        HttpHeaders headers = new HttpHeaders();
        headers.add("Location", "http://localhost:8080/car/" + car.getId());
        return new ResponseEntity<Void>(headers, HttpStatus.CREATED);
    }

    @RequestMapping(value = "car/{carId}", method = DELETE)
    public void removeById(@PathVariable("carId") int id) {
        repository.delete(id);
    }

    @RequestMapping(value = "car/{carId}", method = GET)
    public ResponseEntity<Car> findById(@PathVariable("carId") int id) {
        Car car = repository.findOne(id);
        if(car == null) {
            return new ResponseEntity<>(NOT_FOUND);
        } else {
            return new ResponseEntity<>(car, OK);
        }
    }

    @RequestMapping("cars")
    public List<Car> findAll() {
        return repository.findAll();
    }
}
