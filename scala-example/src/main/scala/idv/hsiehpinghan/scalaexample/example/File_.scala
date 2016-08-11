package idv.hsiehpinghan.scalaexample.example

import scala.collection.immutable.List
import scala.io.Source

class File_ {
  def file_0() = {
    var f = Source.fromFile("/etc/passwd");
    for(l <- f.getLines()) {
      println(l)
    }
  }
   
}

object File_Main extends App {
  val f = new File_
  f.file_0()
  
}