Spaceship ship;
Star[] stars;
void setup() 
{
  size(800, 800);
  ship = new Spaceship();
  stars = new Star[100];

  // Initialize stars with random positions
  for (int i = 0; i < stars.length; i++) {
    stars[i] = new Star();
  }
public void draw() 
{
  //your code here
background(0);

  // Draw stars
  for (Star s : stars) {
    s.show();
  }

  // Accelerate if "W" is pressed
  if (accelerating) {
    ship.accelerate(0.05); // Smooth forward acceleration
  }

  // Reverse if "S" is pressed
  if (reversing) {
    ship.reverse(); // Smooth reverse movement
  }

  // Move and show the spaceship
  ship.move();
  ship.show();
}
void keyPressed() {
  if (key == 'w' || key == 'W') {
    accelerating = true;
  }
  if (key == 's' || key == 'S') {
    reversing = true;
  }
  if (key == 'a' || key == 'A') {
    ship.turn(-5); // Rotate left
  }
  if (key == 'd' || key == 'D') {
    ship.turn(5); // Rotate right
  }
  if (key == 'e' || key == 'E') {
    ship.hyperspace(); // Hyperspace functionality
  }
}

void keyReleased() {
  if (key == 'w' || key == 'W') {
    accelerating = false;
  }
  if (key == 's' || key == 'S') {
    reversing = false;
  }
}
