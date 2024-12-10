class Bullet extends Floater {
  Bullet(Spaceship theShip) {
    // Initialize bullet properties based on spaceship properties
    myCenterX = theShip.getX();
    myCenterY = theShip.getY();
    myXspeed = theShip.getXSpeed();
    myYspeed = theShip.getYSpeed();
    myPointDirection = theShip.getDirection();
    accelerate(6.0); // Push the bullet forward
    myColor = color(255, 255, 255); // White color for bullets
  }

  public void show() {
    fill(myColor);
    noStroke();
    ellipse((float) myCenterX, (float) myCenterY, 10, 10); // Circular bullet
  }

  public boolean isOffScreen() {
    return myCenterX < 0 || myCenterX > width || myCenterY < 0 || myCenterY > height;
  }
}
