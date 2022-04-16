/**
 * Created by Brooks Johnson on 4/14/2022.
 */

public with sharing class SinglyLinkedList {
  public class SinglyLinkedListException extends Exception {
  }

  public Node head { public get; private set; }
  public Node tail { public get; private set; }
  public Integer size { public get; private set; }

  public SinglyLinkedList() {
    this.head = null;
    this.tail = null;
    this.size = 0;
  }

  /**
   * @description This is a constant time operation
   * @param data Object to used in Node
   */
  public void addToFront(Object data) {
    Node node = new Node(data);
    if (this.head == null) {
      this.head = node;
      this.tail = this.head;
    } else {
      //do this in order
      node.next = this.head;
      head = node;
    }
    this.size++;
  }

  /**
   * @description This is a O(1) operation because we have a tail property.
   * If there was no tail this would be O(n)
   * @param data Object to be used in Node
   */
  public void addToBack(Object data) {
    Node node = new Node(data);
    if (this.head == null) {
      this.head = node;
      this.tail = this.head;
    } else {
      this.tail.next = node;
      this.tail = node;
    }
    this.size++;
  }

  /**
   * @description This is a O(1) operation. The head pointer is updated  and the old head
   * is garbage collected
   * @return data value from head Node
   */
  public Object removeFromFront() {
    if (this.size == 0) {
      throw new SinglyLinkedListException('Empty List');
    }
    Node remove = this.head;
    this.head = this.head.next;
    size--;
    return remove.data;
  }

  /**
   * @description This is a O(n) operation. we need to now the value of the node that is previous to the
   * current tail. We have to iterate over the entire list.
   * @return Data value from tail Node
   */
  public Object removeFromBack() {
    if (this.size == 0) {
      throw new SinglyLinkedListException('Empty List');
    }
    if (this.size == 1) {
      Node temp = this.head;
      this.head = null;
      this.size--;
      return temp.data;
    }
    Node current = this.head;
    Node newTail = null;
    while (current.next != null) {
      newTail = current;
      current = current.next;
    }
    this.tail = newTail;
    tail.next = null;
    this.size--;
    return current.data;
  }
}
