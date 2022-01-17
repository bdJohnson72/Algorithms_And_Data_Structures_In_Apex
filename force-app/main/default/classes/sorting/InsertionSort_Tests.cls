@IsTest
private class InsertionSort_Tests {
  @IsTest
  static void testSort() {
    //given
    List<Integer> integers = new List<Integer>{ 5, 4, 6, -22, 10, 500, 76 };
    InsertionSort.sort(integers);
    System.assert(integers[0] == -22);
  }
}
