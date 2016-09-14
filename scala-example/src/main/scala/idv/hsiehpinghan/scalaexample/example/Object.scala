package idv.hsiehpinghan.scalaexample.example

import scala.collection.immutable.List
import scala.io.Source

class Singleton {
}

object Singleton {
  var i = 0;
}

object LazyVal {
  lazy val val_ = { 
    println("val_");
    "val_"
  }  
}

object Object_Main extends App {
//  Singleton.i += 1;
//  println(Singleton.i)
  
  val lazyVal = LazyVal
  println("after lazyVal");
  lazyVal.val_
  
}