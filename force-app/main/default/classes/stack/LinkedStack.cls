/**
 * Created by brooks.johnson on 4/21/2022.
 */

public with sharing class LinkedStack implements IStack{

    private SinglyLinkedList linkedList = new SinglyLinkedList();


    public void push(Object obj) {
        this.linkedList.addToFront(obj);
    }

    public Object pop() {
        return this.linkedList.removeFromFront();
    }

    public Object top() {
        return this.linkedList.head.data;
    }

    public Integer size() {
        return this.linkedList.size;
    }

    public Boolean isEmpty() {
        return this.linkedList.size == 0;
    }
}