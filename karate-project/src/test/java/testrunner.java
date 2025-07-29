
import com.intuit.karate.junit5.Karate;
public class testrunner {
    @Karate.Test
    Karate testDummy() {
        return Karate.run("classpath:Test_Scenario");
    }

}


