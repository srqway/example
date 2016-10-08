package idv.hsiehpinghan.java8example.performance;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;

import org.testng.Assert;
import org.testng.annotations.BeforeClass;
import org.testng.annotations.Test;

public class ReadWriteFileTest {
	private File bestPerformanceFile;

	@BeforeClass
	public void beforeClass() throws IOException {
		bestPerformanceFile = new File("/tmp/ReadWriteFileTest_bestPerformanceFile");
		if (bestPerformanceFile.exists() == false) {
			bestPerformanceFile.createNewFile();
		} else {
			bestPerformanceFile.delete();
		}
	}

	@Test
	public void bestPerformanceWrite() throws IOException {
		ReadWriteFile.bestPerformanceWrite(bestPerformanceFile);
	}

	@Test(dependsOnMethods = { "bestPerformanceWrite" })
	public void bestPerformanceRead() throws FileNotFoundException, IOException {
		int[] ints = ReadWriteFile.bestPerformanceRead(bestPerformanceFile);
		for (int i = 0, size = ints.length; i < size; ++i) {
			Assert.assertEquals(ints[i], i);
		}
	}
}
