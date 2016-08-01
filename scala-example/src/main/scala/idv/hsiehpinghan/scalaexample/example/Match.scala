package idv.hsiehpinghan.scalaexample.example

class Match {
  def match_0(str: String) = {
    str match {
      case "first" => println(1)
      case "second" => println(2)
      case _ => println(Int.MaxValue)
    }
  }

  def match_1(str: String) = {
    val result =
      str match {
        case "first" => 1
        case "second" => 2
        case _ => Int.MaxValue
      }
    println(result)
  }
}

object Match_Main extends App {
  val m = new Match
//  m.match_0("second")
  m.match_1("second")
  
}