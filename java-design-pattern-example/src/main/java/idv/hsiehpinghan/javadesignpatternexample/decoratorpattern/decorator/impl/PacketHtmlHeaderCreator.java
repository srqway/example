package idv.hsiehpinghan.javadesignpatternexample.decoratorpattern.decorator.impl;

import idv.hsiehpinghan.javadesignpatternexample.decoratorpattern.decorator.PacketDecorator;
import idv.hsiehpinghan.javadesignpatternexample.decoratorpattern.packet.PacketCreator;

public class PacketHtmlHeaderCreator extends PacketDecorator {
	public PacketHtmlHeaderCreator(PacketCreator packetCreator) {
		super(packetCreator);
	}

	@Override
	public String generateContent() {
		StringBuilder sb = new StringBuilder();
		sb.append("<html>\n");
		sb.append("<body>\n");
		sb.append(packetCreator.generateContent() + "\n");
		sb.append("</body>\n");
		sb.append("</html>\n");
		return sb.toString();
	}
}
