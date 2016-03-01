package idv.hsiehpinghan.javadesignpatternexample.abstractfactorypattern;

public class MsProduct implements Product {

	@Override
	public void setTitle(String text) {
		System.out.println("MsProduct::setTitle(" + text + ")");
	}

}
