package idv.hsiehpinghan.java8example.net;

import java.io.IOException;
import java.net.URL;

import javax.net.ssl.HttpsURLConnection;

public class HttpsConnection {
	private final int FIVE_SECONDS = 5000;
	private HttpsURLConnection connection;

	public HttpsConnection(String httpsUrl) throws IOException {
		URL url = new URL(httpsUrl);
		connection = (HttpsURLConnection) url.openConnection();
		connection.setConnectTimeout(FIVE_SECONDS);
		connection.setReadTimeout(FIVE_SECONDS);
	}

	public HttpsURLConnection getConnection() {
		return connection;
	}

	public void setConnection(HttpsURLConnection connection) {
		this.connection = connection;
	}

}
