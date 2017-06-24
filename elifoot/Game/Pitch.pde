class Pitch{
  int x, y, w, h;
  int margin = 50;
  int innerMargin = 20;
  public IntDict boundaries;
  public Region[] regions;

  public Pitch(){
    x = y = margin;
    w = width - y - margin;
    h = height - x - margin;
    setBoundaries();
  }

  void update(){

  }

  void draw(){
    drawGreen();
    drawBoundaries();
  }

  void drawGreen(){
    fill(1,128,30); // green
    rect(x, y, w, h);
  }

  void setBoundaries(){
      boundaries = new IntDict();
      boundaries.set("x", x + innerMargin);
      boundaries.set("y", y + innerMargin);
      boundaries.set("w", w - (innerMargin*2));
      boundaries.set("h", h - (innerMargin*2));
  }

  void drawBoundaries(){
    noFill();
    stroke(255);
    strokeWeight(3);
    rect(boundaries.get("x"), boundaries.get("y"), boundaries.get("w"), boundaries.get("h"));
  }

  // splits the whole pitch in regions
  void updateRegions(){

  }

  // for debug purposes
  void drawRegions(){

  }
}
