class Tendril
{
  public final static int SEG_LENGTH = 8; 
  private int myNumSegments, myX, myY;
  private double myAngle;
  public Tendril(int len, double theta, int x, int y)
  {
    myNumSegments = len;
    myAngle = theta;
    myX = x;
    myY = y;
  }
  public void show()
  {
    stroke(255, 255-myNumSegments*2, 255-myNumSegments);
    strokeWeight(myNumSegments/2);
    int startX = myX;
    int startY = myY;
    for(int i = 0; i < myNumSegments; i++){
      myAngle = myAngle + ((Math.random()*4)-2)/10;
      int endX = startX + (int)(Math.cos(myAngle)*SEG_LENGTH);
      int endY = startY + (int)(Math.sin(myAngle)*SEG_LENGTH);
      line(startX, startY, endX, endY);
      startX = endX;
      startY = endY;
    }
    if(myNumSegments >= 5)
      c.add(new Cluster(myNumSegments/2, startX, startY));
  }
}
