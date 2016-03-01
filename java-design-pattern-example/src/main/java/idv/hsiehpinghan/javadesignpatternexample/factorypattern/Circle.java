package idv.hsiehpinghan.javadesignpatternexample.factorypattern;

public class Circle implements Shape {
	@Override
	public void draw() {
		System.out.println("Circle::draw()");
	}
}
