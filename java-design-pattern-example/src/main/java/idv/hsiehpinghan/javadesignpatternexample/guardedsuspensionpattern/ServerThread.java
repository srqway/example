package idv.hsiehpinghan.javadesignpatternexample.guardedsuspensionpattern;

public class ServerThread extends Thread {
	private final long SLEEP_SECONDS = 1;
	private String name;
	private RequestQueue requestQueue;

	public ServerThread(String name, RequestQueue requestQueue) {
		this.name = name;
		this.requestQueue = requestQueue;
	}

	@Override
	public void run() {
		while (true) {
			Request request = requestQueue.getRequest();
			try {
				System.err.println("server(" + name + ") process request(" + request.getName() + ").");
				Thread.sleep(SLEEP_SECONDS * 1000);
			} catch (InterruptedException e) {
				throw new RuntimeException(e);
			}
		}
	}
}
