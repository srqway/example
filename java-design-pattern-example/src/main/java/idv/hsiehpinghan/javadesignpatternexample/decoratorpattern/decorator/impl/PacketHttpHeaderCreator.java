package idv.hsiehpinghan.javadesignpatternexample.decoratorpattern.decorator.impl;

import idv.hsiehpinghan.javadesignpatternexample.decoratorpattern.decorator.PacketDecorator;
import idv.hsiehpinghan.javadesignpatternexample.decoratorpattern.packet.PacketCreator;

public class PacketHttpHeaderCreator extends PacketDecorator {
	public PacketHttpHeaderCreator(PacketCreator packetCreator) {
		super(packetCreator);
	}

	@Override
	public String generateContent() {
		StringBuilder sb = new StringBuilder();
		sb.append("Cache-Control:no-cache\n");
		sb.append("Date:Mon,31Dec201610:20:25GMT\n");
		sb.append(packetCreator.generateContent() + "\n");
		return sb.toString();
	}
}
