package idv.hsiehpinghan.sparkexample

import org.apache.spark.SparkConf
import org.apache.spark.SparkContext

class Rdd_ {
  def flatMap(sc: SparkContext) {
    println("<< flatMap >>")
    val rdd = sc.makeRDD(Array(Array(0, 1, 2), Array(3, 4, 5), Array(6, 7, 8)))
    println(rdd.flatMap(x => x).collect().toSeq)
  }

}

object Rdd__Main extends App {
  val conf = new SparkConf().setAppName("Rdd").setMaster("local")
  val sc = new SparkContext(conf)
  val rdd = new Rdd_
  rdd.flatMap(sc)
}