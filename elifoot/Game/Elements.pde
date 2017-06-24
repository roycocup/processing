class Player{
  DNA _dna; 
  
  public Player(){
    _dna = new DNA();
  }
  public void draw(){};
  public void update(){};

}

class DNA{
  // physical, technical, psychological, tactical, specific
  float speed, stamina, strength;
  float dribbling, passing, shooting, tackling;
  float selfishness, antecipation; 
  float goalkeeping, morale;
  
  void update(){}
  void draw(){}
}

class Team {
  void update(){}
  void draw(){}
} 