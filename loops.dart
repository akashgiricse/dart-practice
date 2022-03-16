import 'dart:math';

void main() {
  Random r1 = new Random();

  var l1 = List<int>.generate(5, (index) => r1.nextInt(100));

  for (var i = 0; i < l1.length; i++) {
    print(l1[i]);
  }

  print("\n\n");

  l1.forEach((element) => {print(element * 20)});

  print('\n \n');

  var str1 = "Bob Sue Tom";

  for (var person in str1.split(" ")) {
    print(person);
  }

  var i2 = 1;

  while (i2 < 10) {
    if (i2 % 2 == 0) {
      i2 += 1;
      continue;
    }

    if (i2 == 7) {
      break;
    }

    print(i2);
    i2 += 1;
  }
  Random r2 = new Random();

  var lucky = r2.nextInt(10);

  var guess = -1;

  do {
    guess += 1;
    print("Guess : ${guess}");
  } while (lucky != guess);

  print("Lucky is : ${lucky}");

  // Maps:

  Map<String, int> m1 = new Map<String, int>();

  var heroes = {"Super man": "Clart kent", "Batman": "Bruce Wayne"};

  heroes["Flash"] = "Barry Allen";

  print("Empty: ${heroes.isEmpty}");
  print("length: ${heroes.length}");

  heroes.keys.forEach((element) => {print(element)});

  heroes.addAll({"Lex Luther": "Lex Luther", "Loki": "Loki"});

  heroes.remove("Lex Luther");
  print(heroes);
  heroes.clear();

  print("Empty: ${heroes.isEmpty}");
}
