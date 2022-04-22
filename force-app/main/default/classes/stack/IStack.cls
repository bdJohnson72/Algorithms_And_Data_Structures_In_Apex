/**
 * Created by brooks.johnson on 4/21/2022.
 */

public interface IStack {

  /**
   * Adds element to top of the stack
   * @param obj object to add to the stack
   */
  void push(Object obj);

  /**
   * Removes and returns the element from the top of the stack
   * @return object at the top of the stack
   */
  Object pop();

  /**
   * Returns the element at the top of the stack without removing it
   * @return Object at the top of the stack
   */
  Object top();

  /**
   * Number of elements in the stack
   * @return number of elements in the stack
   */
  Integer size();

  /**
   * Is the stack empty
   * @return true is stack is empty
   */
  Boolean isEmpty();
}