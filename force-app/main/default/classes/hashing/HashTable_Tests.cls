/**
 * Created by Brooks Johnson on 7/19/2022.
 */

@IsTest
public with sharing class HashTable_Tests {
  @IsTest
  public static void itShouldInsert() {
    HashTable table = new HashTable();
    table.insertTable(10, 'hello');
  }
}
