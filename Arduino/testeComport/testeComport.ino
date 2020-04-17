char dado;
String dados="";
String recebido;

void setup() {  
  Serial.begin(9600);
  pinMode(13, OUTPUT);
}

void loop() {  
  recebido = lerSerial();  
  if (recebido.length()>0) {
    Serial.print(recebido);
    if (recebido == "0"){
      digitalWrite(13, HIGH);
      delay(2000);
      digitalWrite(13, LOW);
    }
  }
}

String lerSerial(){
  dados ="";
  dado=' ';
  while(Serial.available()>0){
    dado = (byte)Serial.read();
    dados += dado;
    dado = ' ';
    delay(10);    
  }  
  return dados;
}
