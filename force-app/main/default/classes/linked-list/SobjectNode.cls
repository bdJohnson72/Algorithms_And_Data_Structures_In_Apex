/**
 * @description Implementation of node for a linked list for the Contact SObject type
 */

public with sharing class SobjectNode {
  public SObject sobj;
  public SobjectNode next;

  public SobjectNode(SObject sobj) {
    this.sobj = sobj;
  }
}
