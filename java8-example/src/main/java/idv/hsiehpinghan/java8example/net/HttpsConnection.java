package idv.hsiehpinghan.java8example.net;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.URL;
import java.util.Arrays;

import javax.net.ssl.HttpsURLConnection;

public class HttpsConnection {
	private HttpsURLConnection connection;

	public HttpsConnection(String httpsUrl) throws IOException {
		URL url = new URL(httpsUrl);
		connection = (HttpsURLConnection) url.openConnection();
	}

	public int getResponseCode() throws IOException {
		return connection.getResponseCode();
	}

	public String getContent() throws IOException {
		final int SIZE = 1024;
		BufferedReader reader = null;
		try {
			reader = new BufferedReader(new InputStreamReader(connection.getInputStream()));
			StringBuilder sb = new StringBuilder();
			char[] cbuf = new char[SIZE];
			while (reader.read(cbuf) != -1) {
				sb.append(cbuf);
				Arrays.fill(cbuf, '\0');
			}
			return sb.toString();
		} finally {
			if (reader != null) {
				reader.close();
			}
		}
	}

}
