package idv.hsiehpinghan.scalaexample.example

import scala.collection.immutable.List
import scala.io.Source
import scala.reflect.io.File

class File_ {
  def delete(path: String) {
    val file = File(path)
    file.delete()
  }
    
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