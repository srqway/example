package idv.hsiehpinghan.java8example.resource;

import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

import org.testng.Assert;
import org.testng.annotations.Test;

public class JarResourceTest {
	private JarResource jarResource = new JarResource();

	@Test
	public void getJarResourceFromWebApp() throws IOException {
		InputStream inputStream = jarResource.getJarResourceFromWebApp();
		Properties properties = new Properties();
		properties.load(inputStream);
		Assert.assertEquals(properties.getProperty("message"), "this is jar resource.");
	}

}
