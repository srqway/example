package idv.hsiehpinghan.scalaexample.collection

import scala.collection.mutable.Buffer

class Buffer_ {
  def additions() {
    println("+=_0")
    (Buffer("a", "b", "c") += "z").foreach { println }
    println("+=_1")
    (Buffer("a", "b", "c") += ("x", "y", "z")).foreach { println }
    println("++=")
    (Buffer("a", "b", "c") ++= Seq("x", "y", "z")).foreach { println }
    println("+=:")
    ("z" +=: Buffer("a", "b", "c")).foreach { println }
    println("++=:")
    (Seq("x", "y", "z") ++=: Buffer("a", "b", "c")).foreach { println }
    println("insert")
    val buffer_0 = Buffer("a", "b", "c")
    buffer_0.insert(1, "z")
    buffer_0.foreach { println }
    println("insert")
    val buffer_1 = Buffer("a", "b", "c")
    buffer_1.insertAll(1, Seq("x", "y"))
    buffer_1.foreach { println }
  }

  def removals() {
    println("-=")
    val buffer_0 = Buffer("a", "b", "c")
    buffer_0 -= "b"
    buffer_0.foreach { println }
    println("remove_0")
    val buffer_1 = Buffer("a", "b", "c")
    buffer_1.remove(1)
    buffer_1.foreach { println }
    println("remove_1")
    val buffer_2 = Buffer("a", "b", "c")
    buffer_2.remove(1, 2)
    buffer_2.foreach { println }
    println("trimStart")
    val buffer_3 = Buffer("a", "b", "c")
    buffer_3.trimStart(2)
    buffer_3.foreach { println }
    println("trimEnd")
    val buffer_4 = Buffer("a", "b", "c")
    buffer_4.trimEnd(2)
    buffer_4.foreach { println }
    println("clear")
    val buffer_5 = Buffer("a", "b", "c")
    buffer_5.clear()
    buffer_5.foreach { println }
  }

  def cloning() {
    println("clone")
    val buffer_0 = Buffer("a", "b", "c")
    buffer_0.clone().foreach { println }
  }
}

object Buffer_Main extends App {
  val obj = new Buffer_
  val beffer_0 = Buffer("a", "b", "c")
  //  obj.additions()
  //  obj.removals()
  obj.cloning()
}