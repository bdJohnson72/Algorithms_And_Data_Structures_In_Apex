/**
 * Created by Brooks Johnson on 2/5/2022.
 */

public with sharing class DoublyLinkedList {
  public Node head;
  public Node tail;
  public Integer size;

  public DoublyLinkedList() {
    this.head = null;
    this.tail = null;
    this.size = 0;
  }

  public void addToEnd(Object value) {
    Node node = new Node(value);
    if (this.head == null) {
      this.head = node;
      this.tail = node;
    } else {
      this.tail.next = node;
      node.previous = tail;
      this.tail = node;
    }
    increment();
  }

  public Node removeFromEnd() {
    if (this.size == 0) {
      return null;
    }
    Node returnValue = this.tail;

    if (this.size == 1) {
      this.head = null;
      this.tail = null;
      returnValue.previous = null;
      return returnValue;
    }

    this.tail = this.tail.previous;
    this.tail.next = null;
    decrement();
    return returnValue;
  }

  private void increment() {
    this.size++;
  }

  private void decrement() {
    this.size--;
  }

  public class Node {
    public Object value;
    public Node next;
    public Node previous;

    public Node(Object obj) {
      this.value = obj;
    }
  }
}
