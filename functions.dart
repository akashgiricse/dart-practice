import 'dart:math';

int get_sum1(val1, val2) {
  return val1 + val2;
}

int get_sum2(val1, {val2: 0}) {
  return val1 + val2;
}

int get_sum3(val1, val2) => val1 + val2;

int get_sum4(List vals) {
  return vals.reduce((value, element) => value + element);
}

List next_2(num) {
  return [num + 1, num + 2];
}

// Function returning a custom function

Function mult_by(n1) {
  int inner_func(x) {
    return x * n1;
  }

  return inner_func;
}

// Anonymous function
bool Function(int) is_even = (int x) => x % 2 == 0;

// Recursive function

int fib(int n1) {
  if (n1 <= 1) {
    return 1;
  } else {
    return fib(n1 - 1) + fib(n1 - 2);
  }
}

void main() {
  print(" 5 + 4 = ${get_sum1(5, 4)}");
  print(" 5 + 4 = ${get_sum2(5)}");
  print(" 5 + 4 = ${get_sum3(5, 4)}");

  print(" 5 + 4 = ${get_sum2(5, val2: 4)}");

  print(" Sum = ${get_sum4([1, 2, 3, 4, 5])}");

  print(" Next 2 = ${next_2(6)}");

  next_2(4).forEach((element) => print(element));

  print(" 3 * 5 = ${mult_by(3)(5)}");

  bool Function(int) is_even = (int x) => x % 2 == 0;

  print(" 202 Even ? ${is_even(202)}");

  print(" Fib 10 ${fib(10)}");
}
