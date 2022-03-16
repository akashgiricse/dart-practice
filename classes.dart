import 'dart:math';

class Shape {
  double height = 0;
  double width = 0;
  String unit = "cms";

  // class variable
  static int num_shapes = 0;

  // Constructor
  Shape() {
    this.height = 0;
    this.width = 0;

    Shape.num_shapes++;
  }

  // Named constructor
  Shape.fromLength(double length) {
    this.height = length;
    this.width = length;
    Shape.num_shapes++;
  }

  Shape.fromWH(double height, double width) {
    this.height = height;
    this.width = width;
    Shape.num_shapes++;
  }

  // Getters
  String get shape_height {
    return height.toString() + " " + unit;
  }

  String get shape_width {
    return width.toString() + " " + unit;
  }

  // Setters
  // Let's first assign a static function to check if the string is a number or not

  static is_number(String s) {
    return double.tryParse(s) != null;
  }

  void set shape_height(String h) {
    if (is_number(h)) {
      this.height = double.parse(h);
    }
  }

  double area() {
    return width * height;
  }
}

// Inheritance

class Circle extends Shape {
  @override
  double area() {
    if (this.width != 0) {
      return pi * pow(this.width / 2, 2);
    } else if (this.height != 0) {
      return pi * pow(this.height / 2, 2);
    } else {
      return 0;
    }
  }

  // What if you want to execute the main area funciont ?
  // In that case you use the "super" keyword
  // i.e. "super.area()";

  Circle() : super();
  Circle.fromLength(double l) : super.fromLength(l);
  Circle.fromWH(double h, double w) : super.fromWH(h, w);
}

void main() {
  Shape sq1 = new Shape();
  // Named constructors
  Shape sq2 = new Shape.fromLength(3.45);
  Shape sq3 = new Shape.fromWH(4.0, 5.0);

  print("Square 3 Area: ${sq3.area()}");

  Circle circ = new Circle.fromLength(4);

  print("Circle area: ${circ.area()}");
}
