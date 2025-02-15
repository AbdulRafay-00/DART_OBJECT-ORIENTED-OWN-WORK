class number{

// int add(int n1,int n2){
//   return n1+n2;
// }

int add(int n1,int n2, [int? n3]){

  if(n3 !=null){
  return n1+n2+n3!;}
  else return n1+n2;
}
}
void main(){
number num1=number();

int res=num1.add(3, 4,4);
print(res);
}