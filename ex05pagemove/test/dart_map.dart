void main(){
  //dict구조랑 유사

  //key : value 자료구조

  //Map<k의 자료형, v의 자료형> 변수명 = {}

  //k - string v- string
  Map<String, String> strMap = {'hello': '안녕'};
  //k - str v - dynamic
  Map<String, dynamic> dyMap = {"one": 1, "안녕" : "hello"};

  //값을 가지고 오는법 변수명[키값]

  print(strMap['hello']);

  //삭제 .remove(키값)

  //containsKey(키값)
  //containsValue(밸류값)




}