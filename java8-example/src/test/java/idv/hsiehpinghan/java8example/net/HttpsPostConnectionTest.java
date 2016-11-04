package idv.hsiehpinghan.java8example.net;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import org.apache.commons.lang3.StringUtils;
import org.testng.Assert;
import org.testng.annotations.BeforeClass;
import org.testng.annotations.Test;

import idv.hsiehpinghan.java8example.utility.UrlUtility;

public class HttpsPostConnectionTest {
	private HttpsPostConnection connection;

	@BeforeClass
	public void beforeClass() throws IOException {
		final String HTTPS_URL = "https://www.facebook.com/platform/plugin/tab/renderer/?dpr=1";
		final Map<String, String> REQUEST_PROPERTIES = generateRequestProperties();
		final String PARAMETER = "config_json=%7B%22app_id%22%3A%22776730922422337%22%2C%22href%22%3A%22https%3A%2F%2Fwww.facebook.com%2Fetidol588%22%2C%22width%22%3A275%2C%22height%22%3A390%2C%22has_cta%22%3Atrue%2C%22has_small_header%22%3Afalse%2C%22has_adapt_container_width%22%3Atrue%2C%22has_cover%22%3Atrue%2C%22has_facepile%22%3Atrue%2C%22has_posts%22%3Afalse%2C%22tabs%22%3A%22timeline%22%2C%22can_personalize%22%3Atrue%2C%22is_xfbml%22%3Atrue%2C%22referer_uri%22%3A%22http%3A%2F%2Fwww.etidol.com%2F%22%7D&key=timeline&__user=100009608566988&__a=1&__dyn=7xeXxaER0h8fEdpbG4oy4S-C11wno98nwgU5y48vgS3e2ubyEjKewExW14DwPwwxm2O6EgwJwpUO6Egx61YCBxZ3FoS5U&__req=1&__be=-1&__pc=EXP1%3ADEFAULT&locale=zh_TW&fb_dtsg=AQGZw9hwTn_9%3AAQGL4_7dMant&ttstamp=2658171901195710411984110955758658171765295551007797110116&__rev=2554522&__sp=1";
		connection = new HttpsPostConnection(HTTPS_URL, REQUEST_PROPERTIES, PARAMETER);
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
		map.put("accept", "*/*");
		map.put("accept-encoding", "gzip, deflate, br");
		map.put("accept-language", "zh-TW,zh;q=0.8,en-US;q=0.6,en;q=0.4");
		map.put("content-length", "794");
		map.put("content-type", "application/x-www-form-urlencoded");
		map.put("cookie",
				"locale=zh_TW; datr=pfcdV15Xl0rwPXZVzDy8vYES; sb=rHwkV8pLBoUTEvtDVxP4koGx; pl=y; lu=ggye8ImRbowHP9Cug45n9hkw; c_user=100009608566988; xs=1%3AXasoRaz2v9cM_A%3A2%3A1473411230%3A4603; fr=01MnFcuQMQ52vbOyq.AWXdBsZqJCALhuLpgSg775GumPQ.BTWSEy.GU.AAA.0.0.BX1mqW.AWV7pa6_; csm=2; s=Aa6N2X8_MdkkOguu.BX0nif");
		map.put("origin:https", "//www.facebook.com");
		map.put("referer",
				"https://www.facebook.com/v2.5/plugins/page.php?adapt_container_width=true&app_id=&channel=http%3A%2F%2Fstaticxx.facebook.com%2Fconnect%2Fxd_arbiter%2Fr%2FlUqP5iIjiw6.js%3Fversion%3D42%23cb%3Df2e3e44975630d%26domain%3Dwww.etidol.com%26origin%3Dhttp%253A%252F%252Fwww.etidol.com%252Ff1de80ce698cda4%26relation%3Dparent.parent&container_width=275&height=390&hide_cover=false&href=https%3A%2F%2Fwww.facebook.com%2Fetidol588&locale=zh_TW&sdk=joey&show_facepile=true&small_header=false&tabs=timeline&width=275");
		map.put("user-agent",
				"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36");
		return map;
	}
}
