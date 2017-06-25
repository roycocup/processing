class Region{

  HashMap<String, RectValues> regions;
  float _screenPercent = 0.33;
  public String[] names = {"lb","cb","rb","lm","cm","rm","lf","cf","rf"};

  public Region(String selectedRegion){
    createRegions();
  }

  // lb is the name of region 1 and region 9 depending on which side the player is playing from
  // A region should have a name, calculated boundaries and a mirror side boundaries
  void createRegions(){
    IntDict innerBoundaries = pitch.boundaries;
    float _screenPercent = 0.333333;
    regions = new HashMap<String, RectValues>();

    float x = innerBoundaries.get("x");
    float y = innerBoundaries.get("y");
    float w = (innerBoundaries.get("w") * _screenPercent);
    float h = (innerBoundaries.get("h") * _screenPercent);
    float x2 = x + w;
    float x3 = x2 + w;
    float y2 = y + h;
    float y3 = y2 + h;

    regions.put("lb", new RectValues(x,y,w,h));
    regions.put("lc", new RectValues(x2,y,w,h));
    regions.put("lf", new RectValues(x3,y,w,h));
    regions.put("cb", new RectValues(x,y2,w,h));
    regions.put("rb", new RectValues(x,y3,w,h));
    regions.put("cm", new RectValues(x2,y2,w,h));
    regions.put("rm", new RectValues(x2,y3,w,h));
    regions.put("rf", new RectValues(x3,y3,w,h));
  }
}

class RectValues {
  public float x;
  public float y;
  public float w;
  public float h;

  public RectValues(float x,float y,float w,float h){
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
  }
}
