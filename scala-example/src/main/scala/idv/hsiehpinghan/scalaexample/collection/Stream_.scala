package idv.hsiehpinghan.scalaexample.collection

import scala.collection.immutable.Stream.consWrapper

class Stream_ {
  def constructor() {
    println("constructor")
    val stream = 1 #:: 2 #:: 3 #:: Stream.empty
    println(stream.toList)
  }
}

object Stream_Main extends App {
  val obj = new Stream_
  obj.constructor()
}