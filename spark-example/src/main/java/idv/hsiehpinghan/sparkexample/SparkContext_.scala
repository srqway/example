package idv.hsiehpinghan.sparkexample


import org.apache.spark.SparkConf
import org.apache.spark.SparkContext
import org.apache.spark.graphx.GraphLoader

class SparkContext_ {
}

object SparkContext_Main extends App {
  val conf = new SparkConf().setAppName("SparkContext_")
    .setMaster("local")
  val sc = new SparkContext(conf)

  //  println("<<wholeTextFiles>>")
  //  sc.wholeTextFiles(path = "/home/thank/git/scala/graphx-scala/src/test/resources/data/egonets").take(3).foreach(println)
  //
  //  println("<<broadcast>>")
  //  broadcast()
  //
  //  println("<<accumulator>>")
  //  accumulator()

  def broadcast() {
    val map = sc.makeRDD(Array((1L, "a"), (2L, "b"),
      (3L, "c"))).collectAsMap()
    val broadcastMap = sc.broadcast(map)
    for (i <- 1L to 3L) {
      println(broadcastMap.value(i))
    }
  }

  def accumulator() {
    val accumulator = sc.accumulator(0)
    for (i <- 0 until 3) {
      accumulator += i
    }
    println("accumulator : %d".format(accumulator.value))
  }

}