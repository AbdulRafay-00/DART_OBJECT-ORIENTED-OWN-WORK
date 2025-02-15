// DEFAULT PRICE FOR EVERY NEW USER IS 25000RS
import "dart:io";
import "dart:async";
import "dart:math";
import ".dart";

abstract class bank_new_account {
  void existing_account();
  void new_account();
  void completon_message() {
    print(
        "YOUR ACCOUNT HAS BEEN CEATED IN XYZ BANK PLEASE VISIT YOUR NEARIST BRANCH FOR MORE DETAILS\nTHANKYOU!");
  }
}

class bank_operations extends bank_new_account {
  int total_amount = 25000;
  int? age;
  String? user_account_number;
  String? name;
  String? user_pin;

  @override
  void existing_account() async {
    date_store verify = date_store();

    List list2 = verify.verification();
    print("Enter Your Password");
    user_pin = stdin.readLineSync()!;
    // VERIFYINF EXISTANCE OF USER ACCOUNT
    for (int i = 0; i < list2.length; i++) {
      if (user_pin == list2[i]) {
        print("Verifying Your Information");
        await Future.delayed(Duration(seconds: 2));
        print("Press 1 To Withdraw");
        print("Press 2 To Deposit");
        int checker = int.parse(stdin.readLineSync()!);

        // TO WITHDRAW AMOUNT FROM YOUR ACCOUNT
        void withdraw() {
          verify.withdrawal_func(user_pin);
          print("Thankyou For Trust ");
          print("Program End! ");
        }

//  TO DEPOSIT AMOUNT IN YOUR ACCOUNT
        void deposit() {
          verify.deposit_func(user_pin);
          print("Thankyou For Trust ");
          print("Program End! ");
        }

        // SELECTION OF WITHDRAWAL AND DEPOSIT FUNCTION
        if (checker == 1) {
          withdraw();
        } else if (checker == 2) {
          deposit();
        }
      }
    }
  }

// CREATION OF NEW USER ACCOUNT
  @override
  void new_account() async {
    await Future.delayed(Duration(seconds: 2), () {
      print("PLEAE FILL OUT THE FOLLOWING DETAILS");
    });
    print("ENTER YOUR NAME WITHOUT GAPS BETWEEN CHARACTERS");
    name = stdin.readLineSync()!;
    print("ENTER YOUR AGE");
    while (true) {
      age = int.parse(stdin.readLineSync()!);
      if (age! >= 18) {
        break;
      } else {
        print("Account Holder Must Of Age 18 or Greater");
        print("ENTER YOUR AGE");
      }
    }
    print("Set Your Pin Containing Atleast Four Characters ");
    while (true) {
      user_pin = stdin.readLineSync()!;
      if (user_pin!.length >= 4) {
        break;
      } else {
        print("Pin Should Contain Atleast four Characters!");
        print("Please Try Again ");
        print("Set Your Pin Containing Atleast Four Characters ");
      }
    }
    var rnd = Random();
    print("VERIFYING YOUR ACCOUNT DETAIL");
    await Future.delayed(Duration(seconds: 5));
    List Account_number = [];
    for (var i = 0; i < 10; i++) {
      int account_numbers = rnd.nextInt(10);
      Account_number.add(account_numbers);
    }

    user_account_number = Account_number.join("");
    print("YOUR ACCOUNT HAS BEEN SUCCESSFULLY CREATED");
    print("your name:$name\nyour age:$age and pin:$user_pin");
    print("YOUR BANK ACCOUNT NUMBER: $user_account_number");
    bank_operations user = bank_operations();
    date_store data = date_store();
    data.new_user_account(
        name, age, user_account_number, user_pin, total_amount);
  }
}

void main() async {
  int? check;
  ;
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

  // DIRECTION OF DESIRE FUNCTION
  bank_operations user = bank_operations();
  if (check == 1) {
    user.new_account();
  } else if (check == 2) {
    user.existing_account();
  }
}
