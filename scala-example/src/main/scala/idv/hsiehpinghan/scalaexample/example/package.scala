package idv.hsiehpinghan.scalaexample.example

import scala.collection.immutable.List
import scala.io.Source

package object package_0 {
  def method_0() {
    println("package method_0")
  }
}

object Package_Main extends App {
  import package_0.method_0
  method_0()
  
}