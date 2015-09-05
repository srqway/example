package idv.hsiehpinghan.java8example.example;

import org.testng.Assert;
import org.testng.annotations.Test;

public class LambdaExpressionTest {
	private LambdaExpression lambdaExpression = new LambdaExpression();

	@Test
	public void withTypeDeclaration() {
		int actual = lambdaExpression.withTypeDeclaration(1, 2);
		Assert.assertEquals(actual, 3);
	}

	@Test
	public void withoutTypeDeclaration() {
		int actual = lambdaExpression.withoutTypeDeclaration(1, 2);
		Assert.assertEquals(actual, 3);
	}

	@Test
	public void withCurlyBraces() {
		int actual = lambdaExpression.withCurlyBraces(1, 2);
		Assert.assertEquals(actual, 3);
	}
}
