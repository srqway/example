package idv.hsiehpinghan.java8example.net;

import java.io.DataOutputStream;
import java.io.IOException;
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

	public HttpURLConnection getConnection() {
		return connection;
	}

	public void setConnection(HttpURLConnection connection) {
		this.connection = connection;
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
			dataOutputStream.writeBytes(parameter);
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
