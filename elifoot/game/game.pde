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


// CLASSES

class Pitch{
  int x, y, w, h;
  int margin;
  public Pitch(){
    margin = 50;
    x = y = margin;
    w = width - y - margin;
    h = height - x - margin;
  }
  void update(){}
  void draw(){
    fill(1,128,30); // green
    rect(x, y, w, h);
  }
}

class Ball {
  boolean _followMouse;

  public int radius;
  public PVector pos;
  public float size;

  public Ball(){
    size = 10;
    pos = new PVector(width / 2, height / 2);
  }
  void update(){
    if (_followMouse){
      pos = new PVector(mouseX, mouseY);
    }
  }

  void draw(){
    noStroke();
    fill(255);
    ellipse(pos.x,pos.y, size, size);
  }

  public void toggleFollowMouse(){
    if (_followMouse){
      _followMouse = false;
    } else {
      _followMouse = true;
    }
  }

}

class Score{
  void update(){}
  void draw(){}
}

class Time{
  void update(){}
  void draw(){}
}
