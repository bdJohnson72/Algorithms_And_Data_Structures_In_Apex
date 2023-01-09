/**
 * Created by Brooks Johnson on 3/3/2022.
 */

@IsTest
private class SlidingWindow_Tests {
  private static List<Integer> data = new List<Integer>{
    2,
    6,
    9,
    2,
    1,
    8,
    5,
    6,
    3
  };
  @IsTest
  static void testBruteForce() {
    //when
    Integer result = SlidingWindow.bfMaxSubArraySum(data, 3);
    //then
    System.assertEquals(19, result, 'It should return 19');
  }

  @IsTest
  static void testSlidingWindow() {
    //when
    Integer result = SlidingWindow.swMaxSubArraySum(data, 3);
    //then
    System.assertEquals(19, result, 'It should calculate 19');
  }
}
