package idv.hsiehpinghan.scalaexample.example

import scala.collection.immutable.List
import scala.io.Source

class Singleton {
}

object Singleton {
  var i = 0;
}

object Object_Main extends App {
  Singleton.i += 1;
  println(Singleton.i)
  
}