/*
  Now, do the same thing for this List of lists variable!
  The printout should be

  [2, 4, 6, 8, 10]
  [3, 6, 9, 12, 15]
  [4, 8, 12, 16, 20]
  [2, 4, 6, 8, 10]
  [3, 6, 9, 12, 15]
  [4, 8, 12, 16, 20]

 */

void main() {
  List<List<int>> myList = [
    [2, 4, 6, 8, 10],
    [3, 6, 9, 12, 15],
    [4, 8, 12, 16, 20]
  ];

  for (int i = 0; i < myList.length; i++) {
    for (int a = 0; a < myList[i].length; a++) {
      print(myList[i][a]);
    }
  }

  for (List element in myList) {
    for (int element2 in element) {
      print(element2);
    }
  }
}
