void setup() {
  for(int led = 11; led <=13; led++){
    pinMode(led, OUTPUT);
  }
  for(int btn = 5; btn <=7; btn++){
    pinMode(btn, INPUT);
  }
}
void loop() {
  int Rbtn = digitalRead(7);
  int Bbtn = digitalRead(6);
  int Gbtn = digitalRead(5);
  if(Rbtn == 1){
    digitalWrite(13,1);
  }else if(Bbtn == 1){
    digitalWrite(12,1);
  }else if(Gbtn == 1){
    digitalWrite(11,1);
  }else{
    for(int led = 11; led <= 13; led++){
      digitalWrite(led, 0);
    }
  }
}