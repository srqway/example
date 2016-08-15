package idv.hsiehpinghan.scalaexample.example

import scala.collection.immutable.List

class Collection {
  def array_0() {
    var arr = Array(1, 2, 3)
    arr.foreach { println }
  }

  def array_1() {
    var arr = new Array[String](3)
    arr(0) = "aaa"
    arr(1) = "bbb"
    arr(2) = "ccc"
    arr.foreach { println }
  }

  def list_0() {
    var list = List(1, 2, 3)
    list.foreach { println }
  }

  def list_1() {
    val list: List[Int] = List(1, 2, 3)
    list.foreach(println)
  }

  def listAppendList_0() {
    var list_a = List(1, 2, 3)
    var list_b = List(1, 2, 3)
    (list_a ::: list_b).foreach { println }
  }

  def elementAppendList_0() {
    var list = List(2, 3)
    (1 :: list).foreach { println }
  }

  def nil_0() {
    println(Nil)
  }

  def listCompare_0() {
    var list_a = List(1, 2, 3)
    var list_b = List(1, 2, 3)
    println(list_a == list_b)
  }

  def listHeadTailInitLast_0() {
    val list = List(1, 2, 3)
    println("head : " + list.head)
    println("tail : " + list.tail)
    println("init : " + list.init)
    println("last : " + list.last)
  }

  def listTakeDropSplitAt_0() {
    val list = List(1, 2, 3)
    println("take(2) : " + list.take(2))
    println("drop(2) : " + list.drop(2))
    println("splitAt(2) : " + list.splitAt(2))
  }

  def listFlatten_0() {
    val listOfList = List(List(1, 2, 3), List(4, 5, 6))
    println(listOfList.flatten)
  }

  def zipWithIndex_0() {
    val list = List("a", "b", "c")
    println(list.zipWithIndex)
  }

  def listMkString_0() {
    val list = List(1, 2, 3)
    println(list.mkString("start ", "/", " end"))
  }

  def listAddString_0() {
    val sb = new StringBuilder
    val list = List(1, 2, 3)
    list.addString(sb, "start ", "/", " end")
    println(sb)
  }

  def listCopyToArray_0() {
    val arr = Array(0, 0, 0, 0, 0)
    val list = List(1, 2, 3)
    list.copyToArray(arr, 2, 2)
    arr.foreach { println }
  }

  def listRange_0() {
    println(List.range(1, 10, 2))
  }

  def listPartition_0() {
    val partition = List(1, 2, 3, 4, 5).partition { _ % 2 == 0 }
    println(partition)
  }

  def listFind_0() {
    val list = List(1, 2, 3)
    println(list.find(_ > 1))
  }

  def listPatterns_0() {
    val list = List(1, 2, 3)
    val List(x, y, z) = list
    println(x, y, z)
  }

  def filter_0() {
    var l = List(1, 2, 3, 4, 5)
    l.filter { _ % 2 == 0 }.foreach { println }
  }

  def takeWhile_0() {
    val list = List(1, 2, 3, -4, 5)
    println(list.takeWhile(_ > 0))
  }

  def dropWhile_0() {
    val list = List(1, 2, 3, -4, 5)
    println(list.dropWhile(_ < 0))
  }

  def span_0() {
    val list = List(1, 2, 3, -4, 5)
    println(list.span(_ > 0))
  }

  def forall_0() {
    val list = List(1, 2, 3, 4, 5)
    println(list.forall(_ > 0))
  }

  def exists_0() {
    val list = List(1, 2, 3, 4, 5)
    println(list.exists(_ > 3))
  }

  def sortWith_0() {
    val list = List(1, -2, 3, -4, 5)
    println(list.sortWith(_ < _))
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
  //  c.array_1()
  //  c.list_0()
  //  c.list_1()
  //  c.listAppendList_0()
  //  c.elementAppendList_0()
  //  c.nil_0()
  //  c.listCompare_0()
  //  c.listHeadTailInitLast_0()
  //  c.listTakeDropSplitAt_0()
  //  c.listFlatten_0()
  //  c.zipWithIndex_0()
  //  c.listMkString_0()
  //  c.listAddString_0()
  //  c.listCopyToArray_0()
  //  c.listRange_0()
  //  c.listPartition_0()
  //  c.listFind_0()
  //  c.listPatterns_0()
  //  c.filter_0()
  //  c.takeWhile_0()
  //  c.dropWhile_0()
  //  c.span_0()
  //  c.forall_0()
  //  c.exists_0()
  c.sortWith_0()
  //  c.tuple_0()
  //  c.set_0()
  //  c.map_0()
  //  c.map_1()
}