void setup() {
  pinMode(A0,INPUT);
  pinMode(10,OUTPUT);
  Serial.begin(9600);
}

void loop() {
  int value = analogRead(A0);
  Serial.println(value);
  //int bright = value/4;
  //map(변환하고자하는값,변환전최소,변환전최대,변환후최소,변환후최대)
  int bright = map(value,0,1023,0,255)
  analogWrite(10,bright);
  /*int sensorValue = analogRead(A0);
  float voltage = sensorValue / 1024.0 * 5;
  float temp = (voltage - 0.5) * 100;
  Serial.println(temp);*/
  
}
