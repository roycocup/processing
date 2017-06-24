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
