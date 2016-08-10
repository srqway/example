package idv.hsiehpinghan.scalaexample.example

import scala.collection.immutable.List

class Covariant {
  def covariant_0() {
    val list_0: List[Any] = List(1,2,3)
    list_0.foreach(println)
    val list_1:List[Int] = List[Nothing]()
    list_1.foreach(println)
  }

}

object Covariant_Main extends App {
  val c = new Covariant
  c.covariant_0()
  
}