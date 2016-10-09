package idv.hsiehpinghan.javadesignpatternexample.guardedsuspensionpattern;

public class ClientThread extends Thread {
	private String name;
	private RequestQueue requestQueue;

	public ClientThread(String name, RequestQueue requestQueue) {
		this.name = name;
		this.requestQueue = requestQueue;
	}

	@Override
	public void run() {
		Request request = new Request(name);
		requestQueue.addRequest(request);
	}
}
