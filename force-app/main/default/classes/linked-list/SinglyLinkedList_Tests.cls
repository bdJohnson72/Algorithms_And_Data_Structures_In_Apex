/**
 * Created by Brooks Johnson on 4/14/2022.
 */

@IsTest
private class SinglyLinkedList_Tests {
  @IsTest
  static void itShouldAddToFront() {
    //given
    SinglyLinkedList linkedList = new SinglyLinkedList();
    //when
    linkedList.addToFront(new Contact(FirstName = 'Tony', LastName = 'Stark'));
    System.assert(linkedList.size == 1);
    System.assert(linkedList.head.data instanceof Contact);
  }
  @IsTest
  static void itShouldAddToBack() {
    //given
    SinglyLinkedList linkedList = new SinglyLinkedList();
    //when
    linkedList.addToBack(new Contact(FirstName = 'Tony', LastName = 'Stark'));
    linkedList.addToBack(new Contact(FirstName = 'Steve', LastName = 'Rogers'));
    //then
    System.assert(linkedList.size == 2);
    Contact con = (Contact) linkedList.tail.data;
    System.assert(con.FirstName == 'Steve');
  }

  @IsTest
  static void itShouldThrowErrorWhenListIsEmptyFromFront() {
    //given
    SinglyLinkedList linkedList = new SinglyLinkedList();
    //when
    try {
      linkedList.removeFromFront();
    } catch (Exception e) {
      //then
      System.assert(e instanceof SinglyLinkedList.SinglyLinkedListException);
    }
  }

  @IsTest
  static void itShouldRemoveFront() {
    //given
    SinglyLinkedList linkedList = new SinglyLinkedList();
    linkedList.addToFront(1);
    linkedList.addToFront(2);
    linkedList.addToFront(3);
    //when
    Integer data = (Integer) linkedList.removeFromFront();
    System.assert(data == 3);
  }
  @IsTest
  static void itShouldThrowErrorWhenListIsEmpty() {
    //given
    SinglyLinkedList linkedList = new SinglyLinkedList();
    //when
    try {
      Object data = linkedList.removeFromBack();
    } catch (Exception e) {
      System.assert(e instanceof SinglyLinkedList.SinglyLinkedListException);
    }
  }

  @IsTest
  static void itShouldReturnListSizeOne() {
    //given
    SinglyLinkedList linkedList = new SinglyLinkedList();
    linkedList.addToFront(1);
    //when
    Integer data = (Integer) linkedList.removeFromBack();
    System.assert(data == 1);
    System.assert(linkedList.size == 0);
  }

  @IsTest
  static void itShouldReturnBack() {
    //given
    SinglyLinkedList linkedList = new SinglyLinkedList();
    linkedList.addToFront(1);
    linkedList.addToFront(2);
    linkedList.addToFront(3);
    linkedList.addToFront(4);
    linkedList.addToFront(5);
    //when
    Integer data = (Integer) linkedList.removeFromBack();
    System.assert(data == 1);
    System.assert(linkedList.size == 4);
    System.assert(linkedList.tail.data == 2);
    System.assert(linkedList.tail.next == null);
  }
}
