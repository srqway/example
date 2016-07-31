package idv.hsiehpinghan.scalaexample.example

import java.io.FileReader
import java.io.FileNotFoundException
import java.io.IOException

class Exception {
  def exception_0(b: Boolean) = {
    if(b) {
      3
    } else {
      throw new RuntimeException("exception_0")
    }
  }

  def exception_1() = {
    try {
      val f = new FileReader("not-exists-file")
      try {
        // using f do something
      } finally {
        f.close()
      }
    } catch {
      case ex: FileNotFoundException => println("FileNotFoundException !!!")
      case ex: IOException => println("IOException !!!")
    }
  }
  
  def exception_2() : Int = {
    try {
      return 1
    } finally {
      return 2
    }
  }

  def exception_3() : Int = {
    try {
      1
    } finally {
      2
    }
  }

}

object Exception_Main extends App {
  val e = new Exception
//  println(e.exception_0(true))
  println(e.exception_1())
//  println(e.exception_2())
//  println(e.exception_3())
    

  
}