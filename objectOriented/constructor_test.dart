class c1{

  c1(){print('constructor of c1');}
}


class c2 extends c1{

  c2(){print('constructor of c1 calle from c2');}
}


void main(){
  c1 cla=c2();   //same output
  c2 clas=c2();  //same out put
// c2 sad=c1();   // not possible
  
}