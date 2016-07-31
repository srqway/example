package idv.hsiehpinghan.scalaexample.example

import scala.io.Source

class For {
  def for_0() = {
    var list = List(1,2,3)
    for(l <- list) {
      println(l)
    }
  }

  def for_1() = {
    for(l <- 1 to 3) {
      println(l)
    }
  }
  
  def for_2() = {
    for(l <- 1 until 3) {
      println(l)
    }
  }
  
  def for_3() = {
    for(l <- 1 to 10 if l % 2 == 0 if l % 3 == 0) {
      println(l)
    }
  }
  
  def for_4() = {
    val files = (new java.io.File("/etc")).listFiles()
    for(file <- files 
        if file.isFile
        if file.getName.startsWith("group")) {
      println(file)      
    }
  }
  
  def for_5() = {
    val files = (new java.io.File("/etc")).listFiles()
    for(file <- files 
        if file.isFile
        if file.getName.equals("group");
        line <- Source.fromFile(file).getLines().toList
        if line.startsWith("root")
    ) {
      println(line)
    }
  }

  def for_6() = {
    val files = (new java.io.File("/etc")).listFiles()
    for(file <- files 
        if file.isFile
        if file.getName.equals("group");
        line <- Source.fromFile(file).getLines().toList;
        tokens = line.split(":")
        if tokens(0) == "root"
    ) {
      println(line)
    }
  }

  def for_7() = {
    val files = (new java.io.File("/etc")).listFiles()
    val resultFiles = for(file <- files if file.isFile if file.getName.equals("group")
    ) yield file
    resultFiles.foreach { println }
  }

  def for_8() = {
    val files = (new java.io.File("/etc")).listFiles()
    val resultFiles = for(file <- files if file.isFile if file.getName.equals("group")
    ) yield {
      println("for_8")
      file
    }
    resultFiles.foreach { println }
  }
}

object For_Main extends App {
  val f = new For
//  f.for_0()
//  f.for_1()
//  f.for_2()
//  f.for_3()
//  f.for_4()
//  f.for_5()
//  f.for_6()
//  f.for_7()
  f.for_8()
}