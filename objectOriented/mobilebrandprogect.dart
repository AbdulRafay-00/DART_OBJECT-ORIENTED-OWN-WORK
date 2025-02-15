

import 'dart:io';

void main(){
phoneowner owner=phoneowner();
owner.brand="APPLE";
owner.model="IPHONE 15";
owner.sreialnumber="03362616";
owner.name="ABDUL RAFAY";
owner.dateofpurchase=2024;
File file =File('mobile brand date.txt');
file.writeAsStringSync('NAME OF THE COSTUMER:${owner.name!}\nPHONE PURCHASE DATE:${owner.dateofpurchase}\nPHONE BRAND:${owner.brand}\nMODEL:${owner.model}');
}


class mobilebrand{
String? brand;
String? model;
String? sreialnumber;
}
class phoneowner extends mobilebrand{
double? dateofpurchase;
  String? name;

}

