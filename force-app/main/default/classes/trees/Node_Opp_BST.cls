/**
 * Created by Brooks Johnson on 2/21/2022.
 */

public with sharing class Node_Opp_BST {
  public Opportunity value;
  public Node_Opp_BST left;
  public Node_Opp_BST right;

  public Node_Opp_BST(Opportunity opp) {
    this.value = opp;
    this.left = null;
    this.right = null;
  }

  public override String toString() {
    return 'value is ' +
      value +
      '\n' +
      ' right node: ' +
      right +
      '\n' +
      ' left node ' +
      left;
  }
}
