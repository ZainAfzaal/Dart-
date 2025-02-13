void main() {
  Credit credit = Credit();
  credit.processPayment(200);

  Paypal paypal = Paypal();
  paypal.processPayment(300);
}

abstract class Payment {
  void processPayment(double amount);
}

class Credit implements Payment {
  @override
  void processPayment(double amount) {
    print("Processing \$${amount} via credit");
  }
}

class Paypal implements Payment {
  @override
  void processPayment(double amount) {
    print("Processing \$${amount} via Paypal");
  }
}
