Move move;

int w=30, h=30;

int gameState; // 0 = Pre Game, 1 = In Game, 2 = Game Over
int score=0;

void setup()
{
  size(600, 600);
  
  move = new Move();
  
}

void draw()
{
  background(255);
  
  if (gameState == 0){
    fill(0);
    textSize(60);
    text("Car Game", 100, 100);
    textSize(40);
    text("Press S to Start", 200, 157);
    if (keyPressed && key == 's'){
      gameState = 1;
    }
  }
  
  if (gameState == 1){
    
    move.renewal();
    move.showCar();
    move.showCoin();
    move.showBomb();
  }
  
  //lorem ipsum dolor sit amet
    
}