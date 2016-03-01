package idv.hsiehpinghan.javadesignpatternexample.abstractfactorypattern;

public class MsFactory implements AbstractFactory {

	@Override
	public Product createProduct() {
		System.out.println("MsFactory::createProduct()");
		return new MsProduct();
	}

}
