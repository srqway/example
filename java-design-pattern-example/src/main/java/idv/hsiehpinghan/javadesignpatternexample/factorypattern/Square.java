package idv.hsiehpinghan.javadesignpatternexample.factorypattern;

public class Square implements Shape {
	@Override
	public void draw() {
		System.out.println("Square::draw()");
	}
}