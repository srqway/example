package idv.hsiehpinghan.scalaexample.example

class If {
  def if_0(b: Boolean) = {
    val result = if(b) "yes" else "no"
    println(result)
  }

}

object If_Main extends App {
  val f = new If
  f.if_0(true)

  
}