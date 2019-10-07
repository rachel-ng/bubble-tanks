public class BossRoom extends Room{
   
  private BubbleTank boss;
  
  public BossRoom( int mapSize, int row, int col, int difficulty, int playerLevel, int type){
      super(mapSize,row,col,difficulty);
      getEnemies().clear();
      if (type == 0){
         boss = new Stationary(difficulty, playerLevel); 
      }
      if (type == 1){
        boss = new Shield(difficulty, playerLevel);
      }
      if (type == 2){
         boss = new Bull(difficulty, playerLevel); 
      }
      if (type == 3){
         boss = new FinalBoss(difficulty, playerLevel); 
      }
  }
  
  public String toString(){
     return "boss"; 
  }
  
  public BubbleTank getBoss(){
     return boss; 
  }
  
  public void setBoss(BubbleTank b){
     boss = b; 
  }
}
