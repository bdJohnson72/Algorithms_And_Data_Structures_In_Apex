/**
 * Created by Brooks Johnson on 9/24/2021.
 */

public abstract class BasicStack {

    public class BasicStackException extends Exception {

    }

    private List<Object> data;
    private Integer stackPointer = 0;

    protected abstract void checkType(Object obj);

    public BasicStack() {
        this.data = new List<Object>();
        System.debug(data);
        this.stackPointer = data.size();
        System.debug('stackPointer' + stackPointer);
    }

    public void push(Object obj) {
        checkType(obj);
        this.data.add(obj);
    }
    public Object pop() {
        return this.data.remove(data.size() - 1);
    }

    public Boolean contains(Object obj) {
        return this.data.contains(obj);
    }

    public Object access(Object obj) {
        while (this.data.size() > 0) {
            Object temp = pop();
            if (temp.equals(obj)) {
                return temp;
            }
        }
        return null;
    }

    public Integer getSize() {
        return this.data.size();
    }
}