package idv.hsiehpinghan.javadesignpatternexample.dynamicproxypattern.dbquery.javassist.methodhandler;

import java.lang.reflect.Method;

import idv.hsiehpinghan.javadesignpatternexample.dynamicproxypattern.dbquery.DatabaseQuery;
import idv.hsiehpinghan.javadesignpatternexample.dynamicproxypattern.dbquery.impl.DatabaseQueryImpl;
import javassist.util.proxy.MethodHandler;

public class JavassistDatabaseQueryMethodHandler implements MethodHandler {
	private DatabaseQuery real;

	@Override
	public Object invoke(Object arg0, Method arg1, Method arg2, Object[] arg3) throws Throwable {
		System.err.println("JavassistDatabaseQueryMethodHandler invoke");
		if (real == null) {
			real = new DatabaseQueryImpl();
		}
		return real.request();
	}

}
