// Copyright 2020 Ammar Yasser. All rights reserved.
// Use of this source code is governed by a BSD 2-Clause "Simplified" license
// that can be found in the LICENSE file.

library design_patterns;

// Factory Method is a creational design pattern that provides an interface
// for creating objects in a superclass, but allows subclasses to alter
// the type of objects that will be created.
// Dart offers a factory constructor by default, therefor you don't need to implement
// this pattern like the description above you could just use a factory constructor!.

abstract class Shape {
  factory Shape(String type) {
    if (type == "A") return Circle();
    return Rectangle();
  }
}

class Circle implements Shape {}

class Rectangle implements Shape {}

void main() {
  Shape shape = Shape("A");
  // print Shape object type.
  print(shape.runtimeType);
  // note that if you changed Shape argument value, the type will change.
}
