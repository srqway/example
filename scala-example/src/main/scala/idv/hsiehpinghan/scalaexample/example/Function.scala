package idv.hsiehpinghan.scalaexample.example

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
    
}

object Function_Main extends App {
  val func = new Function
//  println(func.function_0_0(3, 5))
//  println(func.function_0_1(3, 5))
//  println(func.function_0_2(3, 5))
  
//  func.function_1_0()
  func.function_1_0
//  println(func.function_1_1())
//  println(func.function_1_2())
}