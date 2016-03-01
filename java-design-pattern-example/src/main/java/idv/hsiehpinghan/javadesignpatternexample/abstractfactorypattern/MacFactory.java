package idv.hsiehpinghan.javadesignpatternexample.abstractfactorypattern;

public class MacFactory implements AbstractFactory {

	@Override
	public Product createProduct() {
		System.out.println("MacFactory::createProduct()");
		return new MacProduct();
	}

}
