package idv.hsiehpinghan.java8example.net;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import org.apache.commons.lang3.StringUtils;
import org.testng.Assert;
import org.testng.annotations.BeforeClass;
import org.testng.annotations.Test;

import idv.hsiehpinghan.java8example.utility.UrlUtility;

public class HttpPostConnectionTest {
	private HttpPostConnection connection;

	@BeforeClass
	public void beforeClass() throws IOException {
		final String HTTP_URL = "http://www.w3schools.com/jquery/demo_test_post.asp";
		final Map<String, String> REQUEST_PROPERTIES = generateRequestProperties();
		final String PARAMETER = "name:\"Donald+Duck\"\n\rcity:\"Duckburg\"";
		connection = new HttpPostConnection(HTTP_URL, REQUEST_PROPERTIES, PARAMETER);
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

	private Map<String, String> generateRequestProperties() {
		Map<String, String> map = new HashMap<>();
		map.put("Referer", "http://www.w3schools.com/jquery");
		return map;
	}
}
