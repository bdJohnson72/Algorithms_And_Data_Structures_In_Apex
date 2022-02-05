/**
 * Created by Brooks Johnson on 1/18/2022.
 */

@IsTest
private class SobjectNode_Tests {
  @IsTest
  static void itShouldCreateANode() {
    //given
    Account a = new Account(Name = 'The Avengers');
    //when
    SobjectNode node = new SobjectNode(a);
    //then
    System.assertEquals(
      node.sobj,
      a,
      'The account should be added to the node'
    );
  }
}
