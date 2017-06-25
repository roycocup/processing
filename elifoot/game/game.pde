
public float deltaTime = 0;
public float speedsoft = 0.12;

Player player;
Ball ball;
Team team;
Pitch pitch;

// MAIN METHODS
void setup(){
  size(800, 600);
  frameRate(30);
  pitch = new Pitch();
  player = new Player(new PVector(100, 100));
  team = new Team();
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
  team.draw();
  player.draw();
}

void updateAll(){
  pitch.update();
  ball.update();
  team.update();
  player.update();
}
