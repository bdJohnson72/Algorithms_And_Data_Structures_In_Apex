/**
 * Created by brooks on 9/25/2021.
 */

public with sharing class StringStack extends BasicStack {
  protected override void checkType(Object obj) {
    System.debug(obj);
    if (obj instanceof String) {
      return;
    } else {
      throw new BasicStackException();
    }
  }
}
