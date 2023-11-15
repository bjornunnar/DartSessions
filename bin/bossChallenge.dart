/* Matrix multiplication

   Write a function that multiplies two matrices together.
   For matrix multiplication, the number of
   columns in the first matrix must be equal to the
   number of rows in the second matrix. The result
   matrix, known as the matrix product, has the number
   of rows of the first and the number of
   columns of the second matrix.

   There is a formal definition of matrix multiplication on wikipedia:
   https://en.wikipedia.org/wiki/Matrix_multiplication
   https://www.mathsisfun.com/algebra/matrix-multiplying.html

   Output Null if the matrices cannot be multiplied together.
   Use the previous function
   'is_valid_matrix' to validate the two matrices before you multiply them.

 */

void main() {
  List<List<int>> matrix1 = [
    [1, 2, 3],
    [4, 5, 6]
  ];

  List<List<int>> matrix2 = [
    [1, 2],
    [3, 4],
    [5, 6]
  ];

  print(matrix_multiply(matrix1, matrix2));
  // Should return [[22,28],[49,64]]

  // print(matrix_multiply(matrix2, [[]]));
  // // Should Return null

  // print(matrix_multiply(matrix2, matrix2));
  // // Should return null
}

// m is the first matrix and n is the second

// TODO -- FIGURE OUT WHAT THIS IS

List<List<int>> matrix_multiply(List<List<int>> m, List<List<int>> n) {
  List<List<int>> newMatrix = [];
  for (List row in m) {
    for (List column in n) {
      for (int i = 0; i < row.length - 1; i++) {
        for (int a = 0; a < n.length - 1; a++) {
          for (int b = 0; b < n[0].length - 1; b++) {
            newMatrix.add(row[i] * column[a][b]);
          }
        }
      }
    }
  }
  return newMatrix;
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

void checkMatrices(List<List<int>> m, List<List<int>> n) {
  if (m.length != m[0].length) {
    return null;
  }
}
