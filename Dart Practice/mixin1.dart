void main() {
  ElectricCar e_car = ElectricCar();
  e_car.move();
  e_car.charge();

  HybridCar hybrid = HybridCar();
  hybrid.move();
  hybrid.charge();
  hybrid.refuel();
}

class Vehicle {
  void move() {}
}

class ElectricCar extends Vehicle with Electric {
  @override
  void move() {
    print("The Electric Vehicle is Moving");
  }
}

class HybridCar extends Vehicle with Electric, Fuel {
  @override
  void move() {
    print("The Hybrid Vehicle is Moving");
  }
}

mixin Electric {
  void charge() {
    print("Charging Battery");
  }
}

mixin Fuel {
  void refuel() {
    print("Refueling the car...");
  }
}
