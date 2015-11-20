package idv.hsiehpinghan.java8example.feature;

import idv.hsiehpinghan.java8example.feature.Supplier;

import org.testng.Assert;
import org.testng.annotations.Test;

public class SupplierTest {

	@Test
	public void constructorSupplier() {
		Assert.assertNotNull(Supplier.constructorSupplier());
	}

	@Test
	public void instanceMethodSupplier() {
		Assert.assertNotNull(Supplier.instanceMethodSupplier());
	}

	@Test
	public void staticMethodSupplier() {
		Assert.assertNotNull(Supplier.staticMethodSupplier());
	}
}
