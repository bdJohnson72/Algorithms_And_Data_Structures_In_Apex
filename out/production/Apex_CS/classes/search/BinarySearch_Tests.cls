/**
 * Created by Brooks Johnson on 1/14/2022.
 */

@IsTest
private class BinarySearch_Tests {
  public static final List<Integer> INTEGER_LIST = new List<Integer>{
    1,
    97,
    14,
    362,
    10,
    278,
    45,
    66,
    77,
    235,
    99,
    586
  };

  @IsTest
  static void itShouldReturnAValueInterative() {
    //given
    INTEGER_LIST.sort();
    // when
    Integer result = BinarySearch.binarySearchIterative(INTEGER_LIST, 586);
    System.assertEquals(
      11,
      result,
      'It should have returned the correct index'
    );
  }
  @IsTest
  static void itShouldReturnNegOneIterative() {
    //given
    INTEGER_LIST.sort();
    // when
    Integer result = BinarySearch.binarySearchIterative(INTEGER_LIST, 12345);
    System.assertEquals(
      -1,
      result,
      'It should have returned the correct index'
    );
  }
  @IsTest
  static void itShouldReturnValueRecursive() {
    //given
    List<Integer> listToSearch = ListUtils.generateList(1000);
    listToSearch.add(976);
    listToSearch.sort();
    //when
    Integer result = BinarySearch.binarySearchRecursive(
      listToSearch,
      976,
      0,
      listToSearch.size() - 1
    );
    System.assertNotEquals(-1, result, 'It should not return -1');
  }

  @IsTest
  static void itShouldReturnNegOneRecursive() {
    //given
    List<Integer> listToSearch = new List<Integer>{
      1,
      2,
      3,
      4,
      5,
      6,
      7,
      8,
      9,
      10
    };
    //when
    Integer result = BinarySearch.binarySearchRecursive(
      listToSearch,
      100,
      0,
      9
    );
    System.assertEquals(-1, result, 'It should return negative 1');
  }
}
