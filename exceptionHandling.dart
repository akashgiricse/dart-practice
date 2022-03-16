import 'dart:math';

void CheckAge(int a) {
  if (a < 1) {
    throw FormatException;
  }
}

void main() {
  var eNum = 1;

  try {
    print("Zero Divide ${eNum / 0}");
  } catch (e) {
    print(e);
  } finally {
    print("I always execute");
  }

  try {
    int a1 = 0;

    CheckAge(a1);
  } catch (e) {
    print(e);
  }
}
