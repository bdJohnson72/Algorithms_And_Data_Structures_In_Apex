/**
 * LeetCode problem 217 Contains Duplicates
 * Given an integer array nums,
 * return true if any value appears at least twice in the array,
  * and return false if every element is distinct.
*/

public with sharing class ContainsDuplicates {

    /**
     * @description This is the O(n^2) solution to the problem
     * @param nums
     *
     * @return
     */
    public static Boolean containsDuplicatesOne(List<Integer> nums) {
        for (Integer i = 0; i < nums.size(); i++) {
            for (Integer j = i + 1; j < nums.size(); j++) {
                if (nums[i] == nums[j]) {
                    return true;
                }
            }
        }
        return false;
    }
    /**
     * constant time solution to the problem
     * @param nums
     *
     * @return
     */
    public static Boolean containsDuplicates(List<Integer> nums) {
        Set<Integer> dupes = new Set<Integer>();
        for (Integer num : nums) {
            if (dupes.contains(num)) {
                return true;
            }
            dupes.add(num);
        }
        return false;
    }

    /**
     * @description O (n log n) solution to the problem
     * based on sorting
     * @param nums
     *
     * @return
     */
    public static Boolean containsDuplicatesSort(List<Integer> nums) {
        nums.sort();
        for (Integer i = 0; i < nums.size() - 1; i++) {
            if (nums[i] == nums[i + 1]) {
                return true;
            }
        }
        return false;
    }
}