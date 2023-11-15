/*
   Write a program that starts a countdown to new-years eve - starting from
   23:58:00

   You should print out each second until the clock strikes midnight

   Count-down
   00:02:00
   00:01:59
   00:01:58
   .....

   When 10 seconds are left, stop writing out the time and print out text
   TEN!
   NINE!
   ...
   HAPPY NEW YEAR!!!!
 */

String fmt(int number) {
  return number.toString().padLeft(2, '0');
}

List<String> secondWords = [
  "HAPPY NEW YEAR !!!!",
  "ONE !",
  "TWO !",
  "THREE !",
  "FOUR !",
  "FIVE !",
  "SIX !",
  "SEVEN !",
  "EIGHT !",
  "NINE !",
  "TEN !",
];

void main() {
  for (int hour = 23; hour >= 0; hour--) {
    for (int minute = 58; minute >= 0; minute--) {
      for (int second = 59; second >= 0; second--) {
        if (minute == 0 && second < 11) {
          print(secondWords[second]);
        } else {
          print("${fmt(hour)}:${fmt(minute)}:${fmt(second)}");
        }
      }
    }
  }
}
