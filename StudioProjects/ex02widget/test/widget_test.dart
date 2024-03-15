// name method
// 이름으로 파라미터의 값을 지정해주기
// {}로 관리 - first, second 변수가 named parameter
void namedParameter(int i, {int first=0, int second = 0}){
  print('$i, $first, $second');
}

void main(){
  // 호출
  namedParameter(10);
  // namedparameter 값 변경하기 위해서는 변수명 : 값
  namedParameter(10, first: 20, second: 30);

  // 순서는 상관이 있을까? ➡️ 순서 상관 없음!
  namedParameter(10,second: 20, first: 30);

}