package idv.hsiehpinghan.scalaexample.java;

import idv.hsiehpinghan.scalaexample.scala.ScalaClass;

import java.util.Arrays;
import java.util.List;

public class JavaClass {
	public static void main(String[] args) {
		ScalaClass scalaClass = new ScalaClass();
		// scalaClass.javaCallScala();
		List<Integer> list = Arrays.asList(1, 2, 3);
		scalaClass.javaCallScalaList(list);
	}
}
