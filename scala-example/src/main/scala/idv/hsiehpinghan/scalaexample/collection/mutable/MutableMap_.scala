package idv.hsiehpinghan.scalaexample.collection.mutable

import scala.collection.mutable.Map

class MutableMap_ {
  def additionsAndUpdates() {
    println("<< (x) >>")
    val map_0 = Map(("a", 1), ("b", 2), ("c", 3), ("d", 4), ("e", 5))
    map_0("c") = 9
    println(map_0)
    println("<< +=_1 >>")
    val map_1 = Map(("a", 1), ("b", 2), ("c", 3), ("d", 4), ("e", 5))
    map_1 += ("z" -> 9)
    println(map_1)
    println("<< +=_2 >>")
    val map_2 = Map(("a", 1), ("b", 2), ("c", 3), ("d", 4), ("e", 5))
    map_2 += ("x" -> 8, "y" -> 9)
    println(map_2)
    println("<< ++= >>")
    val map_3 = Map(("a", 1), ("b", 2), ("c", 3), ("d", 4), ("e", 5))
    map_3 ++= Map("x" -> 8, "y" -> 9)
    println(map_3)
    println("<< put >>")
    val map_4 = Map(("a", 1), ("b", 2), ("c", 3), ("d", 4), ("e", 5))
    map_4.put("z", 9)
    println(map_4)
    println("<< put >>")
    val map_5 = Map(("a", 1), ("b", 2), ("c", 3), ("d", 4), ("e", 5))
    println(map_5.getOrElseUpdate("c", 9))
  }

  def removals() {
    println("<< -=_0 >>")
    val map_0 = Map(("a", 1), ("b", 2), ("c", 3), ("d", 4), ("e", 5))
    map_0 -= "c"
    println(map_0)
    println("<< -=_1 >>")
    val map_1 = Map(("a", 1), ("b", 2), ("c", 3), ("d", 4), ("e", 5))
    map_1 -= ("b", "c", "d")
    println(map_1)
    println("<< --= >>")
    val map_2 = Map(("a", 1), ("b", 2), ("c", 3), ("d", 4), ("e", 5))
    map_2 --= Seq("b", "c", "d")
    println(map_2)
    println("<< remove >>")
    val map_3 = Map(("a", 1), ("b", 2), ("c", 3), ("d", 4), ("e", 5))
    map_3.remove("c")
    println(map_3)
    println("<< retain >>")
    val map_4 = Map(("a", 1), ("b", 2), ("c", 3), ("d", 4), ("e", 5))
    map_4.retain((s, i) => i % 2 == 0)
    println(map_4)
    println("<< clear >>")
    val map_5 = Map(("a", 1), ("b", 2), ("c", 3), ("d", 4), ("e", 5))
    map_5.clear()
    println(map_5)
  }

  def transformationAndCloning() {
    println("<< transform >>")
    val map_0 = Map(("a", 1), ("b", 2), ("c", 3), ("d", 4), ("e", 5))
    map_0.transform((s, i) => i + 1)
    println(map_0)
    println("<< clone >>")
    val map_1 = Map(("a", 1), ("b", 2), ("c", 3), ("d", 4), ("e", 5))
    println(map_1.clone())
  }
}

object MutableMap_Main extends App {
  val obj = new MutableMap_
  //  obj.additionsAndUpdates()
  //  obj.removals()
  obj.transformationAndCloning()

}