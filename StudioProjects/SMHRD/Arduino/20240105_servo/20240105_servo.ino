#include <Servo.h>
Servo myservo;
void setup() {
  myservo.attach(8);
}
void loop() {
  for(int angle = 0; angle < 180; angle++){
    myservo.write(angle);
    delay(15);
  }
  /*myservo.write(10);
  delay(1000);
  myservo.write(120);
  delay(1000);*/
}
