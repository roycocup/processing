
Player player; 

void setup(){
  size(800, 600);
  player = new Player();
}

void draw(){
  background(0);
  Debug("testthis");
}

class Player {
  public float x = 0;
  public float y = 0;
  
  public Player(){}
  
  public void update(){}
  
  public void draw(){
    fill(255);
    ellipse(x, y, 10, 10);
  }
}


void Debug(String str){
  fill(255);
  text(str, 10, 10);
}