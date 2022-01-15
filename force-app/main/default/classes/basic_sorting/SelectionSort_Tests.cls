/**
 * Created by Brooks Johnson on 1/14/2022.
 */

@IsTest
private class SelectionSort_Tests {
  @IsTest
  static void itShouldSortList() {
    // given
    List<Integer> integers = new List<Integer>{ 7, 8, 5, 4, 9, 2 };
    // when
    SelectionSort.sort(integers);
    // when
    System.assertEquals(2, integers[0], 'The list should be sorted');
    System.assertEquals(9, integers[5], 'The list should be sorted');
  }
}
