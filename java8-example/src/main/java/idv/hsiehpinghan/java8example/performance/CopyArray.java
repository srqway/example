package idv.hsiehpinghan.java8example.performance;

public class CopyArray {

	public void bestPerformance(int[] sourceArray, int[] destinationArray) {
		System.arraycopy(sourceArray, 0, destinationArray, 0, destinationArray.length);
	}

}
