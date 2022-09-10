/**
 * Created by Brooks Johnson on 1/6/2022.
 */

@IsTest
private class RecursionExamples_Tests {
  @IsTest
  static void itShouldReturnReversedString() {
    //given
    String test = 'hello';
    //when
    String results = RecursionExamples.stringReversalIterative(test);
    //then
    System.assert(results == 'olleh', 'The string should be reversed');
  }

  @IsTest
  static void itShouldReturnReversedRecursive() {
    //given
    String test = 'hello';
    //when
    RecursionExamples.stringReversalRecursive(test);
    String results = RecursionExamples.stringReversalRecursive(test);
    //then
    System.assert(results == 'olleh', 'The string should be reversed');
    System.assert(results == test.reverse(), 'The string should be reversed');
  }

  @IsTest
  static void itShouldReturnIterativeFactorial() {
    //given
    //when
    Integer result = RecursionExamples.factorialIterative(5);
    //then
    System.assert(result == 120, 'It should compute factorial iteratively');
  }

  @IsTest
  static void itShouldReturnRecursiveFactorial() {
    //given
    //when
    Integer result = RecursionExamples.factorialRecursive(5);
    //then
    System.assert(result == 120, 'It should compute factorial recursively');
  }

  @IsTest
  static void itShouldCalculatePower() {
    //given
    //when
    Integer result = RecursionExamples.power(10, 3);
    //then
    System.assert(result == 1000, 'It should compute power of 10 ^ 2');
  }

  @IsTest
  static void itShouldCalculateRecursiveRange() {
    //given
    //when
    Integer result = RecursionExamples.range(6);
    //then
    System.assert(result == 21, 'It should compute product of list');
  }

  @IsTest
  static void itShouldReturnFibonacci() {
    //given
    //when
    Integer result = RecursionExamples.fibonacci(5);
    System.assert(result == 5, 'It should compute fibonacci');
  }

  @IsTest
  static void isShouldReturnTrueForPalindrome() {
    //given
    String work = 'rotor';
    //when
    Boolean result = RecursionExamples.isPalindrome(work);
    //then
    System.assert(result == true, 'It should return true for anagram');
  }
  @IsTest
  static void itShouldReturnFalseForPalindrome() {
    //given
    String word = 'test';
    //when
    Boolean result = RecursionExamples.isPalindrome(word);
    //then
    System.assert(
      result == false,
      'It should not return true for a palindrome'
    );
  }
}
