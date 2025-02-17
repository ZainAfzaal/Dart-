//assignment-1
void main() {
  print("Task1 - Start");
  print("Task1 - End");
  print("Task2 - Start");
  task2();
  print("Task3 - Start");
  task3();
}

task2() {
  Future.delayed(Duration(seconds: 2), () => print("Task:2 - End"));
}

task3() {
  Future.delayed(Duration(seconds: 1), () => print("Task:3 - End"));
}


//assignment-2
// void main(){
//   print("fetching user data");
//   fetchData().then((value)=> print(value));
// }

// Future<String> fetchData(){
//   return Future.delayed(Duration(seconds:3), ()=>"User:Zain Afzaal");
// }



//assignment-3
// void main(){
//   print("hello");
//   displayGreetings();
// }

// displayGreetings(){
//   Future.delayed(Duration(seconds:3), ()=>print("Hello Dart"));
// }