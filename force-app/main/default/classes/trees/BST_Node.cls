/**
 * Created by Brooks Johnson on 2/21/2022.
 */

public with sharing class BST_Node {
  public Object value;
  public BST_Node left;
  public BST_Node right;

  public BST_Node(Object value) {
    this.value = value;
    this.left = null;
    this.right = null;
  }
}
