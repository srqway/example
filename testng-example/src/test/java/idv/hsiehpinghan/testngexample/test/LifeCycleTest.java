package idv.hsiehpinghan.testngexample.test;

import org.testng.annotations.AfterClass;
import org.testng.annotations.AfterGroups;
import org.testng.annotations.AfterMethod;
import org.testng.annotations.BeforeClass;
import org.testng.annotations.BeforeGroups;
import org.testng.annotations.BeforeMethod;
import org.testng.annotations.Test;

public class LifeCycleTest {

	@BeforeClass
	public void beforeClass() {
		System.out.println("@BeforeClass");
	}

	@AfterClass
	public void afterClass() {
		System.out.println("@AfterClass");
	}

	@BeforeGroups("group_0")
	public void beforeGroups() {
		System.out.println("@BeforeGroups group_0");
	}

	@AfterGroups("group_0")
	public void afterGroups() {
		System.out.println("@AfterGroups group_0");
	}

	@BeforeMethod
	public void beforeMethod() {
		System.out.println("@BeforeMethod");
	}

	@AfterMethod
	public void afterMethod() {
		System.out.println("@AfterMethod");
	}

	@Test(dependsOnGroups = { "group_0" })
	public void dependsOnGroups() {
		System.out.println("@Test dependsOnGroups(group_0)");
	}

	@Test
	public void test() {
		System.out.println("@Test test");
	}

	@Test(dependsOnMethods = { "test" })
	public void dependsOnMethods() {
		System.out.println("@Test dependsOnMethods(test)");
	}
}
