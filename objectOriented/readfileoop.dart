import 'dart:io';
void main(){
  //  String contents='';
  File f=File('file.txt');
  List<String> contents=f.readAsLinesSync();
  String roll="StudentName:Abdul rafay";
  // print(roll);
int sum=0;
List b=[];
for(int i=0;i<=contents.length-1; i++){
b=contents[i].split('  ');
String ans=b[0].toString();
 var ansi=ans[i].toString();

// print(ans);
if (roll==ans){
print('hi');
  print(contents[i]);
}
// print(ans);



}}





