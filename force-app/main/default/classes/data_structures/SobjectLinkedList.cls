/**
 * Created by Brooks Johnson on 1/16/2022.
 */

public with sharing class SobjectLinkedList {
  public SobjectNode head;
  public SobjectNode tail;
  public Integer size { get; private set; }

  public SobjectLinkedList() {
    this.size = 0;
    this.head = null;
    this.tail = null;
  }

  public void addToFront(SObject sobj) {
    SobjectNode node = new SobjectNode(sobj);
    // Because we only add to the front of the list we initialize next to null for the first time we add an element.
    // Then we set head the node that is added. For further elements this will update next to the element that was first.
    node.next = head;
    this.head = node;
    this.size++;
  }

  public SobjectNode removeFromFront() {
    if (this.isEmpty()) {
      return null;
    }
    SobjectNode removeNode = this.head;
    this.head = head.next;
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
}
