void setup() {
  size(400, 400); // Adjust window size as needed
  background(255); // Set background color

  // Example quadratic equation: y = x^2 - 2x + 1 (a=1, b=-2, c=1)
  float a = .25;
  float b = 2;
  float c = -3;

  // Define the x-range for plotting
  float xmin = -50; // Starting x-value
  float xmax = 50;  // Ending x-value

  // Plot the parabola
  beginShape(LINES); // Use LINES for a smoother curve
  stroke(0); // Set line color
  strokeWeight(2); // Set line thickness

  for (float x = xmin; x <= xmax; x += 0.1) { // Iterate through x-values
    float y = quadraticY(a, b, c, x); // Calculate y-value
    float x_mapped = map(x, xmin, xmax, 0, width); // Map x to screen coordinates
    float y_mapped = map(y, -10, 10, height, 0); // Map y to screen coordinates (adjust range as needed)

    vertex(x_mapped, y_mapped); // Draw a point
  }
  endShape();
}

// General quadratic function: y = ax^2 + bx + c
float quadraticY(float a, float b, float c, float x) {
  return a * x * x + b * x + c;
}