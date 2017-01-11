package idv.hsiehpinghan.scalaexample.collection

class Seq_ {
  def indexingAndLength(seq_0: Seq[String]) {
    println("<<(i)>>")
    println(seq_0(3))
    println("<<isDefinedAt>>")
    println(seq_0.isDefinedAt(3))
    println("<<length>>")
    println(seq_0.length)
    println("<<lengthCompare>>")
    println(seq_0.lengthCompare(3))
    println("<<indices>>")
    seq_0.indices.foreach { println }
  }

  def indexSearch(seq_0: Seq[String]) {
    println("<<indexOf>>")
    println(seq_0.indexOf("c"))
    println("<<lastIndexOf>>")
    println(seq_0.lastIndexOf("c"))
    println("<<indexOfSlice>>")
    println(seq_0.indexOfSlice(Seq("c", "d")))
    println("<<lastIndexOfSlice>>")
    println(seq_0.lastIndexOfSlice(Seq("c", "d")))
    println("<<indexWhere>>")
    println(seq_0.indexWhere { x => x == "c" })
    println("<<segmentLength>>")
    println(seq_0.segmentLength(x => x == "a", 0))
    println("<<segmentLength>>")
    println(seq_0.prefixLength { x => x == "a" })
  }

  def additions(seq_0: Seq[String]) {
    println("+:")
    ("z" +: seq_0).foreach { println }
    println(":+")
    (seq_0 :+ "z").foreach { println }
    println("padTo")
    seq_0.padTo(10, "z").foreach { println }
  }

  def updates(seq_0: Seq[String]) {
    println("patch")
    seq_0.patch(1, Seq("x", "y"), 3).foreach { println }
    println("updated")
    seq_0.updated(3, "z").foreach { println }
  }

  def sorting(seq_0: Seq[String]) {
    println("sorted")
    seq_0.sorted.foreach(println)
    println("sortWith")
    seq_0.sortWith((a, b) => a.compareTo(b) > 0).foreach { println }
    println("sortBy")
    seq_0.sortBy { x => 10 - x.charAt(0).toInt }.foreach { println }
  }

  def reversals(seq_0: Seq[String]) {
    println("reverse")
    seq_0.reverse.foreach { println }
    println("reverseIterator")
    seq_0.reverseIterator.foreach { println }
    println("reverseMap")
    seq_0.reverseMap { x => x.charAt(0).toInt }.foreach { println }
  }

  def comparisons(seq_0: Seq[String], seq_1: Seq[Int]) {
    println("startsWith")
    println(seq_0.startsWith(Seq("a", "b", "c")))
    println("endsWith")
    println(seq_0.endsWith(Seq("c", "d", "e")))
    println("contains")
    println(seq_0.contains("c"))
    println("containsSlice")
    println(seq_0.containsSlice(Seq("b", "c", "d")))
    println("corresponds")
    println(seq_0.corresponds(seq_1)((s, i) => s.charAt(0).toInt == i))
  }

  def multisetOperations(seq_0: Seq[String], seq_2: Seq[String], seq_3: Seq[String]) {
    println("intersect")
    seq_0.intersect(seq_2).foreach { println }
    println("diff")
    seq_0.diff(seq_2).foreach { println }
    println("union")
    seq_0.union(seq_2).foreach { println }
    println("distinct")
    seq_3.distinct.foreach { println }
  }
}

object Seq_Main extends App {
  val obj = new Seq_
  val seq_0 = Seq("a", "b", "c", "d", "e")
  val seq_1 = Seq(97, 98, 99, 100, 101)
  val seq_2 = Seq("c", "d", "e", "f", "g")
  val seq_3 = Seq("a", "a", "b", "b", "c")
  //  obj.indexingAndLength(seq_0)
  //  obj.indexSearch(seq_0);
  //  obj.additions(seq_0)
  //  obj.updates(seq_0)
  //  obj.sorting(seq_0)
  //  obj.reversals(seq_0)
  //  obj.comparisons(seq_0, seq_1)
  obj.multisetOperations(seq_0, seq_2, seq_3)
}