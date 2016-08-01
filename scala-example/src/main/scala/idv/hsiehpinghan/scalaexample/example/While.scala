package idv.hsiehpinghan.scalaexample.example

import scala.util.control.Breaks._

class While {
  def while_0() = {
    var i = 0
    while (i < 3) {
      println(i)
      i += 1
    }
  }

  def while_1() = {
    var i = 0;
    do {
      println(i)
      i += 1
    } while (i < 3)
  }

  def while_2() = {
    breakable {
      var i = 0
      while (i < 10) {
        println(i)
        if (i == 5) break
        i += 1
      }
    }
  }
}

object While_Main extends App {
  val wl = new While
  //  wl.while_0()
  //  wl.while_1()
  wl.while_2()
}