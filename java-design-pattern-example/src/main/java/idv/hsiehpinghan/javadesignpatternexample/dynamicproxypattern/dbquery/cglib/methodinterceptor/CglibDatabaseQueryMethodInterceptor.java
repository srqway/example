package idv.hsiehpinghan.javadesignpatternexample.dynamicproxypattern.dbquery.cglib.methodinterceptor;

import java.lang.reflect.Method;

import idv.hsiehpinghan.javadesignpatternexample.dynamicproxypattern.dbquery.DatabaseQuery;
import idv.hsiehpinghan.javadesignpatternexample.dynamicproxypattern.dbquery.impl.DatabaseQueryImpl;
import net.sf.cglib.proxy.MethodInterceptor;
import net.sf.cglib.proxy.MethodProxy;

public class CglibDatabaseQueryMethodInterceptor implements MethodInterceptor {
	private DatabaseQuery real;

	@Override
	public Object intercept(Object arg0, Method arg1, Object[] arg2, MethodProxy arg3) throws Throwable {
		System.err.println("CglibDatabaseQueryMethodInterceptor intercept");
		if (real == null) {
			real = new DatabaseQueryImpl();
		}
		return real.request();
	}

}
