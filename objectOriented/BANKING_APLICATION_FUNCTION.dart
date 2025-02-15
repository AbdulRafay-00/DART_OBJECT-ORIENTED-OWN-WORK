/* 
CONTEXT OF DATA STORAGE: Data is stored in two different files 
FILE!: Holdes Values of data 
FILE2: Holdes Keys of data
data of user is align perfectly for there mapping  
 */

import 'dart:io';

class date_store {

  List list2 = [];
  List list1 = [];
  Map map = {};
  num? new_balance;
  File file = File("1.txt");
  File file2 = File("2.txt");
  String? user_values;
  String? user_keys;

// ADDITION OF NEW ACCOUNT
  void new_user_account(
      name, age, user_account_number, BankPin, total_balance) {
    file.writeAsStringSync(
        "${name} ${age} ${user_account_number} ${total_balance}\t",
        mode: FileMode.append);
    user_values = file.readAsStringSync();
    list1 = user_values!.split("\t");
    list1.removeLast();
    file2.writeAsStringSync("${BankPin}\t", mode: FileMode.append);
    user_keys = file2.readAsStringSync();
    list2 = user_keys!.split("\t");
    list2.removeLast();
  }

  // FUNCTION FOR VERRIFICATION OF USER EXISTING ACCOUNT
  List verification() {
    user_keys = file2.readAsStringSync();
    list2 = user_keys!.split("\t");
    list2.removeLast();
    return list2;
  }

  // DEPOSIT FUNCTION
  void deposit_func(user_pin) {
    int? deposit_amount;
    user_values = file.readAsStringSync();
    list1 = user_values!.split("\t");
    list1.removeLast();
    //
    user_keys = file2.readAsStringSync();
    list2 = user_keys!.split("\t");
    list2.removeLast();
    //
    map = Map.fromIterables(list2, list1);
    List user_info = map[user_pin].split(" ");
    print("Your Current Balance Is:${user_info[3]}");
    print("ENTER YOUR AMOUNT OF DEPOSIT ");
    deposit_amount = int.parse(stdin.readLineSync()!);
    //
    if (deposit_amount > 0) {
      for (int i = 0; i < list2.length; i++) {
        if (user_pin == list2[i]) {
          new_balance = int.parse(user_info[3]) + deposit_amount;
          print("Welcone user:${user_info[0]}");
          print("Your Deposit Amount Was:${deposit_amount} Rs");
          user_info[3] = new_balance.toString();
          map[user_pin] = user_info.join(" ");
          list1[i] = map[user_pin];
          print("Your New Balance Is:${user_info[3]}Rs");
          file.writeAsStringSync("${list1.join("\t")}\t");
        }
      }
    } else {
      print("invalid Amount Entered");
    }
  }

// WITHDRAWL FUNCTION
  void withdrawal_func(user_pin) {
    int? widral_amount;
    user_values = file.readAsStringSync();
    list1 = user_values!.split("\t");
    list1.removeLast();
    //
    user_keys = file2.readAsStringSync();
    list2 = user_keys!.split("\t");
    list2.removeLast();
    //
    map = Map.fromIterables(list2, list1);
    List user_info = map[user_pin].split(" ");
    //
    int current_total = int.parse(user_info[3]);
    print("YOUR CURRENT BALANCE IS:${current_total}Rs");
    print("ENTER THE AMOUNT OF WITHDRAWAL");
    widral_amount = int.parse(stdin.readLineSync()!); 
    // 
    if (widral_amount <= current_total && widral_amount > 0) {
      for (int i = 0; i < list2.length; i++) {
        if (user_pin == list2[i]) {
          new_balance = int.parse(user_info[3]) - widral_amount;
          user_info[3] = new_balance.toString();
          print('Your Widral Amount Was: ${widral_amount}Rs');
          print('Your Remainind Balance IS:${user_info[3]}Rs');
          map[user_pin] = user_info.join(" ");
          list1[i] = map[user_pin];
          file.writeAsStringSync("${list1.join("\t")}\t");
        }
      }
    } else {
      print("invalid Amount Entered");
    }
  }
}
