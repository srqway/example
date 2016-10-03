package idv.hsiehpinghan.javadesignpatternexample.singletonpattern;

public class DoubleCheckLockingSingletonObject {
	private static DoubleCheckLockingSingletonObject instance = null;

	public static DoubleCheckLockingSingletonObject getInstance() {
		if (instance == null) {
			synchronized (DoubleCheckLockingSingletonObject.class) {
				if (instance == null) {
					instance = new DoubleCheckLockingSingletonObject();
				}
			}
		}
		return instance;
	}
}