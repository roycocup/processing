class Player{
  public PVector acc;
  public PVector vel;
  public PVector pos;
  public int number;
  public Duty duty;
	public Team team;
  public String name;

  int size = 15;
  String[] positions = {"lb","cb","rb","lm","cm","rm","lf","cf","rf"};
  DNA _dna;
  Decision _decision;

  // public int goalsConceded;
	// public int yellowCards;
	// public int redCards;
	// public int minutes;
	// public int assists;
	// public int goals;
	// public int saves;
  // public int marketValue;

  
  public Player(){
    _dna = new DNA();
    acc = new PVector();
    vel = new PVector();
    pos = new PVector();

    number = (int) random(1,33);
    duty = new Duty("cf");

  }


  public void draw(){
    fill(255);
    ellipse(pos.x, pos.y, size, size);
  };

  public void update(){
    act();
  };

  // TODO:
  // decisions: run with ball, pass, run back, shoot on target,


  void act(){
    // make a decision every
    // depending on moment of the game (attacking, defending)
    // go to center of region part
    // if ball is in region go get it
    // if teammate is closer to ball
  }

  void chaseBall(){
    applyForce(vecToBall());
    vel.add(acc);
    pos.add(vel);
    acc.mult(0);
  }

  void applyForce(PVector force){
    acc.add(force);
  }

  PVector vecToBall(){
    return pos.sub(ball.pos).normalize().mult(-1);
  }

}
