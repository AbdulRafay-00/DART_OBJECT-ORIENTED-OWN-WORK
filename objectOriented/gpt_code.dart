import 'dart:io';

void updateBalance(String userPin, int newBalance) {
  try {
    String userPin="5956";
     int newBalance=50;
    // Read file 1 (user data)
    File file1 = File("1.txt");
    String context = file1.readAsStringSync();
    List<String> list1 = context.split("\t");

    // Read file 2 (user PINs)
    File file2 = File("2.txt");
    String context2 = file2.readAsStringSync().trim();
    List<String> list2 = context2.split("\t");

    // Create a map (PIN -> user data)
    Map<String, String> map = Map.fromIterables(list2, list1);

    // Check if the user exists


    // Get user data and split it into parts
    List<String> userInfo = map[userPin]!.split(" ");

    // Ensure there's at least 4 elements (Name, Age, Phone, Balance)
    if (userInfo.length < 4) {
      print("Error: Invalid user data format.");
      return;
    }

    // Update the balance
    userInfo[3] = newBalance.toString();

    // Convert back to string and update the map
    map[userPin] = userInfo.join(" ");

    // Update the list1 with new user data
    for (int i = 0; i < list2.length; i++) {
      if (list2[i] == userPin) {
        list1[i] = map[userPin]!;
      }
    }

    // Write updated data back to file
    file1.writeAsStringSync(list1.join("\t"));

    print("Balance updated successfully!");
    print("New Balance for ${userInfo[0]}: $newBalance");

  } catch (e) {
    print("Error: $e");
  }
}
// rafay 55 4711948457 25000	wasat 85 8732572170 25000	
// 5895	1234	
void main() {
  updateBalance("18", 50000); // Example: Update balance for user with PIN 18
}
