// TODO: divide the region in 9 parts

class Region{

  HashMap<Position, AreaValues> regions;
  float _screenPercent = 0.33;
  public AreaValues enabled;

  public Region(Position selectedRegion){
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
    regions = new HashMap<Position, AreaValues>();

    float x = innerBoundaries.get("x");
    float y = innerBoundaries.get("y");
    float w = (innerBoundaries.get("w") * _screenPercent);
    float h = (innerBoundaries.get("h") * _screenPercent);
    float x2 = x + w;
    float x3 = x2 + w;
    float y2 = y + h;
    float y3 = y2 + h;

    regions.put(Position.LB, new AreaValues(x,y,w,h));
    regions.put(Position.LM, new AreaValues(x2,y,w,h));
    regions.put(Position.LF, new AreaValues(x3,y,w,h));
    regions.put(Position.CB, new AreaValues(x,y2,w,h));
    regions.put(Position.CM, new AreaValues(x2,y2,w,h));
    regions.put(Position.CF, new AreaValues(x3,y2,w,h));
    regions.put(Position.RB, new AreaValues(x,y3,w,h));
    regions.put(Position.RM, new AreaValues(x2,y3,w,h));
    regions.put(Position.RF, new AreaValues(x3,y3,w,h));

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
