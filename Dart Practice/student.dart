void main() {
  Student student1 = Student("zain", 21, "A", 86);
  Student student2 = Student("ali", 23, "B", 94);
  Student student3 = Student("asif", 20, "A", 40);

  List<Student> students = [student1, student2, student3];

  for (var student in students) {
    student.displayinfo();

    if (student.isEligible()) {
      print("${student.name} is eligible for scholorship");
    } else {
      print("${student.name} is not eligible for scholorship");
    }
  }
}

class Student {
  String name;
  int age;
  String grade;
  int marks;

  Student(this.name, this.age, this.grade, this.marks);

  void displayinfo() {
    print("Name: $name, Age: $age, Grade: $grade, Marks: $marks");
  }

  bool isEligible() {
    return grade == "A" && marks > 85;
  }
}
