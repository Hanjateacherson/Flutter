void main(){
  //list 만드는 방법
  //List<type> 변수명 = []

  //<> Generics
  //타입을 체크해주는 기능
  //다양한 타입을 다루는 자료형이나 메소드 컬렉션

  List<int> intList = [1,2,3,4,5];

  List<String> strList = ['hello', 'world'];

  List<dynamic> dyList = [1,'hello',3.14];

  //list의 길이 - .length
  print(intList.length);

  //list의 값 추가 - .add
  strList.add("안녕하세요");

  //list의 값 가져오기 - 인덱싱
  print(dyList[0]);

  //list의 값 수정하기 - 인덱싱 후 값 삽입
  intList[1] = 10;

  //list의 값 삭제 - 값을 삭제 .remove()
  dyList.remove(3.14);

  //list의 값 삭제 - 인덱스로 삭제 .removeAt()
  strList.removeAt(0);
  
  
  //Generate 메소드
  //list.generate(만들 데이터의 개수, (변수 선언) => 증가시 변수에 적용될 식)
  
  List<int> intList2 = List<int>.generate(10, (index) => index++);

  print(intList2);



}