/**
 * Created by Brooks Johnson on 1/3/2022.
 */

@IsTest
public with sharing class MultiplePointers_Tests {
  @IsTest
  static void returnsPairSumofZero() {
    //given
    List<Integer> integers = new List<Integer>{
      -4,
      -3,
      -2,
      -1,
      0,
      1,
      2,
      3,
      12
    };
    //when
    List<Integer> results = MultiplePointers.findZeroSumPair(integers);
    //then
    System.debug(results);
    System.assert(results[0] == -3 && results[1] == 3);
  }
}
