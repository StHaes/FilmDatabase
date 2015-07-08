package be.vdab.service;

import be.vdab.domain.Model;
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
public class ModelService {
    @Autowired
    private ModelRepository repository;

    @RequestMapping(value = "/model/{modelId}", method = GET)
    public ResponseEntity<Model> findById(@PathVariable("modelId") int id) {
        Model model = repository.findOne(id);
        if(model == null) {
            return new ResponseEntity<Model>(NOT_FOUND);
        } else {
            return new ResponseEntity<Model>(model, OK);
        }
    }

    @RequestMapping(value = "/models", method = GET)
    public List<Model> findAll() {
        return repository.findAll();
    }
}
