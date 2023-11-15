/*
  Same as yt7, but now we are using the other for loop!

  Look at this for loop, it will loop through myList and each list
  inside that list, it returns the innerList.

    for(int idx=0; idx<myList.length; idx++){
      print(myList[idx]);
    }

  Instead of the print statement, create a for loop WITHIN this for loop, that
  loops through each integer of innerList and prints it. Use the same for
  loop definition (i.e NOT the IN for loop)

  You should end up with this in the console

  2
  4
  6
  8
  1
  3
  5
  7
  8
  6
  4
  2
  7
  5
  3
  1

 */

void main() {
  List<List<int>> myList = [
    [2, 4, 6, 8],
    [1, 3, 5, 7],
    [8, 6, 4, 2],
    [7, 5, 3, 1]
  ];

  for (int idx = 0; idx < myList.length; idx++) {
    for (int a = 0; a < myList[idx].length; a++) {
      print(myList[idx][a]);
    }
  }
}
