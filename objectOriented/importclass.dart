// import '../map and class/class.dart';
import 'imp_file_write.dart';
import 'dart:io';

void main(){
student Student3=student();


Student3.name="Abdul Wasay";
Student3.fathername="Muhammad Akram Khan";
Student3.roll=10;
double resul=Student3.per(1000,1100);

File kile=File("file.txt");
kile.writeAsStringSync("\nStudentName:${Student3.name}  FatherName:${Student3.fathername}  rollno:${Student3.roll}  per:${resul}",mode: FileMode.append);






}