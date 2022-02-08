/**
 * Created by Brooks Johnson on 2/5/2022.
 */

@IsTest
private class DoublyLinkedList_Tests {
  @IsTest
  static void itShouldAddToEnd() {
    //given
    DoublyLinkedList doublyLinkedList = new DoublyLinkedList();
    //when
    doublyLinkedList.addToEnd(10);
    doublyLinkedList.addToEnd(20);
    //then
    System.assert(doublyLinkedList.size == 2, 'It should increment the size');
    System.assert(doublyLinkedList.head.value == 10);
    System.assertEquals(20, doublyLinkedList.tail.value);
  }

  @IsTest
  static void itShouldRemoveFromEnd() {
    //given
    DoublyLinkedList doublyLinkedList = new DoublyLinkedList();
    //when
    doublyLinkedList.addToEnd(10);
    doublyLinkedList.addToEnd(20);
    doublyLinkedList.addToEnd(30);
    //then
    DoublyLinkedList.Node node = doublyLinkedList.removeFromEnd();
    System.debug('popped node = ' + node.previous);
    System.debug('popped node = ' + node.next);
    System.assert(30 == node.value);
    System.assert(20 == doublyLinkedList.tail.value);
    System.assert(2 == doublyLinkedList.size);
  }
}
