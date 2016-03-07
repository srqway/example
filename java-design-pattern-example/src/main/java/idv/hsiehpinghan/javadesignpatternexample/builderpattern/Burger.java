package idv.hsiehpinghan.javadesignpatternexample.builderpattern;

public abstract class Burger implements Item {

	@Override
	public Packing packing() {
		return new Wrapper();
	}

}
