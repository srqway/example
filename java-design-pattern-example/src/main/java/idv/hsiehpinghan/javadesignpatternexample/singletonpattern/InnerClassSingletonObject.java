package idv.hsiehpinghan.javadesignpatternexample.singletonpattern;

public class InnerClassSingletonObject {

	public static InnerClassSingletonObject getInstance() {
		return InnerClass.instance;
	}

	private static class InnerClass {
		private static InnerClassSingletonObject instance = new InnerClassSingletonObject();
	}

}
