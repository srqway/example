package idv.hsiehpinghan.testngexample.test;

import idv.hsiehpinghan.testngexample.configuration.SpringConfiguration;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.env.Environment;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.testng.AbstractTestNGSpringContextTests;
import org.testng.Assert;
import org.testng.annotations.Test;

@ContextConfiguration(classes = { SpringConfiguration.class })
public class SpringIntegrationTest extends AbstractTestNGSpringContextTests {

	@Autowired
	private Environment environment;

	@Test
	public void autowiredTest() {
		Assert.assertNotNull(environment);
	}

}
