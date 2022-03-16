import 'dart:math';

void main() {
  print("hello dart");
  // Variable
  var name = "Akash";
  String name2 = "Giri";
  // Dynamic data type, can be reassign to anything later
  dynamic anything = 33;
  anything = "lkas";
  // Define variable which will be assigned to a value later
  late int var1;
  int age = 45;
  double money = 111.23;
  bool canVote = false;
  print("Is Bool ${canVote} is bool");
  // Assign null value to imNull
  int? imNull;
  print("${imNull}");
  // Constant value
  final PI = 3.14;

  String sNum = "45";
  int iNum = int.parse(sNum);
  sNum = iNum.toString();
  double dNum = double.parse(sNum);
  double? dNum2 = double.tryParse("1.2a");
  print(dNum2);

  print(5 / 4);
  print(5 ~/ 4);
  print(5 % 4);

  var n1 = 5;
  print(n1++); // 5
  print(++n1); // 7

  Random r1 = new Random();

  print("Random ${r1.nextInt(100)}");

  var s2 = """ 
  I am a multi line string""";
  print(s2[0]);
  print(s2.indexOf("am"));

  var s3 = " and I like cat";
  var s4 = s2 + s3;
  print("Empty : ${s4.isEmpty}");

  print(r"New line \n won't work because it is a raw sting");

  print(s4.toUpperCase());

  print("I am here".contains("am"));
  print("I am here".startsWith("I"));
  print("I am here".endsWith("here"));

  print(s4.substring(12, 14));

  var s5 = "To know or not to know";
  var s6 = s5.replaceAll(RegExp("know"), "be");
  print(s6);

  var as5 = s5.split(" ");
  print(as5);

  print("       hi     ".trim());

  // if you are making too many changes to a string then it is good to use
  // string buffer instead of defining multiple strings
  var buf = StringBuffer();

  for (var i = 0; i < 9; ++i) {
    buf.write("$i");
  }
  print(buf.toString());
  buf.write(9);
  buf.writeAll([10, 11, 12]);
  print(buf.toString());

  print(buf.isEmpty);
}
