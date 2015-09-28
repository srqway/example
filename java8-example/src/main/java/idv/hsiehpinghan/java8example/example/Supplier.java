package idv.hsiehpinghan.java8example.example;

public class Supplier {

	public static Supplier constructorSupplier() {
		java.util.function.Supplier<Supplier> supplier = Supplier::new;
		return supplier.get();
	}

	public static Supplier staticMethodSupplier() {
		java.util.function.Supplier<Supplier> supplier = Supplier::generateSupplier;
		return supplier.get();
	}

	public static Supplier instanceMethodSupplier() {
		Supplier obj = new Supplier();
		java.util.function.Supplier<Supplier> supplier = obj::getSupplier;
		return supplier.get();
	}

	public static Supplier generateSupplier() {
		return new Supplier();
	}

	public Supplier getSupplier() {
		return new Supplier();
	}

}
