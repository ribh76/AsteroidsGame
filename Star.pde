class Star //note that this class does NOT extend Floater
{
  //your code here
private float x, y;
private int starColor;

  // Constructor
  Star() {
    x = (float) (Math.random() * width);
    y = (float) (Math.random() * height);
    starColor = color(255, 255, 255);
  }

  // Display the star
  public void show() {
    fill(starColor);
    noStroke();
    ellipse(x, y, 2, 2); // Small circular star
  }
}
