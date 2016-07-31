package idv.hsiehpinghan.scalaexample.example

import scala.collection.immutable.List
import scala.io.Source

class Rational(n: Int, d: Int) {
  require(d != 0)
  private val g = gcd(n.abs, d.abs)
  val numer = n / g
  val denom = d / g

  def this(n: Int) = this(n, 1)

  def +(that: Rational): Rational = {
    new Rational(
      numer * that.denom + that.numer * denom,
      denom * that.denom)
  }

  def +(i: Int): Rational =
    new Rational(numer + i * denom, denom)

  def *(that: Rational): Rational =
    new Rational(numer * that.numer, denom * that.denom)

  def lessThan(that: Rational) =
    this.numer * that.denom < that.numer * this.denom

  def max(that: Rational) =
    if (lessThan(that)) that else this

  override def toString = numer + "/" + denom

  private def gcd(a: Int, b: Int): Int =
    if (b == 0) a else gcd(b, a % b)
}

object Rational_Main extends App {
  implicit def intToRational(x: Int) = new Rational(x)
  //    val oneHalf = new Rational(1, 2)
  //    val twoThirds = new Rational(2, 3)
  //    println(oneHalf + oneHalf * twoThirds)
  println(2 * new Rational(66, 42))
}