class Car {
  String brand = "bmw";
  String model = "x3";
  double _speed = 30.0;

  //Car(this.brand, this.model, this._speed);

  double get speed =>
      _speed; // we get value with this method (1st:datatype, 2nd:get, 3rd: assign name by  ourself which we use in another file for output,
  // 4th:arrow function, 5th: (_)value which is private).

  // set setSpeed(double speeed) {
  //   _speed = speeed;
  // }

  void accelerate(double value) {
    if (value <= 200) {
      _speed += value;
    } else {
      print("Spedd cannot exceed 200");
    }
    print("Accelerate to: $_speed");
    displaydetail();
  }

  void brake(double value) {
    if (value >= 0) {
      _speed -= value;
    } else {
      print("Speed cannot less than 0");
    }

    print("Braked to: $_speed");
    displaydetail();
  }

  void displaydetail() {
    print("$brand, $model, Current Speed: $_speed");
  }
}
