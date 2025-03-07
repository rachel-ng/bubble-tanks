public class BubbleBullet {
  float x, y, speed, direction, radius, tankRadius;
  int id;
  BubbleBlock block;

  public BubbleBullet(float radius, float speed, float tankRadius, float x, float y, float direction, int id) {
    this.direction = direction;
    this.x = x+cos(direction)*tankRadius;
    this.y = y+sin(direction)*tankRadius;
    this.radius = radius;
    this.speed = speed / 2;
    this.id=id;
    this.tankRadius = tankRadius;
  }

  public boolean move() {
    x += cos(direction) * speed;
    y += sin(direction) * speed;
    if (dist(x, y, 0, 0)>750-radius) {
      return false;
    }
    return true;
  }

  public void display() {
    if (id == 0) {
      block = new BubbleBlock(x, y, radius, direction, color(195, 144, 163));
    } else {
      block = new BubbleBlock(x, y, radius, direction, color(213, 77, 8));
    }
    block.display();
  }

  public void setBlock(BubbleBlock newBlock) {
    block = newBlock;
  }

  public BubbleBlock getBlock() {
    return block;
  }  

  public String toString() {
    return x + "  " + y;
  }

  public float getX() {
    return x;
  }

  public float getY() {
    return y;
  }

  public float getRadius() {
    return radius;
  }

  public int getId() {
    return id;
  }
}
