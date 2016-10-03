package idv.hsiehpinghan.javadesignpatternexample.dynamicproxypattern.dbquery.jdk.invocationHandler;

import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;

import idv.hsiehpinghan.javadesignpatternexample.dynamicproxypattern.dbquery.DatabaseQuery;
import idv.hsiehpinghan.javadesignpatternexample.dynamicproxypattern.dbquery.impl.DatabaseQueryImpl;

public class JdkDatabaseQueryInvocationHandler implements InvocationHandler {
	private DatabaseQuery real;

	@Override
	public Object invoke(Object proxy, Method method, Object[] args) throws Throwable {
		System.err.println("JdkDatabaseQueryInvocationHandler invoke");
		if (real == null) {
			real = new DatabaseQueryImpl();
		}
		return real.request();
	}

}
