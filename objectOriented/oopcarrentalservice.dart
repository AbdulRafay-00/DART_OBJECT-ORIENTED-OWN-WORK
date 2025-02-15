
import"dart:io";
class car{
String? brandname;
String? model;
double?seats;
void func(){
print("NAME OF CAR BRAND: $brandname");
print("NAME OF CAR MODEL: $model");
print("NUMBER OF SEATS: $seats");
}
}

class rentalinfo extends car{
String ? rentalname;
int? rentalage;
double total=0;
double? numberoddays;
double func(){
// print("NAME OF CAR BRAND: $brandname");
  if (rentalage!>=18) {
  print("AGE OF CAR RENTER: $rentalage");
  super.func();
  print("NUMBER OF DAYS FOR: $numberoddays ");
  if(seats==2){
 total=50*numberoddays!;
 }
else if(seats==4){
 total=85*numberoddays!;
}
else if(seats==17){
 total=200*numberoddays!;
}
else if(seats==0){
  print("Reconsider Your Info");
  return total;
}
  }else{print("SORRY $rentalname PERSON OF AGE 18 OR ABOVE CAN RENT.");}
  
return total;
  }
}

void main(){
rentalinfo information=rentalinfo();
print("PLEASE ENTER YOUR NAME:");
information.rentalname=stdin.readLineSync()!;
print("PLEASE ENTER YOUR AGE:");
information.rentalage=int.parse(stdin.readLineSync()!);
information.brandname="SUZUZI MEHRAN";
information.model="2003";
print("PLEASE ENTER NUMBER OF DAYS:");
information.numberoddays=double.parse(stdin.readLineSync()!);
print("PLEASE ENTER NUMBER OF SEATS:");
information.seats=double.parse(stdin.readLineSync()!);

double result=information.func();
if(result>0){
print("YOUR TOTAL FAIR FOR ${information.numberoddays} WILL BE ${result}");
}}