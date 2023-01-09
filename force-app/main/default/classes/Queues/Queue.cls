/**
 * Basic Queue FIFO data structure
 */
public with sharing class Queue {
  private List<Object> data;

  public Queue() {
    this.data = new List<Object>();
  }

  public void push(Object obj) {
    this.data.add(obj);
  }

  public Object pop() {
    return this.data.remove(0);
  }

  public Integer size() {
    return this.data.size();
  }
}
