package idv.hsiehpinghan.javadesignpatternexample.decoratorpattern.packet.impl;

import idv.hsiehpinghan.javadesignpatternexample.decoratorpattern.packet.PacketCreator;

public class PacketBodyCreator implements PacketCreator {

	@Override
	public String generateContent() {
		return "packet content";
	}

}
