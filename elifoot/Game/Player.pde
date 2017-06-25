class Player{
  public PVector acc;
  public PVector vel;
  public PVector pos;
  public int number;
	public Team team;
  public String name;
  public int goalsConceded, yellowCards, redCards, minutes, assists, goals, saves;
  public float marketValue;

  int size = 15;
  String[] positions = {"lb","cb","rb","lm","cm","rm","lf","cf","rf"};
  DNA dna;
  Decision decision;
  Duty duty;
  AreaValues region;


  public Player(PVector setpos){
    dna = new DNA();
    acc = new PVector();
    vel = new PVector();
    pos = new PVector();
    pos = setpos;

    number = (int) random(1,33);
    duty = new Duty("cf");
    region = duty.region.enabled;
  }

  public Player(){
    this(new PVector(0,0));
  }

  public void update(){
    act();
  };

  public void draw(){
    fill(255);
    ellipse(pos.x, pos.y, size, size);
  };


  // TODO:
  // decisions: run with ball, pass, run back, shoot on target,
  // make a decision every
  // depending on moment of the game (attacking, defending)
  // go to center of region part
  // if ball is in region go get it
  // if teammate is closer to ball

  void act(){
    goToRegion();
  }

  void goToRegion(){
    movePlayerTo(new PVector(region.centerX, region.centerY));
  }

  PVector distTo(PVector from, PVector to){
    return from.copy().sub(to);
  }

  void movePlayerTo(PVector to){
    float dist = distTo(pos, to).mag();
    float distCovered = dna.speed * speedsoft;
    float amt = abs(distCovered / dist);
    println(amt);
    if(dist > 1){
        pos.lerp(to, amt);
    }
  }

  void move(PVector v){
    applyForce(v);
    vel.add(acc);
    pos.add(vel);
    acc.mult(0);
  }

  float clamp(float value, float max){
    if (value > max){
      value = max;
    }
    return value;
  }

  void chaseBall(){
    move(vecToBall());
  }

  void applyForce(PVector force){
    acc.add(force);
  }

  PVector vecToBall(){
    return pos.sub(ball.pos).normalize().mult(-1);
  }

}
