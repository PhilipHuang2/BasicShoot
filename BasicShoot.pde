int screenType;
player peter = new player(400,400);
void setup()
{
	size(800,800);
	background(0);
        screenType = 0;
}
void draw()
{
   if(screenType == 0)
   {

     peter.show();
     peter.direction(0);
   }
   else
   {
     
   }
}

class player
{
  int playerX,playerY;
  int coolDown;
  boolean alive;
  int size = 20;
  player(int x, int y)
  {
    playerX = x;
    playerY = y;
    int coolDown = 0;
    alive = true;
    size = 40;
  }
  
  void show()
  {
    noStroke();
    fill(0,0,255);
    ellipse(playerX,playerY,size,size);
  }
  
  void direction(int x)
  { 
    fill(255);
    if(x == 0)
    {
       rect(playerX + size/2 + 5,playerY - 5, 10,10 );
       triangle(playerX + size/2 + 20,playerY + size/2 -5,
             playerX + size/2 + 20,playerY - size/2 +5,
             playerX + 3*size/2 , playerY);
    }
    else if (x == 0)
    {
       rect(playerX - (size/2 + 5),playerY + 5, -10, -10 );
       triangle(playerX - (size/2 + 20),playerY - (size/2 -5),
             playerX - (size/2 + 20) ,playerY + (size/2 - 5),
             playerX - 3*size/2 , playerY);
    }
    else if(x == 0)
    {
      rect(playerX -5, playerY + size/2 + 5, 10,10);
      triangle(playerX + size/2 -5, playerY + size/2 + 20,
             playerX - size/2 +5, playerY + size/2 + 20,
             playerX, playerY + 3*size/2);
    }
    else if (x == 0)
    {
       rect(playerX + 5,playerY - (size/2 + 5), -10, -10 );
       triangle(playerX - (size/2 -5),playerY - (size/2 + 20),
             playerX + (size/2 - 5),playerY - (size/2 + 20) ,
             playerX, playerY - 3*size/2 );
    }
  }
  
  void typeA()
  {
    
  }
  
  void typeB()
  {
    
  }
  
  void typeC()
  {
    
  }
  
  
}
