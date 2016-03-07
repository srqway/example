package idv.hsiehpinghan.javadesignpatternexample.prototypepattern;

import java.util.Hashtable;

public class ShapeCache {
	private static Hashtable<String, Shape> shapeMap;
	static {
		shapeMap = new Hashtable<String, Shape>();
		Circle circle = new Circle();
		circle.setId("1");
		shapeMap.put(circle.getId(), circle);

		Square square = new Square();
		square.setId("2");
		shapeMap.put(square.getId(), square);

		Rectangle rectangle = new Rectangle();
		rectangle.setId("3");
		shapeMap.put(rectangle.getId(), rectangle);
	}

	public static Shape getShape(String shapeId) {
		Shape cachedShape = shapeMap.get(shapeId);
		return (Shape) cachedShape.clone();
	}

}
