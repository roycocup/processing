Player player;

void setup(){
  size(800, 600);
  player = new Player();
}

void draw(){
  background(0);
  player.run();
}

class Pitch{
  void update(){}
  void draw(){}
}

class Ball {
  void update(){}
  void draw(){}
}

class Score{
  void update(){}
  void draw(){}
}

class Time{
  void update(){}
  void draw(){}
}