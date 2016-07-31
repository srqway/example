package idv.hsiehpinghan.scalaexample.example

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

}

object While_Main extends App {
  val wl = new While
  //  wl.while_0()
  wl.while_1()

}