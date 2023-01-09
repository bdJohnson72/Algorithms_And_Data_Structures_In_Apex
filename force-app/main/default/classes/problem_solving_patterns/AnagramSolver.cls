/**
 * Created by Brooks Johnson on 1/2/2022.
 */

public with sharing class AnagramSolver {
    /**
     * @param stringOne string to compare
     * @param stringTwo string to compare
     *
     * @return true if the strings are anagram of each other
     */
    public static Boolean isAnagram(String stringOne, String stringTwo) {
        //convert stringsToLists - you could do this in the for loop but I think this is more readable and testable
        List<String> stringOneList = convertString(stringOne);
        List<String> stringTwoList = convertString(stringTwo);
        //check the count and return if strings are not the same length
        if (stringOneList.size() != stringTwoList.size()) {
            return false;
        }
        //make a maps to count the frequencies
        Map<String, Integer> mapOne = countFrequency(stringOneList);
        Map<String, Integer> mapTwo = countFrequency(stringTwoList);

        // Iterate over the maps and determine if it is an anagram
        for (String character : mapOne.keySet()) {
            Integer countFrequency = mapOne.get(character);
            if (!(mapTwo.containsKey(character)) || (mapTwo.get(character) != countFrequency)) {
                return false;
            }
        }
        return true;
    }

    /**
     * @param stringToConvert string to be converted to a list,
     * in lowercase and white space removed,
     *
     * @return list containing all characters in the string
     */
    public static List<String> convertString(String stringToConvert) {
        return stringToConvert.toLowerCase()
                .deleteWhitespace()
                .split('');
    }

    /**
     * @param stringList a string that has been converted to a list
     *
     * @return a map with key value pairs of the characters in the string and their count
     */
    public static Map<String, Integer> countFrequency(List<String> stringList) {
        Map<String, Integer> frequencyCountMap = new Map<String, Integer>();
        for (String character : stringList) {
            if (frequencyCountMap.containsKey(character)) {
                frequencyCountMap.put(character, frequencyCountMap.get(character) + 1);
            } else {
                frequencyCountMap.put(character, 1);
            }
        }
        return frequencyCountMap;
    }

    public static Boolean isAnagram2(String str1, String str2) {
        str1 = str1.toLowerCase().deleteWhitespace();
        str2 = str2.toLowerCase().deleteWhitespace();
        if(str1.length() != str2.length()){
            return false;
        }
        Map<Integer, Integer> charFrequencyMap1 = getCharFrequencyMap(str1);
        Map<Integer, Integer> charFrequencyMap2 = getCharFrequencyMap(str2);

        for(Integer charFrequency : charFrequencyMap1.keySet()){
            if (!charFrequencyMap2.containsKey(charFrequency) || charFrequencyMap1.get(charFrequency) != charFrequencyMap2.get(charFrequency)) {
                return false;
            }
        }
        return true;
    }

    private static  Map<Integer, Integer> getCharFrequencyMap(String str){
        Map<Integer, Integer> charFrequencyMap = new Map<Integer, Integer>();
        for (Integer i = 0; i < str.length(); i++) {
            if (charFrequencyMap.containsKey(str.charAt(i))) {
                charFrequencyMap.put(str.charAt(i), charFrequencyMap.get(str.charAt(i)) + 1);
            }else {
                charFrequencyMap.put(str.charAt(i), 1);
            }
        }
        return charFrequencyMap;
    }
}