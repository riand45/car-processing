Move move;

int gameState; // 0 = Pre Game, 1 = In Game, 2 = Game Over
int score=0;

void setup()
{
  size(800, 600);
  
  move = new Move();
}

void draw()
{
  background(255);
  
  if (gameState == 0){
    fill(0);
    textSize(60);
    text("Car Game", 200, 100);
    textSize(40);
    text("Press S to Start", 200, 157);
    if (keyPressed && key == 's'){
      gameState = 1;
    }
  }
  
  //if (gameState == 3){Restart Game}
  
  if (gameState == 1){
    fill(0);
    textSize(16);
    textAlign(RIGHT);
    text("score", 80,550);
    textAlign(LEFT);
    text(score, 90,550);
    move.renewal();
    move.showCar();
    move.showCoin();
  }
    
}