import 'dart:math';

void main() {
  var ingredient = "tomatoes";
  switch (ingredient) {
    case "tomatoes":
    case "pasta":
      print("Spaghetti");
      break;
    case "beans":
      print("Burritos");
      break;
    default:
      print("Water");
  }

  var age = 22;
  var canVote = (age >= 18) ? true : false;
  print(canVote);
}
