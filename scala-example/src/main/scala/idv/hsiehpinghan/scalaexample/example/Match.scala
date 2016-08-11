package idv.hsiehpinghan.scalaexample.example

class Match {
  def match_0(str: String) {
    str match {
      case "first" => println(1)
      case "second" => println(2)
      case _ => println(Int.MaxValue)
    }
  }

  def match_1(str: String) {
    val result =
      str match {
        case "first" => 1
        case "second" => 2
        case _ => Int.MaxValue
      }
    println(result)
  }
  
  def match_2(str: String) {
    val result =
      str match {
        case "first" => 1
        case "second" => 2
        case _ => 
      }
    println(result)
  }
  
  def match_3(x: Any) {
    val valName = "valName"

    val result =
      x match {
        case 5 => "Int"
        case true => "Boolean"
        case "str" => "String"
        case List(1,2,3) => "List(1,2,3)"
        case List(_,_) => "List(_,_)"
        case List(_*) => "List(_*)"
        case `valName` => "val name"
        case CaseClass_3("case class_3", CaseClass_3_0(3)) => "constructor pattern"
        case CaseClass_3("case class_3", c @ CaseClass_3_0(5)) => "variable binding : " + c.i
        case CaseClass_3(x, CaseClass_3_0(y)) if(x == "case class_" + y) => "pattern guard"
        case (x,y,z) => "tuple pattern : ("+x+","+y+","+z+")"
        case str: String => "typed pattern : " + str
        case m: Map[_,_] => m
        case arr: Array[String] => arr
        case variable => variable
      }
    println(result)
  }
  
  def classMatch_0(x: SealedClass_4) {
    val result =
      x match {
        case SealedClass_4_0() => "SealedClass_4_0"
        case SealedClass_4_1() => "SealedClass_4_1"
        case SealedClass_4_2() => "SealedClass_4_2"
      }
    println(result)
  }
  
  def unchecked_0(x: SealedClass_4) {
    val result =
      (x: @unchecked) match {
        case SealedClass_4_0() => "SealedClass_4_0"
        case SealedClass_4_1() => "SealedClass_4_1"
      }
    println(result)
  }
  
  def patternMatch_0[T](xs: List[T], ys: List[T]): List[T] = {
    xs match {
      case Nil => ys
      case x :: xs1 => x :: patternMatch_0(xs1, ys)
    }
  }
}

case class CaseClass_3(str: String, class_3_0: CaseClass_3_0) {
}
case class CaseClass_3_0(i: Int) {
}

sealed abstract class SealedClass_4
case class SealedClass_4_0() extends SealedClass_4
case class SealedClass_4_1() extends SealedClass_4
case class SealedClass_4_2() extends SealedClass_4

object Match_Main extends App {
  val m = new Match
  m.match_0("second")
  m.match_1("second")
  m.match_2("third")
  m.match_3(5)
  m.match_3(true)
  m.match_3("str")
  m.match_3(List(1,2,3))
  m.match_3(List(1,2))
  m.match_3(Nil)
  m.match_3("valName")
  m.match_3(CaseClass_3("case class_3", CaseClass_3_0(3)))
  m.match_3(CaseClass_3("case class_3", CaseClass_3_0(5)))
  m.match_3(CaseClass_3("case class_7", CaseClass_3_0(7)))
  m.match_3("typedPattern")
  var map = Map[Int, String]()
  map += (1 -> "AAA")
  map += (2 -> "BBB")
  map += (3 -> "CCC")
  m.match_3(map)
  m.match_3(Array("aaa","bbb","ccc"))
  m.match_3(m)
  m.classMatch_0(SealedClass_4_1())
  m.unchecked_0(SealedClass_4_1())
  println(m.patternMatch_0(List(1, 2, 3), List(4, 5, 6)))
}