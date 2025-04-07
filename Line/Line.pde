void setup() {
  size(800, 800); // Set the window size
  background(255); // Set background color
}

void draw() {
  // Define the range of x-values
  for (float x = 0; x <= 1600; x++) {
    // Calculate y-value using your formula
    // float y = map(x *.0065, -1, 1, 0, 400); // Example: y = sin(x)
    float y = map(x *.0025 * -1 +2, -1, 1, 0, 400); // Example: y = sin(x)

//    float y = map(cos(x * 0.0125), -1, 1, 0, 400); // Example: y = sin(x)

//    float y = map(tan(x * 0.0125), -1, 1, 0, 400); // Example: y = sin(x)

    // Draw a point
    point(x, y);
  }
}


