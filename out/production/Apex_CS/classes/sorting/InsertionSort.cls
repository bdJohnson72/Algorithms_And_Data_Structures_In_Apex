/**
 * Created by Brooks Johnson on 9/27/2021.
 * We have a sorted and unsorted partition of our array
 * The sorted partition begins at array[0]. A collection with one element is by definition sorted
 * The first unsorted partition index = 1
 * We traverse the sorted partition from right to left
 */

public with sharing class InsertionSort {
  /* List<Integer> integers = new List<Integer>{5, 4, 6, -22, 10, 500, 76};*/
  public static void sort(List<Integer> valuesToSort) {
    //we start at index 1 the first unsorted index
    for (Integer i = 1; i < valuesToSort.size(); i++) {
      Integer current = valuesToSort[i];
      Integer j = i - 1;
      //check the sorted partition
      while (j >= 0 && valuesToSort[j] > current) {
        valuesToSort[j + 1] = valuesToSort[j];
        j--;
      }
      valuesToSort[j + 1] = current;
    }
  }
}
