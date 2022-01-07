/**
 * Created by Brooks Johnson on 1/3/2022.
 */

public with sharing class MultiplePointers {
  /**
   * @param integers a sorted list to compare.
   *@description  This is the O(n) implementation.
   * @return the first pair with a sum of 0
   */
  public static List<Integer> findZeroSumPair(List<Integer> integers) {
    Integer left = 0;
    Integer right = integers.size() - 1;
    while (left < right) {
      Integer sum = integers[left] + integers[right];
      if (sum == 0) {
        List<Integer> results = new List<Integer>{
          integers[left],
          integers[right]
        };
        return results;
      } else if (sum > 0) {
        //if the sum is greater than zero we know what a possible pair might still exist
        //so we decrement the right index;
        right--;
      } else {
        //If the sum is less than zero we can move the left index ahead
        left++;
      }
    }
    return null;
  }
}
