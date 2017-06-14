class Move 
{
  PVector location;
  PVector tes;
  PVector speedup;
  PVector acceleration;
  
  float speed;
  PShape car;
  PShape coin;
  
  Move() 
  {
    location = new PVector(width/2, height/2);
    speedup = new PVector(0, 0);
    speed = 5;
  }
  
  void renewal()
  {
    PVector mouse = new PVector(mouseX, mouseY);
    PVector dir = PVector.sub(mouse, location);
    dir.normalize();
    dir.mult(0.5);
    acceleration = dir;
    
    speedup.add(acceleration);
    speedup.limit(speed);
    location.add(speedup);
  }
  
  void showCar()
  {
    car = loadShape("mobil.svg");
    float theta = speedup.heading2D();
  
    pushMatrix();
    shapeMode(CENTER);
    translate(location.x, location.y);
    rotate(theta);
    shape(car,0,0,90,50);
    popMatrix();
  }
  
  void showCoin()
  {
    coin = loadShape("coin.svg");
    
    tes = PVector.random2D();
    pushMatrix();
    translate(0,10);
    shape(coin, 0, 0, 30, 20);
    popMatrix();
  }
}