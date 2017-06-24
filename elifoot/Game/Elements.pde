class Player{
  DNA _dna;
  int size = 15;
  public PVector acc;
  public PVector vel;
  public PVector pos;


  public Player(){
    _dna = new DNA();
    acc = new PVector();
    vel = new PVector();
    pos = new PVector();
  }


  public void draw(){
    fill(255);
    ellipse(pos.x, pos.y, size, size);
    //println(pos);
  };

  public void update(){
    applyForce(vecToBall());
    vel.add(acc);
    pos.add(vel);
    acc.mult(0);
  };

  void applyForce(PVector force){
    acc.add(force);
  }

  PVector vecToBall(){
    return pos.sub(ball.pos).normalize().mult(-1);
  }

}

class DNA{
  // physical, technical, psychological, tactical, specific
  public float speed, stamina, strength;
  public float dribbling, passing, shooting, tackling;
  public float selfishness, antecipation;
  public float goalkeeping, morale;
  public DNA(){
    speed = random(4,20);
    stamina = random(5, 20);
    strength = random(4, 20);
    dribbling = random(3,20);
    passing = random(3,20);
    shooting = random(3,20);
    tackling = random(3,20);
    selfishness = random(20);
    antecipation = random(20);
    goalkeeping = random(5,10);
    morale = random(5,20);
  }
  void update(){}
  void draw(){}
}

class Team {
  void update(){}
  void draw(){}
}
