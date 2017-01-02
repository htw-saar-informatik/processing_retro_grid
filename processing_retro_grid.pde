// Beispiel für eine lineare "Bewegung" anhand eines 80er Retro Grids
// Basiert zum Teil auf dem Beispiel:  https://processing.org/examples/linear.html

// Globale Variable 
// Farbe der Ingenieurwissenschaften der htw saar
color htw_ingwi = color(75, 180, 230); 
float a, b; //
float speed;
int xSpacer = 10; // x Abstand des Gitters

// Vorbereitung
void setup() {
  size(400, 200);
  strokeWeight(2);
  stroke(htw_ingwi);
  frameRate(15);
  a = 0;
  b = height/2;
  speed = 2.5;
}

// Durchführung
void draw() {
  background(0);
 
  // Transparentes Rechteck in Fenstergröße
  //fill(0, 80.0f); // Schwarz, transparent 
  //rect(0, 0, width, height);
  
  // Linien
  line(0, a, width, a);
  line(0, b, width, b);
  
  // Geschwindigkeit der "Bewegung"
  a += speed;
  b += speed;
  
  // Reset a
  if (a > height) { 
    a = 0; 
  }
  
  // Reset b
  if (b > height) { 
    b = 0; 
  }
 
 // Rest des Gitters zeichnen
 for(int i = 0; i < width; i+=xSpacer){
    line(i, 0, (i-width/2)*xSpacer, height);
  }
 
 // Einzelne Bilder speichern; z.B., um eine Animation später daraus zu generieren
 //saveFrame("line-######.png");
}