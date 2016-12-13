package idv.hsiehpinghan.scalaexample.example

class Regex_() {

}

object Regex_Main extends App {
  val decimalRegex = """(-)?(\d+)(\.\d*)?""".r
  val decimalRegex(sign, integerpart, decimalpart) = "-1.23"
  println("sign : %s, integerpart : %s, decimalpart : %s".format(sign, integerpart, decimalpart))
}