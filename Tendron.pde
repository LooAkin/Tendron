ArrayList<Cluster> c = new ArrayList<Cluster>();
public void setup()
{
  size(1000, 1000);  
  background(0);
  noLoop();
}
public void draw()
{
  background(0);
  c.add(new Cluster(50, 500, 500));
}
public void mousePressed()
{
  redraw();
}
