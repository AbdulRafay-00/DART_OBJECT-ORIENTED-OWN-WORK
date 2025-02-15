
import 'dart:io';

class Student {
  String? name;
  String? fatherName;
  int? roll;

  double percentage(int obtained, int total) {
    print("Your name: $name");
    print("Your father's name: $fatherName");
    print("Your roll number: $roll");
    return (obtained / total) * 100;
  }
}

void main() {
  Student student1 = Student()
    ..name = "Abdul Rafay"
    ..fatherName = "Muhammad Akram Khan"
    ..roll = 1;

  double result1 = student1.percentage(900, 1100);
  print("Percentage: $result1");

  Student student2 = Student()
    ..name = "Abdul Ghani"
    ..fatherName = "Muhammad ASLAM Khan"
    ..roll = 5;

  double result2 = student2.percentage(800, 1100);
  print("Percentage: $result2");

  File file = File("file.txt");
  file.writeAsString("STUDENT NAME FATHER NAME ROLLNO PERCENTAGE\n", mode: FileMode.write);
  file.writeAsString(
    "Student Name: ${student1.name} Father Name: ${student1.fatherName} Roll No: ${student1.roll} Percentage: $result1\n",
    mode: FileMode.append,
  );
  file.writeAsString(
    "Student Name: ${student2.name} Father Name: ${student2.fatherName} Roll No: ${student2.roll} Percentage: $result2\n",
    mode: FileMode.append,
  );
}



