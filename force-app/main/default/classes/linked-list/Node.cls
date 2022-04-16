/**
 * Created by Brooks Johnson on 3/19/2022.
 */

public with sharing class Node {
  public Object data { get; private set; }
  public Node next { get; set; }

  public Node(Object data) {
    this.data = data;
  }

  public Node next() {
    return this.next;
  }
}
