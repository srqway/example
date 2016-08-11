package idv.hsiehpinghan.scalaexample.example

import scala.io.Source

class For {
  def for_0() = {
    var list = List(1, 2, 3)
    for (l <- list) {
      println(l)
    }
  }

  def to_0() = {
    for (l <- 1 to 3) {
      println(l)
    }
  }

  def until_0() = {
    for (l <- 1 until 3) {
      println(l)
    }
  }

  def forIf_0() = {
    for (l <- 1 to 10 if l % 2 == 0 if l % 3 == 0) {
      println(l)
    }
  }

  def forIf_1() = {
    val files = (new java.io.File("/etc")).listFiles()
    for (
      file <- files if file.isFile if file.getName.startsWith("group")
    ) {
      println(file)
    }
  }

  def forIf_2() = {
    val files = (new java.io.File("/etc")).listFiles()
    for (
      file <- files if file.isFile if file.getName.equals("group");
      line <- Source.fromFile(file).getLines().toList if line.startsWith("root")
    ) {
      println(line)
    }
  }

  def forIf_3() = {
    val files = (new java.io.File("/etc")).listFiles()
    for (
      file <- files if file.isFile if file.getName.equals("group");
      line <- Source.fromFile(file).getLines().toList;
      tokens = line.split(":") if tokens(0) == "root"
    ) {
      println(line)
    }
  }

  def yield_0() = {
    val files = (new java.io.File("/etc")).listFiles()
    val resultFiles = for (
      file <- files if file.isFile if file.getName.equals("group")
    ) yield file
    resultFiles.foreach { println }
  }

  def yield_1() = {
    val files = (new java.io.File("/etc")).listFiles()
    val resultFiles = for (
      file <- files if file.isFile if file.getName.equals("group")
    ) yield {
      println("for_8")
      file
    }
    resultFiles.foreach { println }
  }
  
  
  def elementMatch_0() {
    val list = List(Some("aaa"), None, Some("bbb"))
    for(Some(v) <- list) {
      println(v)
    }
  }
}

object For_Main extends App {
  val f = new For
  f.for_0()
  f.to_0()
  f.until_0()
  f.forIf_0()
  f.forIf_1()
  f.forIf_2()
  f.forIf_3()
  f.yield_0()
  f.yield_1()
  f.elementMatch_0()
}