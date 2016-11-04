package idv.hsiehpinghan.java8example.net;

import java.io.IOException;

import org.apache.commons.lang3.StringUtils;
import org.testng.Assert;
import org.testng.annotations.BeforeClass;
import org.testng.annotations.Test;

import idv.hsiehpinghan.java8example.utility.UrlUtility;

public class HttpsConnectionTest {
	private static final String HTTPS_URL = "https://www.google.com/";
	private HttpsConnection connection;

	@BeforeClass
	public void beforeClass() throws IOException {
		connection = new HttpsConnection(HTTPS_URL);
	}

	@Test
	public void getResponseCode() throws IOException {
		int responseCode = UrlUtility.getResponseCode(connection.getConnection());
		Assert.assertEquals(responseCode, 200);
	}

	@Test
	public void getContent() throws IOException {
		String content = UrlUtility.getContent(connection.getConnection());
		System.err.println("content : " + content);
		Assert.assertFalse(StringUtils.isEmpty(content));
	}

}
