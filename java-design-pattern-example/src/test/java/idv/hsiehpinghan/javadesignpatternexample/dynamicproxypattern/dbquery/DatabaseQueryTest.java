package idv.hsiehpinghan.javadesignpatternexample.dynamicproxypattern.dbquery;

import java.lang.reflect.Proxy;

import org.testng.annotations.Test;

import idv.hsiehpinghan.javadesignpatternexample.dynamicproxypattern.dbquery.cglib.methodinterceptor.CglibDatabaseQueryMethodInterceptor;
import idv.hsiehpinghan.javadesignpatternexample.dynamicproxypattern.dbquery.javassist.methodhandler.JavassistDatabaseQueryMethodHandler;
import idv.hsiehpinghan.javadesignpatternexample.dynamicproxypattern.dbquery.jdk.invocationHandler.JdkDatabaseQueryInvocationHandler;
import javassist.util.proxy.ProxyFactory;
import javassist.util.proxy.ProxyObject;
import net.sf.cglib.proxy.Enhancer;

public class DatabaseQueryTest {

	@Test
	public void jdkProxyTest() {
		System.err.println("<< jdkProxyTest >>");
		DatabaseQuery databaseQuery = getJdkDatabaseQueryProxy();
		System.err.println(databaseQuery.request());
	}

	@Test
	public void cglibProxyTest() {
		System.err.println("<< cglibProxyTest >>");
		DatabaseQuery databaseQuery = getCglibDatabaseQueryProxy();
		System.err.println(databaseQuery.request());
	}

	@Test
	public void javassistProxyTest() throws InstantiationException, IllegalAccessException {
		System.err.println("<< javassistProxyTest >>");
		DatabaseQuery databaseQuery = getJavassistDatabaseQueryProxy();
		System.err.println(databaseQuery.request());
	}

	private DatabaseQuery getJdkDatabaseQueryProxy() {
		return (DatabaseQuery) Proxy.newProxyInstance(ClassLoader.getSystemClassLoader(),
				new Class[] { DatabaseQuery.class }, new JdkDatabaseQueryInvocationHandler());
	}

	private DatabaseQuery getCglibDatabaseQueryProxy() {
		Enhancer enhancer = new Enhancer();
		enhancer.setCallback(new CglibDatabaseQueryMethodInterceptor());
		enhancer.setInterfaces(new Class[] { DatabaseQuery.class });
		return (DatabaseQuery) enhancer.create();
	}

	private DatabaseQuery getJavassistDatabaseQueryProxy() throws InstantiationException, IllegalAccessException {
		ProxyFactory proxyFactory = new ProxyFactory();
		proxyFactory.setInterfaces(new Class[] { DatabaseQuery.class });
		DatabaseQuery databaseQuery = (DatabaseQuery) proxyFactory.createClass().newInstance();
		((ProxyObject) databaseQuery).setHandler(new JavassistDatabaseQueryMethodHandler());
		return databaseQuery;
	}

}
