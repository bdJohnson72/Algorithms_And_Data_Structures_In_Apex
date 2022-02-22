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

  /**
   * use to traverse the tree
   */
  public List<Node_Opp_BST> breadthFirstSearch() {
    Node_Opp_BST current = this.root;
    List<Node_Opp_BST> data = new List<Node_Opp_BST>();
    //we need to use the list as  FIFO data structure
    List<Node_Opp_BST> queue = new List<Node_Opp_BST>();
    queue.add(this.root);
    while (!queue.isEmpty()) {
      current = queue.remove(0);
      data.add(current);
      if (current.left != null) {
        queue.add(current.left);
      }
      if (current.right != null) {
        queue.add(current.right);
      }
    }
    return data;
  }
}
