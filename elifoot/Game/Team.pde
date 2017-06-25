class Team {
  public String name;
  public Player[] players;

  int playingPlayers = 16;
  Moment _moment;

  public Team(){
    players = new Player[playingPlayers];
    for(int i = 0; i < playingPlayers; i++){
      players[i] = new Player();
    }
  }

  void update(){}
  void draw(){}
}
