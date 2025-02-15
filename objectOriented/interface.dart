abstract class animal{

void test(){
  print('test call for non abs method');}
void dog();

}
class og implements animal{

@override
void dog(){
  String sound="baoo baoo";
  print(sound);
  
}


void test(){}
}

void main(){
  og ani=og();
  ani.dog();
  ani.test();
}