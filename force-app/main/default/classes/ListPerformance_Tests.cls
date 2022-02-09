/**
 * Created by Brooks Johnson on 2/8/2022.
 */

@IsTest
private class ListPerformance_Tests {
  @IsTest
  static void addToStart() {
    List<Integer> integers = new List<Integer>();
    for (Integer i = 0; i < 10000; i++) {
      integers.add(i);
    }
    Test.startTest();
    Integer startTime = Limits.getCpuTime();
    System.debug('start time: ' + startTime);
    integers.add(0, 8675309);
    Integer endTime = Limits.getCpuTime();
    System.debug('endTime ' + endTime);
    test.stopTest();
    System.debug(endTime - startTime);
  }
  @IsTest
  static void readMiddle() {
    List<Integer> integers = new List<Integer>();
    for (Integer i = 0; i < 100000; i++) {
      integers.add(i);
    }
    Test.startTest();
    Integer startTime = Limits.getCpuTime();
    System.debug('start time: ' + startTime);
    Integer middle = integers[50000];
    Integer endTime = Limits.getCpuTime();
    System.debug('endTime ' + endTime);
    test.stopTest();
    System.debug(endTime - startTime);
  }
  @IsTest
  static void addToStartLinkedList() {
    SobjectLinkedList linkedList = new SobjectLinkedList();
    for (Integer i = 0; i < 10000; i++) {
      Account account = new Account();
      linkedList.push(account);
    }
    Test.startTest();
    Integer startTime = Limits.getCpuTime();
    System.debug('start time: ' + startTime);
    linkedList.push(new Account());
    Integer endTime = Limits.getCpuTime();
    System.debug('endTime ' + endTime);
    test.stopTest();
    System.debug(endTime - startTime);
  }
}
