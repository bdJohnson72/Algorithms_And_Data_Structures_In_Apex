/**
 * Uses divide and conquer approach to get to single element arrays. Arrays of size 1 are sorted by default.
 */

public with sharing class MergeSort {
  /**
   * @description Divide  portion of the Algo. It uses recursion to split the List input in sorted lists of one element
   * Notice that the space complexity of Merge Sort in O(n) because we are creating new Lists with every recursive call
   * @param integers  A list of integers to be sorted.
   */
  public static void sort(List<Integer> integers) {
    Integer length = integers.size();
    if (length < 2) {
      return;
    }
    Integer middle = length / 2;
    List<Integer> left = new List<Integer>();
    List<Integer> right = new List<Integer>();
    //Create two new arrays
    for (Integer i = 0; i < middle; i++) {
      left.add(integers[i]);
    }
    System.debug(LoggingLevel.INFO, 'value of left array = ' + left);
    for (Integer i = middle; i < length; i++) {
      right.add(integers[i]);
    }
    System.debug(LoggingLevel.INFO, 'Value of right array = ' + right);
    sort(left);
    sort(right);
    mergeLists(left, right, integers);
  }

  /**
   * @description This method will take two sorted lists and merge them together
   * @param left left-hand side of the list to be sorted
   * @param right right-hand side of the list to be sorted
   * @param input List that will be updated
   *
   * @return Sorted list
   */
  public static List<Integer> mergeLists(
    List<Integer> left,
    List<Integer> right,
    List<Integer> input
  ) {
    // Create pointers for each array
    Integer i = 0;
    Integer j = 0;
    Integer k = 0;
    Integer leftSize = left.size();
    Integer rightSize = right.size();

    while (i < leftSize && j < rightSize) {
      //compare the list values
      System.debug(
        LoggingLevel.INFO,
        'Comparing ' +
        left[i] +
        ' to ' +
        right[j]
      );
      if (left[i] <= right[j]) {
        input[k] = left[i];
        System.debug(LoggingLevel.INFO, 'Results list = ' + input);
        i++;
      } else {
        input[k] = right[j];
        System.debug(
          LoggingLevel.INFO,
          'In Else condition results updated to ' + input
        );
        j++;
      }
      k++;
    }
    // We have dropped out of the first loop but may still elements left in one of the two lists
    // We take the remainder of the list and add it to the end of results
    while (i < leftSize) {
      input[k] = left[i];
      System.debug(LoggingLevel.INFO, 'Adding remainder of list one ' + input);
      i++;
      k++;
    }
    while (j < rightSize) {
      input[k] = right[j];
      System.debug(LoggingLevel.INFO, 'Adding remainder of list two ' + input);
      j++;
      k++;
    }
    System.debug(LoggingLevel.INFO, 'Results list = ' + input);
    return input;
  }
}
