/**
 * Created by Brooks Johnson on 7/19/2022.
 */

public with sharing class HashEntry {
  public Integer key;
  public Object value;

  public HashEntry next;

  public HashEntry(Integer key, Object value) {
    this.key = key;
    this.value = value;
  }
}
