package idv.hsiehpinghan.scalaexample.example

import scala.collection.immutable.List

class Collection {
  def array_0() = {
    var arr = Array(1,2,3)
    arr.foreach { println }
  }
   
  def list_0() = {
    var list = List(1,2,3)
    list.foreach { println }
  }
  
  def list_1() = {
    var list_a = List(1,2,3)
    var list_b = List(1,2,3)
    (list_a ::: list_b).foreach { println }
  }
  
  def list_2() = {
    var list = List(2,3)
    (1 :: list).foreach { println }
  }
  
  def list_3() = {
    println(Nil)
  }
  
  def tuple_0() = {
    var t = ("str", 333)
    println("%s, %d%n".format(t._1, t._2))
  }
  
  def set_0() = {
    var set = Set("AAA", "BBB")
    set.foreach { println }
  }
  
  def map_0() = {
    var m = Map[Int, String]()
    m += (1 -> "AAA")
    m += (2 -> "BBB")
    m.foreach(x => println("%d %s".format(x._1, x._2)))
  }
  
  def map_1() = {
    var m = Map(3 -> "CCC")
    m += (1 -> "AAA")
    m += (2 -> "BBB")
    m.foreach(x => println("%d %s".format(x._1, x._2)))
  }
}

object Collection_Main extends App {
  val c = new Collection
//  c.array_0()
//  c.list_0()
//  c.list_1()
//  c.list_2()
//  c.list_3()
//  c.tuple_0()
//  c.set_0()
//  c.map_0()
  c.map_1
}