void main() {
  print("First Operation");
  Future.delayed(Duration(seconds: 2), () => print("Middle Operation"));
  print("Last Operation");
}
