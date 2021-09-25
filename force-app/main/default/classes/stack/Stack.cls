/**
 * Created by Brooks Johnson on 9/24/2021.
 */

public with sharing class Stack {

    private List<Object> data;
    private Integer stackPointer = 0;

    public Stack(){
        this.data = new List<Object>();
        System.debug(data);
        this.stackPointer = data.size();
        System.debug('stackPointer' + stackPointer);
     }

    public void push(Object obj){
       this.data.add(obj);
    }
    public Object pop(){
        return this.data.remove(data.size() - 1);
     }

    public Boolean contains(Object obj){
        return this.data.contains(obj);
    }
}