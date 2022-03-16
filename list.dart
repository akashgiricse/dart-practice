import 'dart:math';

void main() {
  var l1 = <String>[];
  List<String> l2 = ["A", "B"];

  var l3 = [123, "main", "Pitsburgh"];

  print("Index 1: ${l3[1]}");

  var l4 = List<int>.filled(3, 0, growable: true);

  l2.add("C");
  l2.addAll(["F", "E"]);

  print(l2.length);
  print(l3.contains("main"));
  l2.sort(((a, b) => a.compareTo(b)));

  for (var val in l2) {
    print(val);
  }

  Random r2 = new Random();
  var l5 = List<int>.generate(5, (int index) => r2.nextInt(100));

  for (var val in l5) {
    print(val);
  }

  print(l5.first);
  print(l5.last);

  Iterable<int> i1 = l5.getRange(0, 2);

  for (var val in i1) {
    print(val);
  }

  var s1 = l5.join(" ");
  print(s1);

  // Sets

  Set set1 = new Set();

  set1.add(10);
  set1.add(13);

  Set set2 = new Set.from([1, 2, 3]);

  for (var x in set2) {
    print(x);
  }
}
