package be.vdab.service;

import be.vdab.domain.Brand;
import be.vdab.domain.Model;
import be.vdab.repository.BrandRepository;
import be.vdab.repository.ModelRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

import static org.springframework.http.HttpStatus.NOT_FOUND;
import static org.springframework.http.HttpStatus.OK;
import static org.springframework.web.bind.annotation.RequestMethod.GET;

@RestController
public class ModelService {
    @Autowired
    private ModelRepository modelRepository;

    @Autowired
    private BrandRepository brandRepository;

    @RequestMapping(value = "/model/{modelId}", method = GET)
    public ResponseEntity<Model> findById(@PathVariable("modelId") int id) {
        Model model = modelRepository.findOne(id);
        if(model == null) {
            return new ResponseEntity<>(NOT_FOUND);
        } else {
            return new ResponseEntity<>(model, OK);
        }
    }

    @RequestMapping(value = "/models", method = GET, produces = "application/json")
    public List<Model> findAll() {
        return modelRepository.findAll();
    }

    @RequestMapping(value = "/models", method = GET, params = "filterBrand")
    public List<Model> findAll(@RequestParam(value = "filterBrand") int brandId) {
        Brand brand = brandRepository.getOne(brandId);
        return modelRepository.findByBrand(brand);
    }
}
