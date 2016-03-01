package idv.hsiehpinghan.javadesignpatternexample.abstractfactorypattern;

public class FactoryProducer {
	public static AbstractFactory getFactory(String choice) {
		if (choice.equalsIgnoreCase("ms")) {
			return new MsFactory();
		} else if (choice.equalsIgnoreCase("mac")) {
			return new MacFactory();
		}
		return null;
	}
}
