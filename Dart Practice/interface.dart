void main() {
  Car car = Car();
  car.start();
  car.stop();
  car.fueltype();

  Bus bus = Bus();
  bus.start();
  bus.stop();
  bus.fueltype();
}

abstract class Vehicle {
  start();
  stop();
  fueltype();
}

class Car implements Vehicle {
  void start() {
    print("Car is start");
  }

  void stop() {
    print("Car is stop");
  }

  void fueltype() {
    print("Fuel type is petrol");
  }
}

class Bus implements Vehicle {
  void start() {
    print("Bus is start");
  }

  void stop() {
    print("Bus is stop");
  }

  void fueltype() {
    print("Fuel type is Diesel");
  }
}
