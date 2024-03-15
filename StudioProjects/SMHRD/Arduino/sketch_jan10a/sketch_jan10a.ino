void setup() {
  Serial.begin(115200);
  pinMode(18,OUTPUT); //red
  pinMode(19,OUTPUT); //yellow
  pinMode(23,OUTPUT); //green
}

void loop() {
  if(Serial.available()>=1){
    char c = Serial.read();
    Serial.println(c);
    
    if(c == '1'){
      digitalWrite(18,1);
    }else if(c == '2'{
      digitalWrite(19,1);
    }else if(c == '3'){
      digitalWrite(23,1);
    }else if(c == '0'){
      digitalWrite(18,0);
      digitalWrite(19,0);
      digitalWrite(23,0);
    }
  }
}
