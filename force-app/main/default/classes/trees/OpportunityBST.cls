/**
 * Created by Brooks Johnson on 2/21/2022.
 */

public with sharing class OpportunityBST {
  public Node_Opp_BST root;

  public OpportunityBST() {
    this.root = null;
  }

  public OpportunityBST push(Opportunity opp) {
    Node_Opp_BST node = new Node_Opp_BST(opp);
    if (this.root == null) {
      this.root = node;
      return this;
    } else {
      Node_Opp_BST currentNode = this.root;
      while (true) {
        if (currentNode.value.Amount == node.value.Amount) {
          return null;
        }
        if (opp.Amount > currentNode.value.Amount) {
          if (currentNode.right == null) {
            currentNode.right = node;
            return this;
          } else {
            // move the current node the next BST left node
            currentNode = currentNode.right;
          }
        } else if (opp.Amount < currentNode.value.Amount) {
          if (currentNode.left == null) {
            currentNode.left = node;
            return this;
          } else {
            // move the current BST right node
            currentNode = currentNode.left;
          }
        }
      }
    }
    return null;
  }

  public Opportunity search(Decimal oppAmount) {
    Node_Opp_BST currentNode = this.root;
    while (true) {
      if (currentNode.value.Amount == oppAmount) {
        return currentNode.value;
      }
      if (oppAmount > currentNode.value.Amount) {
        currentNode = currentNode.right;
      } else {
        currentNode = currentNode.left;
      }
    }
    return null;
  }
}
