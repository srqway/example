package idv.hsiehpinghan.scalaexample.example

class String_ {

  def stringMultiply_0() {
    println("*" * 5)
  }

  def multilinesString_0() {
    println("""multilinesString_0
      multilinesString_0
      multilinesString_0""")
  }

  def multilinesString_1() {
    println("""|multilinesString_1
      |multilinesString_1
      |multilinesString_1""".stripMargin)
  }

  def indexOf_0() {
    val str = "basic_12"
    println(str indexOf 's')
  }

  def indexOf_1() {
    val str = "basic_13"
    println(str indexOf ('1', 3))
  }

  def toInt_0() {
    println("123" toInt)
  }

  def format_0(arg_0: Int, arg_1: Int) {
    println("arg_0(%d), arg_1(%d)".format(arg_0, arg_1))
  }

  def defaultArgument_0(arg_0: Int = 0, arg_1: Int = 1) {
    println("arg_0(%d), arg_1(%d)".format(arg_0, arg_1))
  }
  
}

object String_Main extends App {
  val s = new String_
  s.stringMultiply_0()
  s.multilinesString_0()
  s.multilinesString_1()
  s.indexOf_0()
  s.indexOf_1()
  s.toInt_0()
  s.format_0(arg_0 = 0, arg_1 = 1)
  s.defaultArgument_0()
}
