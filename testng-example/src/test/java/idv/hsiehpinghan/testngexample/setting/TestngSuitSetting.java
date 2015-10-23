package idv.hsiehpinghan.testngexample.setting;

import org.testng.annotations.AfterSuite;
import org.testng.annotations.BeforeSuite;

public class TestngSuitSetting {

	@BeforeSuite
	public void beforeSuite() {
		System.out.println("@BeforeSuite");
	}

	@AfterSuite
	public void afterSuite() {
		System.out.println("@AfterSuite");
	}

}
