/*
  Look at the loop.

  Currently it prints

  1
  2
  3
  4
  5

  Can you create a for loop within that for loop such that it prints

  1
  22
  333
  4444
  55555

  HINT: We have been using print(idx) but it will print a new line each time.
        To not print a new line each time, you can instead use stdout.write(idx)
        Just make sure to actually create a new line now when you want to, ie
        add for example a print(''); somewhere where it's logical.

        Otherwise you end up with 122333444455555 :)

 */

import 'dart:io';

void main() {
  for (int outer = 1; outer <= 5; outer++) {
    List numbers = [];
    for (int inner = 1; inner <= outer; inner++) {
      numbers.add(outer);
      if (numbers.length == outer) {
        print(numbers.join());
      }
    }
  }
}
