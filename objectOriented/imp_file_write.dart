import 'dart:io';

void main(){
student Students=student();
Students.name="Abdul rafay";
Students.fathername="Muhammad Akram Khan";
Students.roll=1;
double result=Students.marks(900,1100);
print(result);
student Student2=student();
Student2.name="Abdul Ghani";
Student2.fathername="Muhammad ASLAM Khan";
Student2.roll=5;
double results=Students.marks(800,1100);
print(results);
File FILE=File("file.txt");
FILE.writeAsStringSync("STUDENTNAME  FATHERNAME  ROLLNO  marks");
FILE.writeAsStringSync("\nStudentName:${Students.name}  FatherName:${Students.fathername}  rollno:${Students.roll}  marks:${result}",mode: FileMode.append);
// FILE.writeAsString("\ntesting",mode: FileMode.append);

FILE.writeAsString("\nStudentName:${Student2.name}  FatherName:${Student2.fathername}  rollno:${Student2.roll}  marks:${results}",mode: FileMode.append);







}
class student{
String? name;
String? fathername;
int? roll;

double marks(int op,int tt){
double marks= (op/tt)*100;

return marks;

}

}