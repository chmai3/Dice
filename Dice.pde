 Die bob;
 void setup()
  {
      size(600, 600);
      noLoop();
      bob = new Die(50,50);
  
  }
  void draw()
  {
      background((int) (Math.random() * 256), (int) (Math.random() * 256), (int) (Math.random() * 256));
      bob.roll();
      bob.show();
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
          
      }
      void roll()
      {
         myX = myX + 100;
         myY = myY + 100;
        
      }
      void show()
      {
         fill((int) (Math.random() * 256), (int) (Math.random() * 256), (int) (Math.random() * 256));
         rect(myX, myY, 50, 50);
      }
  }
