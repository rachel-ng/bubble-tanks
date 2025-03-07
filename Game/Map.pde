public class Map {
  private Room[][] rooms;
  private Room currentRoom;

  private int[][] coordRooms = {{0, 1}, {1, 0}, {0, -1}, {-1, 0}};
  private int n;
  private boolean hasBoss;
  private int bossRow, bossCol;

  public Map (int num, int difficulty) {
    n = num;
    rooms = new Room[n][n];
    hasBoss = false;
    bossRow = -1;
    bossCol = -1;

    for (int r = 0; r < n; r++) {
      for (int c = 0; c < n; c++) {
        rooms[r][c] = new Room (n, r, c, difficulty);
      }
    }

    // if it has an odd number of rows x cols, the starting currentRoom is at the center
    currentRoom = rooms[(n - 1) / 2][(n - 1) / 2];
  }  

  /* 0: right
   *  1: down
   *  2: left
   *  3: up
   */
  private void changeRooms (int changeTo) { // lets you actually change rooms
    currentRoom = rooms[currentRoomR()+coordRooms[changeTo][0]][currentRoomC()+coordRooms[changeTo][1]];
  }

  public boolean canChangeRoom(int changeTo) {
    if (currentRoom.getEnemies().size() == 0 || (currentRoomR()+coordRooms[changeTo][0] == bossRow && currentRoomC()+coordRooms[changeTo][1] == bossCol)) {
      return currentRoom.getAvailable()[changeTo];
    }
    else {
      return false;  
    }
  }

  public int currentRoomR () { 
    return currentRoom.getR();
  }

  public int currentRoomC () {
    return currentRoom.getC();
  }

  public Room getCurrentRoom() {
    return currentRoom;
  }

  public Room[][] getRooms() {
    return rooms;
  }

  public void spawnBoss() { // boolean force
    if (!hasBoss) {
      int cleared=0;
      for (int i=0; i<rooms.length; i++) {
        for (int j=0; j<rooms.length; j++) {
          if (rooms[i][j].getEnemies().size()==0) {
            cleared++;
          }
        }
      }
      if (bossesKilled == 0 && cleared>=n*n/4) { // (force || cleared>=n*n/4)) {
        while (bossRow==currentRoomR() &&bossCol==currentRoomC() || bossRow==-1 || bossCol==-1) {
          int changeTo = (int)(random(coordRooms.length));
          for (int i=0; i<coordRooms.length; i++) {
            if (currentRoomR() + coordRooms[i][0] < n && currentRoomR() + coordRooms[i][0] > -1 && currentRoomC() + coordRooms[i][1] < n && currentRoomC() + coordRooms[i][1] > -1) { 
              if (rooms[currentRoomR() + coordRooms[i][0]][currentRoomC() + coordRooms[i][1]].getEnemies().size() == 0) {
                changeTo = i;
                break;
              }
            }
          }
          bossRow = currentRoomR() + coordRooms[changeTo][0];
          bossCol = currentRoomC() + coordRooms[changeTo][1];
        }
        rooms[bossRow][bossCol] = new BossRoom(n, bossRow, bossCol, difficulty, player.getLevel(), 1);
        hasBoss = true;
      }
      if (bossesKilled == 1 && cleared >=n*n/2) {
        while (bossRow==currentRoomR() &&bossCol==currentRoomC() || bossRow==-1 || bossCol==-1) {
          int changeTo = (int)(random(coordRooms.length));
          for (int i=0; i<coordRooms.length; i++) {
            if (currentRoomR() + coordRooms[i][0] < n && currentRoomR() + coordRooms[i][0] > -1 && currentRoomC() + coordRooms[i][1] < n && currentRoomC() + coordRooms[i][1] > -1) { 
              if (rooms[currentRoomR() + coordRooms[i][0]][currentRoomC() + coordRooms[i][1]].getEnemies().size() == 0) {
                changeTo = i;
                break;
              }
            }
          }
          bossRow = currentRoomR() + coordRooms[changeTo][0];
          bossCol = currentRoomC() + coordRooms[changeTo][1];
        }
        rooms[bossRow][bossCol] = new BossRoom(n, bossRow, bossCol, difficulty, player.getLevel(), 0);
        hasBoss = true;
      }
      if (bossesKilled == 2 && cleared >=n*n/1.33) {
        while (bossRow==currentRoomR() &&bossCol==currentRoomC() || bossRow==-1 || bossCol==-1) {
          int changeTo = (int)(random(coordRooms.length));
          for (int i=0; i<coordRooms.length; i++) {
            if (currentRoomR() + coordRooms[i][0] < n && currentRoomR() + coordRooms[i][0] > -1 && currentRoomC() + coordRooms[i][1] < n && currentRoomC() + coordRooms[i][1] > -1) { 
              if (rooms[currentRoomR() + coordRooms[i][0]][currentRoomC() + coordRooms[i][1]].getEnemies().size() == 0) {
                changeTo = i;
                break;
              }
            }
          }
          bossRow = currentRoomR() + coordRooms[changeTo][0];
          bossCol = currentRoomC() + coordRooms[changeTo][1];
        }
        rooms[bossRow][bossCol] = new BossRoom(n, bossRow, bossCol, difficulty, player.getLevel(), 2);
        hasBoss = true;
      }
      if (bossesKilled == 3 && cleared >=n*n) {
        while (bossRow==currentRoomR() &&bossCol==currentRoomC() || bossRow==-1 || bossCol==-1) {
          int changeTo = (int)(random(coordRooms.length));
          for (int i=0; i<coordRooms.length; i++) {
            if (currentRoomR() + coordRooms[i][0] < n && currentRoomR() + coordRooms[i][0] > -1 && currentRoomC() + coordRooms[i][1] < n && currentRoomC() + coordRooms[i][1] > -1) { 
              if (rooms[currentRoomR() + coordRooms[i][0]][currentRoomC() + coordRooms[i][1]].getEnemies().size() == 0) {
                changeTo = i;
                break;
              }
            }
          }
          bossRow = currentRoomR() + coordRooms[changeTo][0];
          bossCol = currentRoomC() + coordRooms[changeTo][1];
        }
        rooms[bossRow][bossCol] = new BossRoom(n, bossRow, bossCol, difficulty, player.getLevel(), 3);
        hasBoss = true;
      }
    }
    if (hasBoss) {
      BossRoom bRoom = (BossRoom) rooms[bossRow][bossCol];
      if (bRoom.getBoss().getHealth() <=0) {
        bRoom.getBoss().spawnBubbles(allBubbles);
        bRoom.setBoss(null);
        hasBoss = false;
        rooms[bossRow][bossCol] = new Room(n, bossRow, bossCol, difficulty);
        rooms[bossRow][bossCol].getEnemies().clear();
        bossRow = -1;
        bossCol = -1;
        bossesKilled++;
      }
    }
  }

  public boolean getHasBoss() {
    return hasBoss;
  }
}
