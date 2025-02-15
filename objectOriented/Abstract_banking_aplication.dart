// Default Balance For User Is 25000Rs For Every User.
import "dart:io";
import "dart:async";
import "dart:math";

abstract class bank_new_account {
  int total_amount = 25000;
  void existing_account();
  void new_account();
  void completon_message() {
    print(
        "YOUR ACCOUNT HAS BEEN CEATED INXYZ BANK PLEASE VISIT YOUR NEARIST BRANCH FOR MORE DETAILs\nTHANKYOU:");
  }
}

class bank_operations extends bank_new_account {
  @override
  void existing_account() async {
    String? user_name;
    int? user_pin;
    print("Enter Your User Name:");
    user_name = stdin.readLineSync();
    print("Enter Your Password");
    user_pin = int.parse(stdin.readLineSync()!);
    print("Verifying Your Information");
    await Future.delayed(Duration(seconds: 2), () {
      print("Welcome User $user_name ");
      print("Your Total Balance Is: ${total_amount}Rs");
    });
    print("press 1 to widral");
    print("press 2 to deposit");
    int checker = int.parse(stdin.readLineSync()!);

    void widral() {
      print("ENTER YOUR AMOUNT OF WIDRAWL ");
      int widral_amount = int.parse(stdin.readLineSync()!);
      if (widral_amount <= total_amount && widral_amount > 0) {
        total_amount = total_amount - widral_amount;
        print('Your Widral Amount Was: ${widral_amount}Rs');
        print('Your Total Amount IS: ${total_amount}Rs');
      } else {
        print("Your Amount Is Insufficient Please Try Again!");
      }
    }

    void deposit() {
      print("ENTER YOUR AMOUNT OF DEPOSIT ");
      int deposit_amount = int.parse(stdin.readLineSync()!);
      if (deposit_amount > 0) {
        total_amount = total_amount + deposit_amount;
        print('Your Deposit Amount Was: ${deposit_amount}Rs');
        print('Your Total Amount IS: ${total_amount}Rs');
      } else {
        print("Your Amount Is Insufficient Please Try Again!");
      }
    }

    if (checker == 1) {
      widral();
    } else if (checker == 2) {
      deposit();
    }
  }

  @override
  void new_account() async {
    await Future.delayed(Duration(seconds: 2), () {
      print("PLEAE FILL OUT THE FOLLOWING DETAILS");
    });
    print("ENTER YOUR NAME");
    String _name = stdin.readLineSync()!;
    print("ENTER YOUR AGE");
    int _age = int.parse(stdin.readLineSync()!);
    print("ENTER YOUR ID_CARD NUMBER");

    int _national_id = int.parse(stdin.readLineSync()!);
    List list = [];
    var rnd = Random();
    print("VERIFYING YOUR ACCOUNT DETAIL");
    await Future.delayed(Duration(seconds: 5));
    for (var i = 0; i < 10; i++) {
      int account_number = rnd.nextInt(10);
      list.add(account_number);
    }

    String your_acc = list.join("");
    print("YOUR ACCOUNT HAS BEEN SUCCESSFULLY CREATED");
    print("your name:$_name\nyour age:$_age");
    print("YOUR BANK ACCOUNT NUMBER $your_acc");
  }
}

void main() async {
  int check = 0;
  print("WELCOME TO XYZ BANK");
  await Future.delayed(Duration(seconds: 3), () {
    print("IF WANT TO CREATE NEW ACCOUNT PRESS 1");
    print("FOR ENTERING EXISTING ACCOUNT PRESS 2");
  });
  while (true) {
    check = int.parse(stdin.readLineSync()!);
    if (check == 1 || check == 2) {
      break;
    }
    print("Invalid Operation");
    print("Try Again!");
  }

  bank_operations user = bank_operations();
  if (check == 1) {
    user.new_account();
  } else
    user.existing_account();
}
