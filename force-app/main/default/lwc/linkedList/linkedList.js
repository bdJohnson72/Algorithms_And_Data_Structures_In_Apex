/**
 * Created by Brooks Johnson on 1/18/2022.
 */
class Node {
  constructor(val) {
    this.val = val;
    this.next = null;
  }
}

class LinkedList {
  constructor() {
    this.size = 0;
    this.head = null;
    this.tail = null;
  }
}

export { LinkedList, Node };
