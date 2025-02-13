void main() {
  Bird bird = Bird();
  bird.fly();
  bird.sound();
  print("---------");
  Dog dog = Dog();
  dog.sound();
}

class Animal {
  void sound() {}
}

class Bird extends Animal with FlyingAbility {
  @override
  void sound() {
    print("Chew. chew...");
  }
}

class Dog extends Animal {
  @override
  void sound() {
    print("Barking..");
  }
}

mixin FlyingAbility {
  void fly() {
    print("Bird is flying");
  }
}
