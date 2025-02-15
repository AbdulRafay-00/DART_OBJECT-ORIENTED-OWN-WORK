import"dart:io";
void main(){
  String user_pin="5895";
List list1 = [];
int new_balance=1;
  List list2 = [];
  File file  = File("1.txt");

  File file2 = File("2.txt");
  String context=file.readAsStringSync();
  list1=context.split("\t");
  list1.removeLast();

    String context2 = file2.readAsStringSync();
  list2 = context2.split("\t");
  list2.removeLast();

  print(list1);
  print(list2);
  print(list1.length);
  print(list2.length);
    Map map=Map.fromIterables(list2,list1);
  List user_info=map[user_pin].split(" ");
  new_balance =int .parse( user_info[3])*0;

  print(new_balance);
  // print(map.containsKey("1581"));
      for(int i=0 ; i <list2.length ; i++){
  if (user_pin==list2[i]){
  // String str=map[user_pin];
  // print(map[user_pin]);
  user_info[3]=new_balance.toString();
  // print(user_info);
  // print(map[user_pin]);
  map[user_pin]=user_info.join(" ");
  // print(map[user_pin]);
  list1[i]=map[user_pin];
  // print( map[user_pin]=user_info.join(" "));
//   print("Welcone user:${user_info[0]}");
  // print("Welcone user:${user_info[0]}");
  // print("Your Totl Balance Is:${user_info[3]}");
  file.writeAsStringSync("${list1.join("\t")}\t");
  }
  }
}


  //  List list=str.split(" ");
  //  print(list[0]);
  // }






  // print(map.keys);
  // Map map={           1001      :"lol",1002         :"lol2"};
  // print(map.containsKey(1002));





// import 'dart:io';
// import "abstract_banking_aplication.dart";
// void main(){
//   List list1 = [];
//   List list2 = [];
//   File file  = File("1.txt");
//   String str = "Muhammad Akram khan";
//   // file.writeAsStringSync("rafay ", mode: FileMode.append);
//   // file.writeAsStringSync("$str\t",mode:FileMode.append);
//   // file.writeAsStringSync("/n wasay ", mode: FileMode.append);
//   // file.writeAsStringSync("$str ",mode:FileMode.append);
//   File file2 = File("2.txt");
//   // file2.writeAsStringSync("1002\t",mode:FileMode.append);
//   String context=file.readAsStringSync();
//   list1=context.split("\t");
//   list1.removeLast();
//   // print(list1);
//   String context2 = file2.readAsStringSync();
//   list2 = context2.split("\t");
//   list2.removeLast();
//   // print(list2);
//   Map map=Map.fromIterables(list2,list1);
//   print(map.keys);
//   // print(map);
//   print(map["1"]);
//   // print(map.containsKey("1"));
// }
