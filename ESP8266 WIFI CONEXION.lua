#include <ESP8266WiFi.h>        // ESP8266 Wi-Fi library

const char* ssid     = "SSID";         // WIFI SSID
const char* password = "PASSWORD";     // PASS

void setup() {
  Serial.begin(115200);         // COMUNICACION SERIAL CON PC
  delay(10);
  Serial.println('\n');
  
  WiFi.begin(ssid, password);             // CONEXION A RED
  Serial.print("Connecting to ");
  Serial.print(ssid); Serial.println(" ...");

  int i = 0;
  while (WiFi.status() != WL_CONNECTED) { // ESPERA ESTABLECER CONEXION WIFI
    delay(1000);
    Serial.print(++i); Serial.print(' ');
  }

  Serial.println('\n');
  Serial.println("Connection established!");  
  Serial.print("IP address:\t");
  Serial.println(WiFi.localIP());
}

void loop() { }