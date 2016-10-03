package idv.hsiehpinghan.javadesignpatternexample.dynamicproxypattern.dbquery.impl;

import idv.hsiehpinghan.javadesignpatternexample.dynamicproxypattern.dbquery.DatabaseQuery;

public class DatabaseQueryImpl implements DatabaseQuery {

	public DatabaseQueryImpl() {
		System.err.println("database connecting...");
	}

	@Override
	public String request() {
		return "request result";
	}

}
