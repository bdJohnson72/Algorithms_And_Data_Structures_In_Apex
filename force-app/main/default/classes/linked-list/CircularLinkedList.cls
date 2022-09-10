/**
 * Created by Brooks Johnson on 3/19/2022.
 */

public with sharing class CircularLinkedList {
  private Node tail;
  private Integer size;

  public CircularLinkedList() {
    this.tail = null;
    this.size = 0;
  }

  public Boolean isEmpty() {
    return this.size == 0;
  }

  public Integer size() {
    return this.size;
  }

  public void addFirst(Object data) {
    if (this.size == 0) {
      this.tail = new Node(data, null);
      tail.setNext(tail); // link tail to itself
    } else {
      Node newNode = new Node(data, this.tail.next());
    }
  }
}
