/**
 * Created by Brooks Johnson on 2/19/2022.
 */

@IsTest
public with sharing class BuySellStock_Tests {
  private static final List<Integer> PRICES_ONE = new List<Integer>{
    7,
    1,
    5,
    3,
    6,
    4
  };
  private static final List<Integer> PRICES_TWO = new List<Integer>{
    7,
    6,
    4,
    3,
    1
  };
  @IsTest
  static void testBruteForce() {
    //when
    Integer profit = BuySellStock.buySellBruteForce(PRICES_ONE);
    System.assertEquals(5, profit, 'It should return 5');
    //when
    profit = BuySellStock.buySellBruteForce(PRICES_TWO);
    System.assertEquals(0, profit, 'It should return 0');
  }

  @IsTest
  static void testBuyStock() {
    //when
    Integer profit = BuySellStock.buyStock(PRICES_ONE);
    System.assertEquals(5, profit, 'It should return 5');
    //when
    profit = BuySellStock.buyStock(PRICES_TWO);
    System.assertEquals(0, profit, 'It should return 0');
  }
}
