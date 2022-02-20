/**
 * Created by Brooks Johnson on 2/19/2022.
 */

public with sharing class BuySellStock {
  public static Integer buySellBruteForce(List<Integer> stockPrices) {
    Integer buyPrice = 0;
    Integer sellPrice = 0;
    Integer profit = 0;
    for (Integer i = 0; i < stockPrices.size(); i++) {
      buyPrice = stockPrices[i];
      for (Integer j = i; j < stockPrices.size(); j++) {
        sellPrice = stockPrices[j];
        if (sellPrice - buyPrice > profit) {
          profit = sellPrice - buyPrice;
        }
      }
    }
    return profit;
  }

  //7, 1, 5, 3, 6, 4
  public static Integer buyStock(List<Integer> stockPrices) {
    //look at the problem as a series of sub problems
    Integer buyPrice = stockPrices[0];
    Integer profit = 0;
    for (Integer i = 0; i < stockPrices.size() - 1; i++) {
      //In the pair of i and i +1 is there a profit to be made?
      Integer tempProfit = stockPrices[i + 1] - stockPrices[i];
      System.debug(tempProfit);
      if (tempProfit > 0) {
        //if there is  profit to made by buying and selling at i and i = 1
        if (stockPrices[i] < buyPrice) {
          //This is a profitable pair. Check if the profitable buy price is lower than the current buy price
          //  if it is then update the buy price. This gives us the lowest buy in the array that could be profitable.
          buyPrice = stockPrices[i];
        }
        if (stockPrices[i + 1] - buyPrice > profit) {
          //does this sell price provide  a greater profit than the previous sell price??
          // update profit to reflect selling on this day.
          profit = stockPrices[i + 1] - buyPrice;
        }
      }
    }
    return profit;
  }
}
