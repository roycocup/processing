class Team {
  public String name;
  public Player[] players;

  int playingPlayers = 16;
  Moment _moment;

  public Team(){
    players = new Player[playingPlayers];


    //TODO: have 23 players, 16 playable players, 11 playing
    Position[] positions = {
        Position.LB, Position.CB, Position.RB,
        Position.LM,Position.CM,Position.RM,
        Position.LF,Position.CF,Position.RF,
    };

    for(int i=0,j=0; i<playingPlayers; i++, j++){
        if (j >= 9) j = 0;
        players[i] = new Player(new PVector(width/2, height/2), positions[j] );
    }
  }

  void update(){
      updatePlayers();
  }

  void draw(){
      drawPlayers();
  }

  void updatePlayers(){
      for(Player player : players){
          player.update();
      }
  }

  void drawPlayers(){
      for(Player player : players){
          player.draw();
      }
  }
}
