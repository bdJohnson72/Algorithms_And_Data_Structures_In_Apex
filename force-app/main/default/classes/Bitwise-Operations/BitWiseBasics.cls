/**
 * Created by Brooks Johnson on 3/6/2022.
 */

public with sharing class BitWiseBasics {
  public static Integer bitwiseAddition(Integer x, Integer y) {
    while (y != 0) {
      System.debug('value of y ' + y);
      //carry holds places where both values have a common bit
      Integer carry = x & y;
      System.debug('carry: ' + carry);
      //xor gives us where at least one bit is 0
      // 6 xor 6 = 0000
      // 5 ^ 3 : 0101 ^ 0011 = 0110
      x = x ^ y;
      System.debug('xor value ' + x);
      y = carry << 1;
      System.debug('shifted Y' + y);
    }
    return x;
  }

  public static Boolean isEven(Integer x) {
    // 0101
    // 0001
    return (x & 1) != 1;
  }
}
