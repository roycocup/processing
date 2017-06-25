Player player;
Ball ball;
Team team;
Pitch pitch;

// MAIN METHODS
void setup(){
  size(800, 600);
  pitch = new Pitch();
  player = new Player();
  team = new Team();
  ball = new Ball();
}

void draw(){
  background(0);
  updateAll();
  drawAll();
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
  float x2 = x + w;
  float x3 = x2 + w;
  float y2 = y + h;
  float y3 = y2 + h;
  noFill();
  // stroke(255, 0, 0);
  // rect(x,y,w,h);
  regions.put("lb", new RectValues(x,y,w,h));
  regions.put("lc", new RectValues(x2,y,w,h));
  regions.put("lf", new RectValues(x3,y,w,h));
  regions.put("cb", new RectValues(x,y2,w,h));
  regions.put("rb", new RectValues(x,y3,w,h));
  regions.put("cm", new RectValues(x2,y2,w,h));
  regions.put("rm", new RectValues(x2,y3,w,h));
  regions.put("rf", new RectValues(x3,y3,w,h));
}
