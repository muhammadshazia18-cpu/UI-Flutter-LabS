import 'dart:io';
class Student {
  String name;
  int rollNo;
  List<int> marks;
  Student(this.name, this.rollNo, this.marks);
  void display() {
    int total = marks.reduce((a, b) => a + b);
    double average = total / 6;
    String grade;
    if (average >= 90)
      grade = "A";
    else if (average >= 75)
      grade = "B";
    else if (average >= 60)
      grade = "C";
    else if (average >= 40)
      grade = "D";
    else
      grade = "Fail";
    print("\nStudent Details");
    print("Name : $name");
    print("Roll No : $rollNo");
    print("Total Marks : $total");
    print("Average : ${average.toStringAsFixed(2)}");
    print("Grade : $grade");
  }
}
void main() {
  print("Enter Student Name:");
  String name = stdin.readLineSync()!;
  print("Enter Roll Number:");
  int roll = int.parse(stdin.readLineSync()!);
  List<int> marks = [];
  for (int i = 1; i <= 6; i++) {
    print("Enter marks of Subject $i:");
    marks.add(int.parse(stdin.readLineSync()!));
  }
  Student s = Student(name, roll, marks);
  s.display();
}