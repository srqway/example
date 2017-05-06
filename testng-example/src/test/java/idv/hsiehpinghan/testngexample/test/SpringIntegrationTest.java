package idv.hsiehpinghan.testngexample.test;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.env.Environment;
import org.springframework.test.context.ActiveProfiles;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.testng.AbstractTestNGSpringContextTests;
import org.testng.Assert;
import org.testng.annotations.Test;

import idv.hsiehpinghan.testngexample.configuration.SpringConfiguration;

@ActiveProfiles({ "test" })
@ContextConfiguration(classes = { SpringConfiguration.class })
public class SpringIntegrationTest extends AbstractTestNGSpringContextTests {

	@Autowired
	private Environment environment;

	@Test
	public void autowiredTest() {
		Assert.assertNotNull(environment);
	}

}
