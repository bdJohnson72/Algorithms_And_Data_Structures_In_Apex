@IsTest
private class BubbleSort_Tests {
  @IsTest
  static void itShouldSortList() {
    //given
    List<Integer> integers = new List<Integer>{
      18,
      9,
      0,
      75,
      75,
      22,
      44,
      2,
      145,
      -22
    };
    //when
    Test.startTest();
    BubbleSort bubbleSort = new BubbleSort();
    bubbleSort.sort(integers);
    Test.stopTest();
    //then
    System.assert(integers[0] == -22);
  }
}
