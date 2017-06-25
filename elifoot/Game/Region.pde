class Region{


  float _screenPercent = 0.33;
  String[] _regionsNames = {"lb","cb","rb","lm","cm","rm","lf","cf","rf"};
  public Region(String selectedRegion){

    //createBoundaries();
    //createRegions();
  }

  // lb is the name of region 1 and region 9 depending on which side the player is playing from
  // A region should have a name, calculated boundaries and a mirror side boundaries
  void createRegions(){

  }


  void createBoundaries(){
    IntDict innerBoundaries = pitch.boundaries;
    IntDict boundaries = new IntDict();
    IntDict mirrorBoundaries = new IntDict();

    // left back
    boundaries.set("x", 0);
    boundaries.set("y", 0);
    int w = (int) (innerBoundaries.get("w") * _screenPercent);
    int h = (int) (innerBoundaries.get("h") * _screenPercent);
    boundaries.set("w", w);
    boundaries.set("h", h);

    // right forward - mirror left back
    boundaries.set("x", 2*w);
    boundaries.set("y", 2*h);
    boundaries.set("w", 3*w);
    boundaries.set("h", 3*h);

    //switch(selectedRegion){
    //  case "lb":
    //    break;
    //  case "cb":
    //    break;
    //  case "rb":
    //    break;
    //  case "lm":
    //    break;
    //  case "cm":
    //    break;
    //  case "rm":
    //    break;
    //  case "lf":
    //    break;
    //  case "cf":
    //    break;
    //  case "rf":
    //    break;
    //}
  }


}
