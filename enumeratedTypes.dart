import 'dart:math';

// List of constant with an index

enum Day { Mon, Tue, Wed, Thr, Fri }

void main() {
  Day favDay = Day.Fri;

  print("Value ${favDay}");
  print(" Index ${favDay.index}");

  // Unicode

  var num1 = '\u{0031}';
  print(num1);

  String uc1 = "Strange";

  print("t : ${uc1.codeUnitAt(1)}");
  print(uc1.codeUnits);

  uc1.runes.forEach((int r1) {
    var c1 = new String.fromCharCode(r1);
    print(c1);
  });
}
