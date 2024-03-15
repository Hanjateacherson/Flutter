#include <WiFi.h>
#include <HTTPClient.h>

const char* ssid = "SMHRD_강의실C"; // WIFI ID
const char* password = "ccccc33333"; // WIFI PW

// Server 요청 주소
String address = "http://61.80.80.214:5000";

String result = ""; // 응답 결과 저장
HTTPClient http; // 통신 객체

void setup() {
  pinMode(18,OUTPUT);
  Serial.begin(115200); // Baud rate

  WiFi.begin(ssid, password);
  while (WiFi.status() != WL_CONNECTED) {
    delay(1000);
    Serial.println("Connecting to WiFi..");
  }

  Serial.println("Connected to the WiFi network");
}

void loop() {
  if ((WiFi.status() == WL_CONNECTED)) { //Check the current connection status

    http.begin(address);

    int httpCode = http.GET(); // 응답코드
    if (httpCode > 0) {

      Serial.println(httpCode); // 응답코드 출력
      result = http.getString(); // 응답 결과 저장 -> 문자열 형태로 저장!!
      Serial.println(result); // 응답 결과 출력

      if(result == "1"){
        digitalWrite(18,1);
      }else{
        digitalWrite(18,0);
      }
    }

    http.end(); //Free the resources
  } else {
    Serial.println("Error on HTTP request");
  }
  delay(500);
}