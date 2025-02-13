void main() {
  ElectricCar electricCar = ElectricCar();
  HybridCar hybridCar = HybridCar();

  electricCar.move();
  electricCar.chargeBattery();
  electricCar.move();

  hybridCar.move();
  hybridCar.move();
  hybridCar.refuel();
  hybridCar.move();
}

class Vehicle {
  int speed = 60;
  void move() {
    print('The vehicle is moving at speed: $speed km/h');
  }
}

mixin ElectricPowered {
  int batteryLevel = 100;

  void chargeBattery() {
    if (batteryLevel < 100) {
      batteryLevel += 20;
      if (batteryLevel > 100) batteryLevel = 100;
      print('Charging the battery... New battery level: $batteryLevel%');
    } else {
      print('Battery is already full.');
    }
  }
}

mixin FuelPowered {
  int fuelLevel = 100;

  void refuel() {
    if (fuelLevel < 100) {
      fuelLevel += 30;
      if (fuelLevel > 100) fuelLevel = 100;
      print('Refueling... New fuel level: $fuelLevel%');
    } else {
      print('Fuel is already full.');
    }
  }
}

class ElectricCar extends Vehicle with ElectricPowered {
  @override
  void move() {
    if (batteryLevel > 0) {
      batteryLevel -= 10;
      print('Electric Car is moving. Battery level: $batteryLevel%');
    } else {
      print('Electric Car cannot move. Battery is empty!');
    }
  }
}

class HybridCar extends Vehicle with ElectricPowered, FuelPowered {
  @override
  void move() {
    if (fuelLevel > 0) {
      fuelLevel -= 10;
      print('Hybrid Car is moving using fuel. Fuel level: $fuelLevel%');
    } else if (batteryLevel > 0) {
      batteryLevel -= 5;
      print(
          'Hybrid Car is moving using battery. Battery level: $batteryLevel%');
    } else {
      print('Hybrid Car cannot move. No fuel or battery left!');
    }
  }
}
