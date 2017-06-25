// TODO: divide the region in 9 parts

class Region{

  HashMap<String, AreaValues> regions;
  float _screenPercent = 0.33;
  public String[] names = {"lb","cb","rb","lm","cm","rm","lf","cf","rf"};
  public AreaValues enabled;

  public Region(String selectedRegion){
    createRegions();
    enabled = regions.get(selectedRegion);
  }

  // lb is the name of region 1 and region 9 depending on which side the player is playing from
  // A region should have a name, calculated boundaries, mirror side boundaries,
  // sub regions (region / 9)
  // mirror sub regions
  void createRegions(){
    IntDict innerBoundaries = pitch.boundaries;
    float _screenPercent = 0.333333;
    regions = new HashMap<String, AreaValues>();

    float x = innerBoundaries.get("x");
    float y = innerBoundaries.get("y");
    float w = (innerBoundaries.get("w") * _screenPercent);
    float h = (innerBoundaries.get("h") * _screenPercent);
    float x2 = x + w;
    float x3 = x2 + w;
    float y2 = y + h;
    float y3 = y2 + h;

    regions.put("lb", new AreaValues(x,y,w,h));
    regions.put("lc", new AreaValues(x2,y,w,h));
    regions.put("lf", new AreaValues(x3,y,w,h));
    regions.put("cb", new AreaValues(x,y2,w,h));
    regions.put("cm", new AreaValues(x2,y2,w,h));
    regions.put("cf", new AreaValues(x3,y2,w,h));
    regions.put("rb", new AreaValues(x,y3,w,h));
    regions.put("rm", new AreaValues(x2,y3,w,h));
    regions.put("rf", new AreaValues(x3,y3,w,h));

  }
}

class AreaValues {
  public float x, y, w, h, x2, y2, centerX, centerY;

  public AreaValues(float x,float y,float w,float h){
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    x2 = x + w;
    y2 = y + h;
    centerX = (x + x2)/2;
    centerY = (y + y2)/2;
  }
}
