/**
 * Created by brooks.johnson on 4/21/2022.
 */

@IsTest
private class ListStack_Tests {
    @IsTest
    static void itShouldPushToStack() {
        //given
        Istack stack = new ListStack();
        //when
        stack.push(1);
        stack.push(2);
        //then
        System.assert(stack.size() == 2);
        System.assert(stack.isEmpty() == false);
    }

    @isTest
    static void itShouldPopFromFront(){
        //given
        IStack stack = new ListStack();
        stack.push(1);
        stack.push(2);
        //when
        Integer result = (Integer)stack.pop();
        System.assert(stack.size() == 1);
        System.assert(result == 2);
    }

    @IsTest
    static void itShouldReturnFromFront(){
        //given
        Istack stack = new ListStack();
        stack.push(1);
        stack.push(2);
        stack.push(3);
        stack.push(4);
        //when
        Integer result = (Integer)stack.top();
        System.assert(result == 4);
        System.assert(stack.size() == 4);
    }
}