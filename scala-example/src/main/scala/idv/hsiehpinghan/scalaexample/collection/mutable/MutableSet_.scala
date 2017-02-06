package idv.hsiehpinghan.scalaexample.collection.mutable

import scala.collection.mutable.Set
import scala.collection.SortedSet

class MutableSet_ {
  def addition() {
    println("<<+=_0>>")
    val set_0 = Set("a", "b", "c", "d", "e")
    set_0 += "z"
    println(set_0)
    println("<<+=_1>>")
    val set_1 = Set("a", "b", "c", "d", "e")
    set_1 += ("x", "y", "z")
    println(set_1)
    println("<<++=>>")
    val set_2 = Set("a", "b", "c", "d", "e")
    set_2 ++= Set("x", "y", "z")
    println(set_2)
    println("<<add>>")
    val set_3 = Set("a", "b", "c", "d", "e")
    set_3.add("z")
    println(set_3)
  }

  def removals() {
    println("<<-=_0>>")
    val set_0 = Set("a", "b", "c", "d", "e")
    set_0 -= "c"
    println(set_0)
    println("<<-=_1>>")
    val set_1 = Set("a", "b", "c", "d", "e")
    set_1 -= ("b", "c", "d")
    println(set_1)
    println("<<--=>>")
    val set_2 = Set("a", "b", "c", "d", "e")
    set_2 ++= Set("b", "c", "d")
    println(set_2)
    println("<<remove>>")
    val set_3 = Set("a", "b", "c", "d", "e")
    set_3.remove("z")
    println(set_3)
    println("<<retain>>")
    val set_4 = Set("a", "b", "c", "d", "e")
    set_4.retain { x => (x.charAt(0).toInt % 2) == 0 }
    println(set_4)
    println("<<clear>>")
    val set_5 = Set("a", "b", "c", "d", "e")
    set_5.clear()
    println(set_5)
  }

  def cloning() {
    println("<<clone>>")
    val set_0 = Set("a", "b", "c", "d", "e")
    val set_1 = set_0.clone()
    println(set_1)
  }
}

object MutableSet_Main extends App {
  val obj = new MutableSet_
  //  obj.addition()
  //  obj.removals()
  obj.cloning()
}