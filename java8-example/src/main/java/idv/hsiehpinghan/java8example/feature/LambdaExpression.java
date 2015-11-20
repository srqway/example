package idv.hsiehpinghan.java8example.feature;

public class LambdaExpression {
	public int withTypeDeclaration(int value_0, int value_1) {
		Add add = (int a, int b) -> a + b;
		return add.calculate(value_0, value_1);
	}

	public int withoutTypeDeclaration(int value_0, int value_1) {
		Add add = (a, b) -> a + b;
		return add.calculate(value_0, value_1);
	}

	public int withCurlyBraces(int value_0, int value_1) {
		Add add = (a, b) -> {
			return a + b;
		};
		return add.calculate(value_0, value_1);
	}

	private static interface Add {
		int calculate(int a, int b);
	}
}
