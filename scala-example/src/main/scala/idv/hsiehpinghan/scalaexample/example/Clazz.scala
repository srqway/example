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

object Clazz_Main extends App {
//  val c = new Clazz(1, 1, 1)
//  c.add(3)
//  println(c.var_)
//  println(c.publicVar_)
//  println(c.publicVal_)
  
  val ac = new SubAbstractClass(10)
  println(ac.protectedVal_)
  println(ac.declaredMethod)
  println(ac.definedMethod)
  ac.declaredMethodWithParentheses()
  ac.definedMethodWithParentheses()
}