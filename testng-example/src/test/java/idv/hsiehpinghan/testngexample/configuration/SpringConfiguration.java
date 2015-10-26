package idv.hsiehpinghan.testngexample.configuration;

import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;

@Configuration
@ComponentScan(basePackages = { "idv.hsiehpinghan.testngexample" })
public class SpringConfiguration {
	// private Logger logger = Logger.getLogger(this.getClass().getName());

}