/**
 * Created by brooks.johnson on 4/21/2022.
 */

public with sharing class ListStack implements IStack{

    private List<Object> stack;

    public ListStack(){
        this.stack = new List<Object>();
    }

    public void push(Object obj) {
        stack.add(obj);
    }

    public Object pop() {
        if (this.stack.isEmpty()) {
            return null;
        }
        return this.stack.remove(this.stack.size() -1);
    }

    public Object top() {
        if (this.stack.isEmpty()) {
            return null;
        }
        return stack[this.stack.size() -1];
    }

    public Integer size() {
        return stack.size();
    }

    public Boolean isEmpty() {
        return this.stack.isEmpty();
    }
}