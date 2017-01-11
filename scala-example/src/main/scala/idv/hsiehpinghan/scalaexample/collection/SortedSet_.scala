package idv.hsiehpinghan.scalaexample.collection

import scala.collection.immutable.SortedSet
import scala.math.Ordering

class SortedSet_ {
  def constructor() {
    println("constructor_0")
    val sortedSet_0 = SortedSet("a", "b", "c", "d", "e")
    println(sortedSet_0)
    println("constructor_1")
    val order = Ordering.fromLessThan[String]((a, b) => a > b)
    val sortedSet_1 = SortedSet.empty(order)
    println(sortedSet_1 + ("a", "b", "c", "d", "e"))
  }

  def range() {
    println("range")
    val sortedSet_0 = SortedSet("a", "b", "c", "d", "e")
    println(sortedSet_0.range("b", "d"))
  }

  def from() {
    println("from")
    val sortedSet_0 = SortedSet("a", "b", "c", "d", "e")
    println(sortedSet_0.from("c"))
  }
}

object SortedSet_Main extends App {
  val obj = new SortedSet_
  //  obj.constructor()
  //  obj.range()
  obj.from()
}