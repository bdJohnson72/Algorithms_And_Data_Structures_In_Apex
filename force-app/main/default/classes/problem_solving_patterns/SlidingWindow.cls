/**
 * Created by Brooks Johnson on 3/3/2022.
 */

public with sharing class SlidingWindow {
  /**
   * @description This is the naive solution and will run at O(n^2) time.
   * @param nums a list of integers order does not matter
   * @param target: The size of the sub array
   *
   * @return value of the max sub array
   */
  public static Integer bfMaxSubArraySum(List<Integer> nums, Integer target) {
    if (target > nums.size()) {
      return null;
    }
    //could have an issue with negative numbers and would want to get the
    //absolute value instead
    Integer max = 0;
    Integer length = nums.size() - target + 1;
    for (Integer i = 0; i < length; i++) {
      Integer temp = 0;
      for (Integer j = 0; j < target; j++) {
        temp += nums[i + j];
      }
      if (temp > max) {
        max = temp;
      }
    }
    return max;
  }
  /**
   * @description  This is the O(n) solution. Using the Sliding window technique
   * @param nums
   * @param target
   *
   * @return
   */
  public static Integer swMaxSubArraySum(List<Integer> nums, Integer target) {
    Integer maxSum = 0;
    Integer tempSum = 0;
    if (nums.size() < target) {
      return null;
    }
    //We are going to add the first n numbers together as defined in the target argument
    for (Integer i = 0; i < target; i++) {
      maxSum += nums[i];
    }
    tempSum = maxSum;
    //We already have the sum of the first window.
    //Now we can just increment by i and compare the sliding window value
    // by subtracting the last value and adding the value at i;
    for (Integer i = target; i < nums.size(); i++) {
      tempSum = tempSum - nums[i - target] + nums[i];
      maxSum = Math.max(maxSum, tempSum);
    }
    return maxSum;
  }
}
