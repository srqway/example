package idv.hsiehpinghan.javadesignpatternexample.singletonpattern;

public class SingletonObject {
	private static SingletonObject instance = new SingletonObject();

	public static SingletonObject getInstance() {
		return instance;
	}

	public void showMessage() {
		System.out.println("SingletonObject::showMessage test !!!");
	}
}
