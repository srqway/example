package idv.hsiehpinghan.scalaexample.example

import scala.collection.immutable.List

class Basic {
  def basic_0() {
    var l = List(1, 2, 3)
    l.foreach { println }
  }

  def basic_1() {
    var l = List(1, 2, 3)
    l.foreach { x => println(x) }
  }

  def basic_2() {
    var l = List(1, 2, 3)
    l.foreach { (x: Int) => println(x) }
  }

  def basic_3() {
    var arr = new Array[String](3)
    arr(0) = "aaa"
    arr(1) = "bbb"
    arr(2) = "ccc"
    arr.foreach { println }
  }

  def basic_4(): Unit = {
    println(Unit)
  }

  def basic_5() {
    println("*" * 5)
  }

  def basic_6() {
    val str = "basic_6"; println(str)
  }

  def basic_7() {
    val v = (3
      + 5)
    println(v)
  }

  def basic_8() {
    val v = 3 +
      5
    println(v)
  }

  def basic_9() {
    val \u0041\u0044 = 1
    println(\u0041\u0044)
  }

  def basic_10() {
    println("""basic_10
      basic_10
      basic_10""")
  }

  def basic_11() {
    println("""|basic_11
      |basic_11
      |basic_11""".stripMargin)
  }

  def basic_12() {
    val str = "basic_12"
    println(str indexOf 's')
  }

  def basic_13() {
    val str = "basic_13"
    println(str indexOf ('1', 3))
  }

  def basic_14() {
    println("123" toInt)
  }

  def basic_15() {
    // only +, -, !, and ~ allowed
    println((3).unary_-)
  }

  def basic_16() {
    println(1 == 1.0)
  }

  def basic_17() {
    val result = println("basic_17")
    println(result == ())
  }

  def basic_18(i: Int) {
    if (i < 0) Unit
    else if (i % 2 == 0) basic_18(i + 1) // continue
    else if (i >= 10) Unit // break
    else {
      println(i)
      basic_18(i + 1)
    }
  }

  def basic_19() {
    val v = 1;
    {
      val v = 2
      println(v)
    }
    println(v)
  }

  def basic_20() {
    var l = List(1, 2, 3, 4, 5)
    l.filter { _ % 2 == 0 }.foreach { println }
  }

  def basic_21(args: String*) {
    args.foreach { println }
  }

  def basic_22(arg_0: Int, arg_1: Int) {
    println("arg_0(%d), arg_1(%d)".format(arg_0, arg_1))
  }

  def basic_23(arg_0: Int = 0, arg_1: Int = 1) {
    println("arg_0(%d), arg_1(%d)".format(arg_0, arg_1))
  }

  def basic_24() {
    println { "basic_24" }
  }

  def basic_25() {
    val arr_0 = Array(1, 2, 3)
    val arr_1 = Array("a", "b", "c", "d", "e")
    for ((ele_0, ele_1) <- arr_0 zip arr_1) {
      println(ele_0, ele_1)
    }
  }

  def basic_26(null_ : AnyRef) {
    println(null_)
  }

  def basic_27(): Nothing = {
    throw new RuntimeException("basic_27")
  }

  def basic_28() {
    assert(1 == 2, "basic 28 assert")
  }

  def basic_29() {
    val str = "str"
    if (str.isInstanceOf[String]) {
      println(str.asInstanceOf[String])
    }
  }

  def basic_30(key: String) {
    val map = Map("some" -> "Some")
    val value = map.get(key)
    val result = value match {
      case Some(s) => s
      case None =>
    }
    println(result)
  }

  def basic_31() {
    val list = List(1, 2, 3)
    val List(x, y, z) = list
    println(x, y, z)
  }

  def basic_32() {
    val partialFunction: PartialFunction[List[Int], Int] = {
      case x :: y :: _ => y
    }
    if (partialFunction.isDefinedAt(Nil)) {
      println(partialFunction(Nil))
    }
    val list = List(1, 2, 3)
    if (partialFunction.isDefinedAt(list)) {
      println(partialFunction(list))
    }
  }

}

object Basic_Main {
  def main(args: Array[String]) {
    val b = new Basic //    b.basic_0()
    //    b.basic_1()
    //    b.basic_2()
    //    b.basic_3()
    //    b.basic_4()
    //    b.basic_5()
    //    b.basic_6()
    //    b.basic_7()
    //    b.basic_8()
    //    b.basic_9()
    //    b.basic_10()
    //    b.basic_11()
    //    b.basic_12()
    //    b.basic_13()
    //    b.basic_14()
    //    b.basic_15()
    //    b.basic_16()
    //    b.basic_17()
    //    b.basic_18(0)
    //    b.basic_19()
    //    b.basic_20()
    //    b.basic_21("aaa", "bbb", "ccc")
    //    val arr_21 = Array("aaa", "bbb", "ccc")
    //    b.basic_21(arr_21: _*)
    //    b.basic_22(arg_0 = 0, arg_1 = 1)
    //    b.basic_23()
    //    b.basic_24()
    //    b.basic_25()
    //    b.basic_26(null)
    //    println(b.basic_27())
    //    b.basic_28()
    //    b.basic_29()
    //    b.basic_30("some")
    //    b.basic_30("none")
    //    b.basic_31()
    //    b.basic_32()

  }
}
