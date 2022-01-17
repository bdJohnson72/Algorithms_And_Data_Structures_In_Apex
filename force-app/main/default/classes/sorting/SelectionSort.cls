/**
 * @description A basic sorting algorithm that runs at O(n^2) time.
 */

public with sharing class SelectionSort {
  public static void sort(List<Integer> integers) {
    Integer listLength = integers.size() - 1;
    for (Integer i = 0; i < listLength; i++) {
      Integer minIndex = i;
      for (Integer j = i + 1; j <= listLength; j++) {
        System.debug(
          LoggingLevel.INFO,
          'comparing ' +
          integers[j] +
          ' ' +
          integers[i]
        );
        if (integers[j] < integers[minIndex]) {
          minIndex = j;
        }
      }
      Integer temp = integers[i];
      integers[i] = integers[minIndex];
      integers[minIndex] = temp;
      System.debug(LoggingLevel.INFO, 'integers after inner loop ' + integers);
    }
    System.debug(LoggingLevel.INFO, 'Value of sorted list = ' + integers);
  }
}
