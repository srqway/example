package idv.hsiehpinghan.scalaexample.example

import java.io.FileReader
import java.io.FileNotFoundException
import java.io.IOException

trait Trait_0 {
  private var privateVar = 0
  private val privateVal = 0
  protected var protectedVar = 0
  protected val protectedVal = 0
  var var_ = 0
  val val_ = 0
  def declaredMethod: String
  def definedMethod() {
    println("defined method")
  }
}

class Class_0_0 extends Trait_0 {
  override def declaredMethod: String = "declared method"
  override def definedMethod() {
    println("override defined method")
  } 
}

class Class_0_1 extends AnyRef with Trait_0 {  
  override def declaredMethod: String = "declared method"
}

trait Trait_1_0 {
  def method_1_0() {
    println("method_1_0")
  }
}

trait Trait_1_1 {
  def method_1_1() {
    println("method_1_1")
  }
}

class Class_1 extends AnyRef with Trait_1_0 with Trait_1_1 {  
}

abstract class Class_2 {
  def abstractOverrideMethod()
}

class Class_2_0 extends Class_2 {
  override def abstractOverrideMethod() {
    println("class 2 : abstractOverrideMethod")
  }
}

trait Trait_2 extends Class_2 {
  abstract override def abstractOverrideMethod() {
    print("trait 2 : ")
    super.abstractOverrideMethod()
  }
}

class Class_2_0_0 extends Class_2_0 with Trait_2 {
}

abstract class Class_3 {
  def stackMethod()
}

class Class_3_0 extends Class_3 {
  override def stackMethod() {
    println("class 3 0 : stackMethod")
  }
}

trait Trait_3_0 extends Class_3 {
  abstract override def stackMethod() {
    print("trait 3 0 : ")
    super.stackMethod()
  }
}

trait Trait_3_1 extends Class_3 {
  abstract override def stackMethod() {
    print("trait 3 1 :")
    super.stackMethod()
  }
}

trait Trait_4 {
  type T
  val val_ : T
  var var_ : T
  def function(x: T): T
}

class Class_4 extends Trait_4 {
  type T = String
  val val_ = "val_"
  var var_ = "var_"
  def function(x: T) = x + x
}

object Trait_Main extends App {
//  val c_0_0 = new Class_0_0
//  c_0_0.definedMethod()
//  println(c_0_0.val_)
//  val c_0_1 = new Class_0_1
//  c_0_1.definedMethod()

//  val c_1 = new Class_1
//  c_1.method_1_1()
  
//  val c_2_0_0 = new Class_2_0_0
//  c_2_0_0.abstractOverrideMethod

//  val c_2_0_1 = new Class_2_0 with Trait_2
//  c_2_0_1.abstractOverrideMethod

//  val c_3 = new Class_3_0 with Trait_3_0 with Trait_3_1
//  c_3.stackMethod()
  
  val c_4 = new Class_4
  println(c_4.val_)
  println(c_4.var_)
  println(c_4.function("function"))  
}

