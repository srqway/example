package idv.hsiehpinghan.java8example.performance;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.ByteBuffer;
import java.nio.IntBuffer;
import java.nio.MappedByteBuffer;
import java.nio.channels.FileChannel;

public class ReadWriteFile {
	private static final int SIZE = 10;

	public static void bestPerformanceWrite(File outputFile) throws IOException {
		try (RandomAccessFile randomAccessFile = new RandomAccessFile(outputFile, "rw");
				FileChannel outputChannel = randomAccessFile.getChannel();) {
			MappedByteBuffer mappedByteBuffer = outputChannel.map(FileChannel.MapMode.READ_WRITE, 0,
					SIZE * Integer.BYTES);
			IntBuffer intBuffer = mappedByteBuffer.asIntBuffer();
			for (int i = 0; i < SIZE; ++i) {
				intBuffer.put(i);
			}
		}
	}

	public static int[] bestPerformanceRead(File inputFile) throws FileNotFoundException, IOException {
		try (FileInputStream fileInputStream = new FileInputStream(inputFile);
				FileChannel inputChannel = fileInputStream.getChannel()) {
			long size = inputChannel.size();
			int[] result = new int[(int) (size / Integer.BYTES)];
			MappedByteBuffer mappedByteBuffer = inputChannel.map(FileChannel.MapMode.READ_ONLY, 0, size);
			IntBuffer intBuffer = mappedByteBuffer.asIntBuffer();
			int i = 0;
			while (intBuffer.hasRemaining()) {
				result[i] = intBuffer.get();
				++i;
			}
			return result;
		}
	}

	public static void averagePerformanceWrite(File outputFile) throws IOException {
		try (FileOutputStream outputStream = new FileOutputStream(outputFile);
				FileChannel outputChannel = outputStream.getChannel();) {
			ByteBuffer byteBuffer = ByteBuffer.allocate(SIZE * Integer.BYTES);
			for (int i = 0; i < SIZE; ++i) {
				byteBuffer.put(convertToByteArray(i));
			}
		}
	}

	public static int[] averagePerformanceRead(File inputFile) throws FileNotFoundException, IOException {
		try (FileInputStream fileInputStream = new FileInputStream(inputFile);
				FileChannel inputChannel = fileInputStream.getChannel()) {
			int[] result = new int[SIZE];
			ByteBuffer buffer = ByteBuffer.allocate(SIZE * Integer.BYTES);
			inputChannel.read(buffer);
			buffer.flip();
			int i = 0;
			while (buffer.hasRemaining()) {
				result[i] = convertToInt(new byte[] { buffer.get(), buffer.get(), buffer.get(), buffer.get() });
				i += 4;
			}
			return result;
		}
	}

	public static void worstPerformanceWrite(File outputFile) throws IOException {
		try (FileOutputStream fileOutputStream = new FileOutputStream(outputFile);
				BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(fileOutputStream);
				DataOutputStream dataOutputStream = new DataOutputStream(bufferedOutputStream);) {
			for (int i = 0; i < SIZE; ++i) {
				dataOutputStream.writeInt(i);
			}
		}
	}

	public static int[] worstPerformanceRead(File inputFile) throws FileNotFoundException, IOException {
		try (FileInputStream fileInputStream = new FileInputStream(inputFile);
				BufferedInputStream bufferedInputStream = new BufferedInputStream(fileInputStream);
				DataInputStream dataInputStream = new DataInputStream(bufferedInputStream);) {
			int[] result = new int[SIZE];
			for (int i = 0; i < SIZE; ++i) {
				result[i] = dataInputStream.readInt();
			}
			return result;
		}
	}

	private static byte[] convertToByteArray(int i) {
		byte[] result = new byte[4];
		result[3] = (byte) (i & 0xff);
		result[2] = (byte) ((i >> 8) & 0xff);
		result[1] = (byte) ((i >> 16) & 0xff);
		result[0] = (byte) (i >> 24);
		return result;
	}

	private static int convertToInt(byte[] bytes) {
		return bytes[3] & 0xFF | (bytes[2] & 0xFF) << 8 | (bytes[1] & 0xFF) << 16 | (bytes[0] & 0xFF) << 24;
	}

}
