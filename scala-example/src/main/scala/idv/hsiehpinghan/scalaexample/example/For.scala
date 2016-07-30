package idv.hsiehpinghan.scalaexample.example

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
}

object For_Main extends App {
  val f = new For
  f.for_0()
  f.for_1()
  
}