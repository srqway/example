package idv.hsiehpinghan.scalaexample.example

import idv.hsiehpinghan.scalaexample.example.ConvertingTheReceiver.convertingTheReceiver_0

class FunctionToClassClass() {
  var function: Int => String = null

  def method(int: Int) {
    println("FunctionToClassClass method %s".format(function(int)))
  }
}
object FunctionToClassClass {
  implicit def functionToClass_0(function: Int => String) = {
    val clazz = new FunctionToClassClass()
    clazz.function = function
    clazz
  }

  implicit def functionToClass_1(function: Int => String) = {
    val clazz = new FunctionToClassClass()
    clazz.function = function
    clazz
  }
}

class ConvertingTheReceiver(var num: Int = 0) {
  def +(n: Int): ConvertingTheReceiver = {
    new ConvertingTheReceiver(num + n)
  }
  def +(that: ConvertingTheReceiver): ConvertingTheReceiver = {
    new ConvertingTheReceiver(this.num + that.num)
  }
}
object ConvertingTheReceiver {
  implicit def convertingTheReceiver_0(x: Int) = {
    new ConvertingTheReceiver(x)
  }
}

class ImplicitParameters(val name: String = null) {
  def implicitParameters(name: String)(implicit parameter: ImplicitParameters) {
    println("%s / %s".format(name, parameter.name))
  }
}
object ImplicitParameters {
  implicit val parameter = new ImplicitParameters("parameter")
}

object ImplicitConversion_Main extends App {
  //  import idv.hsiehpinghan.scalaexample.example.FunctionToClassClass.functionToClass_0
  //  def functionToClassFunction_0 = (int: Int) => {
  //    int.toString()
  //  }
  //  def functionToClassTest(clazz: FunctionToClassClass) = {
  //    clazz.method(3)
  //  }
  //  functionToClassTest(functionToClassFunction_0)

  //  import idv.hsiehpinghan.scalaexample.example.FunctionToClassClass.functionToClass_1
  //  def functionToClassFunction_1 = (int: Int) => {
  //    int.toString()
  //  }
  //  functionToClassFunction_1.method(3)

//  val convertingTheReceiver = new ConvertingTheReceiver
//  val c = 3 + convertingTheReceiver
//  println(c.num)

  val implicitParameters = new ImplicitParameters
  implicitParameters.implicitParameters("implicitParameters")
}