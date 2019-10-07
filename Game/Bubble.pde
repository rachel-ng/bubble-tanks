public class Bubble {

  private float x, y, radius;
  private boolean isCleared;
  private BubbleBlock block;

  public Bubble(float x, float y, float radius) {
    this.x=x;
    this.y=y;
    this.radius=radius;
    isCleared = false;
    block = new BubbleBlock(x, y, radius, 0, color(20, 54, 129));
  }

  public void display() {
    block = new BubbleBlock(x, y, radius, 0, color(20, 54, 129));
    block.display();
  }

  public void move(float dx, float dy) {
    float angle = atan2(dy-y, dx-x);
    float dist = dist(dx,dy,x,y);
    if (dist < 100) {
      x += 5*cos(angle);
      y += 5*sin(angle);
    } else if (dist < 200) {
      x += 7.5*cos(angle);
      y += 7.5*sin(angle);
    } else if (dist < 300) {
      x += 5*cos(angle);
      y += 5*sin(angle);
    }
    else if (isCleared){
      if (dist < 250) {
        x += 15*cos(angle);
        y += 15*sin(angle);
      } else if (dist < 500) {
        x += 50*cos(angle);
        y += 50*sin(angle);
      } else if (dist < 750) {
        x += 80*cos(angle);
        y += 80*sin(angle);
      } else if (dist < 1000) {
        x += 90*cos(angle);
        y += 90*sin(angle);
      } else if (dist < 1500) {
        x += 100*cos(angle);
        y += 100*sin(angle);
      }
    }
    if (dist(x, y, 0, 0)>1000-radius) {
      x = 1000 * cos(atan2(y, x));
      y = 1000 * sin(atan2(y, x));
    }
  }
  
  public float getX(){
    return x;
  }
  
  public float getY(){
   return y;
  }
  
  public float getRadius(){
     return radius; 
  }
  
  public void setClearState(boolean b){
     isCleared = b; 
  }
}
