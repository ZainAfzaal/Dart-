import 'dart:io';

void main() {
  stdout.write("Please enter a number: ");
  int x = int.parse(stdin.readLineSync()!);

  for (int i = 1; i <= 10; i++) {
    print('$x X $i = ${i * x}');
  }

  stdout.write("Please enter a string: ");
  // ignore: unused_local_variable
  String y = stdin.readLineSync()!;
}
