package idv.hsiehpinghan.scalaexample.example

import scala.collection.immutable.List

class Collection {
  def array_0() {
    var arr = Array(1,2,3)
    arr.foreach { println }
  }
   
  def list_0() {
    var list = List(1,2,3)
    list.foreach { println }
  }
  
  def list_1() {
    var list_a = List(1,2,3)
    var list_b = List(1,2,3)
    (list_a ::: list_b).foreach { println }
  }
  
  def list_2() {
    var list = List(2,3)
    (1 :: list).foreach { println }
  }
  
  def list_3() {
    println(Nil)
  }
  
  def list_4() {
    var list_a = List(1,2,3)
    var list_b = List(1,2,3)
    println(list_a == list_b)
  }
  
  def list_5() {
    val list: List[Int] = List(1,2,3)
    list.foreach(println)
  }
  
  def list_6() {
    val list = List(1,2,3)
    println("head : " + list.head)
    println("tail : " + list.tail)
    println("init : " + list.init)
    println("last : " + list.last)
  }
  
  def list_7() {
    val list = List(1,2,3)
    println("take(2) : " + list.take(2))
    println("drop(2) : " + list.drop(2))
    println("splitAt(2) : " + list.splitAt(2))    
  }
  
  def list_8() {
    val listOfList = List(List(1,2,3), List(4,5,6))
    println(listOfList.flatten)
  }
  
  def list_9() {
    val list = List("a", "b", "c")
    println(list.zipWithIndex)
  }
  
  def list_10() {
    val list = List(1,2,3)
    println(list.mkString("start ", "/", " end"))
  }
  
  def list_11() {
    val sb = new StringBuilder
    val list = List(1,2,3)
    list.addString(sb, "start ", "/", " end")
    println(sb)
  }
  
  def list_12() {
    val arr = Array(0,0,0,0,0)
    val list = List(1,2,3)
    list.copyToArray(arr, 2, 2)
    arr.foreach { println }
  }
  
  def list_13() {
    println(List.range(1, 10, 2))
  }
  
  def list_14() {
    val partition = List(1,2,3,4,5).partition { _ % 2 == 0 }
    println(partition)
  }
  
  def list_15() {
    val list = List(1,2,3)
    println(list.find( _ > 1))
  }
  
  def takeWhile() {
    val list = List(1,2,3,-4,5)
    println(list.takeWhile(_ > 0))
  }
  
  def dropWhile() {
    val list = List(1,2,3,-4,5)
    println(list.dropWhile(_ < 0))    
  }
  
  def span() {
    val list = List(1,2,3,-4,5)
    println(list.span(_ > 0))    
  }
  
  def tuple_0() {
    var t = ("str", 333)
    println("%s, %d%n".format(t._1, t._2))
  }
  
  def set_0() {
    var set = Set("AAA", "BBB")
    set.foreach { println }
  }
  
  def map_0() {
    var m = Map[Int, String]()
    m += (1 -> "AAA")
    m += (2 -> "BBB")
    m.foreach(x => println("%d %s".format(x._1, x._2)))
  }
  
  def map_1() {
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
//  c.list_4()
//  c.list_5()
//  c.list_6()
//  c.list_7()
//  c.list_8()
//  c.list_9()
//  c.list_10()
//  c.list_11()
//  c.list_12()
//  c.list_13()
//  c.list_14()
//  c.list_15()
//  c.takeWhile()
//  c.dropWhile()
  c.span()
//  c.tuple_0()
//  c.set_0()
//  c.map_0()
//  c.map_1
}