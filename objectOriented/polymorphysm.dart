class animal{
  void sound(String sound){
    print ("sound of animal $sound");
  }

  void aminal_name(String name){
    print ('name of animal is $name');

  }
}

class display extends animal{

  void sounda(String sound){
    print (" sound $sound");
  }

  void aminal_name(String name){
    print ('name  is $name');

  }

  void eart(String eates){
print ("dog eat the $eates");
  }
}
class display2 extends animal{}






void main(){
  animal ani=display();
  ani.sound("boa boa");
  ani.aminal_name("luci kutta");
  
  // display dis=display();
  // dis.aminal_name('dog');
  // dis.sound("bark bark");

  // dis.aminal_name('cat');
  // dis.sound("meo meo");

}