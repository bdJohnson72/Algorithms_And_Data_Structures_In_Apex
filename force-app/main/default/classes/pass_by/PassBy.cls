/**
 * Created by Brooks Johnson on 4/10/2022.
 */

public with sharing class PassBy {
  public static List<Integer> timesTwo(List<Integer> integers) {
    List<Integer> deepCopy = integers.clone();
    for (Integer i = 0; i < deepCopy.size(); i++) {
      deepCopy[i] *= 2;
    }
    return deepCopy;
  }
}
