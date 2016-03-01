package idv.hsiehpinghan.javadesignpatternexample.factorypattern;

import org.testng.annotations.Test;

public class FactoryPatternTest {

	@Test
	public void test() {
		System.out.println("<<FactoryPatternTest>>");
		ShapeFactory shapeFactory = new ShapeFactory();
		Shape shape1 = shapeFactory.getShape("CIRCLE");
		shape1.draw();
		Shape shape2 = shapeFactory.getShape("RECTANGLE");
		shape2.draw();
		Shape shape3 = shapeFactory.getShape("SQUARE");
		shape3.draw();
	}
}
