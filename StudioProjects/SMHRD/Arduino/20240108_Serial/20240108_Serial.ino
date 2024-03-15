void setup() {
  Serial.begin(9600);
  pinMode(5, OUTPUT);
}

void loop() {
  /*if (Serial.available()) {
    char c = Serial.read();
    Serial.println(c);

    if (c == '1') {
      digitalWrite(5, 1);
      Serial.println("turn on");
    } else if (c == '0') {
      digitalWrite(5, 0);
      Serial.println("turn off");
    }
  }*/
  if (Serial.available()>0){
    int i = Serial.parseInt();
    Serial.println(i);
    if( i == 1){
      digitalWrite(5,1);
    }else if(i == 2){
      digitalWrite(5,0);
    }
  }
}
