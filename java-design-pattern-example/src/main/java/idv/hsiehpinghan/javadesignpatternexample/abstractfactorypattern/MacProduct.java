package idv.hsiehpinghan.javadesignpatternexample.abstractfactorypattern;

public class MacProduct implements Product {

	@Override
	public void setTitle(String text) {
		System.out.println("MacProduct::setTitle(" + text + ")");
	}

}
