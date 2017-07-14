package idv.hsiehpinghan.java8example.resource;

import java.io.InputStream;

public class JarResource {
	public InputStream getJarResourceFromWebApp() {
		return JarResource.class.getResourceAsStream("jar_resource.property");
	}
}
