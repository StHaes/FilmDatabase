package be.vdab.repository;

import be.vdab.domain.Brand;
import be.vdab.domain.Model;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ModelRepository extends JpaRepository<Model, Integer> {
    List<Model> findByBrand(Brand b);
}
