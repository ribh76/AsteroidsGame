class Asteroid extends Floater {
  private double rotationSpeed;

  Asteroid() {
    corners = 10;
    xCorners = new int[10];
    yCorners = new int[10];
    myColor = color(255, 0, 0);  // Red asteroids for visibility
    myCenterX = Math.random() * width;
    myCenterY = Math.random() * height;
    myXspeed = Math.random() * 2 - 1;  // Random speed in x direction
    myYspeed = Math.random() * 2 - 1;  // Random speed in y direction
    myPointDirection = Math.random() * 360;
    rotationSpeed = Math.random() * 2 - 1; // Random turn speed
    // Generate a rough "rocky" shape
    for (int i = 0; i < corners; i++) {
      xCorners[i] = (int) (Math.random() * 20 - 10);
      yCorners[i] = (int) (Math.random() * 20 - 10);
    }
  }
