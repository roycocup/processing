class Team {
  public String name;
  public Player[] players;

  int playingPlayers = 16;
  Moment _moment;

  public Team(){
    players = new Player[playingPlayers];

    //FIXME: Need to count the number of positions rather than hardcode it here. 
    int posI = (int) random(8);
    for(int i = 0; i < playingPlayers; i++){
        players[i] = new Player(new PVector(100, 100), Position.values()[posI]);
    }
  }

  void update(){}
  void draw(){}
}
