class Spaceship extends Floater  
{   
   private double decelerationRate = 0.98; // Gradual deceleration
  private double reverseRate = -0.05;    // Reverse acceleration

  // Constructor
  Spaceship() {
    corners = 3; // Triangular shape
    xCorners = new int[]{-15, 15, 0};  // Adjusted shape: point is forward
    yCorners = new int[]{10, 10, -15}; // Long side is the back
    myColor = color(255, 255, 255);    // White triangle
    myCenterX = width / 2;
    myCenterY = height / 2;
    myXspeed = 0;
    myYspeed = 0;
    myPointDirection = 0;
  }

  //@Override
  public void move() {
    myXspeed *= decelerationRate; // Gradual deceleration
    myYspeed *= decelerationRate;

    super.move(); // Call the parent class's move() method
  }

  // Hyperspace: stop movement, randomize position and direction
  public void hyperspace() {
    myXspeed = 0;
    myYspeed = 0;
    myCenterX = Math.random() * width;
    myCenterY = Math.random() * height;
    myPointDirection = Math.random() * 360;
  }

  // Reverse acceleration
  public void reverse() {
    double dRadians = myPointDirection * (Math.PI / 180);
    myXspeed += (reverseRate * Math.cos(dRadians));
    myYspeed += (reverseRate * Math.sin(dRadians));
  }
}
