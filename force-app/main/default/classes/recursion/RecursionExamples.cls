/**
 * Created by Brooks Johnson on 1/6/2022.
 * @DESCRIPTION  Two ways to reverse a string in Apex. Not including simply calling String.reverse()
 */

public with sharing class RecursionExamples {
  /**
   * @description The iterative solution
   *
   * @param stringToReverse The string we want to reverse
   *
   * @return the reversed string
   */
  public static String stringReversalIterative(String stringToReverse) {
    List<String> stringList = stringToReverse.split('');
    List<String> results = new List<String>();
    for (Integer i = stringList.size() - 1; i >= 0; i--) {
      results.add(stringList[i]);
    }
    return String.join(results, '');
  }

  /**
   * @description The recursive solution
   * @param str the string we want to reverse
   *
   * @return The reversed string
   */
  public static String stringReversalRecursive(String str) {
    String result = '';
    if (str.length() == 1) {
      return str;
    }
    result +=
      str.substring(str.length() - 1, str.length()) +
      stringReversalRecursive(str.substring(0, str.length() - 1));
    return result;
  }

  /**
   * @description computes a factorial iteratively
   * @param num The number to compute the factorial for
   *
   * @return factorial of input
   */
  public static Integer factorialIterative(Integer num) {
    Integer result = 1;
    for (Integer i = 1; i <= num; i++) {
      result *= i;
    }
    return result;
  }

  /**
   * @description computes a factorial recursively
   * @param num number to compute the factorial for
   *
   * @return factorial of input
   */
  public static Integer factorialRecursive(Integer num) {
    // Base case
    if (num == 1) {
      return 1;
    }
    // recursive case
    return num *= factorialRecursive(num - 1);
  }

  /**
   * @description calculates a number to a specific power recursively.
   * @param num the number that we starting with
   * @param power the power to multiply the number by
   *
   * @return the number to power ex: 10, 2 returns 100
   */
  public static Integer power(Integer num, Integer power) {
    //Our base case
    if (power == 1) {
      return num;
    }
    // our recursive case
    return num *= power(num, power - 1);
  }

  public static Integer range(Integer num) {
    // Base case
    if (num == 0) {
      return 0;
    }
    // Recursive case
    return num += range(num - 1);
  }

  public static Integer fibonacci(Integer num) {
    if (num < 2) {
      return num;
    }
    return fibonacci(num - 2) + fibonacci(num - 1);
  }

  /**
   * @description A recursive method to determine is a word is a palindrome.
   * like rotor or madam,
   * @param word to evaluate
   *
   * @return Boolean
   */

  public static Boolean isPalindrome(String word) {
    if (word.length() <= 1) {
      return true;
    }
    if (
      word.substring(0, 1) == word.substring(word.length() - 1, word.length())
    ) {
      return isPalindrome(word.substring(1, word.length() - 1));
    } else {
      return false;
    }
  }
}
