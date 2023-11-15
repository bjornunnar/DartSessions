/*
  Now, sometimes it is necessary to work with multiple lists, or a LIST OF LISTS
  To create a list of lists, think of how you create a regular list of int

  List<TYPE_OF_LIST> or, for a list of integers: List<int>

  So for a List of Lists of integers, we have a "new" type of list. A list
  that has the type <List<int>> ... so

  List<List<int>>

  Now, as before, how would you print the MIDDLE list?

  Think about this: What kind of variable is getting printed? In the previous
                    example, we printed a integer, now we are printing..?

 */

void main() {
  List<List<int>> myList = [
    [2, 4, 6, 8, 10],
    [3, 6, 9, 12, 15],
    [4, 8, 12, 16, 20]
  ];

  print(myList[(myList.length / 2).floor()]);
}
