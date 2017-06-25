Player player;
Ball ball;
Team team;
Pitch pitch;

// MAIN METHODS
void setup(){
  size(800, 600);
  player = new Player();
  ball = new Ball();
  team = new Team();
  pitch = new Pitch();
  println(player);
}

void draw(){
  background(0);
  updateAll();
  drawAll();
  debugRegion();
}

void keyPressed() {
  if (key == 'm' || key == 'M'){
    ball.toggleFollowMouse();
  }
}


// OWN METHODS
void drawAll(){
  pitch.draw();
  ball.draw();
  team.draw();
  player.draw();
}

void updateAll(){
  team.update();
  player.update();
  ball.update();
  pitch.update();
}


void debugRegion(){
  IntDict innerBoundaries = pitch.boundaries;
  float _screenPercent = 0.333333;
  float _increment = 1.333333;
  HashMap<String, RectValues> regions = new HashMap<String, RectValues>();

  float x = innerBoundaries.get("x");
  float y = innerBoundaries.get("y");
  float w = (innerBoundaries.get("w") * _screenPercent);
  float h = (innerBoundaries.get("h") * _screenPercent);
  noFill();
  // stroke(255, 0, 0);
  // rect(x,y,w,h);
  regions.put("lb", new RectValues(x,y,w,h));

  float x2 = x + w;
  // stroke(0,255,0);
  // rect(x2,y,w,h);
  regions.put("lc", new RectValues(x2,y,w,h));

  float x3 = x2 + w;
  // stroke(0,0,255);
  // rect(x3,y,w,h);
  regions.put("lf", new RectValues(x3,y,w,h));

  float y2 = y + h;
  // stroke(255,0,0);
  // rect(x,y2,w,h);
  regions.put("cb", new RectValues(x,y2,w,h));

  float y3 = y2 + h;
  // stroke(0,255,0);
  // rect(x,y3,w,h);
  regions.put("rb", new RectValues(x,y3,w,h));

  regions.put("cm", new RectValues(x2,y2,w,h));

  regions.put("rm", new RectValues(x2,y3,w,h));

  regions.put("rf", new RectValues(x3,y3,w,h));
}


class RectValues{
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
