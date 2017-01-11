package idv.hsiehpinghan.scalaexample.collection

class Set_ {
  def tests(set_0: Set[String], set_1: Set[String]) {
    println("<<contains>>")
    println(set_0.contains("c"))
    println("<<(x)>>")
    println(set_0("c"))
    println("<<subsetOf>>")
    println(set_0.subsetOf(set_1))
  }

  def addition(set_0: Set[String]) {
    println("<<+_0>>")
    println(set_0 + "z")
    println("<<+_1>>")
    println(set_0 + ("x", "y", "z"))
    println("<<++>>")
    println(set_0 ++ Set("x", "y", "z"))
  }

  def removals(set_0: Set[String]) {
    println("<<-_0>>")
    println(set_0 - "c")
    println("<<-_1>>")
    println(set_0 + ("b", "c", "d"))
    println("<<-->>")
    println(set_0 -- Set("b", "c", "d"))
    println("<<empty>>")
    println(set_0.empty)
  }

  def binaryOperations(set_0: Set[String], set_2: Set[String]) {
    println("<<&>>")
    println(set_0 & set_2)
    println("<<intersect>>")
    println(set_0.intersect(set_2))
        println("<<|>>")
    println(set_0 | set_2)
    println("<<union>>")
    println(set_0.union(set_2))
        println("<<&~>>")
    println(set_0 &~ set_2)
    println("<<diff>>")
    println(set_0.diff(set_2))
  }

}

object Set_Main extends App {
  val obj = new Set_
  val set_0 = Set("a", "b", "c", "d", "e")
  val set_1 = Set("a", "b", "c", "d", "e", "f", "g")
  val set_2 = Set("c", "d", "e", "f", "g")
  //  obj.tests(set_0, set_1)
  //  obj.addition(set_0)
  //  obj.removals(set_0)
  obj.binaryOperations(set_0, set_2)
}