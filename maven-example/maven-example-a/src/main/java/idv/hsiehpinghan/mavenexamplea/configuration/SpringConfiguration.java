package idv.hsiehpinghan.mavenexamplea.configuration;

import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;

@Configuration("mavenExampleaASpringConfiguration")
@ComponentScan(basePackages = { "idv.hsiehpinghan.mavenexamplea" })
public class SpringConfiguration {
	// private Logger logger = Logger.getLogger(this.getClass().getName());
}
