/**
 * Created by Brooks Johnson on 1/14/2022.
 */

public with sharing class BinarySearch {
  public static Integer binarySearchIterative(
    List<Integer> listToSearch,
    Integer target
  ) {
    // Steps is only here to show the performance of binary search. It is not required for the algo.
    Integer steps = 0;
    Integer left = 0;
    Integer right = listToSearch.size() - 1;
    while (left <= right) {
      steps++;
      // find the middle value
      Integer middle = (left + right) / 2;
      // if the target value is equal to the middle index value we return the index
      if (target == listToSearch[middle]) {
        System.debug(
          LoggingLevel.INFO,
          'It took ' +
          steps +
          ' steps to search'
        );
        return middle;
      }
      // If the target value is less  than the middle
      // We throw out halve the problem and reset our right hand side index
      if (target < listToSearch[middle]) {
        System.debug(
          LoggingLevel.INFO,
          'Discarding the left hand side of the problem'
        );
        right = middle - 1;
        System.debug(LoggingLevel.INFO, 'The new left index  is ' + left);
      } else {
        // Discarding the left hand side of the problem
        left = middle + 1;
      }
    }
    //value was not found
    System.debug(LoggingLevel.INFO, 'It took ' + steps + ' steps to search');
    return -1;
  }
  @SuppressWarnings('PMD.ExcessiveParameterList')
  public static Integer binarySearchRecursive(
    List<Integer> listToSearch,
    Integer target,
    Integer left,
    Integer right
  ) {
    // Base Case
    if (left > right) {
      return -1;
    }
    // Get the middle index
    Integer middle = (left + right) / 2;
    // Base case a match is found
    if (target == listToSearch[middle]) {
      return middle;
    } else if (target < listToSearch[middle]) {
      // Discarding the right hand side of the problem
      return binarySearchRecursive(listToSearch, target, left, middle - 1);
    } else {
      return binarySearchRecursive(listToSearch, target, middle + 1, right);
    }
  }
}
