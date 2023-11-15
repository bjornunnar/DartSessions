/*
  When you are working with a list of lists that contain numbers, you usually
  don't say "list of lists" but you often refer to them as a "matrix.

  However, for a matrix to be valid, it must be symmetric

  This is a valid matrix, it has two rows and each row has two columns
  [10, 11]
  [12, 34]

  This is not valid matrix, one of the rows has longer than 3 items!
  [10, 11]
  [12, 34, 15]

  Generally, if you have N rows, you should have N columns as well for it to
  be a valid matrix.

  YOUR JOB
  Write a function that determines if the given list of lists is valid
  meaning that for each row, it has the same number of columns


 */

void main() {
  print(is_valid_matrix([
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9],
    [7, 8, 9],
    [7, 8, 9],
  ]));
  // Should output True

  print(is_valid_matrix([
    [1, 2, 3],
    [4, 5],
    [7, 8, 9]
  ]));
  // Should output False
  // because the second row only has two values, while the other ones
}

bool is_valid_matrix(List<List<int>> matrix) {
  List checkNumber = [];
  for (List element in matrix) {
    checkNumber.add(element.length);
  }
  if (checkNumber.toSet().length > 1) {
    return false;
  } else {
    return true;
  }
}
