import 'dart:io';

void main() {
  stdout.write("Enter Car brand:");
  String carbrand = stdin.readLineSync()!;
  stdout.write("Enter Car Model:");
  String carmodel = stdin.readLineSync()!;
  stdout.write("Enter Car  Year:");
  int caryear = int.parse(stdin.readLineSync()!);
  stdout.write("Enter num of doors:");
  int cardoors = int.parse(stdin.readLineSync()!);

  Car car = Car(carbrand, carmodel, caryear, cardoors);

  print("---------------------------");

  stdout.write("Enter Bike Brand:");
  String bikebrand = stdin.readLineSync()!;
  stdout.write("Enter Bike Model:");
  String bikemodel = stdin.readLineSync()!;
  stdout.write("Enter Bike Year:");
  int bikeyear = int.parse(stdin.readLineSync()!);
  stdout.write("Has carrier(true/false):");
  bool bikehascarrier = bool.parse(stdin.readLineSync()!);

  Bike bike = Bike(bikebrand, bikemodel, bikeyear, bikehascarrier);

  print("---------------------------");
  car.displaydetails();
  print("---------------------------");
  bike.displaydetails();
}

class Vehicle {
  String brand;
  String model;
  int year;

  Vehicle(this.brand, this.model, this.year);

  void displaydetails() {
    print("Brand: $brand");
    print(" Model: $model");
    print("Year: $year");
  }
}

class Car extends Vehicle {
  int numOfDoors;
  Car(String brand, String model, int year, this.numOfDoors)
      : super(brand, model, year);
  @override
  void displaydetails() {
    super.displaydetails();
    print("Num of Door: $numOfDoors");
  }
}

class Bike extends Vehicle {
  bool hascarrier;
  Bike(String brand, String model, int year, this.hascarrier)
      : super(brand, model, year);
  @override
  void displaydetails() {
    super.displaydetails();
    print('Has Carrier: ${hascarrier ? "Yes" : "No"}');
  }
}
