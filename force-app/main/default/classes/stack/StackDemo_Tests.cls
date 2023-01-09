/**
 * Created by brooks.johnson on 4/21/2022.
 */

@IsTest
private class StackDemo_Tests {
  @IsTest
  static void itShouldReturnFalseMissingDelimiter() {
    //given
    String test = '{';
    //when
    Boolean result = StackDemo.isMatched(test);
    System.assert(result == false);
  }
  @IsTest
  static void itShouldReturnFalseWrongDelimiter() {
    //given
    String test = '{]';
    //when
    Boolean result = StackDemo.isMatched(test);
    System.assert(result == false);
  }

  @IsTest
  static void itShouldReturnTrue() {
    //given
    String test = '{ () }';
    //when
    Boolean result = StackDemo.isMatched(test);
    System.assert(result == true);
  }
  @IsTest
  static void itShouldReturnTrue2() {
    String test = '((([[{}]])))';
    System.assert(StackDemo.isMatched(test) == true);
  }
}
