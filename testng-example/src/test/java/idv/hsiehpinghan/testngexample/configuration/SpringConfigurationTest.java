package idv.hsiehpinghan.testngexample.configuration;

import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Profile;

@Profile("test")
@Configuration("testngExampleSpringConfigurationTest")
public class SpringConfigurationTest {
	// private Logger logger = Logger.getLogger(this.getClass().getName());

}