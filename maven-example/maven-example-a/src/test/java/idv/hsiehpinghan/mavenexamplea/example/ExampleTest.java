package idv.hsiehpinghan.mavenexamplea.example;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.testng.AbstractTestNGSpringContextTests;
import org.testng.Assert;
import org.testng.annotations.Test;

import idv.hsiehpinghan.mavenexamplea.configuration.SpringConfiguration;

@ContextConfiguration(classes = { SpringConfiguration.class })
public class ExampleTest extends AbstractTestNGSpringContextTests {
	private static final int INT = 3;

	@Autowired
	private Example example;

	@Test
	public void echoInt() {
		Assert.assertEquals(example.echoInt(INT), INT);
	}
}
