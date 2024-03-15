//ctrl+t -> 자동정렬
//ctrl+u -> 실행
//ctrl+spacebar -> 자동완성
void setup() {
  //pinMode(핀번호,액츄에이터or센서)
  pinMode(12, OUTPUT);
  pinMode(13, OUTPUT);
}
void loop() {
  digitalWrite(12, 1);
  delay(1000);
  digitalWrite(12, 0);
  delay(1000);
  digitalWrite(13, 1);
  delay(1000);
  digitalWrite(13, 0);
  delay(1000);
}
