package idv.hsiehpinghan.javadesignpatternexample.prototypepattern;

import org.testng.annotations.Test;

public class PrototypePatternTest {

	@Test
	public void test() {
		System.out.println("<<PrototypePatternTest>>");
		Shape clonedShape1 = (Shape) ShapeCache.getShape("1");
		clonedShape1.draw();

		Shape clonedShape2 = (Shape) ShapeCache.getShape("2");
		clonedShape2.draw();

		Shape clonedShape3 = (Shape) ShapeCache.getShape("3");
		clonedShape3.draw();
	}
}
