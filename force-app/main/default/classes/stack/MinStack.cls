/**
 * Created by Brooks Johnson on 9/6/2022.
 */

public with sharing class MinStack {
  private List<Integer> stack;
  private List<Integer> minStack;

  public MinStack() {
    this.stack = new List<Integer>();
    this.minStack = new List<Integer>();
  }

  public void push(Integer value) {
    stack.add(value);
    if (minStack.isEmpty() || value <= getMin()) {
      minStack.add(value);
    }
  }

  public Integer pop() {
    if (top() == getMin()) {
      minStack.remove(minStack.size() - 1);
    }

    return stack.remove(stack.size() - 1);
  }

  public Integer top() {
    return stack[stack.size() - 1];
  }

  public Integer getMin() {
    return minStack[minStack.size() - 1];
  }
}
