package idv.hsiehpinghan.javadesignpatternexample.proxypattern.dbquery;

import org.testng.annotations.Test;

import idv.hsiehpinghan.javadesignpatternexample.proxypattern.dbquery.proxy.DatabaseQueryProxy;

public class DatabaseQueryTest {

	@Test
	public void request() {
		DatabaseQuery databaseQuery = new DatabaseQueryProxy();
		System.err.println(databaseQuery.request());
	}
}
