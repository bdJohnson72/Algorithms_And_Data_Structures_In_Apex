/**
 * Created by Brooks Johnson on 4/10/2022.
 */

public with sharing class PassBy {
  public static void addTenByValue(Integer value) {
    value += 10;
    System.debug('Value in the addTenByValue call: ' + value);
  }

  public static Integer addTen(Integer value) {
    return value + 10;
  }

  public static void timesTwo(List<Integer> integers) {
    for (Integer i = 0; i < integers.size(); i++) {
      integers[i] *= 2;
    }
    integers.add(10);
  }

  public static List<Integer> timesTwoCopy(List<Integer> integers) {
    List<Integer> copy = integers;
    for (Integer i = 0; i < copy.size(); i++) {
      copy[i] *= 2;
    }
    return copy;
  }

  public static List<Integer> timesTwoDeepClone(List<Integer> integers) {
    List<Integer> deepCopy = integers.clone();
    for (Integer i = 0; i < deepCopy.size(); i++) {
      deepCopy[i] *= 2;
    }

    return deepCopy;
  }
}
