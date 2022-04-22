/**
 * Created by brooks.johnson on 4/21/2022.
 */

@IsTest
private class LinkedStack_Tests {
    @IsTest
    static void itShouldPush() {
        //given
        IStack stack = new LinkedStack();
        //when
        stack.push(1);
        stack.push(2);
        stack.push(3);
        //then
        System.assert(stack.size() == 3);
        System.assert(stack.isEmpty() == false);
    }

    @IsTest
    static void itShouldPop(){
        //given
        IStack stack = new LinkedStack();
        stack.push(1);
        stack.push(2);
        stack.push(3);
        //when
        Integer result = (Integer)stack.pop();
        System.assert(result == 3);
        System.assert(stack.size() == 2);
    }

    @IsTest
    static void itShouldGetTop(){
        //given
        IStack stack = new LinkedStack();
        stack.push(1);
        stack.push(2);
        stack.push(3);
        //when
        Integer result = (Integer)stack.pop();
        System.assert(stack.top() == 3);
        System.assert(stack.size() == 3);
    }


}