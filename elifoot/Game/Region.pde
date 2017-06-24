class Region{
  public String[] regions = {"lb","cb","rb","lm","cm","rm","lf","cf","rf"};
  public String selectedRegion;
  public IntDict boundaries;
  float screenPercent = 0.10;

  public Region(String selectedRegion){
    boundaries = new IntDict();
    boundaries.set("x", 0);
    boundaries.set("y", 0);
    int w = (int)(boundaries.get("x") + (displayWidth * screenPercent));
    int h = (int) (boundaries.get("y") + (displayHeight * screenPercent));
    boundaries.set("w", w);
    boundaries.set("h", h);

    switch(selectedRegion){
      case "lb":
        //translate(x,y)
        break;
      case "cb":
        break;
      case "rb":
        break;
      case "lm":
        break;
      case "cm":
        break;
      case "rm":
        break;
      case "lf":
        break;
      case "cf":
        break;
      case "rf":
        break;
    }

  }


}