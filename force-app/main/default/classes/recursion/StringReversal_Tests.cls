/**
 * Created by Brooks Johnson on 1/6/2022.
 */

@IsTest
private class StringReversal_Tests {
  @IsTest
  static void itShouldReturnReversedString() {
    //given
    String test = 'hello';
    //when
    String results = StringReversal.iterative(test);
    //then
    System.assert(results == 'olleh', 'The string should be reversed');
  }

  @IsTest
  static void itShouldReturnReversedRecursive() {
    //given
    String test = 'hello';
    //when
    StringReversal.recursive(test);
    String results = StringReversal.recursive(test);
    //then
    System.assert(results == 'olleh', 'The string should be reversed');
    System.assert(results == test.reverse(), 'The string should be reversed');
  }
}
