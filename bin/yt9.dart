/*
  Let's add some conditionals into the mix now.
  Copy either yt7 or yt8 solution, which ever you prefer is fine.

  1. Adjust the code s.t it only prints numbers that are bigger than 5
  2. Adjust the code s.t it will collect numbers that are bigger than 5 into
     a separate list variable and print that list.

  BONUS CHALLENGE:
  Make your solution more general and create a function called something like
  GetNumbersBiggerThan which accepts a List of Lists and a number to check.
  If we give this function the list in the below example and 5, it should
  return us the list from 2.

 */

void main() {
  List<List<int>> myList = [
    [2, 4, 6, 8],
    [1, 3, 5, 7],
    [8, 6, 4, 2],
    [7, 5, 3, 1]
  ];

  List<int> newList = [];

  int highNumber = 3;

  // FANCY FUNCTION
  getNumbers(baseList: myList, emptyList: newList, highNumber: highNumber);

  // DEDICATED FOR LOOPS
  // for (List<int> innerList in myList) {
  //   for (int number in innerList) {
  //     if (number > 5) {
  //       print(number);
  //     }
  //   }
  // }

  // for (List<int> innerList in myList) {
  //   for (int number in innerList) {
  //     if (number > 5) {
  //       newList.add(number);
  //     }
  //   }
  // }
  // print(newList);
}

void getNumbers(
    {required List baseList,
    required List emptyList,
    required int highNumber}) {
  for (List<int> innerList in baseList) {
    for (int number in innerList) {
      if (number > highNumber) {
        emptyList.add(number);
      }
    }
  }
  print(emptyList);
}
