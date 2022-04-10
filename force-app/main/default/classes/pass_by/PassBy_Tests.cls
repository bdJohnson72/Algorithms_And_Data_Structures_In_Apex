/**
 * Created by Brooks Johnson on 4/10/2022.
 */

@IsTest
private class PassBy_Tests {
  @IsTest
  static void addTenByValue() {
    //given
    Integer value = 10;
    //when
    PassBy.addTenByValue(value);
    //then
    System.assert(value == 10);
  }
  @IsTest
  static void addTen() {
    //given
    Integer value = 10;
    //when
    value = PassBy.addTen(value);
    //then
    System.assert(value == 20);
  }

  @IsTest
  static void timesTwo() {
    //given
    List<Integer> integers = new List<Integer>{ 2, 4, 6 };
    //when
    System.assert(integers[0] == 2);
    PassBy.timesTwo(integers);
    System.debug(integers);
    System.assert(integers[0] == 4);
    System.assert(integers.size() == 4);
  }

  @IsTest
  static void timesTwoCopy() {
    //given
    List<Integer> integers = new List<Integer>{ 2, 4, 6 };
    //when
    System.assert(integers[0] == 2);
    List<Integer> result = PassBy.timesTwoCopy(integers);
    System.debug(integers);
    System.debug(result);
    System.assert(integers[0] == 4);
    System.assert(result[0] == 4);
    System.assert(result.equals(integers));
  }

  @IsTest
  static void timesTwoDeepCopy() {
    //given
    List<Integer> integers = new List<Integer>{ 2, 4, 6 };
    //when
    System.assert(integers[0] == 2);
    List<Integer> result = PassBy.timesTwoDeepClone(integers);
    System.debug(integers);
    System.debug(result);
    System.assert(integers[0] == 2);
    System.assert(result[0] == 4);
    System.assert(!result.equals(integers));
  }
}
