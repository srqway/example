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
  def traitOverrideMethod() {
    println("trait override method")
  }
  def classOverrideMethod() {
    println("class override method")
  }
  def traitAndClassOverrideMethod() {
    println("trait and class override method")
  }
}

trait Trait_2 extends Class_2 {
  abstract override def traitOverrideMethod() {
    print("trait 2 : ")
    super.traitOverrideMethod()
  }
  abstract override def traitAndClassOverrideMethod() {
    print("trait 2 : ")
    super.traitAndClassOverrideMethod()
  }
}

class Class_2_0 extends Trait_2 {
  override def classOverrideMethod() {
    print("class 2 : ")
    super.classOverrideMethod()
  }
  override def traitAndClassOverrideMethod() {
    print("class 2 : ")
    super.traitAndClassOverrideMethod()
  }
}

abstract class Class_3 {
  def stackMethod() {
    println("class 3")
  }}

trait Trait_3_0 extends Class_3 {
  abstract override def stackMethod() {
    println("trait 3 0")
    super.stackMethod()
  }
}

trait Trait_3_1 extends Class_3 {
  abstract override def stackMethod() {
    println("trait 3 1")
    super.stackMethod()
  }
}

object Trait_Main extends App {
//  val c_0_0 = new Class_0_0
//  c_0_0.definedMethod()
//  println(c_0_0.val_)
//  val c_0_1 = new Class_0_1
//  c_0_1.definedMethod()

//  val c_1 = new Class_1
//  c_1.method_1_1()
  
//  val c_2_0 = new Class_2_0
//  c_2_0.traitOverrideMethod
//  c_2_0.classOverrideMethod
//  c_2_0.traitAndClassOverrideMethod

//  val c_2_1 = new Class_2 with Trait_2
//  c_2_1.traitOverrideMethod
//  c_2_1.classOverrideMethod
//  c_2_1.traitAndClassOverrideMethod

  val c_3 = new Class_3 with Trait_3_0 with Trait_3_1
  c_3.stackMethod()

}