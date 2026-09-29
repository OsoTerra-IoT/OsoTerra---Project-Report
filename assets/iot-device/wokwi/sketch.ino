// OsoSense - prototipo de la Embedded Application (ESP32) para Wokwi.
// La sonda de conductividad eléctrica y el sensor capacitivo de humedad se simulan
// con potenciómetros (Wokwi no tiene esos sensores); la temperatura usa un DS18B20.
// La compensación a 25 °C y la validación de rango las hace el Edge Service.
#include <WiFi.h>
#include <HTTPClient.h>
#include <OneWire.h>
#include <DallasTemperature.h>

const int PIN_EC = 34, PIN_MOISTURE = 35, PIN_TEMP = 4;
const int PIN_R = 25, PIN_G = 26, PIN_B = 27, PIN_BUTTON = 14;
const char *EDGE_URL = "http://edge.local:5000/api/v1/readings";
const unsigned long SAMPLE_MS = 10000;  // 15 min en campo; 10 s en la simulación
const float EC_MAX_DSM = 5.0;           // rango de la sonda de CE
const float THRESHOLD_DSM = 1.1;        // umbral del palto, enviado por la plataforma

OneWire oneWire(PIN_TEMP);
DallasTemperature temperature(&oneWire);
unsigned long lastSample = 0;

void setColor(bool r, bool g, bool b) {
  digitalWrite(PIN_R, r); digitalWrite(PIN_G, g); digitalWrite(PIN_B, b);
}

// Patrones de la guía de estilo IoT (5.1.2): color y número de destellos por nivel.
void blink(int times, bool r, bool g, bool b) {
  for (int i = 0; i < times; i++) { setColor(r, g, b); delay(150); setColor(0, 0, 0); delay(150); }
}

void showLevel(float ratio) {
  if (ratio > 1.25) blink(3, 1, 0, 0);        // muy alto: rojo, 3 destellos
  else if (ratio > 1.0) blink(2, 1, 1, 0);    // alto: naranja, 2 destellos
  else if (ratio >= 0.8) blink(1, 1, 1, 0);   // en vigilancia: ámbar, 1 destello
  else blink(1, 0, 1, 0);                     // normal: verde, 1 destello
}

void sendReading() {
  float ec = analogRead(PIN_EC) / 4095.0 * EC_MAX_DSM;
  float moisture = analogRead(PIN_MOISTURE) / 4095.0 * 100.0;
  temperature.requestTemperatures();
  float celsius = temperature.getTempCByIndex(0);

  String body = "{\"deviceId\":\"OS-014\",\"conductivityDsM\":" + String(ec, 2) +
                ",\"moisturePercent\":" + String(moisture, 1) +
                ",\"temperatureCelsius\":" + String(celsius, 1) + "}";
  Serial.println(body);

  if (WiFi.status() == WL_CONNECTED) {
    HTTPClient http;
    http.begin(EDGE_URL);
    http.addHeader("Content-Type", "application/json");
    int status = http.POST(body);
    Serial.printf("Edge respondió %d\n", status);
    http.end();
  } else {
    blink(1, 1, 1, 1);  // sin conexión: blanco; el Edge reenvía cuando vuelve la señal
  }
  showLevel(ec / THRESHOLD_DSM);
}

void setup() {
  Serial.begin(115200);
  pinMode(PIN_R, OUTPUT); pinMode(PIN_G, OUTPUT); pinMode(PIN_B, OUTPUT);
  pinMode(PIN_BUTTON, INPUT_PULLUP);
  temperature.begin();
  WiFi.begin("Wokwi-GUEST", "", 6);
  blink(1, 1, 1, 1);  // encendido: blanco
}

void loop() {
  // Pulsación corta: lectura inmediata. Mantener 3 s: emparejamiento (azul).
  if (digitalRead(PIN_BUTTON) == LOW) {
    unsigned long pressed = millis();
    while (digitalRead(PIN_BUTTON) == LOW) delay(10);
    if (millis() - pressed >= 3000) { for (int i = 0; i < 10; i++) blink(1, 0, 0, 1); }
    else sendReading();
  }
  if (millis() - lastSample >= SAMPLE_MS) { lastSample = millis(); sendReading(); }
}
