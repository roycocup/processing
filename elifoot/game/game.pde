
public float deltaTime = 0;
public float speedsoft = 0.12;

Ball ball;
Team team1;
Pitch pitch;

// MAIN METHODS
void setup(){
  size(800, 600);
  frameRate(30);
  pitch = new Pitch();
  team1 = new Team();
  ball = new Ball();
}

void draw(){
  float start = millis();
  background(0);
  updateAll();
  drawAll();
  float end = millis();
  deltaTime = (end - start) * 0.001;
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
  team1.draw();
}

void updateAll(){
  pitch.update();
  ball.update();
  team1.update();
}
