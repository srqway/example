package idv.hsiehpinghan.scalaexample.collection

import scala.Traversable
import scala.annotation.tailrec
import scala.collection.mutable.ArrayBuffer

class Traversable_ {
  def abstractMethod(traversable_0: Traversable[Int]) {
    println("<<foreach>>")
    traversable_0.foreach { println }
  }

  def addition(traversable_0: Traversable[Int], traversable_1: Traversable[Int]) {
    println("<<++>>")
    (traversable_0 ++ traversable_1).foreach { println }
  }

  def maps(traversable_0: Traversable[Int], traversable_2: Traversable[Traversable[Int]], traversable_3: Traversable[Any]) {
    println("<<map>>")
    traversable_0.map { x => x + 1 } foreach { println }
    println("<<flatMap >>")
    traversable_2.flatMap { x => x.map { y => y } } foreach { println }
    println("<<collect>>")
    traversable_3.collect({
      case i: Int => i + 1
      case _ =>
    }).foreach { println }
  }

  def conversions(traversable_0: Traversable[Int], traversable_4: Traversable[(Int, String)]) {
    println("<<toArray>>")
    traversable_0.toArray.foreach { println }
    println("<<toList>>")
    traversable_0.toList.foreach { println }
    println("<<toIterable>>")
    traversable_0.toIterable.foreach { println }
    println("<<toSeq>>")
    traversable_0.toSeq.foreach { println }
    println("<<toIndexedSeq>>")
    traversable_0.toIndexedSeq.foreach { println }
    println("<<toStream>>")
    traversable_0.toStream.foreach { println }
    println("<<toSet>>")
    traversable_0.toSet.foreach { println }
    println("<<toMap>>")
    traversable_4.toMap.foreach { println }
  }

  def copying(traversable_0: Traversable[Int]) {
    println("<<foreach>>")
    val buffer = ArrayBuffer[Int]()
    traversable_0.copyToBuffer(buffer)
    buffer.foreach { println }
    println("<<copyToArray>>")
    val array = new Array[Int](traversable_0.size)
    traversable_0.copyToArray(array)
    array.foreach { println }
  }

  def sizeInfo(traversable_0: Traversable[Int]) {
    println("<<isEmpty>>")
    println(traversable_0.isEmpty)
    println("<<nonEmpty>>")
    println(traversable_0.nonEmpty)
    println("<<size>>")
    println(traversable_0.size)
    println("<<hasDefiniteSize>>")
    println(traversable_0.hasDefiniteSize)
  }

  def elementRetrieval(traversable_0: Traversable[Int]) {
    println("<<head>>")
    println(traversable_0.head)
    println("<<headOption>>")
    println(traversable_0.headOption)
    println("<<last>>")
    println(traversable_0.last)
    println("<<lastOption>>")
    println(traversable_0.lastOption)
    println("<<find>>")
    println(traversable_0.find { x => x == 1 })
  }

  def subcollections(traversable_0: Traversable[Int]) {
    println("<<tail>>")
    traversable_0.tail.foreach { println }
    println("<<init>>")
    traversable_0.init.foreach { println }
    println("<<slice>>")
    traversable_0.slice(1, 2).foreach { println }
    println("<<take>>")
    traversable_0.take(2).foreach { println }
    println("<<drop>>")
    traversable_0.drop(1).foreach { println }
    println("<<takeWhile>>")
    traversable_0.takeWhile { x => x % 2 == 0 }.foreach { println }
    println("<<dropWhile>>")
    traversable_0.dropWhile { x => x % 2 == 0 }.foreach { println }
    println("<<filter>>")
    traversable_0.filter { x => x % 2 == 0 }.foreach { println }
    println("<<withFilter>>")
    traversable_0.withFilter { x => x % 2 == 0 }.foreach { println }
    println("<<filterNot>>")
    traversable_0.filterNot { x => x % 2 == 0 }.foreach { println }
  }

  def subdivisions(traversable_0: Traversable[Int]) {
    println("<<splitAt>>")
    val (x_0, y_0) = traversable_0.splitAt(1)
    x_0.foreach { x => println("x_0 : %d".format(x)) }
    y_0.foreach { x => println("y_0 : %d".format(x)) }
    println("<<span>>")
    val (x_1, y_1) = traversable_0.span { x => x % 2 == 0 }
    x_1.foreach { x => println("x_1 : %d".format(x)) }
    y_1.foreach { x => println("y_1 : %d".format(x)) }
    println("<<partition>>")
    val (x_2, y_2) = traversable_0.partition { x => x % 2 == 0 }
    x_2.foreach { x => println("x_2 : %d".format(x)) }
    y_2.foreach { x => println("y_2 : %d".format(x)) }
    println("<<groupBy>>")
    traversable_0.groupBy { x => x % 2 == 0 }.foreach(println)
  }

  def elementConditions(traversable_0: Traversable[Int]) {
    println("<<forall>>")
    println(traversable_0.forall { x => x < 10 })
    println("<<exists>>")
    println(traversable_0.exists { x => x == 1 })
    println("<<count>>")
    println(traversable_0.count { x => x % 2 == 0 })
  }

  def folds(traversable_0: Traversable[Int]) {
    println("<</:>>")
    println((10 /: traversable_0)((foldValue, value) => foldValue + value))
    println("<<:\\>>")
    println((traversable_0 :\ 10)((foldValue, value) => foldValue + value))
    println("<<foldLeft>>")
    println(traversable_0.foldLeft(10)((foldValue, value) => foldValue + value))
    println("<<foldRight>>")
    println(traversable_0.foldRight(10)((foldValue, value) => foldValue + value))
    println("<<reduceLeft>>")
    println(traversable_0.reduceLeft((foldValue, value) => foldValue + value))
    println("<<reduceRight>>")
    println(traversable_0.reduceRight((foldValue, value) => foldValue + value))
  }

  def specificFolds(traversable_0: Traversable[Int]) {
    println("<<sum>>")
    println(traversable_0.sum)
    println("<<product>>")
    println(traversable_0.product)
    println("<<min>>")
    println(traversable_0.min)
    println("<<max>>")
    println(traversable_0.max)
  }

  def strings(traversable_0: Traversable[Int]) {
    println("<<addString>>")
    val stringBuilder = new StringBuilder()
    println(traversable_0.addString(stringBuilder, "start", "sep", "end"))
    println("<<mkString>>")
    println(traversable_0.mkString("start", "sep", "end"))
  }

  def views(traversable_0: Traversable[Int]) {
    println("<<view>>")
    traversable_0.view(1, 2).foreach { println }
  }
}

object Collection_Main extends App {
  val obj = new Traversable_
  val traversable_0 = Traversable(0, 1, 2)
  val traversable_1 = Traversable(3, 4, 5)
  val traversable_2 = Traversable(Traversable(0, 1, 2), Traversable(3, 4, 5))
  val traversable_3 = Traversable(0, 1, "a", "b")
  val traversable_4 = Traversable((0, "a"), (1, "b"), (2, "c"))
  //  obj.abstractMethod(traversable_0)
  //  obj.addition(traversable_0, traversable_1)
  //  obj.maps(traversable_0, traversable_2, traversable_3)
  //  obj.conversions(traversable_0, traversable_4)
  //  obj.copying(traversable_0)
  //  obj.sizeInfo(traversable_0)
  //  obj.elementRetrieval(traversable_0)
  //  obj.subcollections(traversable_0)
  //  obj.subdivisions(traversable_0)
  //  obj.elementConditions(traversable_0)
  //  obj.folds(traversable_0)
  //  obj.specificFolds(traversable_0)
  //  obj.strings(traversable_0)
  obj.views(traversable_0)
}