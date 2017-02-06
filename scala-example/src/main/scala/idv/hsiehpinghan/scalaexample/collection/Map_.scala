package idv.hsiehpinghan.scalaexample.collection

import scala.annotation.migration

class Map_ {
  def lookups(map_0: Map[String, Int]) {
    println("<<get>>")
    println(map_0.get("c"))
    println("<<(x)>>")
    println(map_0("c"))
    println("<<getOrElse>>")
    println(map_0.getOrElse("z", 9))
    println("<<contains>>")
    println(map_0.contains("c"))
    println("<<contains>>")
    println(map_0.isDefinedAt("c"))
  }

  def additionsAndUpdates(map_0: Map[String, Int], map_1: Map[String, Int]) {
    println("<<+_0>>")
    println(map_0 + ("f" -> 6))
    println("<<+_1>>")
    println(map_0 + ("f" -> 6, "g" -> 7))
    println("<<++>>")
    println(map_0 ++ map_1)
    println("<<updated>>")
    println(map_0.updated("c", 9))
  }

  def removals(map_0: Map[String, Int]) {
    println("<<-_0>>")
    println(map_0 - "c")
    println("<<-_1>>")
    println(map_0 - ("b", "c", "d"))
    println("<<-->>")
    println(map_0 -- Seq("b", "c", "d"))
  }

  def subcollections(map_0: Map[String, Int]) {
    println("<<keys>>")
    println(map_0.keys)
    println("<<keySet>>")
    println(map_0.keySet)
    println("<<keysIterator>>")
    map_0.keysIterator.foreach { println }
    println("<<values>>")
    println(map_0.values)
    println("<<valuesIterator>>")
    map_0.valuesIterator.foreach { println }
  }

  def transformation(map_0: Map[String, Int]) {
    println("<<filterKeys>>")
    println(map_0.filterKeys { x => (x.charAt(0).toInt % 2 == 0) })
    println("<<mapValues>>")
    println(map_0.mapValues { x => x + 1 })
  }

}

object Map_Main extends App {
  val obj = new Map_
  val map_0 = Map(("a", 1), ("b", 2), ("c", 3), ("d", 4), ("e", 5))
  val map_1 = Map(("f", 6), ("g", 7), ("h", 8))
  //  obj.lookups(map_0)
  //  obj.additionsAndUpdates(map_0, map_1)
  //  obj.removals(map_0)
  //  obj.subcollections(map_0)
  obj.transformation(map_0)
}