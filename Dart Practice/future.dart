void main() async {
  print("First Operation");
  display().then((value) => print(value));
  print("Last Operation");
}

Future<String> display() async {
  return Future.delayed(Duration(seconds: 2), () => "Middle Operation");
}
