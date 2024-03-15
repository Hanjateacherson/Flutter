
// 다트 언어
// main함수에서 동작을 함
void main(){
  //타입

  //정수형 - int
  int num1 = 10;

  //출력문 print()
  print(num1);

  //실수형 - double
  double d1 = 3.14;
  print(d1);

  //문자형 -String
  String s1 = "안녕 세상아";
  print(s1);

  //파이썬과 공통점 - 작은따옴표, 큰따옴표 무관
  String s2 = 'hello world';
  print(s2);

  //삼중따옴표도 존재!
  String s3 = """안녕
  world 
  bye""";
  print(s3);

  //논리형 -bool
  bool b1 = true;
  print(b1);

  //숫자형 - num
  num n = 10;
  print(n);

  //var 타입 존재
  var v1 = 'hello';
  print(v1);

  //dynamic 타입 존재
  dynamic dy1 = 'hello';
  print(dy1);

  //var, dynamic 두개의 차이점?
  // var 한번 자료형이 할당되면 수정되지 않습니다!
  //v1 = 10; // 안되는 코드!

  //dynamic 타입은 상관 X
  dy1 = 10;
  print(dy1);

  // var, dynamic 타입이 있는데 꼭 굳이 int, double 같은 자료형을 써야하나?
  //반드시 정의 내릴 필요는 없지만 코드 관리, 협업에 있어 명확하게 정의 내리면 편합니다 :)

  //포매팅
  String name= 'flutter';
  int version = 3;

  //$변수명 으로 사용
  print('$name의 버전은 $version 입니다.');


}