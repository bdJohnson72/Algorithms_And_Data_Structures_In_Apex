/**
 * Created by Brooks Johnson on 2/9/2022.
 */

@IsTest
private class StackWithLinkedList_Tests {
  @IsTest
  static void itShouldPushObjectsOnStack() {
    //given
    StackWithLinkedList stack = new StackWithLinkedList();
    Account account = new Account(Name = 'Test Account');
    //when
    stack.push(account);
    stack.push(10);
    stack.push(20);
    stack.push('applesauce');
    //then
    System.assertEquals(account, stack.last.value);
    System.assertEquals('applesauce', stack.first.value);
    System.assertEquals(4, stack.size);
  }
  @IsTest
  static void itShouldPopObjectsFromStack() {
    //given
    StackWithLinkedList stack = new StackWithLinkedList();
    Account account = new Account(Name = 'Test Account');
    stack.push(account);
    stack.push(10);
    stack.push(20);
    stack.push('applesauce');
    //when
    Object obj = stack.pop();
    //then
    System.assertEquals('applesauce', obj);
    System.assertEquals(3, stack.size);
    System.assertEquals(20, stack.first.value);
  }
}
