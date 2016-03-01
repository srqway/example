package idv.hsiehpinghan.javadesignpatternexample.abstractfactorypattern;

import org.testng.annotations.Test;

public class AbstractFactoryPatternTest {

	@Test
	public void test() {
		System.out.println("<<AbstractFactoryPatternTest>>");
		AbstractFactory ms = FactoryProducer.getFactory("ms");
		Product msProduct = ms.createProduct();
		msProduct.setTitle("ms");

		AbstractFactory mac = FactoryProducer.getFactory("mac");
		Product macProduct = mac.createProduct();
		macProduct.setTitle("mac");
	}
}
