<h1 align="center">healtor</h1>

<div align="center">
<img src="assets/logo-healtor.png"> 
</div>

<br>

---
<h2><strong>Getting to know healtor</h2></strong>
<p>
Heart attacks and early kidney disease are becoming more common among young people and adults as a 
result of a variety of factors, including high work pressure, a lack of physical activity, irregular
eating habits, obesity, eating high fat foods, smoking, drinking, a sedentary lifestyle, heavy drinking,
and so on. Every year, over ten lakh adolescents and adults die from heart and renal illnesses, according to reports.
---
To address these issues that millions of people around the world face, we created healtor, an IoT health monitoring 
system that uses an ECG sensor to measure electrical activity in a person's heart as well as other physiological parameters,
assisting in the detection and prediction of potential heart and kidney disease, as research has shown that the two diseases
are linked. In addition, healtor has a cross-platform mobile app that works on both Android and iOS devices to assist users 
discover nearby hospitals, pharmacies, physicians, and other services. Furthermore, before a doctor comes, healtor's drones 
are utilised to transport medications or rescue a person who has just suffered from heart or renal failure.  
<p>

<strong>In line with</strong>: 

* United Nations' Sustainable Development Goal No. 3: Good health & Well-being.

* United Nations' Sustainable Development Goal No. 9: Industry, Innovation, & Infrastructure.
  
<br>

---

<h2><strong>Running healtor app</h2></strong>

<h3><strong>Flutter Project:<h3></strong>

Download and install Flutter at: https://docs.flutter.dev/get-started/install
Choose your Operating System Type for the installation and follow given instructions.

`healtor`

<h3><strong>Healtor's IoT health monitoring system code:<h3></strong>

1. Download and install Arduino IDE from: https://www.arduino.cc/en/software
2. Open IDE and configure esp8266. Instructions at: https://create.arduino.cc/projecthub/electropeak/getting-started-w-nodemcu-esp8266-on-arduino-ide-28184f 
3. Compile and execute the `healtor.ino` file on an ESP8232 board with the necessary circuitry.

<h3><strong>Adafruit library:</h3></strong>

Download necessary adafruit library(Adafruit_SSD1306 and Adafruit_GFX) here: https://learn.adafruit.com/schluff-the-oshw-sleep-monitor/libraries

<h3><strong>Google Maps Setup:</h3></strong>

1. Paste Google Maps API Key android/app/src/main/AndroidManifest.xml:
   `<meta-data android:name="com.google.android.geo.API_KEY"
   android:value="YOUR-API-KEY"/>`
   
2. Downloads Google Maps Flutter API. Instructions at: https://pub.dev/packages/google_maps_flutter
3. Downloads Geolocation Flutter API. Instructions at: https://pub.dev/packages/geolocation
4. Make sure you run this command: `flutter pub get` to get the dependencies, particularly if you manually add the APIs to `pubspec.yaml` file

Run the app using `flutter run` in the main directory of the project `healtor`.

<br>

Link to the Demo Video:
[healtor](https://www.youtube.com/watch?v=YQb2-g3NqWg)
<br>
---

<br>
<h3 align="center"><b>Team healtor</b></h3>

[![](https://img.shields.io/badge/LinkedIn-Francois_Gonothi_Toure-blue?style=for-the-badge&logo=linkedin)](https://www.linkedin.com/in/gtfrans2re/)
[![](https://img.shields.io/badge/LinkedIn-Saloni_Dora-blue?style=for-the-badge&logo=linkedin)](https://www.linkedin.com/in/salonidora/)
