void setup() {
  Serial.begin(9600); //baudrate (bps -> bit per second)
  pinMode(4,INPUT);
  pinMode(13,OUTPUT);
}
void loop() {
  int btn = digitalRead(4);
  Serial.println(btn);
  /*if(btn == 1){
    digitalWrite(13,1);
  }else{
    digitalWrite(13,0);
  }*/
  digitalWrite(13,btn);
}