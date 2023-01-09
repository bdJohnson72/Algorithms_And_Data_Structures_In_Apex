/**
 * Created by Brooks Johnson on 2/9/2022.
 */

@IsTest
private class Queue_Tests {
  @IsTest
  static void itShouldPushToQueue() {
    //given
    Queue queue = new Queue();
    //when
    queue.push('hamburger');
    queue.push(new Account(Name = 'Test'));
    queue.push(100);
    //then
    System.assertEquals(3, queue.size());
  }
  @IsTest
  static void itShouldPopFromQueue() {
    //given
    Queue queue = new Queue();
    queue.push('hamburger');
    queue.push(new Account(Name = 'Test'));
    queue.push(100);
    //when
    Object obj1 = queue.pop();
    Object obj2 = queue.pop();
    //then
    System.assertEquals('hamburger', obj1);
    System.assert(obj2 instanceof Account);
    System.assertEquals(1, queue.size());
  }
}
