package idv.hsiehpinghan.scalaexample.example

import scala.collection.immutable.List
import scala.io.Source

class Clazz(privateVar_ : Int, privateVal_ : Int, var publicVar_ : Int, val publicVal_ : Int) {
  private var privateVar = 0
  private val privateVal = 0
  var var_ = 0
  val val_ = 0
  
  println("primary constructor begin.")
  this.var_ = privateVar
  
  def add(v : Int) {
    var_ += v;
  }
}

object Clazz_Main extends App {
  val c = new Clazz(1, 1, 1, 1)
  c.add(3)
  println(c.var_)
  println(c.publicVar_)
  println(c.publicVal_)
  
}