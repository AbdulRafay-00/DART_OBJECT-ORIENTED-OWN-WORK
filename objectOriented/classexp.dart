import 'dart:io';

class books{
  String? auther;
  String? name;
  int? se;
  books(this.auther,this.name){}
  List<String> fun(String auther,String name ,String se){
List<String> list=[];
    
list.add(auther);
list.add(name);
list.add(se);

return list;
  }
}

void main(){
  List<String> df=[];
  List<String> resu=[];
  books book=books("david","got");
   String? auther;
  String? name;
  String? se;
  for(int i=0;i<2;i++){
  print("auther name!");
    auther=stdin.readLineSync()!;
    print("book name!");
    name=stdin.readLineSync()!;
    print("se num!");
    se=stdin.readLineSync()!;
    // fun(auther,name,se);
  List<String> result=book.fun(auther,name,se);
  df=result.toList();
String stu=result.toString();
  resu.add(stu);
  }
 print(resu.length);
 String str=resu.toString();
//  String stri=str.split("");
 print(str);

}


