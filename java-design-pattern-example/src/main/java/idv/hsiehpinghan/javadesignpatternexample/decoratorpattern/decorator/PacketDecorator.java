package idv.hsiehpinghan.javadesignpatternexample.decoratorpattern.decorator;

import idv.hsiehpinghan.javadesignpatternexample.decoratorpattern.packet.PacketCreator;

public abstract class PacketDecorator implements PacketCreator {
	protected PacketCreator packetCreator;

	public PacketDecorator(PacketCreator packetCreator) {
		this.packetCreator = packetCreator;
	}
}
