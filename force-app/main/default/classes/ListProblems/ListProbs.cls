/**
 * Created by Brooks Johnson on 9/10/2022.
 */

public with sharing class ListProbs {
  /**
   * From Algo Expert
   * @param coins
   *
   * @return
   */
  public static Integer nonConstructibleChange(List<Integer> coins) {
    Integer currentChange = 0;
    coins.sort();
    if (coins.size() == 0) {
      return 1;
    }
    for (Integer i = 0; i < coins.size(); i++) {
      Integer current = coins.get(i);
      if (current > currentChange + 1) {
        break;
      } else {
        currentChange += current;
      }
    }
    return currentChange + 1;
  }
}
