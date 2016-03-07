package idv.hsiehpinghan.javadesignpatternexample.singletonpattern;

import org.testng.annotations.Test;

public class SingletonObjectTest {

	@Test
	public void test() {
		System.out.println("<<SingletonObjectTest>>");
		SingletonObject.getInstance().showMessage();
	}
}
