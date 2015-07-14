import be.vdab.Application;
import be.vdab.controller.FilmController;
import be.vdab.domain.Film;
import be.vdab.repository.FilmRepository;
import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.SpringApplicationConfiguration;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;


/**
 * Created by jeansmits on 13/07/15.
 */
@RunWith(SpringJUnit4ClassRunner.class)
@SpringApplicationConfiguration(classes = Application.class)
public class TestCrud {
    @Autowired
    FilmController filmController;
    @Autowired
    FilmRepository filmRepository;

    @Test
    public void testFindone(){
        Assert.assertEquals("The Fellowship of the Ring",filmRepository.findOne(1).getTitle());
    }
}
