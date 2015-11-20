package idv.hsiehpinghan.java8example.feature;

import java.util.List;
import java.util.Optional;

public class OptionalClass {
	public Integer sum(List<Integer> list) {
		Integer sum = 0;
		for (Integer i : list) {
			Optional<Integer> opt = Optional.ofNullable(i);
			Integer val = opt.orElse(0);
			sum += val;
		}
		return sum;
	}

	public static String flatMap(Optional<FlatMap_1> flatMap_1) {
		return flatMap_1.flatMap(FlatMap_1::getFlatMap_2)
				.flatMap(FlatMap_1.FlatMap_2::getFlatMap_3)
				.flatMap(FlatMap_1.FlatMap_2.FlatMap_3::getName).get();
	}

	public static String map(Map_1 map_1) {
		return Optional.ofNullable(map_1).map(Map_1::getMap_2)
				.map(Map_1.Map_2::getMap_3).map(Map_1.Map_2.Map_3::getName)
				.get();
	}

	public static class FlatMap_1 {
		private Optional<FlatMap_2> flatMap_2;

		public Optional<FlatMap_2> getFlatMap_2() {
			return flatMap_2;
		}

		public void setFlatMap_2(Optional<FlatMap_2> flatMap_2) {
			this.flatMap_2 = flatMap_2;
		}

		public static class FlatMap_2 {
			private Optional<FlatMap_3> flatMap_3;

			public Optional<FlatMap_3> getFlatMap_3() {
				return flatMap_3;
			}

			public void setFlatMap_3(Optional<FlatMap_3> flatMap_3) {
				this.flatMap_3 = flatMap_3;
			}

			public static class FlatMap_3 {
				private Optional<String> name;

				public Optional<String> getName() {
					return name;
				}

				public void setName(Optional<String> name) {
					this.name = name;
				}

			}
		}
	}

	public static class Map_1 {
		private Map_2 map_2;

		public Map_2 getMap_2() {
			return map_2;
		}

		public void setMap_2(Map_2 map_2) {
			this.map_2 = map_2;
		}

		public static class Map_2 {
			private Map_3 map_3;

			public Map_3 getMap_3() {
				return map_3;
			}

			public void setMap_3(Map_3 map_3) {
				this.map_3 = map_3;
			}

			public static class Map_3 {
				private String name;

				public String getName() {
					return name;
				}

				public void setName(String name) {
					this.name = name;
				}

			}
		}
	}
}
