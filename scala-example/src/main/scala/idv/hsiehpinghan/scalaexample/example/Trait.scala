package idv.hsiehpinghan.scalaexample.example

import java.io.FileReader
import java.io.FileNotFoundException
import java.io.IOException

trait BasicTrait {
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

class BasicClass_0 extends BasicTrait {
  override def declaredMethod: String = "declared method"
  override def definedMethod() {
    println("override defined method")
  }
}

class BasicClass_1 extends AnyRef with BasicTrait {
  override def declaredMethod: String = "declared method"
}

trait WithTrait_0 {
  def method_0() {
    println("method_0")
  }
}

trait WithTrait_1 {
  def method_1() {
    println("method_1")
  }
}

class WithClass extends AnyRef with WithTrait_0 with WithTrait_1 {
}

abstract class AopClass {
  def abstractOverrideMethod()
}

class AopClass_0 extends AopClass {
  override def abstractOverrideMethod() {
    println("AopClass_0 : abstractOverrideMethod")
  }
}

trait AopTrait extends AopClass {
  abstract override def abstractOverrideMethod() {
    print("AopTrait : ")
    super.abstractOverrideMethod()
  }
}

class AopClass_0_0 extends AopClass_0 with AopTrait {
}

abstract class Class_3 {
  def stackMethod()
}

class StackMethodClass extends Class_3 {
  override def stackMethod() {
    println("StackMethodClass : stackMethod")
  }
}

trait StackMethodTrait_0 extends Class_3 {
  abstract override def stackMethod() {
    print("StackMethodTrait_0 : ")
    super.stackMethod()
  }
}

trait StackMethodTrait_1 extends Class_3 {
  abstract override def stackMethod() {
    print("StackMethodTrait_1 :")
    super.stackMethod()
  }
}

trait TypeParameterTrait {
  type T
  val val_ : T
  var var_ : T
  def function(x: T): T
}

class TypeParameterClass extends TypeParameterTrait {
  type T = String
  val val_ = "val_"
  var var_ = "var_"
  def function(x: T) = x + x
}

trait AnonymousTrait {
  val val_ : Int
  var var_ : Int
}

trait PreInitializedTrait {
  val val_ : Int
  var var_ : Int
}

class PreInitializedClass(v_0: Int, v_1: Int) extends {
  val val_ = v_0
  var var_ = v_1
} with PreInitializedTrait

object Trait_Main extends App {
  //  val basicClass_0 = new BasicClass_0
  //  basicClass_0.definedMethod()
  //  println(basicClass_0.val_)
  //  val basicClass_1 = new BasicClass_1
  //  basicClass_1.definedMethod()

  //  val withClass = new WithClass
  //  withClass.method_1()

  //  val aopClass_0_0 = new AopClass_0_0
  //  aopClass_0_0.abstractOverrideMethod

  //  val aopClass_0 = new AopClass_0 with AopTrait
  //  aopClass_0.abstractOverrideMethod

  //  val stackMethodClass = new StackMethodClass with StackMethodTrait_0 with StackMethodTrait_1
  //  stackMethodClass.stackMethod()

  //  val typeParameterClass = new TypeParameterClass
  //  println(typeParameterClass.val_)
  //  println(typeParameterClass.var_)
  //  println(typeParameterClass.function("function"))

  //    val anonymousTrait = new AnonymousTrait {
  //      val val_ = 1
  //      var var_ = 2
  //    }
  //    println(anonymousTrait.val_)
  //    println(anonymousTrait.var_)

  //  val x = 3
  //  val preInitializedTrait = new {
  //      val val_ = 1 * x
  //      var var_ = 2 * x
  //  } with PreInitializedTrait
  //  println(preInitializedTrait.val_);
  //  println(preInitializedTrait.var_);

  val preInitializedClass = new PreInitializedClass(1, 2)
  println(preInitializedClass.val_);
  println(preInitializedClass.var_);
}

