void setup() {
  size(1600, 1600);
  background(255);
  // Set up coordinate system
  translate(width/2, height/2); // Move origin to center
  scale(100, -100); // Scale to fit within screen
  stroke(0);
  strokeWeight(1);
}


void draw() {
  background(255); // Clear the screen
  // Draw axes
  line(-width/2, 0, width/2, 0);
  line(0, -height/2, 0, height/2);

  // Draw the function
  float x = -4;
  while (x < 4) {
    float y = 1/x+5;
    point(x, y);
    x += 0.01;
  }
}