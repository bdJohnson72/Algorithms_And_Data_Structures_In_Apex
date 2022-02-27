/**
 * Created by Brooks Johnson on 2/27/2022.
 */

@IsTest
private class ValidPalindrome_Tests {
  @IsTest
  static void isPalindrome() {
    //given
    String testString = 'A man, a plan, a canal: Panama';
    //when
    Boolean result = ValidPalindrome.isPalindrome(testString);
    //then
    System.assertEquals(true, result, 'It is a palindrome');
  }
  @IsTest
  static void isPalindromeNegative() {
    //given
    String testString = 'race a car';
    //when
    Boolean result = ValidPalindrome.isPalindrome(testString);
    //then
    System.assertEquals(false, result, 'It is not a palindrome');
  }

  @IsTest
  static void isPalindromeRecurse() {
    //given
    String testString = 'A man, a plan, a canal: Panama';
    //when
    Boolean result = ValidPalindrome.isPalindromeRecurse(testString);
    //then
    System.assertEquals(true, result, 'It is a palindrome');
  }

  @IsTest
  static void isPalindromeNegativeRecurse() {
    //given
    String testString = 'race a car';
    //when
    Boolean result = ValidPalindrome.isPalindromeRecurse(testString);
    //then
    System.assertEquals(false, result, 'It is not a palindrome');
  }
}
