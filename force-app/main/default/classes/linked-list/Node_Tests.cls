/**
 * Created by Brooks Johnson on 4/16/2022.
 */

@IsTest
private class Node_Tests {
  @IsTest
  static void itShouldSetNodeValues() {
    //given
    Account account = new Account(Name = 'Test Acc');
    Contact contact = new Contact(FirstName = 'Test', LastName = 'Contact');
    //when
    Node nodeOne = new Node(account);
    Node nodeTwo = new Node(contact);
    nodeOne.next = nodeTwo;
    System.assert(nodeOne.next != null);
    System.assert(nodeOne.data != null);
  }
}
