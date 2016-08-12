package idv.hsiehpinghan.scalaexample.example

import scala.io.Source
import java.io.PrintWriter
import java.util.Date

class Function {
  def function_0(x: Int, y: Int): Int = {
    if (x > y) x
    else y
  }

  def function_1(x: Int, y: Int) = {
    if (x > y) x
    else y
  }

  def function_2(x: Int, y: Int) = if (x > y) x else y

  def function_3() = println("function_3")

  def function_4 = println("function_4")

  def returnUnit() {
    "returnUnit"
  }

  def returnLastLine() = {
    "returnLastLine"
  }

  def functionInFunction_0() {
    val fileName = "/etc/passwd"
    val source = Source.fromFile(fileName)
    for (line <- source.getLines()) {
      processLine(line)
    }

    def processLine(line: String) {
      println(fileName + " : " + line)
    }
  }

  def partiallyAppliedFunction_0() {
    val fun = partiallyAppliedFunction_0_0 _
    println(fun(1, 2, 3))
  }
  def partiallyAppliedFunction_0_0(a: Int, b: Int, c: Int) = a + b + c

  def partiallyAppliedFunction_1() {
    val fun = partiallyAppliedFunction_1_0(1, _: Int, 3)
    println(fun(2))
  }
  def partiallyAppliedFunction_1_0(a: Int, b: Int, c: Int) = a + b + c

  def closures_0() {
    var more = 1
    val fun = (x: Int) => x + more
    println(fun(1))
    more = 2
    println(fun(1))
  }

  def closures_1() {
    var more = 1
    val fun = () => more += 1
    fun()
    println(more)
  }

  def functionArgument_0(matcher: (String, String) => Boolean) {
    println(matcher("abcde", "bcd"))
  }

  def functionReturnFunction_0() {
    val fun = functionReturnFunction_0_0(1)
    println(fun(2))
  }
  def functionReturnFunction_0_0(more: Int) = (x: Int) => x + more

  def functionReturnFunction_1(x: Int) = (y: Int) => x + y

  def currying_0(x: Int)(y: Int) = x + y

  def currying_1(x: Int) = {
    val fun = currying_0(1)_
    fun(x)
  }

  def currying_2() {
    val file = new java.io.File("/tmp/function_8_0")
    currying_2_0(file) {
      writer => writer.println(new Date)
    }
  }
  def currying_2_0(file: java.io.File)(op: PrintWriter => Unit) {
    val writer = new PrintWriter(file)
    try {
      op(writer)
    } finally {
      writer.close()
    }
  }

  def notByNameAssert_0() {
    notByNameAssert_0_0(() => 5 > 3)
  }
  def notByNameAssert_0_0(predicate: () => Boolean) = {
    println(predicate())
  }

  def byNameAssert_0() {
    byNameAssert_0_0(5 > 3)
  }
  def byNameAssert_0_0(predicate: => Boolean) = {
    println(predicate)
  }
}

object Function_Main extends App {
  val func = new Function
  println(func.function_0(3, 5))
  println(func.function_1(3, 5))
  println(func.function_2(3, 5))
  func.function_3()
  func.function_3
  func.function_4
  println(func.returnUnit())
  println(func.returnLastLine())
  func.functionInFunction_0()
  func.partiallyAppliedFunction_0()
  func.partiallyAppliedFunction_1()
  func.closures_0()
  func.closures_1()
  func.functionArgument_0(_.contains(_))
  func.functionReturnFunction_0()
  println(func.functionReturnFunction_1(1)(2))
  println(func.currying_0(1)(2))
  println(func.currying_1(2))
  func.currying_2()
  func.notByNameAssert_0()
  func.byNameAssert_0()
}