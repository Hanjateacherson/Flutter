void main(){
  int num1 = 10;
  int num2 = 7;

  print(num1/num2);

  double num3 = num1/num2;
  // 나누기는 나눌 시 double로 자동 형 변환

  // 몫 ~/
  print(num1~/num2);

  //형변환 -casting
  int i = 10;
  String s = "20";
  double d = 3.14;

  // dart는 숫자형이 아닌 다른 형과 연산하는 것이 불가능!
  // print(i+s);

  //String -> int
  //방법 : int.parse(문자열)
  print(i + int.parse(s));

  //String -> double
  //방법 : double.parse(문자열)
  print(d + double.parse(s));


  //int or double -> String
  // .toString()
  print(i.toString() +s);
  print(d.toString() + s);











}