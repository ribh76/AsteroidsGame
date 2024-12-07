class Asteroid extends Floater {
  private double rotationSpeed;

  Asteroid() {
    corners = 10;
    xCorners = new int[10];
    yCorners = new int[10];
    myColor = color(139, 69, 19);  // Brown asteroids 
    myCenterX = Math.random() * width;
    myCenterY = Math.random() * height;
    myXspeed = Math.random() * 2 - 1;
    myYspeed = Math.random() * 2 - 1;
    myPointDirection = Math.random() * 360;
    rotationSpeed = Math.random() * 2 - 1; // Random turning speed
    
    for (int i = 0; i < corners; i++) {
      xCorners[i] = (int) (Math.random() * 20 - 10);
      yCorners[i] = (int) (Math.random() * 20 - 10);
    }
  }

  public void move() {
    super.move();
    myPointDirection += rotationSpeed; // Rotate the asteroid randomly as it moves
  }

  public void show() {
    fill(myColor);
    stroke(0);
    super.show();
  }
}
