/**
 * Created by Brooks Johnson on 9/10/2022.
 */

@IsTest
public with sharing class ListProbs_Tests {
  @IsTest
  static void nonConstructibleChange() {
    List<Integer> coins = new List<Integer>{ 5, 7, 1, 1, 2, 3, 22 };
    System.assert(ListProbs.nonConstructibleChange(coins) == 20);
    List<Integer> coins2 = new List<Integer>{ 87 };
    List<Integer> coins3 = new List<Integer>{
      109,
      2000,
      8765,
      19,
      18,
      17,
      16,
      8,
      1,
      1,
      2,
      4
    };

    System.assert(ListProbs.nonConstructibleChange(coins2) == 1);
    System.assert(ListProbs.nonConstructibleChange(coins3) == 87);
  }
}
