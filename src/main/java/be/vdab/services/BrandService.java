package be.vdab.services;

import be.vdab.domain.Brand;
import be.vdab.domain.Model;
import be.vdab.repository.BrandRepository;
import be.vdab.repository.ModelRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

import static org.springframework.http.HttpStatus.NOT_FOUND;
import static org.springframework.http.HttpStatus.OK;
import static org.springframework.web.bind.annotation.RequestMethod.GET;

@RestController
public class BrandService {
    @Autowired
    private BrandRepository repository;

    @RequestMapping(value = "/brand/{brandId}", method = GET)
    public ResponseEntity<Brand> findById(@PathVariable("brandId") int id) {
        Brand brand = repository.findOne(id);
        if(brand == null) {
            return new ResponseEntity<Brand>(NOT_FOUND);
        } else {
            return new ResponseEntity<Brand>(brand, OK);
        }
    }

    @RequestMapping(value = "/brands", method = GET)
    public List<Brand> findAll() {
        return repository.findAll();
    }
}
