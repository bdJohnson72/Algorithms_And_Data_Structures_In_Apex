/**
 * Created by Brooks Johnson on 1/15/2022.
 */

@IsTest
private class MergeSort_Tests {
  @IsTest
  static void itShouldSort() {
    //given
    List<Integer> listOne = new List<Integer>{ 1, 4, 5, 8, 100, 2, 6, 9 };
    //when
    MergeSort.sort(listOne);
    //then
    System.assertEquals(listOne[1], 2, 'It should sort the list');
    System.assertEquals(listOne[7], 100, 'It should sort the list');
  }
}
