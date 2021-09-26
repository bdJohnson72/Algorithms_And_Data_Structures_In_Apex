/**
 * Created by brooks on 9/25/2021.
 */

public with sharing class OpportunityStack extends BasicStack {


    protected override void checkType(Object obj) {
        //cast to SObject
        try {
            Opportunity opp = (Opportunity) obj;
        } catch (Exception e) {
            throw new BasicStack.BasicStackException();
        }

    }
}