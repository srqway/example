package idv.hsiehpinghan.scalaexample.example

import scala.collection.immutable.List
import scala.io.Source

class Clazz {
  private var privateVar = 0;
  private val privateVal = 0;
  var var_ = 0;
  val val_ = 0;
  
  def add(v : Int) {
    var_ += v;
  }
}

object Clazz_Main extends App {
  val c = new Clazz
  c.add(3)
  println(c.var_)
  
}