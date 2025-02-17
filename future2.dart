void main() {
  print("First Operation");
  display();
  print("Last Operation");
}

Future display() async {
  Future.delayed(Duration(seconds: 2), () => print("Middle Operation"));
}
