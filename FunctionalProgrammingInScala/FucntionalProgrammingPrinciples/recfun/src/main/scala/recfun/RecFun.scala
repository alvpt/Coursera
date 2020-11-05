package recfun

object RecFun extends RecFunInterface {

  def main(args: Array[String]): Unit = {
    println("Pascal's Triangle")
    for (row <- 0 to 10) {
      for (col <- 0 to row)
        print(s"${pascal(col, row)} ")
      println()
    }
  }

  /**
   * Exercise 1
   */
  def pascal(c: Int, r: Int): Int = {
    /** As it's explained in Wikipedia, the Pascal number of
     * the row n and column k can be calculated using the
     * calculation of combinations formula:
     *
     * C(n,k) = n!/(k! * (n-k)!)
     *
     */

    def factorial(n: Int): Int =
      if (n == 0) 1 else n* factorial(n-1)

    factorial(r)/(factorial(c) * factorial(r-c))

  }

  /**
   * Exercise 2
   */
  def balance(chars: List[Char]): Boolean = {

    def balanceIter(charsIter: List[Char], sum: Int) : Boolean = {

      if(charsIter.isEmpty) {
        sum == 0
      } else
      {
        if (charsIter.head == '(') balanceIter(charsIter.tail, sum + 1)
        else if (charsIter.head == ')') balanceIter(charsIter.tail, sum - 1)
        else balanceIter(charsIter.tail, sum)
      }
    }

    balanceIter(chars, 0)

  }

  /**
   * Exercise 3
   */
  def countChange(money: Int, coins: List[Int]): Int = {
    if(money == 0)
      1
    else if(money > 0 && coins.isEmpty)
      countChange(money - coins.head, coins) + countChange(money, coins.tail)
    else
      0
  }
}
