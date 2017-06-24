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
