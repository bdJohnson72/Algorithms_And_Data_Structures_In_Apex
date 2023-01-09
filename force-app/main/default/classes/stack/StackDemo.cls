/**
 * Created by brooks.johnson on 4/21/2022.
 */

public with sharing class StackDemo {
  public static final String OPENING = '({[';
  public static final String CLOSING = ')}]';

  public static Boolean isMatched(String expression) {
    //We use a String as lifo data structure
    List<String> stack = new List<String>();
    List<String> stringArray = expression.split('');
    for (String str : stringArray) {
      if (OPENING.indexOf(str) != -1) {
        stack.add(str);
      } else if (CLOSING.indexOf(str) != -1) {
        if (stack.isEmpty()) {
          //nothing to match with
          return false;
        }
        //the next closing delimiter should match the opening delimiter at the top of the stack
        if (
          CLOSING.indexOf(str) !=
          OPENING.indexOf((String) stack.remove(stack.size() - 1))
        ) {
          return false;
        }
      }
    }
    return stack.isEmpty();
  }

  public Boolean companionPlants(List<String> plants) {
    if (plants.size() == 1) {
      return false;
    }
    if (plants.size() == 0) {
      return true;
    }
    Map<String, Set<String>> companionPlants = new Map<String, Set<String>>();
    companionPlants.put('lettuce', new Set<String>{ 'cucumbers, onions' });
    companionPlants.put('cucumbers', new Set<String>{ 'lettuce' });
    companionPlants.put(
      'onions',
      new Set<String>{ 'lettuce, carrots, tomatoes' }
    );
    companionPlants.put('carrots', new Set<String>{ 'onions' });
    companionPlants.put('tomatoes', new Set<String>{ 'onions' });
    for (Integer i = 0; i < plants.size() - 1; i++) {
      Set<String> companions = companionPlants.get(plants[i]);
      if (!companions.contains(plants[i + 1])) {
        return false;
      }
    }
    return true;
  }
  public Boolean companionPlans2(String plant1, String plant2) {
    Map<String, Set<String>> companionPlants = new Map<String, Set<String>>();
    companionPlants.put('lettuce', new Set<String>{ 'cucumbers', 'onions' });
    companionPlants.put('cucumbers', new Set<String>{ 'lettuce' });
    companionPlants.put(
      'onions',
      new Set<String>{ 'lettuce', 'carrots', 'tomatoes' }
    );
    companionPlants.put('carrots', new Set<String>{ 'onions' });
    companionPlants.put('tomatoes', new Set<String>{ 'onions' });

    return companionPlants.get(plant1).contains(plant2);
  }
}
