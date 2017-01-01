//Beispiel für eine lineare "Bewegung" anhand eines 80er Retro Grids
// Basiert zum Teil auf dem Beispiel:  https://processing.org/examples/linear.html

// Globale Variable 
// Farbe der Ingenieurwissenschaften der htw saar
color htw_ingwi = color(75, 180, 230); 
float a; //
int numerOfLines = 60; // Anzahl der horizontalen Linien
int xSpacer = 10; // x Abstand des Gitters
int ySpacer = 15; // y Abstand des Gitters

// Vorbereitung
void setup() {
  size(300, 100);
  stroke(htw_ingwi);
  frameRate(15);
  a = 0;
}

// Durchführung
void draw() {
  background(0);
  
  // Mehrere Linien, die "Bewegung" vortäuschen
  // Achtung: Etwas unrund und Perspektive nicht berücksichtigt
  for(int i = 0; i < numerOfLines; i++){
    line(0, a-(i*width/ySpacer), width, a-(i*width/ySpacer));
  }
  
  // Geschwindigkeit der "Bewegung"
  a = a + 1.5;
  
  // Reset
  if (a > height) { 
    a = 0; 
  }
 
 // Rest des Gitters 
 for(int i = 0; i < width; i+=xSpacer){
    line(i, 0, (i-width/2)*xSpacer, height);
  }
 
 // Einzelne Bilder speichern; z.B., um eine Animation später daraus zu generieren
 //saveFrame("line-######.png");
}