package idv.hsiehpinghan.javadesignpatternexample.proxypattern.dbquery.proxy;

import idv.hsiehpinghan.javadesignpatternexample.proxypattern.dbquery.DatabaseQuery;
import idv.hsiehpinghan.javadesignpatternexample.proxypattern.dbquery.impl.DatabaseQueryImpl;

public class DatabaseQueryProxy implements DatabaseQuery {
	private DatabaseQuery real;

	@Override
	public String request() {
		System.err.println("DatabaseQueryProxy request");
		if (real == null) {
			real = new DatabaseQueryImpl();
		}
		return real.request();
	}

}
