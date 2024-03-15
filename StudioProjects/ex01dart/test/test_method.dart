
void main(){

  notPaRe();

  notReturn(10, 'hello');

  int num1 = notParameter();
  print(num1);



}



//메소드 종류 매개변수 O/X  리턴의 O/X
//
// 작성법 :
// 리턴타입 메소드명(매개변수){
//
// }


//1. 매개변수X 리턴X 함수 -main함수
void notPaRe(){
  print("매개변수 없고 리턴 없는 함수");
}

//2. 매개변수 O 리턴X 함수
void notReturn(int num1, String s1){
  print('$num1과 $s1이 입력 되었습니다.');
}

//3.매개변수 X 리턴 O함수

int notParameter(){
  //리턴타입이 있는 경우 반드시 return키워드 사용!
  return 10;
}

//4.매개변수 O 리턴 O 함수
String pare(int num1, String s1){
  return s1;
}




