import java.util.*;  // Import all util 

Spaceship ship;
ArrayList<Asteroid> asteroids;  // ArrayList to store asteroids
boolean accelerating = false;
boolean reversing = false;


ArrayList<Star> stars;  // To store stars

void setup() {
  size(800, 800);
  
  // Initialize the spaceship
  ship = new Spaceship();
  
  // Initialize asteroids
  asteroids = new ArrayList<Asteroid>();
  for (int i = 0; i < 10; i++) {
    asteroids.add(new Asteroid());
  }
  
  // Initialize stars
  stars = new ArrayList<Star>();
  for (int i = 0; i < 100; i++) {
    stars.add(new Star());
  }
}

void draw() {
  background(0);
  
  // Display stars
  for (Star star : stars) {
    star.show();
  }

  // Draw and move asteroids
  for (int i = 0; i < asteroids.size(); i++) {
    Asteroid asteroid = asteroids.get(i);
    asteroid.move();
    asteroid.show();
  }

  // Accelerate if "W" is pressed
  if (accelerating) {
    ship.accelerate(0.1);  // Adjust speed for better control
  }

  // Reverse if "S" is pressed
  if (reversing) {
    ship.reverse();
  }

  // Move and show the spaceship
  ship.move();
  ship.show();

  // Check for collisions with asteroids
  checkCollisions();

  // Check if the game is won
  if (asteroids.isEmpty()) {
    textSize(32);
    fill(255);
    textAlign(CENTER);
    text("You Win!", width / 2, height / 2);
    noLoop();  // Stop the game
  }
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

void checkCollisions() {
  for (int i = asteroids.size() - 1; i >= 0; i--) {
    Asteroid asteroid = asteroids.get(i);
    // Check if spaceship is colliding with asteroid
    if (dist((float) ship.myCenterX, (float) ship.myCenterY, (float) asteroid.myCenterX, (float) asteroid.myCenterY) < 30) { // Collision detection
      asteroids.remove(i); // Remove the asteroid from the ArrayList
    }

    // Check if a bullet is colliding with an asteroid
    for (int j = bullets.size() - 1; j >= 0; j--) {
      Bullet bullet = bullets.get(j);
      if (dist((float) bullet.myCenterX, (float) bullet.myCenterY, (float) asteroid.myCenterX, (float) asteroid.myCenterY) < 20) {
        asteroids.remove(i);
        bullets.remove(j);
        break;
      }
    }
  }
}
