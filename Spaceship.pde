class Spaceship extends Floater {
  private double decelerationRate = 0.98; 
  private double reverseRate = -0.05;    

  Spaceship() {
    corners = 3; 
    xCorners = new int[]{-15, 15, 0};  
    yCorners = new int[]{10, 10, -15}; 
    myColor = color(255, 255, 255);    
    myCenterX = width / 2;
    myCenterY = height / 2;
    myXspeed = 0;
    myYspeed = 0;
    myPointDirection = 0;
  }

  public void move() {
    myXspeed *= decelerationRate; 
    myYspeed *= decelerationRate;
    super.move(); 
  }

  public void hyperspace() {
    myXspeed = 0;
    myYspeed = 0;
    myCenterX = Math.random() * width;
    myCenterY = Math.random() * height;
    myPointDirection = Math.random() * 360;
  }

  public void reverse() {
    double dRadians = myPointDirection * (Math.PI / 180);
    myXspeed += reverseRate * Math.cos(dRadians);
    myYspeed += reverseRate * Math.sin(dRadians);
  }
}
