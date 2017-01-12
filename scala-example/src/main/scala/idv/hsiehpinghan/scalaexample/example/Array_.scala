package idv.hsiehpinghan.scalaexample.example

class Array_ {
  def fill(size: Int, element: String) {
    println("<< fill >>")
    val arr = Array.fill[String](size)(element)
    arr.foreach { println }
  }
}

object Array_Main extends App {
  val obj = new Array_
  obj.fill(10, "str")
}