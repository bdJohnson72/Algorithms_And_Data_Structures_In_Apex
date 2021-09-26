/**
 * Created by Brooks Johnson on 9/26/2021.
 */

@IsTest
public with sharing class StringStack_Tests {

    @IsTest
    static void itShouldPush() {
        //given
        String firstName = 'James';
        String lastName = 'Kirk';
        //when
        BasicStack stack = new StringStack();
        stack.push(firstName);
        stack.push(lastName);
        //then
        System.assertEquals(2, stack.getSize(), 'Two Items should have been pushed to the stack');
    }

    @IsTest
    static void itShouldPop() {
        //given
        String firstName = 'James';
        String lastName = 'Kirk';
        //when
        BasicStack stack = new StringStack();
        stack.push(firstName);
        stack.push(lastName);
        String result = (String) stack.pop();
        //then
        System.assertEquals(1, stack.getSize(), 'One item should have been popped off the stack');
        System.assertEquals('Kirk', result, 'The last value should have been popped LIFO');
    }

    @IsTest
    static void itShouldThrowException() {
        //given
        BasicStack stack = new StringStack();
        //when
        try {
            stack.push(7);
        } catch (Exception e) {
            System.assert(e instanceof BasicStack.BasicStackException, 'It should throw a custom exception');
        }
    }
    @IsTest
    static void itShouldContainString_Positive() {
        //given
        BasicStack stack = new StringStack();
        stack.push('Brooks');
        //when
        Boolean result = stack.contains('Brooks');
        //then
        System.assert(result == true, 'It should contain the value');
    }

    @IsTest
    static void itShouldContainString_Negative() {
        //given
        BasicStack stack = new StringStack();
        stack.push('Brooks');
        //when
        Boolean result = stack.contains('Regis');
        //then
        System.assert(result == false, 'It should not contain the value');
    }
    @IsTest
    static void itShouldAccessTheStack() {
        //given
        BasicStack stack = new StringStack();
        stack.push('Bilbo');
        stack.push('Frodo');
        stack.push('Merry');
        stack.push('Samwise');
        stack.push('Pippen');
        System.assert(stack.getSize() == 5, 'There should be 5 elements in the stack');
        //when
        String result = (String) stack.access('Frodo');
        //then
        System.assert(stack.getSize() == 1, 'The elements should have been popped in the access  operation');
        System.assert(result == 'Frodo', 'It should have returned the value');
    }

}