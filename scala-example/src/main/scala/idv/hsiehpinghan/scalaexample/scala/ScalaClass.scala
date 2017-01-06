package idv.hsiehpinghan.scalaexample.scala

import scala.collection.JavaConversions.asScalaBuffer

class ScalaClass {
  def javaCallScala() {
    println("javaCallScala")
  }

  def javaCallScalaList(list: java.util.List[Integer]) {
    println("javaCallScalaList")
    for (i <- list) {
      println(i)
    }
  }
}