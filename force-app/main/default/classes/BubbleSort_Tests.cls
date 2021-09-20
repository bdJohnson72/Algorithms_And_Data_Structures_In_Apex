

@IsTest
private class BubbleSort_Tests {
    @IsTest
    static void itShouldSortList() {
        List<Integer> integers = new List<Integer>{
                18, 9, 0, 75, 3, 22, 44, 2, 145, -22
        };
        Test.startTest();
        System.debug('start' + Limits.getCpuTime());
        BubbleSort bubbleSort = new BubbleSort();
        bubbleSort.sort(integers);
        System.debug('stop' + Limits.getCpuTime());
        Test.stopTest();
    }
    @IsTest
    static void itShouldSortList2() {
        List<Integer> integers = new List<Integer>{
                18, 9, 0, 75, 3, 22, 44, 2, 145, -22,
                101, 45, 67, 92, 200, 150, 1000, 500, -128, 27
        };
        BubbleSort bubbleSort = new BubbleSort();
        Test.startTest();
        System.debug('start' + Limits.getCpuTime());
        bubbleSort.sort(integers);
        System.debug('stop' + Limits.getCpuTime());
        Test.stopTest();
    }
}