/**
 * Created by Brooks Johnson on 1/16/2022.
 */

public with sharing class SobjectLinkedList {
  public class LinkedListException extends Exception {
  }

  public SobjectNode head;
  public SobjectNode tail;
  public Integer size { get; private set; }

  public SobjectLinkedList() {
    this.size = 0;
    this.head = null;
    this.tail = null;
  }

  public SobjectLinkedList push(SObject sobj) {
    SobjectNode node = new SobjectNode(sobj);
    if (this.head == null) {
      this.head = node;
      this.tail = node;
    } else {
      this.tail.next = node;
      this.tail = node;
    }
    this.size++;
    return this;
  }
  /**
   * @description Add a new node to the start of the list. O(1) operation
   * @return updated list
   */
  public SobjectLinkedList unshift(SObject sobj) {
    SobjectNode node = new SobjectNode(sobj);
    // Update  head
    if (this.head == null) {
      this.head = node;
      this.tail = this.head;
    } else {
      node.next = this.head;
      this.head = node;
    }
    this.size++;
    return this;
  }
  /**
   * @description Removing from the tail is an O(n) operation. We have to traverse the entire list to find the
   * second to last element and set it to the new tail.
   * @return The last element of the list.
   */
  public SobjectNode pop() {
    if (this.head == null) {
      return null;
    }
    SobjectNode current = this.head;
    SobjectNode newTail = current;
    while (current.next != null) {
      newTail = current;
      current = current.next;
      System.debug('current = ' + current);
    }
    this.tail = newTail;
    this.tail.next = null;
    this.size--;
    if (this.size == 0) {
      this.head = null;
      this.tail = null;
    }
    return current;
  }

  /**
   * @description Remove a node from the front of the list. Runs at constant time
   * @return the vale at head
   */
  public SobjectNode shift() {
    if (this.isEmpty()) {
      return null;
    }
    SobjectNode removeNode = this.head;
    // Move the head over
    this.head = head.next;
    // Decrement the length
    size--;
    return removeNode;
  }

  public void addToEnd(SObject sobj) {
    SobjectNode node = new SobjectNode(sobj);
    if (this.head == null) {
      this.head = node;
      this.tail = node;
    } else {
      node.next = null;
      this.tail = node;
      this.size++;
    }
  }

  public Boolean isEmpty() {
    return this.head == null ? true : false;
  }
  /**
   * @description Returns the node at the index.
   * This is an O(n) operation.
   * @param index The index we want to return
   *
   * @return
   */
  public SobjectNode get(Integer index) {
    Integer start = 0;
    SobjectNode current = this.head;
    if (index < 0 || index >= this.size) {
      Exception e = new LinkedListException();
      e.setMessage('Index was out bounds');
      throw e;
    }
    while (start != index) {
      current = current.next;
      start++;
    }
    return current;
  }

  public Boolean set(SObject value, Integer index) {
    SobjectNode node = get(index);
    if (node == null) {
      return false;
    }
    node.sobj = value;
    return true;
  }

  public SobjectLinkedList insertToList(SObject sobj, Integer index) {
    indexOutOfBounds(index);
    if (index == this.size) {
      return push(sobj);
    }
    if (index == 0) {
      return unshift(sobj);
    }
    SobjectNode node = new SobjectNode(sobj);
    SobjectNode previous = get(index - 1);
    System.debug(LoggingLevel.INFO, 'Value of Previous = ' + previous);
    node.next = previous.next;
    previous.next = node;
    this.size++;
    return this;
  }
  private void indexOutOfBounds(Integer index) {
    if (index < 0 || index >= this.size) {
      Exception e = new LinkedListException();
      e.setMessage('Index was out of bounds');
      throw e;
    }
  }
  public SobjectNode remove(Integer index) {
    indexOutOfBounds(index);
    SobjectNode returnValue;
    SobjectNode current = this.head;
    SobjectNode previous = this.head;
    Integer count = 0;
    if (index == 0) {
      return this.pop();
    }
    if (index == this.size) {
      return this.shift();
    }
    previous = get(index - 1);
    current = previous.next;
    previous.next = current.next;
    this.size--;
    return current;
  }

  public SobjectLinkedList reverse() {
    SobjectNode node = this.head;
    this.head = this.tail;
    this.tail = node;
    SobjectNode next;
    SobjectNode previous = null;
    Integer length = this.size;
    for (Integer i = 0; i < length; i++) {
      next = node.next;
      node.next = previous;
      previous = node;
      node = next;
    }
    return this;
  }
}
