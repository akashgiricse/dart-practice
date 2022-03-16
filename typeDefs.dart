import 'dart:math';

typedef DoMath(int n, int n2);

add(int n, int n2) {
  print("${n} + ${n2} = ${n + n2}");
}

sub(int n, int n2) {
  print("${n} - ${n2} = ${n - n2}");
}

void main() {
  DoMath m_func = add;

  m_func(5, 4);
  m_func = sub;
  m_func(5, 4);
}
