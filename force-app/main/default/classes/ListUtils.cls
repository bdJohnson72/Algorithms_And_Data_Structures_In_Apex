/**
 * Created by Brooks Johnson on 1/14/2022.
 */

public with sharing class ListUtils {
    public static List<Integer> generateList(Integer sizeOfList) {
        List<Integer> listToReturn = new List<Integer>();
        for (Integer i = 0; i < sizeOfList; i++) {
            listToReturn.add(Integer.valueOf(Math.random() * 10000));
        }
        return listToReturn;
    }

}