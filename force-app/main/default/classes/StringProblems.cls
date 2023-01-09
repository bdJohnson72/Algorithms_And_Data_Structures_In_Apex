/**
 * Created by Brooks Johnson on 9/10/2022.
 */

public with sharing class StringProblems {
  public static List<String> commonChars(List<String> words) {
    Map<Integer, Integer> union = new Map<Integer, Integer>();
    //build or first map from the first word
    String firstWord = words[0];
    for (Integer i = 0; i < firstWord.length(); i++) {
      if (union.containsKey(firstWord.charAt(i))) {
        union.put(firstWord.charAt(i), union.get(firstWord.charAt(i)) + 1);
      } else {
        union.put(firstWord.charAt(i), 1);
      }
    }

    // test the rest of the list of words
    for (Integer i = 1; i < words.size(); i++) {
      String tempWord = words[i];
      Map<Integer, Integer> tempMap = new Map<Integer, Integer>();
      for (Integer j = 0; j < tempWord.length(); j++) {
        Integer currentChar = tempWord.charAt(j);
        if (union.containsKey(currentChar)) {
          if (tempMap.containsKey(currentChar)) {
            tempMap.put(currentChar, tempMap.get(currentChar) + 1);
          } else {
            tempMap.put(currentChar, 1);
          }
        }
      }
      //after we have built the temp map
      for (Integer key : tempMap.keySet()) {
        tempMap.put(key, Math.min(tempMap.get(key), union.get(key)));
      }
      union = tempMap;
      System.debug(union);
    }
    List<Integer> charList = new List<Integer>();
    for (Integer key : union.keySet()) {
      while (union.get(key) > 0) {
        charList.add(key);
        union.put(key, union.get(key) - 1);
      }
    }
    return String.fromCharArray(charList).split('');
  }
}
