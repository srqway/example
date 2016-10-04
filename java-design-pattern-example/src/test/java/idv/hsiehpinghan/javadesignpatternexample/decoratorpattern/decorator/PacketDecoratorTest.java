package idv.hsiehpinghan.javadesignpatternexample.decoratorpattern.decorator;

import org.testng.annotations.Test;

import idv.hsiehpinghan.javadesignpatternexample.decoratorpattern.decorator.impl.PacketHtmlHeaderCreator;
import idv.hsiehpinghan.javadesignpatternexample.decoratorpattern.decorator.impl.PacketHttpHeaderCreator;
import idv.hsiehpinghan.javadesignpatternexample.decoratorpattern.packet.PacketCreator;
import idv.hsiehpinghan.javadesignpatternexample.decoratorpattern.packet.impl.PacketBodyCreator;

public class PacketDecoratorTest {

  @Test
  public void packetDecoratorTest() {
	  PacketCreator packetBodyCreator = new PacketBodyCreator();
	  PacketDecorator packetHtmlHeaderCreator = new PacketHtmlHeaderCreator(packetBodyCreator);
	  PacketDecorator packetHttpHeaderCreator = new PacketHttpHeaderCreator(packetHtmlHeaderCreator);
	  System.err.println(packetHttpHeaderCreator.generateContent());
  }
}
