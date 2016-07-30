package idv.hsiehpinghan.scalaexample.example

class While {
  def while_0() = {
    var i = 0
    while(i < 3) {
      println(i)
      i += 1
    }
  }

}

object While_Main extends App {
  val wl = new While
  wl.while_0()
  
}