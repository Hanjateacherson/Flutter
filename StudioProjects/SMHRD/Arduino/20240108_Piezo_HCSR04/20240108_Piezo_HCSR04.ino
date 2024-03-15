int trig = 2;
int echo = 3;
void setup() {
  pinMode(trig, OUTPUT);
  pinMode(echo, INPUT);
  Serial.begin(9600);
  pinMode(9, OUTPUT);
  /*tone(9,330);
  delay(1000);
  noTone(9);*/
}
void loop() {
  //1. trig핀 통해서 초음파를 쏜다! (초음파를 echo에서 엄청 빠르게 받아와야함!)
  digitalWrite(trig, 1);  //초음파 쏜다
  delay(10);
  digitalWrite(trig, 0);  //초음파 안쏜다
  //2. echo핀에서 초음파가 수신되기까지의 시간을 측정 -> pulseIn()
  int duration = pulseIn(echo, 1);  //왕복
  duration = duration / 2;          //㎲(마이크로초)
  int distance = duration / 29.1;
  Serial.print("distance : ");
  Serial.print(distance);
  Serial.println("cm");
  delay(100);

  if(distance > 10 && distance <= 70){
    tone(9,330);
    delay(100);
    noTone(9);
  }else if(distance <= 10){
    tone(9,330);
  }else{
    noTone(9);
  }
}
