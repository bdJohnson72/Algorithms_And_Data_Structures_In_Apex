/**
 * Created by Brooks Johnson on 2/9/2022.
 */

public with sharing class StackWithLinkedList {
  public Node first;
  public Node last;
  public Integer size;

  public StackWithLinkedList() {
    this.first = null;
    this.last = null;
    this.size = 0;
  }

  public void push(Object value) {
    Node node = new Node(value);
    if (this.first == null) {
      this.first = node;
      this.last = node;
    } else {
      Node temp = this.first;
      this.first = node;
      this.first.next = temp;
    }
    increment();
  }

  public Object pop() {
    if (this.first == null) {
      return null;
    }
    if (this.first == this.last) {
      this.last = null;
    }
    Node temp = this.first;
    this.first = this.first.next;
    decrement();
    return temp.value;
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

    public Node(Object value) {
      this.value = value;
    }
  }
}
