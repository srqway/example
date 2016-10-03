package idv.hsiehpinghan.java8example.io;

import java.io.Serializable;

public class SerializeDeserializeSerializable implements Serializable {
	private static final long serialVersionUID = 1L;
	private static SerializeDeserializeSerializable instance = new SerializeDeserializeSerializable();

	public static SerializeDeserializeSerializable getInstance() {
		return instance;
	}

	private Object readResolve() {
		return instance;
	}
}
