package idv.hsiehpinghan.java8example.net;

import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Map;

public class HttpPostConnection {
	private static final String POST = "POST";
	private HttpURLConnection connection;

	public HttpPostConnection(String httpUrl, Map<String, String> requestProperties, String parameter)
			throws IOException {
		URL url = new URL(httpUrl);
		connection = (HttpURLConnection) url.openConnection();
		connection.setRequestMethod(POST);
		connection.setDoOutput(true);
		addRequestProperties(requestProperties);
		addParameter(parameter);
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
			}
			return sb.toString();
		} finally {
			if (reader != null) {
				reader.close();
			}
		}
	}

	private void addRequestProperties(Map<String, String> requestProperties) {
		for (Map.Entry<String, String> ent : requestProperties.entrySet()) {
			connection.setRequestProperty(ent.getKey(), ent.getValue());
		}
	}

	private void addParameter(String parameter) throws IOException {
		OutputStream outputStream = null;
		DataOutputStream dataOutputStream = null;
		try {
			outputStream = connection.getOutputStream();
			dataOutputStream = new DataOutputStream(outputStream);
			dataOutputStream.flush();
		} finally {
			if (dataOutputStream != null) {
				dataOutputStream.close();
			}
			if (outputStream != null) {
				outputStream.close();
			}
		}
	}

}
