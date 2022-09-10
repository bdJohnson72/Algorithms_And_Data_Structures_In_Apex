/**
 * Created by Brooks Johnson on 12/29/2021.
 */

@IsTest
private class FrequencyCounting_Tests {
  private static final List<Integer> listOne = new List<Integer>{
    1,
    2,
    3,
    4,
    3
  };
  private static final List<Integer> listTwo = new List<Integer>{
    1,
    4,
    9,
    9,
    16
  };
  private static final List<Integer> listThree = new List<Integer>{
    1,
    4,
    9,
    4,
    16
  };
  @IsTest
  static void listsShouldMatch() {
    Boolean result = FrequencyCounting.testSquaresOne(listOne, listTwo);
    System.assert(result == true);
  }

  @IsTest
  static void listsShouldNotMatch() {
    Boolean result = FrequencyCounting.testSquaresOne(listOne, listThree);
    System.assert(result == false);
  }

  @IsTest
  static void testForEqualityofSize() {
    List<Integer> emptyList = new List<Integer>();
    Boolean result = FrequencyCounting.testSquaresOne(listOne, emptyList);
    System.assert(result == false);
  }

  @IsTest
  static void listsShouldMatchOptimized() {
    Boolean result = FrequencyCounting.testSquaresTwo(listOne, listTwo);
    System.assert(result == true);
  }

  @IsTest
  static void listsShouldNotMatchOptimized() {
    Boolean result = FrequencyCounting.testSquaresTwo(listOne, listThree);
    System.assert(result == false);
  }
}
