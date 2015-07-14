package be.vdab.repository;

import be.vdab.domain.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

/**
 * Created by jeansmits on 14/07/15.
 */
@Repository
public interface UserRepository extends JpaRepository<User, Integer> {
}
