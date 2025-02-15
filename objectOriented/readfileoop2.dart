import 'dart:io';
void main(){
  String contents='';
  File f=File('file.txt');
contents=f.readAsStringSync();
List b=[];
for(int i=0; i<contents.length;i++){
  b=contents[i].split('\t');
print(b);
}
}

