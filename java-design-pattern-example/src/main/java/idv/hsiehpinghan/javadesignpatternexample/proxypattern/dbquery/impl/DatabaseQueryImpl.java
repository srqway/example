package idv.hsiehpinghan.javadesignpatternexample.proxypattern.dbquery.impl;

import idv.hsiehpinghan.javadesignpatternexample.proxypattern.dbquery.DatabaseQuery;

public class DatabaseQueryImpl implements DatabaseQuery {

	public DatabaseQueryImpl() {
		System.err.println("database connecting...");
	}

	@Override
	public String request() {
		System.err.println("DatabaseQueryImpl request");
		return "request result";
	}

}
