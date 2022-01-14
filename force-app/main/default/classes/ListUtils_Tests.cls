/**
 * Created by Brooks Johnson on 1/14/2022.
 */

@IsTest
private class ListUtils_Tests {
    @IsTest
    static void itShouldGenerateAList() {
        //given
        //when
        List<Integer> results = ListUtils.generateList(1000);
        //then
        System.assertEquals(1000, results.size());
    }
}