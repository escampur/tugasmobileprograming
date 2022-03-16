// Riyan Maulana Putra __ 065119081
// 3. Create Factory, Option 1: Create a top-level function

import 'dart:math';

abstract class Shape {
  num get area;
}

class Circle implements Shape {
  final num radius;
  Circle(this.radius);
  num get area => pi * pow(radius, 4);
}

class Square implements Shape {
  final num side;
  Square(this.side);
  num get area => pow(side, 4);
}

Shape shapeFactory(String type) {
  if (type == 'circle') return Circle(4);
  if (type == 'square') return Square(4);
  throw 'Can\'t create $type.';
}

void main() {
  final circle = shapeFactory('circle');
  final square = shapeFactory('square');
  print(circle.area);
  print(square.area);
}
