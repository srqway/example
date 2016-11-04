package idv.hsiehpinghan.java8example.net;

import java.io.DataOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.net.URL;
import java.util.Map;

import javax.net.ssl.HttpsURLConnection;

public class HttpsPostConnection {
	private static final String POST = "POST";
	private HttpsURLConnection connection;

	public HttpsPostConnection(String httpUrl, Map<String, String> requestProperties, String parameter)
			throws IOException {
		URL url = new URL(null, httpUrl, new sun.net.www.protocol.https.Handler());
		connection = (HttpsURLConnection) url.openConnection();
		connection.setRequestMethod(POST);
		connection.setDoOutput(true);
		addRequestProperties(requestProperties);
		addParameter(parameter);
	}

	public HttpsURLConnection getConnection() {
		return connection;
	}

	public void setConnection(HttpsURLConnection connection) {
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
