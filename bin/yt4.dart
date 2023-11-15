/*
  Now, looping! Let's warm up a little bit.

  There are two type of for-loops:
    for(int idx=0; idx<=10; idx++)
    for(int idx in Indexes)

  Create both of these for loops for the list down there, such that they
  print each number from the list.

  You will basically print this sequence once done.

  15
  20
  25
  30
  35
  15
  20
  25
  30
  35

 */

void main() {
  List<int> myList = [15, 20, 25, 30, 35];

  for (int i = 0; i < myList.length; i++) {
    print(myList[i]);
  }

  for (int element in myList) {
    print(element);
  }
}
