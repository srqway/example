package idv.hsiehpinghan.javadesignpatternexample.builderpattern;

import org.testng.annotations.Test;

public class BuilderPatternTest {

	@Test
	public void test() {
		MealBuilder mealBuilder = new MealBuilder();
		System.out.println("<<AbstractFactoryPatternTest>>");
		Meal vegMeal = mealBuilder.prepareVegMeal();
		System.out.println("Veg Meal");
		vegMeal.showItems();
		System.out.println("Total Cost: " + vegMeal.getCost());
		System.out.println();
		Meal nonVegMeal = mealBuilder.prepareNonVegMeal();
		System.out.println("Non-Veg Meal");
		nonVegMeal.showItems();
		System.out.println("Total Cost: " + nonVegMeal.getCost());
	}
}
