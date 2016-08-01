package idv.hsiehpinghan.scalaexample.example

import scala.io.Source

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
  func.function_5_2
}