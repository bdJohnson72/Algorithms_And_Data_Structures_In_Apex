/**
 * Created by Brooks Johnson on 4/16/2022.
 */

public with sharing class Node {
  public Object data { get; private set; }
  public Node next;

  public Node(Object data) {
    this.data = data;
  }
}
