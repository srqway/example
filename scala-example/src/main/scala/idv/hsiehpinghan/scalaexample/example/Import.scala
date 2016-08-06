package idv.hsiehpinghan.scalaexample.example

import java.lang._
import scala._
import Predef._

import scala.collection.immutable
import scala.collection.{immutable=>myimmutable}
import scala.collection.immutable.{Map,Set}
import scala.collection.immutable.{List=>MyList}
import scala.collection.immutable.{Queue=>_,_}

import idv.hsiehpinghan.scalaexample.example.Import._

class Import_0 {
  def method_0() {
    import scala.collection.immutable.List
    val list = List(1,2,3)
    println(list)
  }
  
  def method_1() {
    val list = immutable.List(1,2,3)
    println(list)
  }
  
  def method_2() {
    val list = MyList(1,2,3)
    println(list)
  }
}

object Import {
  object Import_0 {
    def method_0() {
      println("method 0")
    }
  }
}

object Import_Main extends App {
//  Import_0.method_0()
  
  val import_0 = new Import_0
//  import_0.method_0()
//  import_0.method_1()
  import_0.method_2()
  
}