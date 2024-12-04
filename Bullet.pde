class Bullet extends Floater {
  private static final double SPEED = 6.0; // Bullet speed

  Bullet(Spaceship theShip) {
    corners = 6;
    xCorners = new int[]{-2, 2, 2, -2};
    yCorners = new int[]{-2, -2, 2, 2};
    myColor = color(255, 255, 0); // Yellow bullet
    myCenterX = theShip.myCenterX;
    myCenterY = theShip.myCenterY;
    myXspeed = theShip.myXspeed;
    myYspeed = theShip.myYspeed;
    myPointDirection = theShip.myPointDirection;
  }
}
