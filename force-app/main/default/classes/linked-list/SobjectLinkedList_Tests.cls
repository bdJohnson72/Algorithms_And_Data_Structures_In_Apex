/**
 * Created by Brooks Johnson on 1/16/2022.
 */

@IsTest
private class SobjectLinkedList_Tests {
  public static Contact ironMan = new Contact(
    FirstName = 'Tony',
    LastName = 'Stark'
  );
  public static Contact hulk = new Contact(
    FirstName = 'Bruce',
    LastName = 'Banner'
  );
  public static Contact spiderMan = new Contact(
    FirstName = 'Peter',
    LastName = 'Parker'
  );
  public static Contact cap = new Contact(
    firstName = 'Steve',
    LastName = 'Rogers'
  );

  public static Contact drStrange = new Contact(
    FirstName = 'Steven',
    LastName = 'Strange'
  );
  @IsTest
  static void itShouldShiftValueFromFront() {
    //given
    SobjectLinkedList contactList = new SobjectLinkedList();
    contactList.push(ironMan);
    contactList.push(hulk);
    contactList.push(spiderMan);
    //when
    SobjectNode node = contactList.shift();
    System.assertEquals(
      2,
      contactList.size,
      'It should return the correct size'
    );
    Contact contact = (Contact) node.sobj;
    System.assertEquals(
      'Tony',
      contact.FirstName,
      'It should return the first node'
    );
  }

  @IsTest
  static void itShouldShiftElementToFront() {
    // given
    SobjectLinkedList contactList = new SobjectLinkedList();
    contactList.push(ironMan);
    contactList.push(hulk);
    //when
    contactList = contactList.unshift(cap);
    System.debug(contactList);
    System.assertEquals(
      3,
      contactList.size,
      'It should return the correct size'
    );
    Contact head = (Contact) contactList.head.sobj;
    System.assertEquals(
      'Steve',
      head.FirstName,
      'It should return the updated head'
    );
  }

  @IsTest
  static void itShouldAddToTail() {
    //given
    SobjectLinkedList contactList = new SobjectLinkedList();
    contactList.push(ironMan);
    //when
    contactList.addToEnd(hulk);
    //then
    System.debug(contactList);
  }
  @IsTest
  static void itShouldPopValue() {
    // given
    SobjectLinkedList contactList = new SobjectLinkedList();
    contactList.push(ironMan);
    contactList.push(hulk);
    contactList.push(spiderMan);
    //when
    SobjectNode node = contactList.pop();
    Contact contact = (Contact) node.sobj;
    //then
    System.assertEquals(
      'Peter',
      contact.FirstName,
      'It should pop the last value off the list'
    );
  }
  @IsTest
  static void itShouldHandleEmptyList() {
    // given
    SobjectLinkedList contactList = new SobjectLinkedList();
    contactList.push(ironMan);
    contactList.push(hulk);
    // when
    contactList.pop();
    contactList.pop();
    //then
    System.assertEquals(0, contactList.size, 'Size should be zero');
    System.assertEquals(null, contactList.head, 'Head should be null');
    System.assertEquals(null, contactList.tail, 'Tail should be null');
  }

  @IsTest
  static void itShouldReturnValueAtIndex() {
    // given
    SobjectLinkedList contactList = new SobjectLinkedList();
    contactList.push(ironMan);
    contactList.push(hulk);
    contactList.push(spiderMan);
    contactList.push(cap);
    // when
    SobjectNode node = contactList.get(2);
    Contact contact = (Contact) node.sobj;
    System.assertEquals(
      'Peter',
      contact.FirstName,
      'It should return the correct value from the index'
    );
  }
  @IsTest
  static void itShouldThrowException() {
    // given
    SobjectLinkedList contactList = new SobjectLinkedList();
    // when
    try {
      SobjectNode node = contactList.get(1);
    } catch (Exception e) {
      System.debug(LoggingLevel.DEBUG, e.getMessage());
      System.assert(
        e instanceof SobjectLinkedList.LinkedListException,
        'It should throw a custom exception'
      );
    }
  }

  @IsTest
  static void itShouldSetValueAtIndex() {
    // given
    SobjectLinkedList contactList = new SobjectLinkedList();
    contactList.push(ironMan);
    contactList.push(hulk);
    contactList.push(spiderMan);
    contactList.push(cap);
    // when
    Boolean result = contactList.set(drStrange, 2);
    SobjectNode node = contactList.get(2);
    Contact contact = (Contact) node.sobj;
    //then
    System.assertEquals(true, result, 'It should set the value');
    System.assertEquals(
      'Strange',
      contact.LastName,
      'It should return the correct value from the index'
    );
  }
  @IsTest
  static void itShouldInsertVallue() {
    // given
    SobjectLinkedList contactList = new SobjectLinkedList();
    contactList.push(ironMan);
    contactList.push(hulk);
    contactList.push(spiderMan);
    contactList.push(cap);
    // when
    SobjectLinkedList linkedList = contactList.insertToList(drStrange, 3);
    // then
    SobjectNode node = linkedList.get(3);
    Contact contact = (Contact) node.sobj;
    System.debug(LoggingLevel.INFO, 'The returned contact is: ' + contact);
    System.debug(LoggingLevel.INFO, 'The new list is ' + linkedList);
    System.debug(linkedList.head);
    System.debug(linkedList.tail);
    System.assertEquals(
      'Strange',
      contact.LastName,
      'It should insert the node into the correct possition'
    );
  }

  @IsTest
  static void itShouldReverseList() {
    // given
    SobjectLinkedList contactList = new SobjectLinkedList();
    contactList.push(ironMan);
    contactList.push(hulk);
    contactList.push(spiderMan);
    contactList.push(cap);
    contactList = contactList.reverse();
    System.debug('final list is ' + contactList);
    System.debug('final list is ' + contactList.head);
    System.debug(contactList.tail);
    System.debug(contactList.toString());
  }

  @IsTest
  static void itShouldRemoveValueFromIndex() {
    // given
    SobjectLinkedList contactList = new SobjectLinkedList();
    contactList.push(ironMan);
    contactList.push(hulk);
    contactList.push(spiderMan);
    contactList.push(cap);
    // when
    SobjectNode node = contactList.remove(1);
    Contact contact = (Contact) node.sobj;
    System.assertEquals(
      contact.LastName,
      'Banner',
      'It should remove the value at the index'
    );
    System.assertEquals(3, contactList.size, 'It should decrement list size');
  }
}
