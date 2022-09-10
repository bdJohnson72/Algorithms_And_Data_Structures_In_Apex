/**
 * Created by Brooks Johnson on 3/24/2022.
 */

public with sharing class Hannoi {
  public static void towers(
    Integer n,
    String fromRod,
    String toRod,
    String helperRod
  ) {
    if (n == 1) {
      System.debug('take disk 1 from rod ' + fromRod + ' to rod ' + toRod);
      return;
    }

    towers(n - 1, fromRod, helperRod, toRod);

    System.debug(
      'Take disk ' +
      n +
      ' from rod ' +
      fromRod +
      ' to rod ' +
      toRod
    );
    //towers(n -1, helperRod, toRod, fromRod);
  }
}
