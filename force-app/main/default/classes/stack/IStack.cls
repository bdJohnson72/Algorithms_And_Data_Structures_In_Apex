/**
 * The stack ADT
 * A collection of objects that are inserted and removed according to
 * the last-in / first-out principle or LIFO.
 */

public interface IStack {
  /**
   * @description returns the number of elements in the stack
   * @return the number of elements in the stack
   */
  Integer size();

  /**
   * @description Tests if the stack is empty
   * @return true if the stack is empty, false otherwise
   */
  Boolean isEmpty();

  /**
   *@description Inserts object at the top of the stack
   * @param o The object to insert
   */
  void push(Object o);

  /**
   * @description Returns but does not remove the object at the top of the stack
   * @return The object at the top of the stack
   */
  Object top();

  /**
   * @description Removes and returns the object at the top of the stack
   * @return object removed from the top of the stack
   */
  Object pop();
}
