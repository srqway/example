package idv.hsiehpinghan.scalaexample.collection

import scala.Vector

class Vector_ {
  def constructor() {
    println("<< constructor_0 >>")
    val vector_0 = Vector(1, 2, 3)
    println(vector_0)
    println("<< constructor_1 >>")
    val vector_1 = Vector.empty :+ 1 :+ 2 :+ 3
    println(vector_1)
  }

  def update(vector_0: Vector[String]) {
    println("<< update >>")
    println(vector_0.updated(1, "z"))
  }
}

object Vector_Main extends App {
  val obj = new Vector_
  val vector_0 = Vector("a", "b", "c")
  obj.constructor()
  obj.update(vector_0)
}
