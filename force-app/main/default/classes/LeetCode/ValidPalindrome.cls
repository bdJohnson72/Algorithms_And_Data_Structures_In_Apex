/**
 * Created by Brooks Johnson on 2/27/2022.
 */

public with sharing class ValidPalindrome {
  //amanaplanacanalpanama
  public static Boolean isPalindrome(String str) {
    String regex = '[/\\W]';
    str = str.replaceAll(regex, '').toLowerCase();
    Integer rightPointer = str.length() - 1;
    for (Integer i = 0; i < rightPointer; i++) {
      if (str.charAt(i) != str.charAt(rightPointer)) {
        return false;
      } else {
        rightPointer--;
      }
    }
    return true;
  }
  public static Boolean isPalindromeRecurse(String str) {
    System.debug('checking ' + str);
    String regex = '[/\\W]';
    str = str.replaceAll(regex, '').toLowerCase();
    System.debug(str.length());
    if (str.length() <= 1) {
      System.debug('in base case');
      return true;
    }
    if (str.charAt(0) == str.charAt(str.length() - 1)) {
      return isPalindromeRecurse(str.substring(1, str.length() - 1));
    } else {
      return false;
    }
  }
}
