class Player{
  DNA _dna;
  int size = 15;
  public PVector acc;
  public PVector vel;
  public PVector pos;
  public int teeNumber;
  public Duty duty;
  public Region region;
  public int goalsConceded;
	public int yellowCards;
	public int redCards;
	public int minutes;
	public int assists;
	public int goals;
	public int saves;
  public final String name;
	public final String teamName;
	public int marketValue;


  public Player(){
    _dna = new DNA();
    acc = new PVector();
    vel = new PVector();
    pos = new PVector();
    teeNumber = (int) random(1,33);
    duty = new Duty("lb");
    region = duty.region;
  }


  public void draw(){
    fill(255);
    ellipse(pos.x, pos.y, size, size);
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