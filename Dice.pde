 Die bob;
 Die sally;
 Die will;
 void setup()
  {
      size(500, 500);
      noLoop();
      bob = new Die(50,50);
      sally = new Die(250,50);
      will = new Die(450,50);
  }
  void draw()
  {
      background(0);
      bob.roll();
      sally.roll();
      will.roll();
      bob.show();
      sally.show();
      will.show();
  }
  void mousePressed()
  {
      redraw();
  }
  class Die //models one single dice cube
  {
      int myX, myY;   
      Die(int x, int y) //constructor
      {       
          myX = x;
          myY = y;
          
          
      }
      void roll()
      {
 
        
      }
      void show()
      {
         fill(255);
         rect(myX, myY, 50, 50);
      }
  }
