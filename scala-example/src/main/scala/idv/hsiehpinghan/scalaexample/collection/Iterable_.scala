package idv.hsiehpinghan.scalaexample.collection

import scala.Iterable

class Iterable_ {
  def abstractMethod(iterable_0: Iterable[Int]) {
    println("<<iterator>>")
    iterable_0.iterator.foreach { println }
  }

  def otherIterators(iterable_0: Iterable[Int]) {
    println("<<iterator>>")
    val iterator_0 = iterable_0.grouped(2)
    for (iterable <- iterator_0) {
      println("-----")
      iterable.foreach { println }
    }
    println("<<sliding>>")
    val iterator_1 = iterable_0.sliding(2)
    for (iterable <- iterator_1) {
      println("-----")
      iterable.foreach { println }
    }
  }

  def subcollections(iterable_0: Iterable[Int]) {
    println("<<takeRight>>")
    iterable_0.takeRight(3).foreach { println }
    println("<<dropRight>>")
    iterable_0.dropRight(3).foreach { println }
  }

  def zippers(iterable_0: Iterable[Int], iterable_1: Iterable[String]) {
    println("<<zip>>")
    iterable_0.zip(iterable_1).foreach(println)
    println("<<zipAll>>")
    iterable_0.zipAll(iterable_1, 9, "z").foreach(println)
    println("<<zipWithIndex>>")
    iterable_0.zipWithIndex.foreach(println)
  }

  def comparison(iterable_0: Iterable[Int], iterable_2: Iterable[Int]) {
    println("<<sameElements>>")
    println(iterable_0.sameElements(iterable_2))
  }

}

object Iterable_Main extends App {
  val obj = new Iterable_
  val iterable_0 = Iterable(0, 1, 2, 3, 4, 5)
  val iterable_1 = Iterable("a", "b", "c")
  val iterable_2 = Iterable(0, 1, 2, 3, 4, 5)
  //  obj.abstractMethod(iterable_0)
  //  obj.otherIterators(iterable_0)
  //  obj.subcollections(iterable_0)
  //  obj.zippers(iterable_0, iterable_1)
  obj.comparison(iterable_0, iterable_2)
}