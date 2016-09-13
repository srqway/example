package idv.hsiehpinghan.scalaexample.example

import scala.collection.immutable.List
import scala.io.Source

class Clazz(privateVal_ : Int, var publicVar_ : Int, val publicVal_ : Int) {
  private var privateVar = 0
  private val privateVal = 0
  protected var protectedVar = 0
  protected val protectedVal = 0
  var var_ = 0
  val val_ = 0
  
  final protected var finalProtectedVar = 0
  final protected val finalProtectedVal = 0
  final var finalVar_ = 0
  final val finalVal_ = 0
  
  println("primary constructor begin.")
  this.var_ = privateVar
  
  def add(v : Int) {
    var_ += v;
  }
  
  final def finalMethod(v : Int) {
    var_ += v;
  }

}

abstract class AbstractClass(private val privateVal_ : Int, protected val protectedVal_ : Int, protected var protectedVar_ : Int) {
  def declaredMethod: String
  def definedMethod: String = "defined method"
  def declaredMethodWithParentheses()
  def definedMethodWithParentheses() {
    println("defined method with parentheses")
  }
  def withOverrideMethod: String
  def withoutOverrideMethod: String
}

class SubAbstractClass(override val protectedVal_ : Int) extends AbstractClass(1, 2, 3) {
  def declaredMethod: String = "declared method"
  def declaredMethodWithParentheses() {
    println("declared method with parentheses")
  }
  override def withOverrideMethod: String = "with override method"
  def withoutOverrideMethod: String = "without override method"
}

final class FinalClass {
}

package package_0 {
  private[example] class PrivateClass_0 {
    private[example] def privateMethod_0() {
      println("PrivateClass_0 privateMethod_0")
    }
  }
}

class CompanionClass {
  private val privateCompanionClassVal = "Companion Class"
  def getPrivateCompanionObjectVal = {
    CompanionClass.privateCompanionObjectVal
  }
}

object CompanionClass {
  private val privateCompanionObjectVal = "Companion Object"
  def getPrivateCompanionClassVal(obj : CompanionClass) = {
    obj.privateCompanionClassVal
  }
}

class EmptyClass

case class CaseClass(v : String, i : Int) {
}

class GetterSetterClass {
  private[this] var x = 0
  
  def something: Int = x
  def something_=(x: Int) { this.x = x }
}

class DefaultValueClass {
  var double: Double = _
  var float: Float = _
  var long: Long = _
  var int: Int = _
  var short: Short = _
  var byte: Byte = _
  var unit: Unit = _
  var boolean: Boolean = _
  var char: Char = _
  var anyRef: AnyRef = _
}

class PrivateConstructorClass private(list: List[Any]) {
  override def toString = list.toString() 
}

object PrivateConstructorClass {
  def apply[T](xs: T*) = new PrivateConstructorClass(xs.toList)
}

object Clazz_Main extends App {
//  val c = new Clazz(1, 1, 1)
//  c.add(3)
//  println(c.var_)
//  println(c.publicVar_)
//  println(c.publicVal_)
  
//  val ac = new SubAbstractClass(10)
//  println(ac.protectedVal_)
//  println(ac.declaredMethod)
//  println(ac.definedMethod)
//  ac.declaredMethodWithParentheses()
//  ac.definedMethodWithParentheses()

//  import idv.hsiehpinghan.scalaexample.example.package_0.PrivateClass_0
//  val pc = new PrivateClass_0
//  pc.privateMethod_0()

//  val cc = new CompanionClass
//  println(cc.getPrivateCompanionObjectVal)
//  println(CompanionClass.getPrivateCompanionClassVal(cc))
  
//  val cc_0 = CaseClass("cc", 3)
//  val cc_1 = CaseClass("cc", 3)
//  println(cc_0 == cc_1)
//  println("cc_0.v = " + cc_0.v + ", cc_0.i = " + cc_0.i)
//  println(cc_1.copy(i = 5))
  
//  val getterSetterClass = new GetterSetterClass
//  getterSetterClass.something = 3
//  println(getterSetterClass.something)
  
//  val defaultValueClass = new DefaultValueClass
//  println("%s = %s".format("double", defaultValueClass.double))
//  println("%s = %s".format("float", defaultValueClass.float))
//  println("%s = %s".format("long", defaultValueClass.long))
//  println("%s = %s".format("int", defaultValueClass.int))
//  println("%s = %s".format("short", defaultValueClass.short))
//  println("%s = %s".format("byte", defaultValueClass.byte))
//  println("%s = %s".format("unit", defaultValueClass.unit))
//  println("%s = %s".format("boolean", defaultValueClass.boolean))
//  println("%s = %s".format("char", defaultValueClass.char))
//  println("%s = %s".format("anyRef", defaultValueClass.anyRef))

  val privateConstructorClass = PrivateConstructorClass(1,2,3)
  println(privateConstructorClass)
  
}