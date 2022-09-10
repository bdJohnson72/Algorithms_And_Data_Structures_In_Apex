/**
 * Created by Brooks Johnson on 2/23/2022.
 */

public with sharing class RemoveDuplicatesFromSortedArray {
  public static Integer removeDuplicates(List<Integer> nums) {
    Integer length = nums.size();
    if (length == 0) {
      return 0;
    }
    Integer insertIndex = 1;
    for (Integer i = 1; i < length; i++) {
      //because this is a sorted array we can assume that index 0 is a value we have not seen before
      //0,0,1,1,1,2,2,3,3,4
      if (nums[i] != nums[i - 1]) {
        nums[insertIndex] = nums[i];
        System.debug('new nums = ' + nums);
        insertIndex++;
      }
    }
    return insertIndex;
  }
}
