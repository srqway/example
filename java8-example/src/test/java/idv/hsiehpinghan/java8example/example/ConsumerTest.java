package idv.hsiehpinghan.java8example.example;

import idv.hsiehpinghan.java8example.utility.GeneratorUtility;

import java.util.List;

import org.testng.annotations.Test;

public class ConsumerTest {

  @Test
  public void consumer() {
		List<Integer> list = GeneratorUtility.generateIntegerList();
		Consumer.consumer(list);
  }
  
}
