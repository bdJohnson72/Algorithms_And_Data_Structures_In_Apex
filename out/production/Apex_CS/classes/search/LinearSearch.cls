/**
 * @description simple linear or "brute force" search
 * This is an O(n) algorithm the time complexity is directly related to the size of the inputs
 */

public with sharing class LinearSearch {
  public static Integer search(List<Integer> valuesToSearch, Integer value) {
    Integer steps = 0;
    for (Integer i = 0; i < valuesToSearch.size(); i++) {
      steps++;
      if (valuesToSearch[i] == value) {
        System.debug(
          LoggingLevel.INFO,
          'it took ' +
          steps +
          ' steps to search'
        );
        return i;
      }
    }
    System.debug(LoggingLevel.INFO, 'It took ' + steps + ' steps to search');
    return -1;
  }

  public static Integer search(List<String> valuesToSearch, String value) {
    Integer steps = 0;
    for (Integer i = 0; i < valuesToSearch.size(); i++) {
      steps++;
      if (valuesToSearch[i] == value) {
        System.debug(
          LoggingLevel.INFO,
          'It took ' +
          steps +
          ' steps to search'
        );
        return i;
      }
    }
    System.debug(LoggingLevel.INFO, 'It took ' + steps + ' steps to search');
    return -1;
  }

  public static Integer search(List<Account> accounts, String valueToSearch) {
    for (Integer i = 0; i < accounts.size(); i++) {
      if (accounts[i].Name == valueToSearch) {
        return i;
      }
    }
    return -1;
  }
}
