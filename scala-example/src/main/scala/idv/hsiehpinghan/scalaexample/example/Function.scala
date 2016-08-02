package idv.hsiehpinghan.scalaexample.example

import scala.io.Source
import java.io.PrintWriter
import java.util.Date


class Function {
  def function_0_0(x: Int, y: Int): Int = {
    if (x > y) x
    else y
  }

  def function_0_1(x: Int, y: Int) = {
    if (x > y) x
    else y
  }

  def function_0_2(x: Int, y: Int) = if (x > y) x else y
  
  def function_1_0() = println("function_1_0")
  
  def function_1_1() {
    "function_1_1"
  }
  
  def function_1_2() = {
    "function_1_2"
  }
    
  def function_2_0 {
    val fileName = "/etc/passwd"
    val source = Source.fromFile(fileName)
    for(line <- source.getLines()) {
      processLine(line)
    }
    
    def processLine(line: String) {
      println(fileName + " : " + line)
    }
  }
  
  def function_3_0 {
    var fun = (x: Int) => x + 1
    println(fun(1))
  }
  
  def function_4_0 {
    var fun = (_: Int) + (_: Int)
    println(fun(3,5))
  }
  
  def function_4_1 {
    val fun = function_4_1_0 _
    println(fun(1,2,3))
  }
  def function_4_1_0(a: Int, b: Int, c: Int) = a + b + c
  
  def function_4_2 {
    val fun = function_4_2_0(1, _: Int, 3)
    println(fun(2))
  }
  def function_4_2_0(a: Int, b: Int, c: Int) = a + b + c
  
  def function_5_0 {
    var more = 1
    val fun = (x: Int) => x + more
    println(fun(1))
    more = 2
    println(fun(1))
  }
  
  def function_5_1 {
    var more = 1
    val fun = () => more += 1
    fun()
    println(more)
  }
  
  def function_5_2() {
    val fun = function_5_2_0(1)
    println(fun(2))
  }
  def function_5_2_0(more: Int) = (x: Int) => x + more
  
  def function_6_0(matcher: (String, String) => Boolean) {
    println(matcher("abcde", "bcd"))
  }
  
  def function_7_0(x: Int) = (y: Int) => x + y
  
  def function_7_1(x: Int)(y: Int) = x + y
  
  def function_7_2(x: Int) = {
    val fun = function_7_1(1)_
    fun(x)
  }
  
  def function_8_0() {
    val file = new java.io.File("/tmp/function_8_0")
    function_8_0_0(file) {
      writer => writer.println(new Date)
    }
  }
  def function_8_0_0(file: java.io.File)(op: PrintWriter => Unit) {
    val writer = new PrintWriter(file)
    try {
      op(writer)
    } finally {
      writer.close()
    }
  }
  
  def function_9_0() {
    function_9_0_0(() => 5 > 3)
  }
  def function_9_0_0(predicate: () => Boolean) = {
    println(predicate())
  }
  
  def function_9_1() {
    function_9_1_0(5 > 3)
  }
  def function_9_1_0(predicate: => Boolean) = {
    println(predicate)
  }
}

object Function_Main extends App {
  val func = new Function
//  println(func.function_0_0(3, 5))
//  println(func.function_0_1(3, 5))
//  println(func.function_0_2(3, 5))
  
//  func.function_1_0()
//  func.function_1_0
//  println(func.function_1_1())
//  println(func.function_1_2())
  
//  func.function_2_0
  
//  func.function_3_0
  
//  func.function_4_0
//  func.function_4_1
//  func.function_4_2
  
//  func.function_5_0
//  func.function_5_1
//  func.function_5_2
  
//  func.function_6_0(_.contains(_))
  
//  println(func.function_7_0(1)(2))
//  println(func.function_7_1(1)(2))
//  println(func.function_7_2(2))
  
//  func.function_8_0()
  
//  func.function_9_0()
  func.function_9_1()
}