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
  @IsTest
  static void itShouldWork() {
    //given

    //when
    SobjectLinkedList contactList = new SobjectLinkedList();
    contactList.addToFront(ironMan);
    contactList.addToFront(hulk);
    contactList.addToFront(spiderMan);
    System.debug(contactList.size);
    SobjectNode node = contactList.removeFromFront();
    System.debug(contactList.size);
    System.debug(node.sobj);
  }

  @IsTest
  static void itShouldAddToTail() {
    //given
    SobjectLinkedList contactList = new SobjectLinkedList();
    contactList.addToFront(ironMan);
    //when
    contactList.addToEnd(hulk);
    //then
    System.debug(contactList);
  }
}
