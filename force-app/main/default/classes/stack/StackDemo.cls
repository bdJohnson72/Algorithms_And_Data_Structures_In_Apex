/**
 * Created by brooks.johnson on 4/21/2022.
 */

public with sharing class StackDemo {

    public static final String OPENING = '({[';
    public static final String CLOSING = ')}]';

    public static Boolean isMatched(String expression){
        IStack buffer = new ListStack();
        List<String> stringArray = expression.split('');
        for (String str : stringArray){
            if (OPENING.indexOf(str) != -1) {
                buffer.push(str); //add opening delimiter to stack
            }else if (CLOSING.indexOf(str) != -1) {
                if (buffer.isEmpty()) { //nothing to match with
                    return false;
                }
                //the next closing delimiter should match the opening delimiter at the top of the stack
                if (CLOSING.indexOf(str) != OPENING.indexOf((String)buffer.pop()) ) {
                    return false;
                }
            }
        }
        return buffer.isEmpty();
    }
}