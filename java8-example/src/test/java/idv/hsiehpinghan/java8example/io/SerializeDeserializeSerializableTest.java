package idv.hsiehpinghan.java8example.io;

import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;

import org.testng.Assert;
import org.testng.annotations.Test;

public class SerializeDeserializeSerializableTest {
	private final String FILE_PATH = "/tmp/SerializeDeserializeSerializableTest.ser";

	@Test
	public void serializeDeserialize() throws IOException, ClassNotFoundException {
		SerializeDeserializeSerializable instance = SerializeDeserializeSerializable.getInstance();
		serialize(instance);
		SerializeDeserializeSerializable returnInstance = deserialize();
		Assert.assertEquals(instance, returnInstance);
	}

	private void serialize(SerializeDeserializeSerializable instance) throws IOException {
		try (FileOutputStream fileOutputStream = new FileOutputStream(FILE_PATH);
				ObjectOutputStream objectOutputStream = new ObjectOutputStream(fileOutputStream)) {
			objectOutputStream.writeObject(instance);
		}
	}

	private SerializeDeserializeSerializable deserialize() throws IOException, ClassNotFoundException {
		try (FileInputStream fileInputStream = new FileInputStream(FILE_PATH);
				ObjectInputStream objectInputStream = new ObjectInputStream(fileInputStream);) {
			return (SerializeDeserializeSerializable) objectInputStream.readObject();
		}
	}

}
