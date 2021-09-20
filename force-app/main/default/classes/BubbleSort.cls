/**
 * @author Brooks Johnson
 * @description The most basic sort algo.
 * Bubble sort partitions the array into sorted and unsorted
 * O(n^2) time complexity / quadratic
 * 100 steps to sort 100 items, 10,000  to sort 100 etc...
 */

public with sharing class BubbleSort {

    /**
     * @description The for loop is initialized to to the length of the list and decremented to 0
     * A list with 5 items will start with  and unsortedIndex of 5 and decrement after each loop until it reaches 0
     * @param integersToSort The list of integers we want to sort.
     *
     * @return A sorted list
     */
    public List<Integer> sort(List<Integer> integersToSort) {
        for (Integer unsortedIndex = integersToSort.size() - 1; unsortedIndex > 0; unsortedIndex--) {
            //A nested for loop should be an automatic signal that an algo will degrade quickly
            for (Integer i = 0; i < unsortedIndex; i++) {
                if (integersToSort[i] > integersToSort[i + 1]) {
                    //bubble the larger value to the end of the array
                    swap(integersToSort, i, i + 1);
                }
            }
        }
        return null;
    }
    private void swap(List<Integer> arrayToSort, Integer i, Integer j) {
        if (i == j) {
            return;
        }
        Integer temp = arrayToSort[i];
        arrayToSort[i] = arrayToSort[j];
        arrayToSort[j] = temp;
    }
}