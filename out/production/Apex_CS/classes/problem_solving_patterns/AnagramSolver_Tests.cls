@IsTest
private class AnagramSolver_Tests {
  @IsTest
  static void returnFalseOnDifferentLengths() {
    //given
    String name1 = 'Brooks';
    String name2 = 'brook';
    //when
    Boolean result = AnagramSolver.isAnagram(name1, name2);
    //then
    System.assert(result == false);
  }

  @IsTest
  static void convertStringToList() {
    //given
    String testString = 'Tom Marvolo Riddle';
    //when
    List<String> convertedString = AnagramSolver.convertString(testString);
    //then
    System.assert(convertedString.size() == 16);
  }

  @IsTest
  static void countFrequency() {
    //given
    String name = 'Brooks';
    //when
    Map<String, Integer> frequencyCountMap = AnagramSolver.countFrequency(
      AnagramSolver.convertString(name)
    );
    //then
    System.assert(frequencyCountMap.get('o') == 2);
  }

  @IsTest
  static void returnTrueOnAnagram() {
    //given
    String name1 = 'Tom Marvolo Riddle';
    String name2 = 'I am Lord Voldemort';
    //when
    Boolean result = AnagramSolver.isAnagram(name1, name2);
    //then
    System.assert(result == true);
  }

  @IsTest
  static void returnFalseNotAnagram() {
    //given
    String name1 = 'dog';
    String name2 = 'cat';
    //when
    Boolean result = AnagramSolver.isAnagram(name1, name2);
    //then
    System.assert(result == false);
  }

  @IsTest
  static void returnFalseUnequalLength() {
    //given
    String name1 = 'Hellooo';
    String name2 = 'Helloo';
    //when
    Boolean result = AnagramSolver.isAnagram(name1, name2);
    //then
    System.assert(result == false);
  }
}
