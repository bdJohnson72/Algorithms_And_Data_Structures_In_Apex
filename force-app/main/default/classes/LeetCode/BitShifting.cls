/**
 * Created by Brooks Johnson on 2/27/2022.
 */

public with sharing class BitShifting {
  public static Integer hammingWeight(Integer n) {
    Integer bits = 0;
    Integer mask = 1;

    for (Integer i = 0; i < 32; i++) {
      if ((n & mask) != 0) {
        bits++;
      }
      mask <<= 1;
    }
    return bits;
  }
}
