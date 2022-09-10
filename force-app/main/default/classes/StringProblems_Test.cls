/**
 * Created by Brooks Johnson on 9/10/2022.
 */

@IsTest
private class StringProblems_Test {
  @IsTest
  static void testGetCommonChars() {
    List<String> strs = new List<String>{ 'bellla', 'label', 'roller' };
    List<String> results = StringProblems.commonChars(strs);
    results.sort();
    System.assert(results[0] == 'e');
    System.assert(results[1] == 'l');
    System.assert(results[2] == 'l');
    System.assert(results.size() == 3);
  }
  @IsTest
  static void testGetCommonChars2() {
    List<String> strs = new List<String>{
      'cattle',
      'tattle',
      'battle',
      'rattle'
    };
    List<String> results = StringProblems.commonChars(strs);
    results.sort();
    System.assert(results.size() == 5);
    System.assert(results[0] == 'a');
    System.assert(results[1] == 'e');
    System.assert(results[2] == 'l');
    System.assert(results[3] == 't');
    System.assert(results[4] == 't');
  }
}
