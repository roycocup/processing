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
