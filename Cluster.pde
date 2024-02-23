
public class Cluster
{
    public final static int NUM_STEMS = 7; 
    double ang;
    public Cluster(int len, int x, int y)
    {   
        Tendril [] tenD = new Tendril[NUM_STEMS];
        for(int j = 0; j < NUM_STEMS; j++){
          ang = (2*Math.PI*(j+1))/7;
          tenD[j] = new Tendril(len, ang, x, y);
          tenD[j].show();
        }
    }
}
