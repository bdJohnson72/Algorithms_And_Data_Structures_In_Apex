/**
 * Created by Brooks Johnson on 2/20/2022.
 */

@IsTest
private class ContainsDuplicates_Tests {
    private static final List<Integer> containsDupes = new List<Integer>{
            1, 2, 3, 1
    };
    private static final List<Integer> containsNoDupes = new List<Integer>{
            1, 2, 3, 4
    };
    @IsTest
    static void testSolutionOne() {
        //when
        Boolean result = ContainsDuplicates.containsDuplicatesOne(containsDupes);
        System.assertEquals(true, result, 'It should find duplicates');
        // when
        result = ContainsDuplicates.containsDuplicatesOne(containsNoDupes);
        System.assertEquals(false, result, 'It should not find duplicates');
    }

    @IsTest
    static void testSolutionTwo() {
        Boolean result = ContainsDuplicates.containsDuplicates(containsDupes);
        System.assertEquals(true, result, 'It should find duplicates');
        // when
        result = ContainsDuplicates.containsDuplicates(containsNoDupes);
        System.assertEquals(false, result, 'It should not find duplicates');
    }

    @IsTest
    static void testSolutionThree() {
        Boolean result = ContainsDuplicates.containsDuplicatesSort(containsDupes);
        System.assertEquals(true, result, 'It should find duplicates');
        // when
        result = ContainsDuplicates.containsDuplicatesSort(containsNoDupes);
        System.assertEquals(false, result, 'It should not find duplicates');
    }
}