void setup() {
  Serial.begin(9600);
  pinMode(A0, INPUT);
  pinMode(10,OUTPUT);
}
void loop() {
  int sensor = analogRead(A0);
  Serial.println(sensor);
  delay(100);
  if (sensor <= 300){
    digitalWrite(10,1);
  }else{
    digitalWrite(10,0);
  }

}
