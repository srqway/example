package idv.hsiehpinghan.scalaexample.example

import scala.collection.immutable.List

class Basic {
  def basic_0() = {
    var l = List(1,2,3)
    l.foreach { println }
  }
    
  def basic_1() = {
    var l = List(1,2,3)
    l.foreach { x => println(x) }
  }

  def basic_2() = {
    var l = List(1,2,3)
    l.foreach { (x : Int) => println(x) }
  }
  
  def basic_3() = {
    var arr = new Array[String](3)
    arr(0) = "aaa"
    arr(1) = "bbb"
    arr(2) = "ccc"
    arr.foreach { println }
  }

  def basic_4() : Unit = {
    println(Unit)
  }
  
  def basic_5() = {
    println("*" * 5)
  }
  
  def basic_6() = {
    val str = "basic_6"; println(str)
  }
  
  def basic_7() = {
    val v = (3
    +5)
    println(v)
  }
  
  def basic_8() = {
    val v = 3 +
    5
    println(v)
  }
  
}

object Basic_Main {
  def main(args : Array[String]) {
    val b = new Basic
  //  b.basic_0()
  //  b.basic_1()
  //  b.basic_2()
  //  b.basic_3()
  //  b.basic_4()
  //  b.basic_5()
  //  b.basic_6()
  //  b.basic_7()
    b.basic_8()
  }
}
