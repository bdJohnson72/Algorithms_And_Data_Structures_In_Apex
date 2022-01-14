/**
 * Created by Brooks Johnson on 1/14/2022.
 */

@IsTest
public with sharing class LinearSearch_Tests {

    public static final List<Integer> INTEGER_LIST = new List<Integer>{
            1, 97, 14, 362, 10, 278,
            45, 66, 77, 235, 99, 586
    };
    public static final List<String> ALPHABET = new List<String>{
            'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h',
            'i', 'j', 'k', 'l', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z'
    };

    @IsTest
    static void itShouldFindIntegerValue() {
        //given
        //when
        Integer index = LinearSearch.search(INTEGER_LIST, 586);
        //then
        System.assert(index == 11, 'It should return the correct index');
    }

    @IsTest
    static void itShouldFindCorrectIndexInAlphabet() {
        //given
        //when
        Integer searchIndex = LinearSearch.search(ALPHABET, 'a');
        //then
        System.assertEquals(0, searchIndex, 'It should return the correct index');
    }

    @IsTest
    static void itShouldReturnNegOne() {
        //given
        //when
        Integer searchIndex = LinearSearch.search(ALPHABET, 'brooks');
        System.assertEquals(searchIndex, -1, 'It should return negative one');
    }
}