/**
 * Created by Brooks Johnson on 2/21/2022.
 */

@IsTest
private class OpportunityBST_Tests {
  @IsTest
  static void insertWithNoRoot() {
    //given
    Opportunity opp = new Opportunity(Amount = 1000);
    OpportunityBST bst = new OpportunityBST();
    //when
    bst.push(opp);
    //then
    System.assertEquals(opp, bst.root.value, 'It should insert at root');
  }

  @IsTest
  static void pushNodes() {
    //given
    Opportunity opp = new Opportunity(Amount = 1000);
    OpportunityBST bst = new OpportunityBST();
    bst.push(opp);
    Opportunity opp1 = new Opportunity(Amount = 1100);
    Opportunity opp2 = new Opportunity(Amount = 900);
    Opportunity opp3 = new Opportunity(Amount = 800);
    //when
    bst.push(opp1);
    bst.push(opp2);
    bst.push(opp3);
    Opportunity result = bst.search(800.00);

    //then
    System.assertEquals(
      1100,
      bst.root.right.value.Amount,
      'It should add the right node of the root'
    );
    System.assertEquals(
      900,
      bst.root.left.value.Amount,
      'It should add the left node of the root'
    );
    System.assertEquals(
      800,
      bst.root.left.left.value.Amount,
      'It should add the left node of the root'
    );
  }

  @isTest
  static void itShouldSearch() {
    //given
    Opportunity opp = new Opportunity(Amount = 1000);
    OpportunityBST bst = new OpportunityBST();
    bst.push(opp);
    Opportunity opp1 = new Opportunity(Amount = 1100);
    Opportunity opp2 = new Opportunity(Amount = 900);
    Opportunity opp3 = new Opportunity(Amount = 800);
    //when
    bst.push(opp1);
    bst.push(opp2);
    bst.push(opp3);
    Opportunity result = bst.search(800.00);
    System.assertEquals(
      800,
      result.Amount,
      'It should return the correct node'
    );
  }
  @isTest
  static void testBreadthFirstSearch() {
    //given
    Opportunity opp = new Opportunity(Amount = 1000);
    OpportunityBST bst = new OpportunityBST();
    bst.push(opp);
    Opportunity opp1 = new Opportunity(Amount = 1100);
    Opportunity opp2 = new Opportunity(Amount = 900);
    Opportunity opp3 = new Opportunity(Amount = 800);
    bst.push(opp1);
    bst.push(opp2);
    bst.push(opp3);
    //when
    List<Node_Opp_BST> bfsresults = bst.breadthFirstSearch();
    System.assertEquals(4, bfsresults.size(), 'It should return all nodes');
  }
}
