/**
 * Created by Brooks Johnson on 12/29/2021.
 */

public with sharing class FrequencyCounting {
  public static Boolean testSquaresOne(
    List<Integer> listOne,
    List<Integer> listTwo
  ) {
    Boolean result = false;
    if (listOne.size() != listTwo.size()) {
      return false;
    }
    for (Integer i = 0; i < listOne.size(); i++) {
      Integer squaredIndex = listTwo.indexOf(
        Integer.valueOf(Math.pow(listOne[i], 2))
      );
      if (squaredIndex == -1) {
        return false;
      } else {
        listTwo.remove(squaredIndex);
        System.debug('removing' + listTwo);
      }
    }
    return true;
  }

  public static Boolean testSquaresTwo(
    List<Integer> listOne,
    List<Integer> listTwo
  ) {
    Boolean result = false;
    Map<Integer, Integer> countOne = new Map<Integer, Integer>();
    Map<Integer, Integer> countTwo = new Map<Integer, Integer>();

    Integer listOneSize = listOne.size();
    Integer listTwoSize = listTwo.size();
    for (Integer i = 0; i < listOneSize; i++) {
      if (countOne.containsKey(listOne[i])) {
        countOne.put(listOne[i], countOne.get(listOne[i]) + 1);
      } else {
        countOne.put(listOne[i], 1);
      }
    }
    for (Integer i = 0; i < listTwoSize; i++) {
      if (countTwo.containsKey(listTwo[i])) {
        countTwo.put(listTwo[i], countTwo.get(listTwo[i]) + 1);
      } else {
        countTwo.put(listTwo[i], 1);
      }
    }
    //Look for matches
    for (Integer i : countOne.keySet()) {
      Integer keySquared = Integer.valueOf(Math.pow(i, 2));
      Integer countOneValue = countOne.get(i);
      if (
        countTwo.containsKey(keySquared) &&
        countTwo.get(keySquared) == countOneValue
      ) {
        result = true;
      } else {
        return false;
      }
    }
    System.debug('countOne' + countOne);
    System.debug('count two' + countTwo);
    return result;
  }
}
