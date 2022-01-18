# Algorithms and Data Structures in Apex

![Image of Cody from Salesforce](https://github.com/bdJohnson72/Algorithms_And_Data_Structures_In_Apex/blob/master/images/recipes-logo.png)

Welcome this repo is meant as a companion to
my [youtube series](https://www.youtube.com/playlist?list=PLdt84CMzTQBbon-6Oy2a_rIsOyzMTrjnn).

## [Recursion](https://github.com/bdJohnson72/Algorithms_And_Data_Structures_In_Apex/tree/master/force-app/main/default/classes/recursion)

- [intro to recursion](https://github.com/bdJohnson72/Algorithms_And_Data_Structures_In_Apex/tree/master/force-app/main/default/classes/recursion)
  - [Watch it on Youtube](https://www.youtube.com/watch?v=4xpg0NnS90w&list=PLdt84CMzTQBbon-6Oy2a_rIsOyzMTrjnn&index=2)
  - I provided some code challenges for writing recursive code. The answers are in the repo. But try to solve these first.
    1. Get the sum or a range of numbers.
    2. Compute a number to a certain power.
    3. Determine if a word is a palindrome
    4. Compute a number in the fibonacci sequence
    5. Reverse a string

## [Search](https://github.com/bdJohnson72/Algorithms_And_Data_Structures_In_Apex/tree/master/force-app/main/default/classes/search)

- [Linear Search](https://github.com/bdJohnson72/Algorithms_And_Data_Structures_In_Apex/blob/master/force-app/main/default/classes/search/LinearSearch.cls)
- [Watch it on Youtube](https://www.youtube.com/watch?v=a8kPwN3b8vk&lc=UgyJwVycuT5JKGj2oil4AaABAg.9XH1gpNj-C-9XHPnpyVIUZ)
  - just fine for a small data set. Runs at o(N)
- [Binary Search](https://github.com/bdJohnson72/Algorithms_And_Data_Structures_In_Apex/blob/master/force-app/main/default/classes/search/BinarySearch.cls)
  - The algo that made me feel like a genius the first time I saw it and understood it. It needs a sorted list to work
    but runs at o(Log N).

## [Sorting](https://github.com/bdJohnson72/Algorithms_And_Data_Structures_In_Apex/tree/master/force-app/main/default/classes/sorting)

- [Bubble Sort](https://github.com/bdJohnson72/Algorithms_And_Data_Structures_In_Apex/blob/master/force-app/main/default/classes/sorting/BubbleSort.cls)
  - [Watch it on Youtube](https://youtu.be/KJVDLgfzCL8)
  - Pretty much only used as an example of what not do it. But perfect for undertanding why nested for loops are bad.
- [Selection Sort](https://github.com/bdJohnson72/Algorithms_And_Data_Structures_In_Apex/blob/master/force-app/main/default/classes/sorting/SelectionSort.cls)
  - Like Bubble Sort but puts the smallest value into sorted position instead of the largest. Algo runs at O(n^2) but is
    slightly optomized compared to Bubble Sort. It does one swap per pass for the lowest value.
- [Insertion Sort](https://github.com/bdJohnson72/Algorithms_And_Data_Structures_In_Apex/blob/master/force-app/main/default/classes/sorting/InsertionSort.cls)
  - Runs at O(n^2). Iterates from index 1 to final position in the collection. If value is smaller than its predecessor
    it compares to elements before and swaps.
- [Merg Sort](https://github.com/bdJohnson72/Algorithms_And_Data_Structures_In_Apex/blob/master/force-app/main/default/classes/sorting/MergeSort.cls)
  -The first of our "advanced sorting algos" and an important one to understand. It is a divide and conquer algo and runs at O(nLogn). It has a space complexity of O(n).

## [Data Structures]()

- [Singly Linked List]() :construction:
  - A data structure with a head, tail and length property. Unlike a Apex List it has no index. Each node in the list
    contains a pointer to the next element. You can not use collection[i] instead it is collection.next().
  - It contains the properties head, length and tail.
