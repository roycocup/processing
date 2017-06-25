class Duty{
  public Region region;
  public Position selectedDuty;

  public Duty(Position duty){
    selectedDuty = duty;
    region = new Region(selectedDuty);
  }
}
