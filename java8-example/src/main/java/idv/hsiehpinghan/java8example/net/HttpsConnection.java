package idv.hsiehpinghan.java8example.net;

import java.io.IOException;
import java.net.URL;

import javax.net.ssl.HttpsURLConnection;

public class HttpsConnection {
	private HttpsURLConnection connection;

	public HttpsConnection(String httpsUrl) throws IOException {
		URL url = new URL(httpsUrl);
		connection = (HttpsURLConnection) url.openConnection();
	}

	public HttpsURLConnection getConnection() {
		return connection;
	}

	public void setConnection(HttpsURLConnection connection) {
		this.connection = connection;
	}

}
