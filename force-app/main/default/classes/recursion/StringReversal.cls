/**
 * Created by Brooks Johnson on 1/6/2022.
 * @DESCRIPTION  Two ways to reverse a string in Apex. Not including simply calling String.reverse()
 */

public with sharing class StringReversal {
  /**
   * @description The iterative solution
   *
   * @param stringToReverse The string we want to reverse
   *
   * @return the reversed string
   */
  public static String iterative(String stringToReverse) {
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

  public static String recursive(String str) {
    List<String> strList = str.split('');
    List<String> results = new List<String>();
    //Here is our base case
    while (strList.size() > 0) {
      //our recursive case
      results.add(strList.remove(strList.size() - 1));
    }
    return String.join(results, '');
  }
}
