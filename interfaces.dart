import 'dart:math';

class PrintLaser {
  void print_laser() {}
}

class PrintInkjet {
  void print_inkjet() {}
}

class Print implements PrintLaser, PrintInkjet {
  void print_laser() {}
  void print_inkjet() {}
}

void main() {}
