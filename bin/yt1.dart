/*
  Do you remember how you fetch a certain element from a list?
  Access the middle number in this list and print it.

  Hint: No tricks here, this is so easy this is basically a waste of code.

 */

void main() {
  List<int> myList = [15, 20, 25, 30, 35];

  print(myList[(myList.length / 2).floor()]);
}
